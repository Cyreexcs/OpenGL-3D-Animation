# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

# Utility rule file for uninstall.

# Include any custom commands dependencies for this target.
include libs\glm-master\CMakeFiles\uninstall.dir\compiler_depend.make

# Include the progress variables for this target.
include libs\glm-master\CMakeFiles\uninstall.dir\progress.make

libs\glm-master\CMakeFiles\uninstall:
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -P C:/Users/Boull/OneDrive/Desktop/VC/OpenGL_Praktikum_Framework/OpenGL_Praktikum/cmake-build-debug-visual-studio/libs/glm-master/cmake_uninstall.cmake
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

uninstall: libs\glm-master\CMakeFiles\uninstall
uninstall: libs\glm-master\CMakeFiles\uninstall.dir\build.make
.PHONY : uninstall

# Rule to build all files generated by this target.
libs\glm-master\CMakeFiles\uninstall.dir\build: uninstall
.PHONY : libs\glm-master\CMakeFiles\uninstall.dir\build

libs\glm-master\CMakeFiles\uninstall.dir\clean:
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master
	$(CMAKE_COMMAND) -P CMakeFiles\uninstall.dir\cmake_clean.cmake
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio
.PHONY : libs\glm-master\CMakeFiles\uninstall.dir\clean

libs\glm-master\CMakeFiles\uninstall.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glm-master C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\CMakeFiles\uninstall.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libs\glm-master\CMakeFiles\uninstall.dir\depend

