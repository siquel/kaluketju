solution "kaluketju"
	configurations {
		"debug", 
		"release"
	}

	platforms {
		"x32",
		"x64"
	}

	language "C++"

KALUKETJU_DIR = path.getabsolute("..")
KALUKETJU_BUILD_DIR = path.join(KALUKETJU_DIR, ".build")
KALUKETJU_LIB_DIR   = path.join(KALUKETJU_DIR, "3rdparty")

dofile "toolchain.lua"
toolchain(KALUKETJU_BUILD_DIR, KALUKETJU_LIB_DIR)


project "kek"
	kind "ConsoleApp"