
#!/usr/bin/env bash

set -e
set -o pipefail

docker exec build cmake -H/project -B/build
docker exec build cmake --build /build
docker exec build cmake --build /build --target test
docker exec build lcov --directory /build --capture --output-file coverage.info
docker exec build lcov --remove coverage.info '/usr/*' --output-file coverage.info
docker exec build lcov --remove coverage.info 'catch.hpp' --output-file coverage.info
mkdir $BUILD_DIR
cd $BUILD_DIR
cmake $CMAKE_FLAGS ..
make -j2
ctest
