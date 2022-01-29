ARG IMAGE
FROM $IMAGE

RUN DEBIAN_FRONTEND=noninteractive \
apt-get update && \
apt-get install -y --no-install-recommends \
python3.9 \
python3-pip

RUN python3 --version && \
    pip3 --version

CMD ["python3"]
