ARG IMAGE
FROM $IMAGE

RUN DEBIAN_FRONTEND=noninteractive \
apt-get update && \
apt-get install -y --no-install-recommends \
wget git

CMD ["/bin/bash"]