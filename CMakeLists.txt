project(CppStyle)

cmake_minimum_required(VERSION 2.8.3)

# for compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

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
  include(cmake/gtest.cmake)
  add_subdirectory(test)
endif()
