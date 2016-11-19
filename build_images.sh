#!/bin/bash

docker build -t gz/monodevelop:base -f Dockerfile.base .
docker build -t gz/monodevelop:gui -f Dockerfile.gui .
docker build -t gz/monodevelop:fpm -f Dockerfile.fpm .