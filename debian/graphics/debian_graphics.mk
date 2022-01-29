########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=
BUILD_FROM := builder:debian11.1

##############################
## All - Guess what this does
##############################
.PHONY: all
all: build-image-magick build-omnigraffle-stencil

########################
## Image-Magick
########################
IMAGEMAGICK_BUILD_NAME := imagemagick
IMAGEMAGICK_BUILD_TAG := 7.0debian11.1
IMAGEMAGICK_VERSION := 7

.PHONY: build-image-magick
build-image-magick:
	docker build --no-cache \
		--build-arg IMAGE=${BUILD_FROM} \
		--build-arg IMAGEMAGICK_VERSION=${IMAGEMAGICK_VERSION} \
		-t ${IMAGEMAGICK_BUILD_NAME}:${IMAGEMAGICK_BUILD_TAG} \
		-f image-magick/Dockerfile .

########################
## Omnigraffle-Stencil
########################
OMNIGRAFFLE_STENCIL_BUILD_NAME := omnigrafflestencil
OMNIGRAFFLE_STENCIL_BUILD_TAG := 1.1.0debian11.1
OMNIGRAFFLE_STENCIL_BUILD_FROM := python:3.9debian11.1
OMNIGRAFFLE_STENCIL_VERSION := 1.1.0

.PHONY: build-omnigraffle-stencil
build-omnigraffle-stencil:
	docker build --no-cache \
		--build-arg IMAGE=${OMNIGRAFFLE_STENCIL_BUILD_FROM} \
		--build-arg OMNIGRAFFLE_STENCIL_VERSION=${OMNIGRAFFLE_STENCIL_VERSION} \
		-t ${OMNIGRAFFLE_STENCIL_BUILD_NAME}:${OMNIGRAFFLE_STENCIL_BUILD_TAG} \
		-f omnigraffle-stencil/Dockerfile .
