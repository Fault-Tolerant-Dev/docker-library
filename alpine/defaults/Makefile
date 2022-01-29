########################
## Globals
########################
SHELL := /usr/bin/env bash
DOCKER_IMAGE_REPOSITORY :=
SCRATCH_BUILD_NAME := scratch
BASE_BUILD_NAME := base

##############################
## Build All
##############################
.PHONY: all
build-all-a64: build-a64-scratch-image build-a64-base-image build-a64-builder-image

##############################
## Build All x64
##############################
.PHONY: build-all-x64
build-all-x64: build-x64-scratch-image build-x64-base-image build-x64-builder-image

##############################
## Build All a64
##############################
.PHONY: build-all-a64
build-all-a64: build-a64-scratch-image build-a64-base-image build-a64-builder-image

########################
## Build Scratches
########################
STABLE_X64_BUILD_FILE := scratch/alpine-minirootfs-3.14.2-x86_64.tar.gz
SCRATCH_BUILD_STABLE_X64_TAG := alpine_x64_3.14.2

.PHONY: build-x64-scratch-image
build-x64-scratch-image:
	docker build --no-cache \
		--build-arg FILE=${STABLE_X64_BUILD_FILE} \
		-t ${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_STABLE_X64_TAG} \
		-f scratch/Dockerfile .

STABLE_A64_BUILD_FILE := scratch/alpine-minirootfs-3.14.2-aarch64.tar.gz
SCRATCH_BUILD_STABLE_A64_TAG := alpine_a64_3.14.2

.PHONY: build-a64-scratch-image
build-a64-scratch-image:
	docker build --no-cache \
    	--build-arg FILE=${STABLE_A64_BUILD_FILE} \
		-t ${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_STABLE_A64_TAG} \
    	-f scratch/Dockerfile .

########################
## Build Bases
########################
BASE_BUILD_STABLE_X64_TAG := alpine_x64_3.14.2

.PHONY: build-x64-base-image
build-x64-base-image:
	docker build --no-cache \
		--build-arg IMAGE=${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_STABLE_X64_TAG} \
		-t ${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_X64_TAG} \
		-f base/Dockerfile .

BASE_BUILD_STABLE_A64_TAG := alpine_a64_3.14.2

.PHONY: build-a64-base-image
build-a64-base-image:
	docker build --no-cache \
		--build-arg IMAGE=${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_STABLE_A64_TAG} \
		-t ${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_A64_TAG} \
		-f base/Dockerfile .

########################
## Build Builder
########################
BUILDER_BUILD_NAME := builder
BUILDER_BUILD_STABLE_X64_TAG := alpine_x64_3.14.2

.PHONY: build-x64-builder-image
build-x64-builder-image:
	docker build --no-cache \
		--build-arg IMAGE=${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_X64_TAG} \
		-t ${BUILDER_BUILD_NAME}:${BUILDER_BUILD_STABLE_X64_TAG} \
		-f builder/Dockerfile .

BUILDER_BUILD_STABLE_A64_TAG := alpine_a64_3.14.2

.PHONY: build-a64-builder-image
build-a64-builder-image:
	docker build --no-cache \
		--build-arg IMAGE=${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_A64_TAG} \
		-t ${BUILDER_BUILD_NAME}:${BUILDER_BUILD_STABLE_A64_TAG} \
		-f builder/Dockerfile .

