ARG IMAGE
FROM $IMAGE

ARG TFLINT_VERSION
ENV TFLINT_VERSION ${TFLINT_VERSION}

RUN wget "https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_arm64.zip"
RUN unzip "tflint_linux_arm64.zip" && \
    install -o 0 -g 0 -m 0755 "tflint" /usr/local/bin/tflint

