cmake_minimum_required(VERSION 2.8.3)

add_compile_options(-std=c++11)

include_directories(
  ../include
  )

add_executable(test1 test1.cpp)
target_link_libraries(test1
  CppStyle
  gtest
  gtest_main
  pthread
  )

add_test(
  NAME test1
  COMMAND $<TARGET_FILE:test1>
  )
