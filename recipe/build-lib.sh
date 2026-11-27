#!/bin/bash
set -exuo pipefail

cmake -S . -B build \
    ${CMAKE_ARGS} \
    -GNinja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DBUILD_SHARED_LIBS=ON \
    -DGEOARROW_BUILD_TESTS=OFF

cmake --build build
cmake --install build
