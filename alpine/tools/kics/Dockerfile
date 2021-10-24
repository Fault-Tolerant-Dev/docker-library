ARG IMAGE
FROM $IMAGE

ARG KICS_VERSION
ENV KICS_VERSION ${KICS_VERSION}

RUN wget "https://github.com/Checkmarx/kics/releases/download/v${KICS_VERSION}/kics_${KICS_VERSION}_linux_x64.tar.gz"
RUN mkdir /usr/local/kics && \
    tar -xvf "kics_${KICS_VERSION}_linux_x64.tar.gz" -C /usr/local/kics && \
    chown -R root:root /usr/local/kics && \
    chmod -R 755 /usr/local/kics


