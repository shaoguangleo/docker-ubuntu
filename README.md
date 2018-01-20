# About

Dockerfile to build a ubuntu[17.10] lastest base image with some useful packages.

The image is built on top of the most recently `ubuntu` image and installs the following extra packages:

- `vim`
- `gcc`

The packages are selected for common use in the future. 

# How to run

Just type the following commands

```
$ make
$ docker run -it shaoguangleo/ubuntu[:version]
```

As we all know, the version can be `lateset` or `$ cat VERSION`
