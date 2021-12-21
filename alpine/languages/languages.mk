########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=
BUILD_FROM := builder:alpine3.14.2

##############################
## All - Builds All
##############################
.PHONY: all
all: build-golang build-python build-ruby

########################
## Golang
########################
GOLANG_BUILD_FROM := golang:1.16.7-alpine3.14
GOLANG_BUILD_AS := golang
GOLANG_BUILD_TAG := 1.16.7alpine3.14.2

.PHONY: build-golang
build-golang:
	docker build --no-cache \
		--build-arg IMAGE=${GOLANG_BUILD_FROM} \
		-t ${GOLANG_BUILD_AS}:${GOLANG_BUILD_TAG} \
		-f golang/Dockerfile .

########################
## Python
########################
PYTHON_BUILD_NAME := python
PYTHON_VERSION := 3.9.5-r2
PIP_VERSION := 20.3.4-r1
PYTHON_BUILD_TAG := 3.9.5alpine3.14.2

.PHONY: build-python
build-python:
	docker build --no-cache \
		--build-arg IMAGE=${BUILD_FROM} \
		--build-arg PYTHON_VERSION=${PYTHON_VERSION} \
		--build-arg PIP_VERSION=${PIP_VERSION} \
		-t ${PYTHON_BUILD_NAME}:${PYTHON_BUILD_TAG} \
		-f python/Dockerfile .

########################
## Ruby
########################
RUBY_BUILD_FROM := ruby:2.6.3-alpine
RUBY_BUILD_NAME := ruby
RUBY_BUILD_TAG := 2.6.3alpine3.14.2

.PHONY: build-ruby
build-ruby:
	docker build --no-cache \
		--build-arg IMAGE=${RUBY_BUILD_FROM} \
		-t ${RUBY_BUILD_NAME}:${RUBY_BUILD_TAG} \
		-f ruby/Dockerfile .


