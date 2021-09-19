ARG IMAGE
FROM $IMAGE

ARG KUBECTL_VERSION
ENV KUBECTL_VERSION ${KUBECTL_VERSION}

RUN wget https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl
RUN install -o 0 -g 0 -m 0755 kubectl /usr/local/bin/kubectl