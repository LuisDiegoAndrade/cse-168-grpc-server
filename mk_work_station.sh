#! /usr/bin/bash

# the directory "grpc_workbench" will have the directories and files we share with the container so we can
# write our own grpc programs
# It contains the protobuf files and cpp example programs

mkdir -p grpc_workbench
cp -r grpc/examples/protos/ grpc_workbench
cp -r grpc/examples/cpp/ grpc_workbench


