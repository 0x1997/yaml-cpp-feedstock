#!/usr/bin/env bash
set -e -x

mkdir -p build && cd build
cmake -GNinja \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX="$PREFIX" \
    -DYAML_CPP_BUILD_TOOLS=off \
    -DBUILD_SHARED_LIBS=on \
    ../
ninja install
