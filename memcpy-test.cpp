#include <arm_neon.h>
#include <array>
#include <chrono>
#include <cstdint>
#include <ctime>
#include <fmt/core.h>
#include <functional>
#include <iomanip>
#include <iostream>
#include <memory>
#include <random> // Include the random header
#include <thread>

using memcpy_func_type =
    std::function<int(const std::vector<int8_t> &, std::vector<int8_t> &)>;

int8_t rand_int() {
  static int i = 0;
  return i++ % 10;
}

std::vector<int8_t> create_array_for_test(size_t kArraySize = 1024 * 1024 *
                                                              1024) {
  std::vector<int8_t> arr;
  arr.reserve(kArraySize);
  for (size_t i = 0; i < kArraySize; i++) {
    arr.push_back(rand_int());
  }
  return arr;
}

std::vector<int8_t> create_array_dest(const std::vector<int8_t> &src) {
  std::vector<int8_t> dest;
  dest.resize(src.size());
  for (size_t i = 0; i < src.size(); i++) {
    dest[i] = 0;
  }
  return dest;
}

bool verify(const std::vector<int8_t> &src, const std::vector<int8_t> &dest) {
  return src == dest;
}

void print_with_timestamp(const std::string &message) {
  auto now = std::chrono::system_clock::now();
  std::time_t time = std::chrono::system_clock::to_time_t(now);
  std::tm *local_time = std::localtime(&time);

  // Extract milliseconds
  auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(
                now.time_since_epoch()) %
            1000;

  // Create a time string using std::ostringstream
  std::ostringstream oss;
  oss << std::put_time(local_time, "%Y-%m-%d %H:%M:%S");
  oss << '.' << std::setfill('0') << std::setw(3) << ms.count();

  // Print the message with the timestamp
  fmt::print("{} {}\n", oss.str(), message);
}

int run_benchmark(const std::vector<int8_t> &src, std::vector<int8_t> &dest,
                  size_t iterations, memcpy_func_type func) {
  std::chrono::duration<double, std::milli> total =
      std::chrono::duration<double, std::milli>::zero();
  int result = 0;
  for (size_t i = 0; i < iterations; i++) {
    auto start = std::chrono::high_resolution_clock::now();
    result = func(src, dest);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double, std::milli> diff = end - start;
    total += diff;
    std::cout << "." << std::flush;
  }
  std::cout << std::endl;

  if (!verify(src, dest)) {
    print_with_timestamp("Verification failed");
    std::cout << std::endl;
    return -1;
  }

  double totalExecutionTime = total.count();

  print_with_timestamp(fmt::format("Result: {}", result));
  print_with_timestamp(fmt::format("Total execution time: {} seconds",
                                   totalExecutionTime / 1000));

  // Calculate the number of bytes processed
  double totalBytesProcessed = src.size() * sizeof(int8_t) * iterations;
  print_with_timestamp(
      fmt::format("Total bytes processed: {}", totalBytesProcessed));

  double totalBytesProcessedInGB = totalBytesProcessed / (1024 * 1024 * 1024);
  // Calculate the throughput in GB/s
  double throughput = totalBytesProcessedInGB / (totalExecutionTime / 1000);

  print_with_timestamp(fmt::format("Throughput: {} GB/s", throughput));

  std::cout << std::endl;

  return 0;
}

int serial_copy(const std::vector<int8_t> &src, std::vector<int8_t> &dest) {
  if (src.size() != dest.size()) {
    return -1;
  }
  for (size_t i = 0; i < src.size(); i++) {
    dest[i] = src[i];
  }
  return 0;
}

int std_memcpy(const std::vector<int8_t> &src, std::vector<int8_t> &dest) {
  if (src.size() != dest.size()) {
    return -1;
  }
  std::memcpy(dest.data(), src.data(), src.size());
  return 0;
}

int neon_simd_cpy(const std::vector<int8_t> &src, std::vector<int8_t> &dest) {
  if (src.size() != dest.size()) {
    return -1;
  }
  size_t i = 0;
  for (; i < src.size() - 15; i += 16) {
    int8x16_t v = vld1q_s8(src.data() + i);
    vst1q_s8(dest.data() + i, v);
  }
  for (; i < src.size(); i++) {
    dest[i] = src[i];
  }
  return 0;
}

int parallel_cpy(const std::vector<int8_t> &src, std::vector<int8_t> &dest) {
  if (src.size() != dest.size()) {
    return -1;
  }
  size_t num_threads = std::thread::hardware_concurrency();
  size_t chunk_size = src.size() / num_threads;
  std::vector<std::thread> threads;
  for (size_t i = 0; i < num_threads; i++) {
    threads.push_back(std::thread([i, chunk_size, num_threads, &src, &dest]() {
      size_t start = i * chunk_size;
      size_t end = (i == num_threads - 1) ? src.size() : start + chunk_size;
      for (size_t j = start; j < end; j++) {
        dest[j] = src[j];
      }
    }));
  }
  for (auto &t : threads) {
    t.join();
  }
  return 0;
}

int prefetch_cpy(const std::vector<int8_t> &src, std::vector<int8_t> &dest) {
  if (src.size() != dest.size()) {
    return -1;
  }
  size_t i = 0;
  for (; i < src.size() - 15; i += 16) {
    __builtin_prefetch(src.data() + i + 16, 0, 0);
    int8x16_t v = vld1q_s8(src.data() + i);
    vst1q_s8(dest.data() + i, v);
  }
  for (; i < src.size(); i++) {
    dest[i] = src[i];
  }
  return 0;
}

int main() {
  std::vector<int8_t> arr = create_array_for_test();
  std::vector<int8_t> dest = create_array_dest(arr);
  size_t iterations = 20;

  print_with_timestamp("Running serial copy");
  run_benchmark(arr, dest, iterations, serial_copy);

  dest = create_array_dest(arr);
  print_with_timestamp("Running std::memcpy");
  run_benchmark(arr, dest, iterations, std_memcpy);

  dest = create_array_dest(arr);
  print_with_timestamp("Running neon_simd_cpy");
  run_benchmark(arr, dest, iterations, neon_simd_cpy);

  dest = create_array_dest(arr);
  print_with_timestamp("Running parallel_cpy");
  run_benchmark(arr, dest, iterations, parallel_cpy);

  dest = create_array_dest(arr);
  print_with_timestamp("Running prefetch_cpy");
  run_benchmark(arr, dest, iterations, prefetch_cpy);

  return 0;
}