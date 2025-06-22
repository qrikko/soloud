-- premake5.lua - Generated from SoLoud's genie.lua, optimized for Premake5 (updated for beta7 flags)

-- Define your external library roots here
-- YOU WILL ALMOST CERTAINLY NEED TO CHANGE THESE PATHS
-- Example paths (adjust for your system):
local sdl_root       = "/usr/local"
local sdl2_root      = "/usr/local"
local dxsdk_root     = os.getenv("DXSDK_DIR") or "C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)"
local portaudio_root = "/usr/local"
local openal_root    = "/usr/local"

-- Build configuration flags - initial state from genie.lua
local WITH_SDL = 0
local WITH_SDL2 = 0
local WITH_SDL_STATIC = 0
local WITH_SDL2_STATIC = 0
local WITH_PORTAUDIO = 0
local WITH_OPENAL = 0
local WITH_XAUDIO2 = 0
local WITH_WINMM = 0
local WITH_WASAPI = 0
local WITH_ALSA = 0
local WITH_JACK = 0
local WITH_OSS = 0
local WITH_COREAUDIO = 0
local WITH_VITA_HOMEBREW = 0
local WITH_NOSOUND = 0
local WITH_MINIAUDIO = 0
local WITH_NULL = 1 -- Default from genie.lua
local WITH_TOOLS = 0

if (os.host() == "Windows") then
	WITH_WINMM = 1
elseif (os.host() == "macosx") then
	WITH_COREAUDIO = 1
else
	WITH_ALSA = 1
	WITH_OSS = 1
end

-- Derived include and lib paths
local sdl_include       = sdl_root .. "/include"
local sdl2_include      = sdl2_root .. "/include"
local sdl2_lib_x86      = sdl2_root .. "/lib/x86"
local sdl2_lib_x64      = sdl2_root .. "/lib/x64"
local dxsdk_include     = dxsdk_root .. "/include"
local portaudio_include = portaudio_root .. "/include"
local openal_include    = openal_root .. "/include"

local buildroot = ""
if _ACTION then buildroot = _ACTION end -- Retain original genie logic for buildroot

-- Process options (logic directly from genie.lua)
if _OPTIONS["soloud-devel"] then
    WITH_SDL = 0
    WITH_SDL2 = 1
    WITH_SDL_STATIC = 0
    WITH_SDL2_STATIC = 0
    WITH_PORTAUDIO = 1
    WITH_OPENAL = 1
    WITH_XAUDIO2 = 0
    WITH_WINMM = 0
    WITH_WASAPI = 0
    WITH_MINIAUDIO = 1
    WITH_OSS = 1
    WITH_NOSOUND = 1
    if (os.host() == "Windows") then
    	WITH_XAUDIO2 = 0
    	WITH_WINMM = 1
    	WITH_WASAPI = 1
    	WITH_OSS = 0
    end
    WITH_TOOLS = 1
end

if _OPTIONS["with-common-backends"] then
    WITH_SDL = 1
    WITH_SDL_STATIC = 0
    WITH_SDL2_STATIC = 0
    WITH_PORTAUDIO = 1
    WITH_OPENAL = 1
    WITH_XAUDIO2 = 0
    WITH_WINMM = 0
    WITH_WASAPI = 0
    WITH_OSS = 1
    WITH_NOSOUND = 1
    WITH_MINIAUDIO = 0

    if (os.host() == "Windows") then
    	WITH_XAUDIO2 = 0
    	WITH_WINMM = 1
    	WITH_WASAPI = 1
    	WITH_OSS = 0
    end
end

if _OPTIONS["with-xaudio2"] then
	WITH_XAUDIO2 = 1
end

if _OPTIONS["with-openal"] then
	WITH_OPENAL = 1
end

if _OPTIONS["with-portaudio"] then
	WITH_PORTAUDIO = 1
end

if _OPTIONS["with-coreaudio"] then
	WITH_COREAUDIO = 1
end

if _OPTIONS["with-sdl"] then
	WITH_SDL = 1
end

if _OPTIONS["with-sdl2"] then
	WITH_SDL2 = 1
end

if _OPTIONS["with-wasapi"] then
	WITH_WASAPI = 1
end

if _OPTIONS["with-nosound"] then
    WITH_NOSOUND = 1
end

if _OPTIONS["with-sdl-only"] then
	WITH_SDL = 1
	WITH_SDL2 = 0
	WITH_SDL_STATIC = 0
	WITH_SDL2_STATIC = 0
	WITH_PORTAUDIO = 0
	WITH_OPENAL = 0
	WITH_XAUDIO2 = 0
	WITH_WINMM = 0
	WITH_WASAPI = 0
	WITH_OSS = 0
	WITH_NOSOUND = 0
	WITH_MINIAUDIO = 0
end

if _OPTIONS["with-sdl2-only"] then
	WITH_SDL = 0
	WITH_SDL2 = 1
	WITH_SDL_STATIC = 0
	WITH_SDL2_STATIC = 0
	WITH_PORTAUDIO = 0
	WITH_OPENAL = 0
	WITH_XAUDIO2 = 0
	WITH_WINMM = 0
	WITH_WASAPI = 0
	WITH_OSS = 0
	WITH_NOSOUND = 0
	WITH_MINIAUDIO = 0
end

if _OPTIONS["with-sdlstatic-only"] then
	WITH_SDL = 0
	WITH_SDL2 = 0
	WITH_SDL_STATIC = 1
	WITH_PORTAUDIO = 0
	WITH_OPENAL = 0
	WITH_XAUDIO2 = 0
	WITH_WINMM = 0
	WITH_WASAPI = 0
	WITH_OSS = 0
	WITH_NOSOUND = 0
	WITH_MINIAUDIO = 0
end

if _OPTIONS["with-sdl2static-only"] then
	WITH_SDL = 0
	WITH_SDL2 = 0
	WITH_SDL_STATIC = 0
	WITH_SDL2_STATIC = 1
	WITH_PORTAUDIO = 0
	WITH_OPENAL = 0
	WITH_XAUDIO2 = 0
	WITH_WINMM = 0
	WITH_WASAPI = 0
	WITH_OSS = 0
	WITH_NOSOUND = 0
	WITH_MINIAUDIO = 0
end

if _OPTIONS["with-vita-homebrew-only"] then
	WITH_SDL = 0
	WITH_SDL2 = 0
	WITH_SDL_STATIC = 0
	WITH_SDL2_STATIC = 0
	WITH_PORTAUDIO = 0
	WITH_OPENAL = 0
	WITH_XAUDIO2 = 0
	WITH_WINMM = 0
	WITH_WASAPI = 0
	WITH_OSS = 0
	WITH_ALSA = 0
	WITH_VITA_HOMEBREW = 1
	WITH_NOSOUND = 0
	WITH_MINIAUDIO = 0

	-- Premake5 supports overriding toolchain executables directly,
	-- but it's usually done via `toolset` filter and `buildcommands`
	-- or `linkcommands`. The direct `premake.gcc.cc` assignments are
	-- less common in typical Premake5 scripts, but could be specific
	-- to how GENie handles it. For safety, keeping as comment.
	-- If you encounter issues, look into `toolset` configuration.
	-- premake.gcc.cc = "arm-vita-eabi-gcc"
	-- premake.gcc.cxx = "arm-vita-eabi-g++"
	-- premake.gcc.ar = "arm-vita-eabi-ar"
end

if _OPTIONS["with-jack"] then
	WITH_JACK = 1
end

if _OPTIONS["with-jack-only"] then
	WITH_SDL = 0
	WITH_SDL2 = 0
	WITH_SDL_STATIC = 0
	WITH_SDL2_STATIC = 0
	WITH_PORTAUDIO = 0
	WITH_OPENAL = 0
	WITH_XAUDIO2 = 0
	WITH_WINMM = 0
	WITH_WASAPI = 0
	WITH_OSS = 0
	WITH_ALSA = 0
	WITH_VITA_HOMEBREW = 0
	WITH_COREAUDIO = 0
	WITH_JACK = 1
	WITH_NOSOUND = 0
	WITH_MINIAUDIO = 0
end

if _OPTIONS["with-miniaudio"] then
    WITH_MINIAUDIO = 1
end

if _OPTIONS["with-miniaudio-only"] then
	WITH_SDL = 0
	WITH_SDL2 = 0
	WITH_SDL_STATIC = 0
	WITH_SDL2_STATIC = 0
	WITH_PORTAUDIO = 0
	WITH_OPENAL = 0
	WITH_XAUDIO2 = 0
	WITH_WINMM = 0
	WITH_WASAPI = 0
	WITH_OSS = 0
	WITH_ALSA = 0
	WITH_VITA_HOMEBREW = 0
	WITH_COREAUDIO = 0
	WITH_JACK = 0
	WITH_NOSOUND = 0
	WITH_MINIAUDIO = 1
end

if _OPTIONS["with-native-only"] then
	WITH_SDL = 0
	WITH_SDL2 = 0
	WITH_SDL_STATIC = 0
	WITH_SDL2_STATIC = 0
	WITH_PORTAUDIO = 0
	WITH_OPENAL = 0
	WITH_XAUDIO2 = 0
	WITH_WINMM = 0
	WITH_WASAPI = 0
	WITH_OSS = 0
	WITH_MINIAUDIO = 0
	WITH_NOSOUND = 0
	if (os.host() == "Windows") then
		WITH_WINMM = 1
	elseif (os.host() == "macosx") then
		WITH_COREAUDIO = 1
	else
	  WITH_OSS = 1
	end
end

if _OPTIONS["with-tools"] then
	WITH_TOOLS = 1
end

--[[
print ("")
print ("Active options:")
print ("WITH_SDL        = ", WITH_SDL)
print ("WITH_SDL2       = ", WITH_SDL2)
print ("WITH_PORTAUDIO  = ", WITH_PORTAUDIO)
print ("WITH_OPENAL     = ", WITH_OPENAL)
print ("WITH_XAUDIO2    = ", WITH_XAUDIO2)
print ("WITH_WINMM      = ", WITH_WINMM)
print ("WITH_WASAPI     = ", WITH_WASAPI)
print ("WITH_ALSA       = ", WITH_ALSA)
print ("WITH_JACK       = ", WITH_JACK)
print ("WITH_OSS        = ", WITH_OSS)
print ("WITH_MINIAUDIO  = ", WITH_MINIAUDIO)
print ("WITH_NOSOUND    = ", WITH_NOSOUND)
print ("WITH_COREAUDIO  = ", WITH_COREAUDIO)
print ("WITH_VITA_HOMEBREW = ", WITH_VITA_HOMEBREW)
print ("WITH_TOOLS      = ", WITH_TOOLS)
print ("")
]]

-- Helper function for common SDL2 library paths
function sdl2_lib_common_path()
    filter "platforms:x32" -- Use x32 as per original and Premake5
        libdirs { sdl2_lib_x86 }
    filter "platforms:x64"
        libdirs { sdl2_lib_x64 }
    filter {} -- Reset platform filter
end

-- Helper function for common demo project settings
function CommonDemo(_name)
  project(_name)
	kind "WindowedApp"
	language "C++"
	files {
	  "../demos/" .. _name .. "/**.c*"
	  }
	includedirs {
	  "../include",
	  "../demos/common",
	  "../demos/common/imgui",
	  "../demos/common/glew",
	  sdl2_include
	}
	sdl2_lib_common_path() -- Call the helper function

	defines { "GLEW_STATIC" }

if (WITH_ALSA == 1) then
	links {"asound"}
end
if (WITH_JACK == 1) then
	links { "jack" }
end
if (WITH_COREAUDIO == 1) then
	links {"AudioToolbox.framework"}
end

		links {"SoloudStatic", "SoloudDemoCommon", "SDL2main", "SDL2"}
if (os.host() == "Windows") then
        links {"opengl32"}
end
		if (not os.host() == "Windows") then
		  links { "pthread" }
		  links { "dl" }
		  links { "GL" }
		end

		targetname (_name)
end


-- Individual Projects

project "SoloudStatic"
    kind "StaticLib"
	targetdir (engine.lib)
	objdir (engine.intermediate)

    language "C++"

    files {
        "src/c_api/**.c*",
--        "src/audiosource/**.c*",
--        "src/filter/**.c*",
--        "src/core/**.c*"
    }

    includedirs {
        "src/**",
        "include"
    }

    if (WITH_OPENAL == 1) then
        defines {"WITH_OPENAL"}
        files { "src/backend/openal/**.c*" }

        includedirs {
            "include",
            openal_include
        }
    end

    if (WITH_ALSA == 1) then
        defines {"WITH_ALSA"}
        files {
            "src/backend/alsa/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_OSS == 1) then
        defines {"WITH_OSS"}
        files {
            "src/backend/oss/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_MINIAUDIO == 1) then
        defines {"WITH_MINIAUDIO"}
        files {
            "src/backend/miniaudio/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_NOSOUND == 1) then
        defines {"WITH_NOSOUND"}
        files {
            "src/backend/nosound/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_COREAUDIO == 1) then
        defines {"WITH_COREAUDIO"}
        files {
            "src/backend/coreaudio/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_PORTAUDIO == 1) then
        defines {"WITH_PORTAUDIO"}

        files {
            "src/backend/portaudio/**.c*"
        }
        includedirs {
            "include",
            portaudio_include
        }
    end

    if (WITH_SDL == 1) then
        defines { "WITH_SDL" }
        files {
            "src/backend/sdl/**.c*"
        }
        includedirs {
            "include",
            sdl_include
        }
    end

    if (WITH_SDL2 == 1) then
        defines { "WITH_SDL2" }
        files {
            "src/backend/sdl/**.c*"
        }
        includedirs {
            "include",
            sdl2_include
        }
    end

    if (WITH_SDL_STATIC == 1) then
		defines { "WITH_SDL_STATIC" }
        files {
            "src/backend/sdl_static/**.c*"
        }
        includedirs {
            "include",
            sdl_include
        }
    end

    if (WITH_SDL2_STATIC == 1) then
		defines { "WITH_SDL2_STATIC" }
        files {
            "src/backend/sdl2_static/**.c*"
        }
        includedirs {
            "include",
            sdl2_include
        }
    end

    if (WITH_WASAPI == 1) then
        defines { "WITH_WASAPI" }
        files {
            "src/backend/wasapi/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_XAUDIO2 == 1) then
        defines {"WITH_XAUDIO2"}
        files {
            "src/backend/xaudio2/**.c*"
        }
        includedirs {
            "include",
            dxsdk_include
        }
    end

    if (WITH_WINMM == 1) then
		defines { "WITH_WINMM" }
        files {
            "src/backend/winmm/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_VITA_HOMEBREW == 1) then
		defines { "WITH_VITA_HOMEBREW", "usleep=sceKernelDelayThread" }
        files {
            "src/backend/vita_homebrew/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_JACK == 1) then
        defines { "WITH_JACK" }
        links { "jack" }
        files {
            "src/backend/jack/**.c*"
        }
        includedirs {
            "include"
        }
    end

    if (WITH_NULL == 1) then
        defines { "WITH_NULL" }
        files {
            "src/backend/null/**.c*"
        }
        includedirs {
            "include"
        }
    end

    targetname "soloud_static"


--[[
project "SoloudDynamic"
		kind "SharedLib"
		targetdir "../lib"
		language "C++"
		files
		{
		  "../src/c_api/**.c*"
		}

		includedirs
		{
		  "../src/**",
		  "../include"
		}

		links {"SoloudStatic"}

if (os.host() == "Windows") then
	linkoptions { "/DEF:\"../../src/c_api/soloud.def\"" }
end

		targetname "soloud"
		implibdir("../lib")
		implibname("soloud")


-- The rest of the projects require SDL2
if (WITH_SDL2 == 1 or WITH_SDL2_STATIC == 1) then

  CommonDemo("megademo")
  project "piano"
	kind "WindowedApp"
	language "C++"
	files {
	  "../demos/piano/**.c*",
	  "../demos/common/**.c*",
	  "../demos/common/imgui/**.c*",
	  "../demos/common/glew/GL/**.c*"
	  }
	includedirs {
	  "../include",
	  "../demos/common",
	  "../demos/common/imgui",
	  "../demos/common/glew",
	  sdl2_include
	}
    sdl2_lib_common_path() -- Call the helper function

	defines { "GLEW_STATIC" }

if (WITH_ALSA == 1) then
	links {"asound"}
end
if (WITH_JACK == 1) then
	links { "jack" }
end
if (WITH_COREAUDIO == 1) then
	links {"AudioToolbox.framework"}
end

		links {"SoloudStatic", "SDL2main", "SDL2"}
if (os.host() == "Windows") then
        links {"opengl32"}
        defines {"__WINDOWS_MM__"}
end
		if (not os.host() == "Windows") then
		  defines { "__LINUX_ALSA__"}
		  links { "pthread" }
		  links { "dl" }
		  links { "GL" }
		end

		targetname "piano"

    CommonDemo("env")
]]
