workspace (WORKSPACE_NAME)
    startproject (START_PROJECT)
    configurations {
        "debug",
        "profile",
        "release"
    }
    platforms {
        "x86_64",
        "x64"
    }
    filter "configurations:debug"
        runtime  "debug"
        symbols  "on"
        optimize "off"
    filter "configurations:profile"
        runtime  "release"
        symbols  "on"
        optimize "on"
    filter "configurations:release"
        runtime  "release"
        symbols  "off"
        optimize "on"
    filter "platforms:x86_64"
        architecture "x86_64"
    filter "platforms:x64"
        architecture "x64"
    