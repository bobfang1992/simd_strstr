# this is the build file for project 
# it is autogenerated by the xmake build system.
# do not edit by hand.

# project
cmake_minimum_required(VERSION 3.15.0)
cmake_policy(SET CMP0091 NEW)
project(memcpy-test LANGUAGES CXX C)

# target
add_executable(memcpy-test "")
set_target_properties(memcpy-test PROPERTIES OUTPUT_NAME "memcpy-test")
set_target_properties(memcpy-test PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/macosx/arm64/release")
target_include_directories(memcpy-test SYSTEM PRIVATE
    /opt/homebrew/Cellar/fmt/10.2.1_1/include
)
target_compile_options(memcpy-test PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-isysroot>
    $<$<COMPILE_LANGUAGE:CXX>:-isysroot>
    $<$<COMPILE_LANGUAGE:C>:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk>
    $<$<COMPILE_LANGUAGE:CXX>:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Werror>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror>
)
set_target_properties(memcpy-test PROPERTIES CXX_EXTENSIONS OFF)
target_compile_features(memcpy-test PRIVATE cxx_std_20)
if(MSVC)
    target_compile_options(memcpy-test PRIVATE $<$<CONFIG:Release>:-Ox -fp:fast>)
else()
    target_compile_options(memcpy-test PRIVATE -O3)
endif()
if(MSVC)
    set_property(TARGET memcpy-test PROPERTY
        MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
endif()
target_link_libraries(memcpy-test PRIVATE
    fmt
)
target_link_directories(memcpy-test PRIVATE
    /opt/homebrew/Cellar/fmt/10.2.1_1/lib
)
target_link_options(memcpy-test PRIVATE
    -isysroot
    /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
    -stdlib=libc++
    -lz
)
target_sources(memcpy-test PRIVATE
    memcpy-test.cpp
)

# target
add_executable(memory-bandwidth "")
set_target_properties(memory-bandwidth PROPERTIES OUTPUT_NAME "memory-bandwidth")
set_target_properties(memory-bandwidth PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/macosx/arm64/release")
target_include_directories(memory-bandwidth SYSTEM PRIVATE
    /opt/homebrew/Cellar/fmt/10.2.1_1/include
)
target_compile_options(memory-bandwidth PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-isysroot>
    $<$<COMPILE_LANGUAGE:CXX>:-isysroot>
    $<$<COMPILE_LANGUAGE:C>:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk>
    $<$<COMPILE_LANGUAGE:CXX>:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Werror>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror>
)
set_target_properties(memory-bandwidth PROPERTIES CXX_EXTENSIONS OFF)
target_compile_features(memory-bandwidth PRIVATE cxx_std_20)
if(MSVC)
    target_compile_options(memory-bandwidth PRIVATE $<$<CONFIG:Release>:-Ox -fp:fast>)
else()
    target_compile_options(memory-bandwidth PRIVATE -O3)
endif()
if(MSVC)
    set_property(TARGET memory-bandwidth PROPERTY
        MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
endif()
target_link_libraries(memory-bandwidth PRIVATE
    fmt
)
target_link_directories(memory-bandwidth PRIVATE
    /opt/homebrew/Cellar/fmt/10.2.1_1/lib
)
target_link_options(memory-bandwidth PRIVATE
    -isysroot
    /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
    -stdlib=libc++
    -lz
)
target_sources(memory-bandwidth PRIVATE
    memory-bandwidth.cpp
)

# target
add_executable(run_benchmark "")
set_target_properties(run_benchmark PROPERTIES OUTPUT_NAME "run_benchmark")
set_target_properties(run_benchmark PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/macosx/arm64/release")
target_include_directories(run_benchmark SYSTEM PRIVATE
    /Users/bobfang/.xmake/packages/b/benchmark/1.8.3/6e25a6199e6648668c43cb61883ec330/include
)
target_compile_options(run_benchmark PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-isysroot>
    $<$<COMPILE_LANGUAGE:CXX>:-isysroot>
    $<$<COMPILE_LANGUAGE:C>:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk>
    $<$<COMPILE_LANGUAGE:CXX>:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Werror>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror>
)
set_target_properties(run_benchmark PROPERTIES CXX_EXTENSIONS OFF)
target_compile_features(run_benchmark PRIVATE cxx_std_20)
if(MSVC)
    target_compile_options(run_benchmark PRIVATE $<$<CONFIG:Release>:-Ox -fp:fast>)
else()
    target_compile_options(run_benchmark PRIVATE -O3)
endif()
if(MSVC)
    set_property(TARGET run_benchmark PROPERTY
        MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
endif()
target_link_libraries(run_benchmark PRIVATE
    benchmark_main
    benchmark
)
target_link_directories(run_benchmark PRIVATE
    /Users/bobfang/.xmake/packages/b/benchmark/1.8.3/6e25a6199e6648668c43cb61883ec330/lib
)
target_link_options(run_benchmark PRIVATE
    -isysroot
    /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
    -stdlib=libc++
    -lz
)
target_sources(run_benchmark PRIVATE
    benchmark.cpp
)

# target
add_executable(test "")
set_target_properties(test PROPERTIES OUTPUT_NAME "test")
set_target_properties(test PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build/macosx/arm64/release")
target_compile_options(test PRIVATE
    $<$<COMPILE_LANGUAGE:C>:-isysroot>
    $<$<COMPILE_LANGUAGE:CXX>:-isysroot>
    $<$<COMPILE_LANGUAGE:C>:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk>
    $<$<COMPILE_LANGUAGE:CXX>:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Werror>
    $<$<COMPILE_LANGUAGE:CXX>:-Werror>
)
set_target_properties(test PROPERTIES CXX_EXTENSIONS OFF)
target_compile_features(test PRIVATE cxx_std_20)
if(MSVC)
    target_compile_options(test PRIVATE $<$<CONFIG:Release>:-Ox -fp:fast>)
else()
    target_compile_options(test PRIVATE -O3)
endif()
if(MSVC)
    set_property(TARGET test PROPERTY
        MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
endif()
target_link_options(test PRIVATE
    -isysroot
    /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
    -stdlib=libc++
    -lz
)
target_sources(test PRIVATE
    test.cpp
)

