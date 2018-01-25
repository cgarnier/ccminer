FROM nvidia/cuda:9.1-devel-ubuntu16.04

RUN groupadd -g 2000 miner && \
    useradd -u 2000 -g miner -m -s /bin/bash miner && \
    echo 'miner:miner' | chpasswd
RUN apt-get -y update \
  &&  apt-get -y install \
    git \
    automake \
    libssl-dev \
    libcurl4-openssl-dev \
    libjansson-dev

USER miner
RUN cd && git clone -b cuda9 https://github.com/KlausT/ccminer.git
RUN cd ~/ccminer && ./build.sh

ENTRYPOINT ["/home/miner/ccminer/ccminer"]
