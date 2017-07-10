
project(ProjectName CXX)
cmake_minimum_required(VERSION 3.0)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/CMakeModules)


if(CMAKE_COMPILER_IS_GNUCXX)
    include(CodeCoverage)
    setup_target_for_coverage(${PROJECT_NAME}_coverage tests coverage)
endif()

enable_testing()

# subdirectories
add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(examples)
