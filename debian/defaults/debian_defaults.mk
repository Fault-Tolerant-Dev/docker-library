########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=

##############################
## Build All
##############################
.PHONY: build-all
build-all: build-scratch-images build-base-images build-builder-images build-developer-images

########################
## Build Scratches
########################
STABLE_BUILD_FILE := scratch/slim-rootfs.tar.xz
SCRATCH_BUILD_NAME := scratch
SCRATCH_BUILD_STABLE_TAG := debian11.1

.PHONY: build-scratch-images
build-scratch-images:
	docker build --no-cache \
		--build-arg FILE=${STABLE_BUILD_FILE} \
		-t ${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_STABLE_TAG} \
		-f scratch/Dockerfile .

########################
## Build Bases
########################
BASE_BUILD_NAME := base
BASE_BUILD_STABLE_TAG := debian11.1

.PHONY: build-base-images
build-base-images:
	docker build --no-cache \
		--build-arg IMAGE=${SCRATCH_BUILD_NAME}:${SCRATCH_BUILD_STABLE_TAG} \
		-t ${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_TAG} \
		-f base/Dockerfile .

########################
## Build Builder
########################
BUILDER_BUILD_NAME := builder
BUILDER_BUILD_STABLE_TAG := debian11.1

.PHONY: build-builder-images
build-builder-images:
	docker build --no-cache \
		--build-arg IMAGE=${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_TAG} \
		-t ${BUILDER_BUILD_NAME}:${BUILDER_BUILD_STABLE_TAG} \
		-f builder/Dockerfile .

########################
## Build Developer
########################
DEVELOPER_BUILD_NAME := developer
DEVELOPER_BUILD_STABLE_TAG := debian11.1

.PHONY: build-developer-images
build-developer-images:
	docker build --no-cache \
		--build-arg IMAGE=${BASE_BUILD_NAME}:${BASE_BUILD_STABLE_TAG} \
		-t ${DEVELOPER_BUILD_NAME}:${DEVELOPER_BUILD_STABLE_TAG} \
		-f developer/Dockerfile .
