FROM ubuntu
MAINTAINER sgguo@shao.ac.cn

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y vim
RUN rm -rf /var/lib/apt/lists/*
