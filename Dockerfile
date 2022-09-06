FROM debian:stretch

RUN apt-get update && apt-get install -y \
  build-essential autoconf git pkg-config \
  automake libtool curl make g++ unzip \
  && apt-get clean

WORKDIR /app
COPY grpc /app/grpc
WORKDIR  /app/grpc/third_party/protobuf
    
RUN ./autogen.sh && ./configure --enable-shared && \
    make -j$(nproc) && make -j$(nproc) check && make install && make clean && ldconfig

WORKDIR /app/grpc

RUN echo "--- installing grpc ---" && \
    make -j$(nproc) && make install && make clean && ldconfig
