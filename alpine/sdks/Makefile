########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=
BUILD_FROM := builder:alpine_a64_3.14.2


##############################
## All - Builds All
##############################
.PHONY: all
all: build-rubysdk

########################
## RubySDK
########################
RUBYSDK_BUILD_FROM := ruby:3.9.5alpine3.14.2
RUBYSDK_BUILD_NAME := rubysdk
RUBYSDK_BUILD_TAG := 1.0.0alpine3.14.2
RUBYSDK_OCI_IMAGE_CREATED := ""
RUBYSDK_OCI_IMAGE_URL := ""
RUBYSDK_OCI_IMAGE_SOURCE := ""
RUBYSDK_OCI_IMAGE_VERSION := ""
RUBYSDK_OCI_IMAGE_REVISION := ""
RUBYSDK_OCI_IMAGE_VENDOR := ""
RUBYSDK_OCI_IMAGE_TITLE := ""
RUBYSDK_OCI_IMAGE_DESCRIPTION := ""
RUBYSDK_OCI_IMAGE_DOCUMENTATION := ""
RUBYSDK_OCI_IMAGE_AUTHORS := ""
RUBYSDK_OCI_IMAGE_LICENSES := ""
RUBYSDK_OCI_IMAGE_REF_NAME := ""

.PHONY: build-rubysdk
build-rubysdk:
	docker build --no-cache \
		--build-arg IMAGE=${RUBYSDK_BUILD_FROM} \
		--build-arg OCI_IMAGE_CREATED=${RUBYSDK_OCI_IMAGE_CREATED} \
        --build-arg OCI_IMAGE_URL=${RUBYSDK_OCI_IMAGE_URL} \
        --build-arg OCI_IMAGE_SOURCE=${RUBYSDK_OCI_IMAGE_SOURCE} \
        --build-arg OCI_IMAGE_VERSION=${RUBYSDK_OCI_IMAGE_VERSION} \
        --build-arg OCI_IMAGE_REVISION+${RUBYSDK_OCI_IMAGE_REVISION} \
        --build-arg OCI_IMAGE_VENDOR=${RUBYSDK_OCI_IMAGE_VENDOR} \
        --build-arg OCI_IMAGE_TITLE=${RUBYSDK_OCI_IMAGE_TITLE} \
        --build-arg OCI_IMAGE_DESCRIPTION=${RUBYSDK_OCI_IMAGE_DESCRIPTION} \
        --build-arg OCI_IMAGE_DOCUMENTATION=${RUBYSDK_OCI_IMAGE_DOCUMENTATION} \
        --build-arg OCI_IMAGE_AUTHORS=${RUBYSDK_OCI_IMAGE_AUTHORS} \
        --build-arg OCI_IMAGE_LICENSES=${RUBYSDK_OCI_IMAGE_LICENSES} \
        --build-arg OCI_IMAGE_REF_NAME=${RUBYSDK_OCI_IMAGE_REF_NAME} \
		-t ${RUBYSDK_BUILD_NAME}:${RUBYSDK_BUILD_TAG} \
		-f ruby/Dockerfile .

