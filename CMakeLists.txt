cmake_minimum_required(VERSION 3.27)
project(SparkGameEngine)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Werror")

find_program(CLANG_TIDY_EXE NAMES "clang-tidy")

include(./cmake/ClangTidy.cmake)

add_subdirectory(./spark)
