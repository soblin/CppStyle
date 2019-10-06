project(CppStyle)

cmake_minimum_required(VERSION 2.8.3)

# for compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# External Project
include(cmake/gtest.cmake)
#include(cmake/pybind11.cmake)

file(GLOB lib_sources
  "lib/lib1/[a-zA-Z]*.cpp"
  "lib/lib2/[a-zA-Z]*.cpp"
  )
file(GLOB lib_headers
  "include/CppStyle/lib1/[a-zA-Z]*.h"
  "include/CppStyle/lib2/[a-zA-Z]*.h"
  )
file(GLOB exe_sources
  "src/[a-zA-Z]*.cpp"
  )

file(GLOB test_sources
  "test/*.cpp"
  )

set(project_sources
  ${lib_sources}
  ${lib_headers}
  ${exe_sources}
  ${test_sources}
  )

# you can include <project_name/lib1/lib1_header.h>
include_directories(
  include
  )

# library
add_library(
  ${PROJECT_NAME}
  SHARED
  ${lib_sources}
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
  # run clang-format
  add_custom_target(${PROJECT_NAME}-format ALL
    COMMAND clang-format --style=file -i ${project_sources}
    COMMENT "Running clang-format"
    VERBATIM)
endif()
