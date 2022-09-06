#! /usr/bin/bash

# release 10 doesn't use cmake this makes getting started with grpc for c++
# easier
export GRPC_RELEASE_TAG="v1.10.x"

# get grpc source from github
git clone -b $GRPC_RELEASE_TAG https://github.com/grpc/grpc

# get submodules i.e protobuf
git submodule update --init


