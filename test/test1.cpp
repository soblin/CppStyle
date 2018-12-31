#include <gtest/gtest.h>
#include <project_name/lib1/lib1_header1.h>
#include <project_name/lib1/lib1_header2.h>
#include <project_name/lib2/lib2_header1.h>
#include <project_name/lib2/lib2_header2.h>

TEST(test1, test1) {
  using namespace project_name;
  ClassLibrary1 lib1;
  ClassLibrary2 lib2;
  ClassLibrary3 lib3;
  ClassLibrary4 lib4;

  int val = 123;
  ASSERT_EQ(val, 123);
}
