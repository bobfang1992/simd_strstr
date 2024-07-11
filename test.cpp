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

size_t neon_strstr_anysize(const char *s, size_t n,
                                        const char *needle, size_t k) {

  assert(k > 0);
  assert(n > 0);

  const uint8x16_t first = vdupq_n_u8(needle[0]);
  const uint8x16_t last = vdupq_n_u8(needle[k - 1]);
  const uint8x8_t half = vdup_n_u8(0x0f);

  const uint8_t *ptr = reinterpret_cast<const uint8_t *>(s);

  union {
    uint8_t tmp[8];
    uint32_t word[2];
  };

  for (size_t i = 0; i < n; i += 16) {

    const uint8x16_t block_first = vld1q_u8(ptr + i);
    const uint8x16_t block_last = vld1q_u8(ptr + i + k - 1);

    const uint8x16_t eq_first = vceqq_u8(first, block_first);
    const uint8x16_t eq_last = vceqq_u8(last, block_last);
    const uint8x16_t pred_16 = vandq_u8(eq_first, eq_last);
    const uint8x8_t pred_8 =
        vbsl_u8(half, vget_low_u8(pred_16), vget_high_u8(pred_16));

    vst1_u8(tmp, pred_8);

    if ((word[0] | word[1]) == 0) {
      continue;
    }

    for (int j = 0; j < 8; j++) {
      if (tmp[j] & 0x0f) {
        if (memcmp(s + i + j + 1, needle + 1, k - 2) == 0) {
          return i + j;
        }
      }
    }

    for (int j = 0; j < 8; j++) {
      if (tmp[j] & 0xf0) {
        if (memcmp(s + i + j + 1 + 8, needle + 1, k - 2) == 0) {
          return i + j + 8;
        }
      }
    }
  }

  return std::string::npos;
}

int benchmark(const std::string& name, const std::string &str, const std::string &substr,
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
  std::cout << name << ": \n----------------\n";
  std::cout << "Average time: " << duration_ns / count << " ns, ";
  std::cout << "Count: " << count << std::endl;
  std::cout << "----------------\n";
  return result;
}

int benchmark_simd_vs_std(const std::string &str, const std::string &substr,
                          size_t seconds_to_run) {
  auto result_simd =
      benchmark("std_strstr", str, substr, seconds_to_run,
                [](std::string_view str, std::string_view substr) {
                  return str.find(substr);
                });
  auto result_std =
      benchmark("simd_strstr", str, substr, seconds_to_run,
                [](std::string_view str, std::string_view substr) {
                  return neon_strstr_anysize(str.data(), str.size(), substr.data(), substr.size());
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

  str = "hello this is a new and interesting world, where we celebrate the "
        "harmony enjoyed by all human being";
  substr = "world";
  benchmark_simd_vs_std(str, substr, 1);
  return 0;
}
