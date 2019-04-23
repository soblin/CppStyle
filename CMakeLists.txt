project(CppStyle)

cmake_minimum_required(VERSION 2.8.3)

# for compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# External Project
include(cmake/gtest.cmake)
#include(cmake/pybind11.cmake)
function(add_sources)
  get_property(is_defined GLOBAL PROPERTY SRCS_LIST DEFINED)
  if(NOT is_defined)
    define_property(GLOBAL PROPERTY SRCS_LIST
      BRIEF_DOCS "List of source files"
      FULL_DOCS "List of all source files in the entire project")
  endif()
  # make absolute paths
  set(SRCS)
  foreach(s IN LISTS ARGN)
    if(NOT IS_ABSOLUTE "${s}")
      get_filename_component(s "${s}" ABSOLUTE)
    endif()
    list(APPEND SRCS "${s}")
  endforeach()
  # append to global list
  set_property(GLOBAL APPEND PROPERTY SRCS_LIST "${SRCS}")
endfunction()
set(header_directory "include/CppStyle/")

file(GLOB lib_sources "lib/lib1/[a-zA-Z]*.cpp")
file(GLOB temp "lib/lib2/[a-zA-Z]*.cpp")
list(APPEND lib_sources ${temp})
file(GLOB lib_headers "include/CppStyle/lib1/[a-zA-Z]*.h")
file(GLOB temp "include/CppStyle/lib2/[a-zA-Z]*.h")
list(APPEND lib_headers ${temp})
file(GLOB sources "src/[a-zA-Z]*.cpp")

set(project_sources
  ${lib_sources}
  ${lib_headers}
  ${sources}
  )

add_sources(${project_sources})
get_property(all_sources GLOBAL PROPERTY SRCS_LIST)

# you can include <project_name/lib1/lib1_header.h>
include_directories(
  include
  )

# library
add_library(
  ${PROJECT_NAME}
  SHARED
  lib/lib1/lib1_source1.cpp
  lib/lib1/lib1_source2.cpp
  lib/lib2/lib2_source1.cpp
  lib/lib2/lib2_source2.cpp
  )

# main programs
add_executable(runtime1 src/runtime1.cpp)
target_link_libraries(runtime1 ${PROJECT_NAME})

add_executable(runtime2 src/runtime2.cpp)
target_link_libraries(runtime2 ${PROJECT_NAME})

# testing
if(NOT without-test)
  enable_testing()
  add_subdirectory(test)
endif()

# clang-format
find_program(CLANG_FORMAT_EXE clang-format)
if(CLANG_FORMAT_EXE)
  add_custom_target(format
    COMMAND clang-format --style=file -i ${all_sources}
    COMMENT "Running clnag-format"
    VERBATIM)
endif()
