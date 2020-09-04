#!/usr/bin/env bash

function build() {
    deploy=$1
    cd $deploy
    git submodule update --init --recursive
    cd -
    mkdir $deploy/build
    cd $deploy/build
    cmake3 -DCMAKE_BUILD_TYPE=Release ..
    make -j3 && make
    cd -
}

#build  cpp-serialization-benchmark
#build format-benchmark
build $*
