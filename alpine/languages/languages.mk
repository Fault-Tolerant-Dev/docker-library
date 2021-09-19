########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=

##############################
## All - Guess what this does
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
PYTHON_BUILD_FROM := python:3.9.7-alpine3.14
PYTHON_BUILD_NAME := python
PYTHON_BUILD_TAG := 3.9.7alpine3.14.2

.PHONY: build-python
build-python:
	docker build --no-cache \
		--build-arg IMAGE=${PYTHON_BUILD_FROM} \
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


