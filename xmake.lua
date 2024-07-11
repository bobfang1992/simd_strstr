set_languages("c++20")

target("test")
    set_kind("binary")
    add_files("test.cpp")
    -- Set optimization level based on the build mode
    if is_mode("debug") then
        set_optimize("none")
    elseif is_mode("release") then
        set_optimize("fastest")
    end

