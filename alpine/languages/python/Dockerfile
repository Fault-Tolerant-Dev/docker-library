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

RUN cd /usr/bin \
	&& ln -s idle3 idle \
	&& ln -s pydoc3 pydoc \
	&& ln -s python3 python \
	&& ln -s python3-config python-config

RUN python --version && \
    pip --version

CMD ["python"]