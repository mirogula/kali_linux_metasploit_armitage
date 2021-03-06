# Run Armitage with Metasploit inside docker

Inspired by this gist: https://gist.github.com/chmodx/0260f25e368a3e67ef81

To start Armitage directly, execute these two commands:
```
xhost +local:kali_armitage
docker run --rm --name armitage --hostname="kali_armitage" -t -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v mg_metasploit_postgresql_data:/var/lib/postgresql -v mg_metasploit_framework_dir:/usr/share/metasploit-framework mirogula/kali_linux_metasploit_armitage
```

Or clone, or download, the git repo and execute `./run-armitage.sh` command.

### Named volumes list
- `mg_metasploit_postgresql_data -> /var/lib/postgresql`
- `mg_metasploit_framework_dir -> /usr/share/metasploit-framework`
- `mg_root_msf4_dir -> /root/.msf4`
- `mg_root_armitage_dir -> /root/.armitage`
- `mg_data_dir -> /data`
