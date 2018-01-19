FROM ubuntu:17.10
MAINTAINER [Guo Shaoguang] <sgguo@shao.ac.cn>

LABEL version="0.1"
LABEL description="Basic Ubuntu Image"

RUN apt-get update -y \ 
    && apt-get upgrade -y \
    && apt-get install -y vim \
    && apt-get install -y gcc \
    && rm -rf /var/lib/apt/lists/*
