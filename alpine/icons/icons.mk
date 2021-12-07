########################
## Globals
########################
DOCKER_IMAGE_REPOSITORY :=
BUILD_FROM := builder:alpine3.14.2

##############################
## All
##############################
.PHONY: all
all: build-bats build-google-cloud build-hadolint build-hashicorp build-kubectl build-shellcheck build-terraform-docs

########################
## Kubectl
########################
KUBECTL_BUILD_NAME := kubectl
KUBECTL_BUILD_TAG := 1.15.12alpine3.14.2
KUBECTL_VERSION := 1.15.12

.PHONY: build-kubectl
build-kubectl:
	docker build --no-cache \
		--build-arg IMAGE=${BUILD_FROM} \
		--build-arg KUBECTL_VERSION=${KUBECTL_VERSION} \
		-t ${KUBECTL_BUILD_NAME}:${KUBECTL_BUILD_TAG} \
		-f kubectl/Dockerfile .

########################
## Shellcheck
########################
SHELLCHECK_BUILD_NAME := shellcheck
SHELLCHECK_BUILD_TAG := 0.6.0alpine3.14.2
SHELLCHECK_VERSION := 0.6.0

.PHONY: build-shellcheck
build-shellcheck:
	docker build --no-cache \
		--build-arg IMAGE=${BUILD_FROM} \
		--build-arg SHELLCHECK_VERSION=${SHELLCHECK_VERSION} \
		-t ${SHELLCHECK_BUILD_NAME}:${SHELLCHECK_BUILD_TAG} \
		-f shellcheck/Dockerfile .
