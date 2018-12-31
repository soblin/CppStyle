#!/bin/bash

HDRS=`find ./include -name *.h`
for header in $HDRS; do
    clang-format -i -style=file $header
done

SRCS=`find ./lib -name *.cpp`
for src in $SRCS; do
    clang-format -i -style=file $src
done

SRCS=`find ./src -name *.cpp`
for src in $SRCS; do
    clang-format -i -style=file $src
done

TESTS=`find ./test -name *.cpp`
for src in $TESTS; do
    clang-format -i -style=file $src
done
