#include <iostream>
#include <string_view>
#include <cstring>
#include <chrono>
#include <arm_neon.h>
#include <vector>
#include <numeric>
#include <algorithm>
#include <cassert>

int simd_strstr(std::string_view str, std::string_view substr) {
    const char* str_ptr = str.data();
    const char* substr_ptr = substr.data();
    size_t str_len = str.size();
    size_t substr_len = substr.size();

    if (substr_len > str_len) {
        return -1;
    }

    if (substr_len == 0) {
        return 0;
    }

    size_t num_chunks = (substr_len + 15) / 16;
    uint8x16_t substr_vecs[num_chunks];

    for (size_t j = 0; j < num_chunks; ++j) {
        size_t offset = j * 16;
        size_t remaining = std::min(substr_len - offset, size_t(16));
        uint8_t temp[16] = {0};
        std::memcpy(temp, substr_ptr + offset, remaining);
        substr_vecs[j] = vld1q_u8(temp);
    }

    for (size_t i = 0; i <= str_len - substr_len; i += 16) {
        bool match = true;
        for (size_t j = 0; j < num_chunks; ++j) {
            size_t offset = j * 16;
            uint8x16_t str_vec = vld1q_u8(reinterpret_cast<const uint8_t*>(str_ptr + i + offset));
            uint8x16_t cmp_result = vceqq_u8(str_vec, substr_vecs[j]);

            if (vmaxvq_u8(cmp_result) != 255) {
                match = false;
                break;
            }
        }
        if (match && std::memcmp(str_ptr + i, substr_ptr, substr_len) == 0) {
            return i;
        }
        __builtin_prefetch(str_ptr + i + 16, 0, 1);
    }

    return -1;
}

// Function to benchmark both functions and calculate average time and bandwidth
void benchmark(const std::string& str, const std::string& substr, int iterations) {
    using namespace std::chrono;

    std::vector<long long> simd_times;
    std::vector<long long> libc_times;
    size_t str_len = str.size();

    for (int i = 0; i < iterations; ++i) {
        // Measure time for SIMD strstr
        auto start_simd = high_resolution_clock::now();
        int simd_result = simd_strstr(str, substr);
        auto end_simd = high_resolution_clock::now();
        auto duration_simd = duration_cast<microseconds>(end_simd - start_simd);
        simd_times.push_back(duration_simd.count());

        // Measure time for libc strstr
        auto start_libc = high_resolution_clock::now();
        const char* libc_result = std::strstr(str.c_str(), substr.c_str());
        auto end_libc = high_resolution_clock::now();
        auto duration_libc = duration_cast<microseconds>(end_libc - start_libc);
        libc_times.push_back(duration_libc.count());

        if(simd_result != libc_result - str.c_str()) {
            std::cerr << "Mismatch in results!" << std::endl;
            std::cerr << "SIMD result: " << simd_result << ", libc result: " << libc_result - str.c_str() << std::endl;
            assert(false);
        }
    }

    long long simd_avg_time = std::accumulate(simd_times.begin(), simd_times.end(), 0LL) / iterations;
    long long libc_avg_time = std::accumulate(libc_times.begin(), libc_times.end(), 0LL) / iterations;

    double simd_bandwidth = (static_cast<double>(str_len) / simd_avg_time) * 1e6; // bytes per second
    double libc_bandwidth = (static_cast<double>(str_len) / libc_avg_time) * 1e6; // bytes per second

    std::cout << "SIMD strstr average time: " << simd_avg_time << " microseconds" << std::endl;
    std::cout << "libc strstr average time: " << libc_avg_time << " microseconds" << std::endl;
    std::cout << "SIMD strstr memory bandwidth: " << simd_bandwidth << " bytes/second" << std::endl;
    std::cout << "libc strstr memory bandwidth: " << libc_bandwidth << " bytes/second" << std::endl;
}

int main() {
    // Create larger and more complex strings for benchmarking
    std::string str = std::string(1000000, 'a') + "benchmark";
    std::string substr = "benchmark";

    int iterations = 1000; // Number of iterations for averaging
    benchmark(str, substr, iterations);

    return 0;
}