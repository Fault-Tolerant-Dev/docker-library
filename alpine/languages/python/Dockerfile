ARG IMAGE
FROM $IMAGE

ARG PYTHON_VERSION
ENV PYTHON_VERSION ${PYTHON_VERSION}
ARG PIP_VERSION
ENV PIP_VERSION ${PIP_VERSION}

RUN apk update && \
apk add --no-cache \
python3=${PYTHON_VERSION} \
py3-pip=${PIP_VERSION}

RUN python3 --version && \
    pip3 --version

CMD ["python3"]
