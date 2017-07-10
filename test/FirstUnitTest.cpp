#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "HelloWorldPrinter.h"


TEST_CASE( "Factorials are computed")
{

    REQUIRE( 1 == 1 );

    HelloWorldPrinter printer;
    printer.Print();

}
