ARG IMAGE
FROM $IMAGE

ARG HADOLINT_VERSION
ENV HADOLINT_VERSION ${HADOLINT_VERSION}

RUN wget https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64
RUN install -o 0 -g 0 -m 0755 hadolint-Linux-x86_64 /usr/local/bin/hadolint


CMD ["hadolint", "-"]



# No Arm