

add_executable(FirstUnitTest FirstUnitTest.cpp)
target_link_libraries(FirstUnitTest HelloWorldPrinter)
add_test(test::FirstUnitTest ${CMAKE_CURRENT_BINARY_DIR}/FirstUnitTest)