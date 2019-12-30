# Run Armitage with Metasploit inside docker

Inspired by this gist: https://gist.github.com/chmodx/0260f25e368a3e67ef81

To start Armitage directly, execute these two commands:
```
xhost +local:kali_armitage
docker run --rm --name armitage --hostname="kali_armitage" -t -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix mirogula/kali_linux_metasploit_armitage sh -c 'service postgresql start && msfdb init && armitage'
```

Or clone, or download, the git repo and execute `./run-armitage.sh` command.
