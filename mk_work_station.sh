#! /usr/bin/bash

# the folder lab1 will have the directories and files we share with the container so we can
# write our own grpc program

mkdir -p grpc_workbench
cp -r grpc/examples/protos/ grpc_workbench
cp -r grpc/examples/cpp/ grpc_workbench


