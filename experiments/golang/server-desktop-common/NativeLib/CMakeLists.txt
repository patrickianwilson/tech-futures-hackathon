cmake_minimum_required(VERSION 3.6)
project(NativeLib)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
    CMakeLists.txt src/Math.cpp src/headers/Math.h)

add_library(ExampleMath ${SOURCE_FILES})