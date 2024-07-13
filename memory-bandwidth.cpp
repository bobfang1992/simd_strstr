#include <array>
#include <cstdint>
#include <random> // Include the random header
#include <iostream>
#include <functional>
#include <chrono>
#include <iomanip>
#include <ctime>
#include <fmt/core.h>
#include <thread>
#include <arm_neon.h>
#include <memory> 


constexpr int64_t kArraySize = 1024 * 1024 * 1024;

int8_t rand_int() {
    static int i = 0; 
    return i++ % 10;
}

std::vector<int8_t> create_array_for_test() {
    std::vector<int8_t> arr;
    arr.reserve(kArraySize);
    for (int64_t i = 0; i < kArraySize; i++) {
        arr.push_back(rand_int());
    }
    return arr;
}

int sum_sequential(const std::vector<int8_t>& arr) {
    int sum = 0;
    for (int64_t i = 0; i < kArraySize; i++) {
        sum += arr[i];
    }
    return sum;
}

int std_sum(const std::vector<int8_t>& arr) {
    return std::accumulate(arr.begin(), arr.end(), 0);
}

int arm_neon_simd_sum(const std::vector<int8_t>& arr) {
    // Check if the array is empty
    if (arr.empty()) return 0;

    int32x4_t v_sum = vdupq_n_s32(0); // Initialize NEON vector to hold partial sums
    size_t i = 0;

    // Process the array in chunks of 16 elements
    for (; i + 15 < arr.size(); i += 16) {
        int8x16_t v_data = vld1q_s8(&arr[i]); // Load 16 elements into a NEON register

        // Convert int8x16_t to int16x8_t
        int16x8_t v_data_low = vmovl_s8(vget_low_s8(v_data)); // Lower 8 elements to int16
        int16x8_t v_data_high = vmovl_s8(vget_high_s8(v_data)); // Upper 8 elements to int16

        // Convert int16x8_t to int32x4_t and accumulate
        v_sum = vaddq_s32(v_sum, vpaddlq_s16(v_data_low));
        v_sum = vaddq_s32(v_sum, vpaddlq_s16(v_data_high));
    }

    // Horizontal add the vector to get the sum of all elements
    int32_t sum_array[4];
    vst1q_s32(sum_array, v_sum);

    int sum = sum_array[0] + sum_array[1] + sum_array[2] + sum_array[3];

    // Handle the remaining elements
    for (; i < arr.size(); ++i) {
        sum += arr[i];
    }

    return sum;
}


int parallel_sum(const std::vector<int8_t>& arr) {
    if (arr.empty()) return 0; // Handle empty input

    auto worker_func = [](const std::vector<int8_t>& arr, int64_t start, int64_t end) {
        int sum = 0;
        for (int64_t i = start; i < end; i++) {
            sum += arr[i];
        }
        return sum;
    };

    int num_threads = std::thread::hardware_concurrency();
    int64_t kArraySize = arr.size(); // Set kArraySize to the size of the input vector
    int64_t chunk_size = kArraySize / num_threads;
    std::vector<std::thread> threads;
    std::vector<int> results(num_threads, 0); // Initialize results vector with default value 0

    for (int i = 0; i < num_threads; i++) {
        int64_t start = i * chunk_size;
        int64_t end = (i == num_threads - 1) ? kArraySize : (i + 1) * chunk_size;
        threads.emplace_back([start, end, &arr, &results, i, worker_func]() {
            results[i] = worker_func(arr, start, end);
        });
    }

    // Join all threads
    for (auto& thread : threads) {
        if (thread.joinable()) {
            thread.join();
        }
    }

    return std::accumulate(results.begin(), results.end(), 0);
}

int parallel_neon_sum(const std::vector<int8_t>& arr) {
    if (arr.empty()) return 0;

    auto worker_func = [](const std::vector<int8_t>& arr, size_t start, size_t end) {
        int32x4_t v_sum = vdupq_n_s32(0);
        size_t i = start;

        for (; i + 15 < end; i += 16) {
            int8x16_t v_data = vld1q_s8(&arr[i]);

            int16x8_t v_data_low = vmovl_s8(vget_low_s8(v_data));
            int16x8_t v_data_high = vmovl_s8(vget_high_s8(v_data));

            v_sum = vaddq_s32(v_sum, vpaddlq_s16(v_data_low));
            v_sum = vaddq_s32(v_sum, vpaddlq_s16(v_data_high));
        }

        int32_t sum_array[4];
        vst1q_s32(sum_array, v_sum);

        int sum = sum_array[0] + sum_array[1] + sum_array[2] + sum_array[3];

        for (; i < end; ++i) {
            sum += arr[i];
        }

        return sum;
    };

    int num_threads = std::thread::hardware_concurrency();
    int64_t kArraySize = arr.size();
    int64_t chunk_size = kArraySize / num_threads;
    std::vector<std::thread> threads;
    std::vector<int> results(num_threads, 0);

    for (int i = 0; i < num_threads; i++) {
        size_t start = i * chunk_size;
        size_t end = (i == num_threads - 1) ? kArraySize : (i + 1) * chunk_size;
        threads.emplace_back([start, end, &arr, &results, i, worker_func]() {
            results[i] = worker_func(arr, start, end);
        });
    }

    for (auto& thread : threads) {
        if (thread.joinable()) {
            thread.join();
        }
    }

    return std::accumulate(results.begin(), results.end(), 0);
}

void print_with_timestamp(const std::string& message) {
    auto now = std::chrono::system_clock::now();
    std::time_t time = std::chrono::system_clock::to_time_t(now);
    std::tm* local_time = std::localtime(&time);

    // Extract milliseconds
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()) % 1000;

    // Create a time string using std::ostringstream
    std::ostringstream oss;
    oss << std::put_time(local_time, "%Y-%m-%d %H:%M:%S");
    oss << '.' << std::setfill('0') << std::setw(3) << ms.count();

    // Print the message with the timestamp
    fmt::print("{} {}\n", oss.str(), message);
}


int run_benchmark(const std::vector<int8_t>& arr, size_t iterations, std::function<int(const std::vector<int8_t>&)> func) {
    std::chrono::duration<double, std::milli> total = std::chrono::duration<double, std::milli>::zero();
    int result = 0;
    for(size_t i = 0; i < iterations; i++) {
        auto start = std::chrono::high_resolution_clock::now();
        result = func(arr);
        auto end = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> diff = end - start;
        total += diff;
        std::cout << ".";
    }
    std::cout << std::endl;
    double totalExecutionTime = total.count();

    print_with_timestamp(fmt::format("Result: {}", result));
    print_with_timestamp(fmt::format("Total execution time: {} seconds", totalExecutionTime / 1000));

    // Calculate the number of bytes processed
    double totalBytesProcessed = arr.size() * sizeof(int8_t) * iterations;
    print_with_timestamp(fmt::format("Total bytes processed: {}", totalBytesProcessed));
    
    double totalBytesProcessedInGB = totalBytesProcessed / (1024 * 1024 * 1024);
    // Calculate the throughput in GB/s
    double throughput = totalBytesProcessedInGB / (totalExecutionTime / 1000);

    print_with_timestamp(fmt::format("Throughput: {} GB/s", throughput));

    return 0;
}


int main() {
    print_with_timestamp("-------- creating array for test --------");
    auto arr = create_array_for_test();

    print_with_timestamp("-------- running sequential sum --------");
    run_benchmark(arr, 100, sum_sequential);

    print_with_timestamp("-------- running std::accumulate --------");
    run_benchmark(arr, 100, std_sum);

    print_with_timestamp("-------- running arm_neon_simd_sum --------");
    run_benchmark(arr, 100, arm_neon_simd_sum);

    print_with_timestamp("-------- running parallel sum --------");
    run_benchmark(arr, 100, parallel_sum);

    print_with_timestamp("-------- running parallel NEON sum --------");
    run_benchmark(arr, 100, parallel_neon_sum);
}