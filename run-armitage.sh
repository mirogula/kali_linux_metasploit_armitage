#!/usr/bin/env bash

cd $(dirname $0)

xhost +local:kali_armitage
docker run --rm --name armitage --hostname="kali_armitage" -t -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v mg_metasploit_postgresql_data:/var/lib/postgresql -v mg_metasploit_framework_dir:/usr/share/metasploit-framework mirogula/kali_linux_metasploit_armitage
