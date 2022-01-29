ARG IMAGE
FROM $IMAGE

ARG OMNIGRAFFLE_STENCIL_VERSION
ENV OMNIGRAFFLE_STENCIL_VERSION ${OMNIGRAFFLE_STENCIL_VERSION}

RUN DEBIAN_FRONTEND=noninteractive \
apt-get install -y --no-install-recommends \
python3-cairosvg \
python3-pypdf2

RUN pip3 install "omnigraffle-stencil==${OMNIGRAFFLE_STENCIL_VERSION}"

RUN omnigraffle-stencil --help

ENTRYPOINT ["omnigraffle-stencil"]
