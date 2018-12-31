#include <iostream>

#include <project_name/lib1/lib1_header1.h>
#include <project_name/lib1/lib1_header2.h>
#include <project_name/lib2/lib2_header1.h>
#include <project_name/lib2/lib2_header2.h>

int main(){
  using namespace project_name;
  ClassLibrary1 lib1;
  ClassLibrary2 lib2;
  ClassLibrary3 lib3;
  ClassLibrary4 lib4;
  
  std::cout << "Hello World" << std::endl;
}
