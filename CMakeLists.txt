
project(ProjectName CXX)
cmake_minimum_required(VERSION 3.0)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

enable_testing()

# subdirectories
add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(examples)

