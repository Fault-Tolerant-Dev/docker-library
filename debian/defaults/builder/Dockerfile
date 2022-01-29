ARG IMAGE
FROM $IMAGE

RUN DEBIAN_FRONTEND=noninteractive \
apt-get update && \
apt-get install -y --no-install-recommends \
build-essential \
software-properties-common \
wget \
curl

CMD ["/bin/bash"]