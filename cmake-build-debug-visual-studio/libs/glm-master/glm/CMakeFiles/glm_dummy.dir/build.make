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
include libs\glm-master\glm\CMakeFiles\glm_dummy.dir\depend.make
# Include the progress variables for this target.
include libs\glm-master\glm\CMakeFiles\glm_dummy.dir\progress.make

# Include the compile flags for this target's objects.
include libs\glm-master\glm\CMakeFiles\glm_dummy.dir\flags.make

libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\dummy.cpp.obj: libs\glm-master\glm\CMakeFiles\glm_dummy.dir\flags.make
libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\dummy.cpp.obj: ..\libs\glm-master\glm\detail\dummy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/glm-master/glm/CMakeFiles/glm_dummy.dir/detail/dummy.cpp.obj"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\glm_dummy.dir\detail\dummy.cpp.obj /FdCMakeFiles\glm_dummy.dir\ /FS -c C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glm-master\glm\detail\dummy.cpp
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glm_dummy.dir/detail/dummy.cpp.i"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe > CMakeFiles\glm_dummy.dir\detail\dummy.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glm-master\glm\detail\dummy.cpp
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glm_dummy.dir/detail/dummy.cpp.s"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\glm_dummy.dir\detail\dummy.cpp.s /c C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glm-master\glm\detail\dummy.cpp
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\glm.cpp.obj: libs\glm-master\glm\CMakeFiles\glm_dummy.dir\flags.make
libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\glm.cpp.obj: ..\libs\glm-master\glm\detail\glm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libs/glm-master/glm/CMakeFiles/glm_dummy.dir/detail/glm.cpp.obj"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\glm_dummy.dir\detail\glm.cpp.obj /FdCMakeFiles\glm_dummy.dir\ /FS -c C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glm-master\glm\detail\glm.cpp
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\glm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glm_dummy.dir/detail/glm.cpp.i"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe > CMakeFiles\glm_dummy.dir\detail\glm.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glm-master\glm\detail\glm.cpp
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\glm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glm_dummy.dir/detail/glm.cpp.s"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\glm_dummy.dir\detail\glm.cpp.s /c C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glm-master\glm\detail\glm.cpp
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

# Object files for target glm_dummy
glm_dummy_OBJECTS = \
"CMakeFiles\glm_dummy.dir\detail\dummy.cpp.obj" \
"CMakeFiles\glm_dummy.dir\detail\glm.cpp.obj"

# External object files for target glm_dummy
glm_dummy_EXTERNAL_OBJECTS =

libs\glm-master\glm\glm_dummy.exe: libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\dummy.cpp.obj
libs\glm-master\glm\glm_dummy.exe: libs\glm-master\glm\CMakeFiles\glm_dummy.dir\detail\glm.cpp.obj
libs\glm-master\glm\glm_dummy.exe: libs\glm-master\glm\CMakeFiles\glm_dummy.dir\build.make
libs\glm-master\glm\glm_dummy.exe: libs\glm-master\glm\CMakeFiles\glm_dummy.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable glm_dummy.exe"
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm
	"C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\glm_dummy.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\glm_dummy.dir\objects1.rsp @<<
 /out:glm_dummy.exe /implib:glm_dummy.lib /pdb:C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm\glm_dummy.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio

# Rule to build all files generated by this target.
libs\glm-master\glm\CMakeFiles\glm_dummy.dir\build: libs\glm-master\glm\glm_dummy.exe
.PHONY : libs\glm-master\glm\CMakeFiles\glm_dummy.dir\build

libs\glm-master\glm\CMakeFiles\glm_dummy.dir\clean:
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm
	$(CMAKE_COMMAND) -P CMakeFiles\glm_dummy.dir\cmake_clean.cmake
	cd C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio
.PHONY : libs\glm-master\glm\CMakeFiles\glm_dummy.dir\clean

libs\glm-master\glm\CMakeFiles\glm_dummy.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\libs\glm-master\glm C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm C:\Users\Boull\OneDrive\Desktop\VC\OpenGL_Praktikum_Framework\OpenGL_Praktikum\cmake-build-debug-visual-studio\libs\glm-master\glm\CMakeFiles\glm_dummy.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libs\glm-master\glm\CMakeFiles\glm_dummy.dir\depend

