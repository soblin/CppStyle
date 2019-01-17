#include <CppStyle/lib1/lib1_header1.h>
#include <CppStyle/lib1/lib1_header2.h>
#include <CppStyle/lib2/lib2_header1.h>
#include <CppStyle/lib2/lib2_header2.h>
#include <gtest/gtest.h>

TEST(test1, test1) {
  using namespace CppStyle;
  ClassLibrary1 lib1;
  ClassLibrary2 lib2;
  ClassLibrary3 lib3;
  ClassLibrary4 lib4;

  int val = 123;
  ASSERT_EQ(val, 123);
}
