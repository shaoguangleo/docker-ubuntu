FROM ubuntu
MAINTAINER sgguo@shao.ac.cn

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y vim
RUN apt-get install -y build-essential
RUN rm -rf /var/lib/apt/lists/*
