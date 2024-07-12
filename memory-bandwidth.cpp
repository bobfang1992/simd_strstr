#include <array>
#include <cstdint>
#include <random> // Include the random header
#include <iostream>
#include <functional>
#include <chrono>
#include <iomanip>
#include <ctime>
#include <fmt/core.h>

constexpr int64_t kArraySize = 1024 * 1024 * 32;

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
    for(size_t i = 0; i < iterations; i++) {
        auto start = std::chrono::high_resolution_clock::now();
        func(arr);
        auto end = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> diff = end - start;
        total += diff;
        std::cout << ".";
    }
    std::cout << std::endl;
    double totalExecutionTime = total.count();

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
}