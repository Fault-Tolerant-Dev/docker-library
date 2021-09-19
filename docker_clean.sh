#!/bin/bash
docker ps -a -q | xargs docker stop && \
docker ps -a -q | xargs docker rm && \
docker system prune -af --volumes
