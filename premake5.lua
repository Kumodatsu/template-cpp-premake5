-- Makes a path relative to the folder containing this script file.
ROOT_PATH = function(path)
    return string.format("%s/%s", _MAIN_SCRIPT_DIR, path)
end

PROJ_DIR = ROOT_PATH "projects"
DEP_DIR  = ROOT_PATH "dependencies"
BIN_DIR  = ROOT_PATH "_out/bin/%{cfg.buildcfg}-%{cfg.platform}/%{prj.name}"
OBJ_DIR  = ROOT_PATH "_out/obj/%{cfg.buildcfg}-%{cfg.platform}/%{prj.name}"

WORKSPACE_NAME = "workspace"
START_PROJECT  = "program"

include "workspace.lua"
include "projects.lua"

for _, path in ipairs(PROJECTS) do
    include(path .. "/premake5.lua")
end
