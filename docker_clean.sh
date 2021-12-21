#!/bin/bash
docker ps -a -q | xargs docker stop -t 1 && \
docker ps -a -q | xargs docker rm && \
docker system prune -af --volumes
