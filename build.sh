#!/usr/bin/env bash

cd $(dirname $0)

docker build -t mirogula/kali_linux_metasploit_armitage .
