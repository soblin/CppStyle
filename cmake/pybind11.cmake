cmake_minimum_required(VERSION 2.8.3)

include(ExternalProject)

# install path
if(NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/lib/pybind11)
  file(MAKE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib/pybind11)
endif()

ExternalProject_Add(
  PyBind11
  URL https://github.com/pybind/pybind11/archive/v2.2.4.zip
  PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/lib/pybind11/
  INSTALL_COMMAND ""
  LOG_DOWNLOAD ON
  )

ExternalProject_Get_Property(PyBind11 source_dir)
include_directories(${source_dir}/include)
