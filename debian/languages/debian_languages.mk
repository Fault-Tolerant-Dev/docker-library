########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=

##############################
## All - Guess what this does
##############################
.PHONY: all
all: build-python

########################
## Python
########################
PYTHON_BUILD_FROM := base:debian11.1
PYTHON_BUILD_NAME := python
PYTHON_BUILD_TAG := 3.9debian11.1

.PHONY: build-python
build-python:
	docker build --no-cache \
		--build-arg IMAGE=${PYTHON_BUILD_FROM} \
		-t ${PYTHON_BUILD_NAME}:${PYTHON_BUILD_TAG} \
		-f python/Dockerfile .


