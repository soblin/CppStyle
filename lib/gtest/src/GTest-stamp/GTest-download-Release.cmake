

set(command "/usr/bin/cmake;-Dmake=${make};-Dconfig=${config};-P;/home/mamoru/Programming/C++/projects/CppStyle/lib/gtest//src/GTest-stamp/GTest-download-Release-impl.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/home/mamoru/Programming/C++/projects/CppStyle/lib/gtest//src/GTest-stamp/GTest-download-out.log"
  ERROR_FILE "/home/mamoru/Programming/C++/projects/CppStyle/lib/gtest//src/GTest-stamp/GTest-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest//src/GTest-stamp/GTest-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "GTest download command succeeded.  See also /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest//src/GTest-stamp/GTest-download-*.log")
  message(STATUS "${msg}")
endif()
