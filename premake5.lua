print(os.date() .. " Initialize submodules...")
os.execute("git submodule update --init --recursive")


workspace "header-parser"
    architecture "x64"
    startproject "header-parser"
    configurations {"Debug", "Release"}

    buildpattern = "%{cfg.buildcfg}.%{cfg.system}.%{cfg.architecture}"

    project "header-parser"
        kind "ConsoleApp"
        language "C++"
        cppdialect "C++17"

        targetdir("build/bin/" .. buildpattern .. "/%{prj.name}")
        objdir("build/int/" .. buildpattern .. "/%{prj.name}")

        files
        {
            "./*.h",
            "./*cc"
        }

        includedirs
        {
            "./external/rapidjson/include",
            "./external/tclap/include"
        }

        filter "configurations:Debug"
            symbols "on"

        filter "configurations:Release"
            optimize "on"