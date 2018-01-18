all: build

build:
	@docker build --tag=shaoguangleo/ubuntu:latest .

release: build
	@docker build --tag=shaoguangleo/ubuntu:$(shell cat VERSION) .

push:
	@docker push shaoguangleo/ubuntu:$(shell cat VERSION)
	@docker push shaoguangleo/ubuntu:latest
