all: build

build:
	@docker build --tag=jalospinoso/ubuntu:latest .

release: build
	@docker build --tag=jalospinoso/ubuntu:$(shell cat VERSION) .
