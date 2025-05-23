# Este Dockerfile define un container con gcc y qemu para poder correr
FROM ubuntu:24.10
WORKDIR /root/

RUN apt-get update 
RUN apt-get -y upgrade
RUN apt-get -y install \
    git \
    gcc-aarch64-linux-gnu \
    build-essential \
    python3 \
    pkg-config \
    zlib1g-dev \
    libglib2.0-dev \
    libpixman-1-dev \
    qemu-system-arm \
    gdb-multiarch

WORKDIR /local
ENTRYPOINT ["/bin/bash"]
