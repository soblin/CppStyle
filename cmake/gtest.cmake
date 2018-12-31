cmake_minimum_required(VERSION 2.8.3)

# Google Test settings
include(ExternalProject)

ExternalProject_Add(
  GTest
  URL https://github.com/google/googletest/archive/release-1.8.1.zip
  PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/lib/
  INSTALL_COMMAND ""
  LOG_DOWNLOAD ON
  )

ExternalProject_Get_Property(GTest source_dir)
include_directories(${source_dir}/googletest/include)

ExternalProject_Get_Property(GTest binary_dir)
add_library(gtest STATIC IMPORTED)

set_property(
  TARGET gtest
  PROPERTY IMPORTED_LOCATION ${binary_dir}/googlemock/gtest/libgtest.a
  )
add_library(gtest_main STATIC IMPORTED)
set_property(
  TARGET gtest_main
  PROPERTY IMPORTED_LOCATION ${binary_dir}/googlemock/gtest/libgtest_main.a
  )
