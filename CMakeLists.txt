project(CppStyle)

cmake_minimum_required(VERSION 2.8.3)

include_directories(
  include
  )

add_library(
  ${PROJECT_NAME}
  SHARED
  lib/lib1/lib1_source1.cpp
  lib/lib1/lib1_source2.cpp
  lib/lib2/lib2_source1.cpp
  lib/lib2/lib2_source2.cpp
  )

add_executable(runtime1 src/runtime1.cpp)
target_link_libraries(runtime1 ${PROJECT_NAME})

add_executable(runtime2 src/runtime2.cpp)
target_link_libraries(runtime2 ${PROJECT_NAME})
