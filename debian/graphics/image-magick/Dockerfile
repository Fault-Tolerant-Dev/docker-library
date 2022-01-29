ARG IMAGE
FROM $IMAGE

ARG IMAGE_MAGICK_VERSION
ENV IMAGE_MAGICK_VERSION ${IMAGE_MAGICK_VERSION}

RUN DEBIAN_FRONTEND=noninteractive \
apt-add-repository 'deb https://www.deb-multimedia.org bullseye main' && \
apt-get update -oAcquire::AllowInsecureRepositories=true && \
apt-get install -y --allow-unauthenticated --no-install-recommends \
deb-multimedia-keyring \
imagemagick-7




