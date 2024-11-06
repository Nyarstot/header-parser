print(os.date() .. " Initialize submodules...")
os.execute("git submodule update --init --recursive")


workspace "HeaderParser"
    architecture "x64"
    startproject "HeaderParser"
    configurations {"Debug", "Release"}

    buildpattern = "%{cfg.buildcfg}.%{cfg.system}.%{cfg.architecture}"

    project "HeaderParser"
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