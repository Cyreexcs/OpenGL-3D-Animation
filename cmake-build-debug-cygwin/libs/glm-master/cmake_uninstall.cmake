if(NOT EXISTS "/cygdrive/c/Users/Boull/OneDrive/Desktop/VC/OpenGL_Praktikum_Framework/OpenGL_Praktikum/cmake-build-debug-cygwin/libs/glm-master/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: /cygdrive/c/Users/Boull/OneDrive/Desktop/VC/OpenGL_Praktikum_Framework/OpenGL_Praktikum/cmake-build-debug-cygwin/libs/glm-master/install_manifest.txt")
endif(NOT EXISTS "/cygdrive/c/Users/Boull/OneDrive/Desktop/VC/OpenGL_Praktikum_Framework/OpenGL_Praktikum/cmake-build-debug-cygwin/libs/glm-master/install_manifest.txt")

if (NOT DEFINED CMAKE_INSTALL_PREFIX)
  set (CMAKE_INSTALL_PREFIX "/usr/local")
endif ()
 message(${CMAKE_INSTALL_PREFIX})

file(READ "/cygdrive/c/Users/Boull/OneDrive/Desktop/VC/OpenGL_Praktikum_Framework/OpenGL_Praktikum/cmake-build-debug-cygwin/libs/glm-master/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
  message(STATUS "Uninstalling $ENV{DESTDIR}${file}")
  if(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    exec_program(
      "/cygdrive/c/Users/Boull/AppData/Local/JetBrains/CLion2021.2/cygwin_cmake/bin/cmake.exe" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
    if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing $ENV{DESTDIR}${file}")
    endif(NOT "${rm_retval}" STREQUAL 0)
  else(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    message(STATUS "File $ENV{DESTDIR}${file} does not exist.")
  endif(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
endforeach(file)
