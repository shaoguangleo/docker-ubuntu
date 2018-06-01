FROM ubuntu:17.10
MAINTAINER [Guo Shaoguang] <sgguo@shao.ac.cn>

LABEL version="0.1"
LABEL description="Basic Ubuntu Image"

COPY src/fftw-3.3.3.tar.gz /tmp/

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y vim \
    && apt-get install -y python-flake8 python3-flake8 flake flake8 \
    && apt-get install -y gcc \
    && apt-get install -y xorg-dev \
    && apt-get install -y gfortran libgfortran3 \
    && apt-get install -y subversion \
    && apt-get install -y pkg-config \
    && apt-get install -y bison \
    && apt-get install -y flex \
    && apt-get install -y wget \
    && apt-get install -y curl \
    && apt-get install -y git \
    && apt-get install -y libfftw3-dev \
    && apt-get install -y libopenmpi-dev \
    && apt-get install -y openmpi-bin \
    && apt-get install -y libtool \
    && apt-get install -y automake \
    && apt-get install -y autoconf \
    && apt-get install -y cmake \
    && apt-get install -y libexpat1-dev \
    && apt-get install -y python python-dev \
    && apt-get install -y rpcbind \
    && apt-get install -y csh \
    && apt-get install -y libglib2.0-dev \
    && apt-get install -y dh-autoreconf\
    && apt-get install -y libcfitsio5 \
    && apt-get install -y libcfitsio-dev \
    && apt-get install -y libpng-dev \
    && apt-get install -y python-pip \
    && pip install numpy \
    && pip install scipy \
    && cd /tmp \
    && tar zxvf fftw-3.3.3.tar.gz \
    && cd /tmp/fftw-3.3.3 \
    && ./configure --enable-shared --enable-threads --enable-float\
    && make -j 2\
    && make install\
    && make clean\
    && ./configure --enable-shared --enable-threads --enable-long-double\
    && make -j 4\
    && make install\
    && make clean\
    && ./configure --enable-sse2 --enable-avx\
    && make -j 4\
    && make install\
    && make clean\
    && rm -rf /var/lib/apt/lists/* /tmp/*.tar.gz
