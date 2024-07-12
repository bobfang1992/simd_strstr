set_languages("c++20")
add_requires("benchmark")
add_requires("fmt")


target("test")
    set_kind("binary")
    add_files("test.cpp")
    add_cxflags("-Wall", "-Wextra", "-Werror", "-fno-slp-vectorize")
    -- Set optimization level based on the build mode
    if is_mode("debug") then
        set_optimize("none")
    elseif is_mode("release") then
        set_optimize("fastest")
    end

target("run_benchmark")
    set_kind("binary")
    add_files("benchmark.cpp")
    add_cxflags("-Wall", "-Wextra", "-Werror", "-fno-slp-vectorize")
    add_packages("benchmark")
    -- Set optimization level based on the build mode
    if is_mode("debug") then
        set_optimize("none")
    elseif is_mode("release") then
        set_optimize("fastest")
    end

target("memory-bandwidth")
    set_kind("binary")
    add_files("memory-bandwidth.cpp")
    add_cxflags("-Wall", "-Wextra", "-Werror")
    add_packages("fmt")
    -- Set optimization level based on the build mode
    if is_mode("debug") then
        set_optimize("none")
    elseif is_mode("release") then
        set_optimize("fastest")
    end