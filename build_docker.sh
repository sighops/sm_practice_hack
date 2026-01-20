#!/bin/bash
export DOCKER_DEFAULT_PLATFORM=linux/amd64
mkdir -p build/rom
rm -f build/*.sym
rm -f build/*.ips
docker-compose up
