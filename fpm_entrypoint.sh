#!/bin/bash -e

exec fpm -s dir -t deb -n monodevelop -v $(cat /code/version.config | grep -w Version | cut -d= -f2) -C /pkg_root -f "$@"