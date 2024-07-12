#include <algorithm>
#include <cassert>
#include <cerrno>
#include <chrono>
#include <cstring>
#include <fstream>
#include <functional>
#include <filesystem>
#include <iostream>
#include <numeric>
#include <sstream>
#include <string_view>
#include <vector>

#include <benchmark/benchmark.h>

#include <arm_neon.h>
const std::string long_text = R"(
/*
** CAPI3REF: Initialize The SQLite Library
**
** ^The sqlite3_initialize() routine initializes the
** SQLite library.  ^The sqlite3_shutdown() routine
** deallocates any resources that were allocated by sqlite3_initialize().
** These routines are designed to aid in process initialization and
** shutdown on embedded systems.  Workstation applications using
** SQLite normally do not need to invoke either of these routines.
**
** A call to sqlite3_initialize() is an "effective" call if it is
** the first time sqlite3_initialize() is invoked during the lifetime of
** the process, or if it is the first time sqlite3_initialize() is invoked
** following a call to sqlite3_shutdown().  ^(Only an effective call
** of sqlite3_initialize() does any initialization.  All other calls
** are harmless no-ops.)^
**
** A call to sqlite3_shutdown() is an "effective" call if it is the first
** call to sqlite3_shutdown() since the last sqlite3_initialize().  ^(Only
** an effective call to sqlite3_shutdown() does any deinitialization.
** All other valid calls to sqlite3_shutdown() are harmless no-ops.)^
**
** The sqlite3_initialize() interface is threadsafe, but sqlite3_shutdown()
** is not.  The sqlite3_shutdown() interface must only be called from a
** single thread.  All open [database connections] must be closed and all
** other SQLite resources must be deallocated prior to invoking
** sqlite3_shutdown().
**
** Among other things, ^sqlite3_initialize() will invoke
** sqlite3_os_init().  Similarly, ^sqlite3_shutdown()
** will invoke sqlite3_os_end().
**
** ^The sqlite3_initialize() routine returns [SQLITE_OK] on success.
** ^If for some reason, sqlite3_initialize() is unable to initialize
** the library (perhaps it is unable to allocate a needed resource such
** as a mutex) it returns an [error code] other than [SQLITE_OK].
**
** ^The sqlite3_initialize() routine is called internally by many other
** SQLite interfaces so that an application usually does not need to
** invoke sqlite3_initialize() directly.  For example, [sqlite3_open()]
** calls sqlite3_initialize() so the SQLite library will be automatically
** initialized when [sqlite3_open()] is called if it has not be initialized
** already.  ^However, if SQLite is compiled with the [SQLITE_OMIT_AUTOINIT]
** compile-time option, then the automatic calls to sqlite3_initialize()
** are omitted and the application must call sqlite3_initialize() directly
** prior to using any other SQLite interface.  For maximum portability,
** it is recommended that applications always invoke sqlite3_initialize()
** directly prior to using any other SQLite interface.  Future releases
** of SQLite may require this.  In other words, the behavior exhibited
** when SQLite is compiled with [SQLITE_OMIT_AUTOINIT] might become the
** default behavior in some future release of SQLite.
**
** The sqlite3_os_init() routine does operating-system specific
** initialization of the SQLite library.  The sqlite3_os_end()
** routine undoes the effect of sqlite3_os_init().  Typical tasks
** performed by these routines include allocation or deallocation
** of static resources, initialization of global variables,
** setting up a default [sqlite3_vfs] module, or setting up
** a default configuration using [sqlite3_config()].
**
** The application should never invoke either sqlite3_os_init()
** or sqlite3_os_end() directly.  The application should only invoke
** sqlite3_initialize() and sqlite3_shutdown().  The sqlite3_os_init()
** interface is called automatically by sqlite3_initialize() and
** sqlite3_os_end() is called by sqlite3_shutdown().  Appropriate
** implementations for sqlite3_os_init() and sqlite3_os_end()
** are built into SQLite when it is compiled for Unix, Windows, or OS/2.
** When [custom builds | built for other platforms]
** (using the [SQLITE_OS_OTHER=1] compile-time
** option) the application must supply a suitable implementation for
** sqlite3_os_init() and sqlite3_os_end().  An application-supplied
** implementation of sqlite3_os_init() or sqlite3_os_end()
** must return [SQLITE_OK] on success and some other [error code] upon
** failure.
*/
")";

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

static void BM_std_strstr(benchmark::State& state, const std::string& str, const std::string& substr) {
  for (auto _ : state) {
    benchmark::DoNotOptimize(str.find(substr));
  }
}

static void BM_simd_strstr(benchmark::State& state, const std::string& str, const std::string& substr) {
  for (auto _ : state) {
    benchmark::DoNotOptimize(neon_strstr_anysize(str.data(), str.size(), substr.data(), substr.size()));
  }
}

int main(int argc, char** argv) {

  std::string str = long_text;
  std::string substr = "sqlite3_shutdown";

  benchmark::RegisterBenchmark("BM_std_strstr", BM_std_strstr, str, substr);
  benchmark::RegisterBenchmark("BM_simd_strstr", BM_simd_strstr, str, substr);

  str = "hello this is a new and interesting world, where we celebrate the harmony enjoyed by all human being";
  substr = "world";

  benchmark::RegisterBenchmark("BM_std_strstr_2", BM_std_strstr, str, substr);
  benchmark::RegisterBenchmark("BM_simd_strstr_2", BM_simd_strstr, str, substr);
  benchmark::Initialize(&argc, argv);
  benchmark::RunSpecifiedBenchmarks();
  return 0;
}