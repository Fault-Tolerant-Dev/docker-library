########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=

##############################
## Build All
##############################
.PHONY: build-all
build-all: build-scratch-images build-base-images build-builder-images

########################
## Build Scratches
########################
STABLE_BUILD_FILE := scratch/alpine-minirootfs-3.14.2-x86_64.tar.gz
EDGE_BUILD_FILE := scratch/alpine-minirootfs-3.15.0-x86_64.tar.gz
SCRATCH_BUILD_NAME := scratch
SCRATCH_BUILD_STABLE_TAG := alpine3.14.2
SCRATCH_BUILD_EDGE_TAG := alpine3.15.0

.PHONY: build-scratch-images
build-scratch-images:
	docker build --no-cache \
		--build-arg FILE=${STABLE_BUILD_FILE} \
		-t ${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_STABLE_TAG} \
		-f scratch/Dockerfile .

	docker build --no-cache \
    	--build-arg FILE=${EDGE_BUILD_FILE} \
		-t ${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_EDGE_TAG} \
    	-f scratch/Dockerfile .
########################
## Build Bases
########################
BASE_BUILD_NAME := base
BASE_BUILD_STABLE_TAG := alpine3.14.2
BASE_BUILD_EDGE_TAG := alpine3.15.0

.PHONY: build-base-images
build-base-images:
	docker build --no-cache \
		--build-arg IMAGE=${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_STABLE_TAG} \
		-t ${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_TAG} \
		-f base/Dockerfile .

	docker build --no-cache \
		--build-arg IMAGE=${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_EDGE_TAG} \
		-t ${BASE_BUILD_NAME}:${BASE_BUILD_EDGE_TAG} \
		-f base/Dockerfile .

########################
## Build Builder
########################
BUILDER_BUILD_NAME := builder
BUILDER_BUILD_STABLE_TAG := alpine3.14.2
BUILDER_BUILD_EDGE_TAG := alpine3.15.0

.PHONY: build-builder-images
build-builder-images:
	docker build --no-cache \
		--build-arg IMAGE=${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_TAG} \
		-t ${BUILDER_BUILD_NAME}:${BUILDER_BUILD_STABLE_TAG} \
		-f builder/Dockerfile .

	docker build --no-cache \
		--build-arg IMAGE=${BASE_BUILD_NAME}:${BASE_BUILD_EDGE_TAG} \
		-t ${BUILDER_BUILD_NAME}:${BUILDER_BUILD_EDGE_TAG} \
		-f builder/Dockerfile .

