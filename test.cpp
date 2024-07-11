#include <algorithm>
#include <cassert>
#include <cerrno>
#include <chrono>
#include <cstring>
#include <fstream>
#include <functional>
#include <iostream>
#include <numeric>
#include <sstream>
#include <string_view>
#include <vector>

#include <arm_neon.h>

std::string read_file_into_string(std::string_view filename) {
  std::ifstream file(filename.data());
  if (!file.is_open()) {
    throw std::runtime_error("Could not open file: " + std::string(filename) +
                             " - " + std::strerror(errno));
  }

  std::stringstream buffer;
  buffer << file.rdbuf();
  return buffer.str();
}

int simd_strstr(std::string_view str, std::string_view substr) {
  const char *str_ptr = str.data();
  const char *substr_ptr = substr.data();
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

  for (size_t i = 0; i <= str_len - substr_len; i++) {
    bool match = true;
    for (size_t j = 0; j < num_chunks; ++j) {
      size_t offset = j * 16;
      uint8x16_t str_vec =
          vld1q_u8(reinterpret_cast<const uint8_t *>(str_ptr + i + offset));
      uint8x16_t cmp_result = vceqq_u8(str_vec, substr_vecs[j]);

      if (vmaxvq_u8(cmp_result) != 255) {
        match = false;
        break;
      }
    }
    if (match && std::memcmp(str_ptr + i, substr_ptr, substr_len) == 0) {
      return i;
    }
  }

  return -1;
}

int kmp_strstr(std::string_view str, std::string_view substr) {
  size_t str_len = str.size();
  size_t substr_len = substr.size();

  if (substr_len > str_len) {
    return -1;
  }

  if (substr_len == 0) {
    return 0;
  }

  std::vector<size_t> lps(substr_len, 0);
  size_t len = 0;
  size_t i = 1;
  while (i < substr_len) {
    if (substr[i] == substr[len]) {
      len++;
      lps[i] = len;
      i++;
    } else {
      if (len != 0) {
        len = lps[len - 1];
      } else {
        lps[i] = 0;
        i++;
      }
    }
  }

  size_t j = 0;
  i = 0;
  while (i < str_len) {
    if (str[i] == substr[j]) {
      i++;
      j++;
    }
    if (j == substr_len) {
      return i - j;
    } else if (i < str_len && str[i] != substr[j]) {
      if (j != 0) {
        j = lps[j - 1];
      } else {
        i++;
      }
    }
  }

  return -1;
}

int naive_strstr(std::string_view str, std::string_view substr) {
  size_t str_len = str.size();
  size_t substr_len = substr.size();

  if (substr_len > str_len) {
    return -1;
  }

  if (substr_len == 0) {
    return 0;
  }

  for (size_t i = 0; i <= str_len - substr_len; i++) {
    if (str.substr(i, substr_len) == substr) {
      return i;
    }
  }

  return -1;
}

int benchmark(const std::string &str, const std::string &substr,
              size_t seconds_to_run,
              std::function<int(std::string_view, std::string_view)> func) {
  auto start = std::chrono::high_resolution_clock::now();
  auto end = start + std::chrono::seconds(seconds_to_run);

  size_t count = 0;
  int result = 0;
  while (std::chrono::high_resolution_clock::now() < end) {
    result = func(str, substr);
    count++;
  }

  auto duration = std::chrono::high_resolution_clock::now() - start;
  auto duration_ns =
      std::chrono::duration_cast<std::chrono::nanoseconds>(duration).count();
  std::cout << "Average time: " << duration_ns / count << " ns, ";
  std::cout << "Count: " << count << std::endl;
  return result;
}

int benchmark_simd_vs_std(const std::string &str, const std::string &substr,
                          size_t seconds_to_run) {
  auto result_simd =
      benchmark(str, substr, seconds_to_run,
                [](std::string_view str, std::string_view substr) {
                  return simd_strstr(str, substr);
                });
  auto result_std =
      benchmark(str, substr, seconds_to_run,
                [](std::string_view str, std::string_view substr) {
                  return naive_strstr(str, substr);
                });
  if (result_simd != result_std) {
    std::cout << "Mismatch: " << result_simd << " vs " << result_std
              << std::endl;
  }
  return result_simd;
}

int main() {
  std::string str = read_file_into_string("/Users/bobfang/code/neon/sqlite3.c");
  std::string substr = "sqlite3_initialize";

  benchmark_simd_vs_std(str, substr, 1);

  str = "hello this is a new and interesting world, where we celebrate the harmony enjoyed by all human being";
  substr = "world";
  benchmark_simd_vs_std(str, substr, 1);
  return 0;
}
