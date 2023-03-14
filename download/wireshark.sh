#!/bin/bash

docker run -dit \
  --rm \
  --name=wireshark \
  --net=host \
  --cap-add=NET_ADMIN \
  --security-opt seccomp=unconfined `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 3000:3000 `#optional` \
  -v /path/to/config:/config \
  lscr.io/linuxserver/wireshark:latest
