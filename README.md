# CppStyle

これは個人用のC++スタイルガイドである. 現時点で自分にとって最も混乱を引き起こさない命名規則, CMakeを前提として拡張性があるディレクトリ構造を目指す.

## これを作る理由

今までEmacsを使ってC++のプログラムを書いてきたが, デフォルトの補完機能は貧弱である. やはりチェッカーでシンタックスチェックを行いながらプログラムを書きたいので, `rtags`を使うようになった. `rtags`を使うにはプロジェクトのコンパイルコマンドが記された`compile_commands.json`が必要であるので, 自然とCMakeを利用してビルドするようになった.

クラスのメソッドのコードを書くときに, メンバ変数を区別するために末尾にアンダーバーを付けたり始めに`m_`を付けたりと色々と試してきたが, `mMemberVariable`の形式にするのが一番わかり易いと感じた. `Class(MemberVariable) : mMemberVariable(MemberVariable) {}`のようにして仮引数と区別を付けるためである. またメンバ関数はlower-camel, クラス名はupper-camelにすることが経験的に多い. 

一旦今までの傾向をまとめておきたい.

## ディレクトリ構造

以下の感じが今の所ベスト. llvmのレポジトリを参考にしている. 共通部分はすべてライブラリにまとめ, main()をsrc/runtime.cppに書いていく.

```
├── .clang-format
├── .travis.yml
├── CMakeLists.txt
├── README.md
├── cmake
│   ├── FindEigen3.cmake
│   ├── gtest.cmake
│   └── pybind11.cmake
├── examples
├── include
│   └── project_name
│       ├── lib1
│       │   ├── lib1_header1.h
│       │   └── lib1_header2.h
│       └── lib2
│           ├── lib2_header1.h
│           └── lib2_header2.h
├── lib
│   ├── lib1
│   │   ├── lib1_source1.cpp
│   │   └── lib1_source2.cpp
│   └── lib2
│       ├── lib2_source1.cpp
│       └── lib2_source2.cpp
├── src
│   ├── runtime1.cpp
│   └── runtime2.cpp
└── test
    └── CMakeLists.txt

```

CMakeLists.txtで`include`を`include_directories`に指定すれば, `#include <project_name/lib1/lib1_header1.h`が通るようになる.

