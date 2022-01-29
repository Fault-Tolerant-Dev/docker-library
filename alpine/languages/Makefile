########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=
BUILD_FROM := builder:alpine_a64_3.14.2

##############################
## All - Builds All
##############################
.PHONY: all
all: build-golang build-python build-ruby

########################
## Golang
########################
GOLANG_BUILD_NAME := golang
GOLANG_VERSION := 1.16.10-r
GOLANG_BUILD_TAG := 3.9.5alpine3.14.2

.PHONY: build-golang
build-golang:
	docker build --no-cache \
		--build-arg IMAGE=${BUILD_FROM} \
		--build-arg GOLANG_VERSION=${GOLANG_VERSION} \
		-t ${GOLANG_BUILD_NAME}:${GOLANG_BUILD_TAG} \
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
RUBY_BUILD_NAME := ruby
RUBY_VERSION := 2.7.5-r0
BUNDLER_VERSION := 2.2.20-r0
RUBY_BUILD_TAG := 3.9.5alpine3.14.2

.PHONY: build-ruby
build-ruby:
	docker build --no-cache \
		--build-arg IMAGE=${BUILD_FROM} \
		--build-arg RUBY_VERSION=${RUBY_VERSION} \
		--build-arg BUNDLER_VERSION=${BUNDLER_VERSION} \
		-t ${RUBY_BUILD_NAME}:${RUBY_BUILD_TAG} \
		-f ruby/Dockerfile .