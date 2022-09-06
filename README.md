# gRPC C++ Server for CSE 168 @ UC Merced

## Installing the Dockerfile & helper scripts
`git clone https://github.com/LuisDiegoAndrade/cse-168-grpc-server.git`

## Steps for building Server
### Check list before continuing below
- git installed
- docker installed
- cloned repo and cd'd into it (i.e `cd cse-168-grpc-server`)
- make sure bash scripts are executable
- coffee

### First, run the "get_grpc.sh" script
- This will install grpc, protobuf (git submodule), and the examples.
- `./get_grpc.sh`

### Second, build the image from the "Dockerfile"
- This will build an image and use the grpc files installed by `get_grpc.sh`
- *Docker commands on MACOS might not need to be run with  `sudo`!!
- Make sure to include the `.` in the following command
- `sudo docker build -t grpc .`

### Third, create the "grpc_workbench" directory that will be shared with the Container
- This `grpc_workbench` directory contains the proto files and cpp examples. We can use these folders to build our labs on top of
- `./mk_work_station.sh`

### Fourth, run the container from the Docker image built
- *the path after the -v is specific to my computer. CHANGE IT so it can match the location on YOUR machine.
- the directory `grpc_workbench` is created by the `mk_work_station.sh` script. Share this folder with the container with the `-v` flag like below.
- `sudo docker run -it -v /home/luiss/cse168/lab1/cse-168-grpc-server/grpc_workbench:/app/work_bench --name grpc grpc`
- The `-it` flag starts a bash session
- The `-v` flag lets you share a folder from host : to docker container
- For example `sudo docker run -v path/on/host:path/on/container container_name_here`
- The `run` command should on be run once. All subsequent container starts should be started with the `start` command

### Subsequent Container starts
- `sudo docker start -ai grpc`

### Building helloworld example
- cd to `/app/work_bench/cpp/helloworld` in the container
- run `make` in this directory
- run `make clean` to clean up directory

### Summary
- `./get_grpc.sh`
- `sudo docker build -t grpc .`
- `./mk_work_station.sh`
-  *CHANGE the following command after the `-v` flag, and before the `:`, to match the path on YOUR machine
- `sudo docker run -it -v /home/luiss/cse168/lab1/cse-168-grpc-server/grpc_workbench:/app/work_bench --name grpc grpc`

### Coming soon
- creating another container for client and connecting to server container over virtual network

