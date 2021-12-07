ARG IMAGE
FROM $IMAGE

ARG SHELLCHECK_VERSION
ENV SHELLCHECK_VERSION ${SHELLCHECK_VERSION}

RUN wget "https://github.com/koalaman/shellcheck/releases/download/v${SHELLCHECK_VERSION}/shellcheck-v${SHELLCHECK_VERSION}.linux.x86_64.tar.xz"
RUN tar -xvf "shellcheck-v${SHELLCHECK_VERSION}.linux.x86_64.tar.xz" && \
    install -o 0 -g 0 -m 0755 "shellcheck-v${SHELLCHECK_VERSION}/shellcheck" /usr/local/bin/shellcheck
