#!/usr/bin/env bash

service postgresql start

if [ ! -e "/usr/share/metasploit-framework/config/database.yml" ]; then
   msfdb init
fi

armitage
