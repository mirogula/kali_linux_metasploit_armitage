#!/usr/bin/env bash

cd $(dirname $0)

xhost +local:kali_armitage
docker run --rm --name armitage --hostname="kali_armitage" -t -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix mirogula/kali_linux_metasploit_armitage sh -c 'service postgresql start && msfdb init && armitage'
