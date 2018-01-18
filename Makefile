all: build release

build:
	@docker build --tag=shaoguangleo/ubuntu:latest .

release: build
	@docker build --tag=shaoguangleo/ubuntu:$(shell cat VERSION) .

push:
	@docker push shaoguangleo/ubuntu:$(shell cat VERSION)
	@docker push shaoguangleo/ubuntu:latest

output:
	@docker save --output=${shell pwd}/ubuntu:$(shell cat VERSION).tar shaoguangleo/ubuntu:$(shell cat VERSION)

input:
	@docker load --input=${shell pwd}/ubuntu:$(shell cat VERSION).tar 
