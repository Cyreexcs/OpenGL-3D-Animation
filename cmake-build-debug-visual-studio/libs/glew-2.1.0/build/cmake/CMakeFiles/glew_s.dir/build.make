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

# Include any dependencies generated for this target.
include libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\depend.make
# Include the progress variables for this target.
include libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\progress.make

# Include the compile flags for this target's objects.
include libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\flags.make

libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\__\__\src\glew.c.obj: libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\flags.make
libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\__\__\src\glew.c.obj: ..\libs\glew-2.1.0\src\glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libs/glew-2.1.0/build/cmake/CMakeFiles/glew_s.dir/__/__/src/glew.c.obj"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\glew_s.dir\__\__\src\glew.c.obj /FdCMakeFiles\glew_s.dir\glew_s.pdb /FS -c C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glew-2.1.0\src\glew.c
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\__\__\src\glew.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glew_s.dir/__/__/src/glew.c.i"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe > CMakeFiles\glew_s.dir\__\__\src\glew.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glew-2.1.0\src\glew.c
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\__\__\src\glew.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glew_s.dir/__/__/src/glew.c.s"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\glew_s.dir\__\__\src\glew.c.s /c C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glew-2.1.0\src\glew.c
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\__\glew.rc.res: libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\flags.make
libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\__\glew.rc.res: ..\libs\glew-2.1.0\build\glew.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building RC object libs/glew-2.1.0/build/cmake/CMakeFiles/glew_s.dir/__/glew.rc.res"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake
	C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) /fo CMakeFiles\glew_s.dir\__\glew.rc.res C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glew-2.1.0\build\glew.rc
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

# Object files for target glew_s
glew_s_OBJECTS = \
"CMakeFiles\glew_s.dir\__\__\src\glew.c.obj" \
"CMakeFiles\glew_s.dir\__\glew.rc.res"

# External object files for target glew_s
glew_s_EXTERNAL_OBJECTS =

lib\libglew32d.lib: libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\__\__\src\glew.c.obj
lib\libglew32d.lib: libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\__\glew.rc.res
lib\libglew32d.lib: libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\build.make
lib\libglew32d.lib: libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library ..\..\..\..\lib\libglew32d.lib"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake
	$(CMAKE_COMMAND) -P CMakeFiles\glew_s.dir\cmake_clean_target.cmake
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:..\..\..\..\lib\libglew32d.lib @CMakeFiles\glew_s.dir\objects1.rsp 
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

# Rule to build all files generated by this target.
libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\build: lib\libglew32d.lib
.PHONY : libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\build

libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\clean:
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake
	$(CMAKE_COMMAND) -P CMakeFiles\glew_s.dir\cmake_clean.cmake
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio
.PHONY : libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\clean

libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glew-2.1.0\build\cmake C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libs\glew-2.1.0\build\cmake\CMakeFiles\glew_s.dir\depend

