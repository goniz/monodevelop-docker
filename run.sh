#!/bin/bash -e

workspace="$(readlink -f ${1})"
shift 1

docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v $workspace:/workspace gz/monodevelop:gui $@
