FROM ubuntu:17.10
MAINTAINER sgguo@shao.ac.cn

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y vim
RUN apt-get install -y gcc
RUN rm -rf /var/lib/apt/lists/*
