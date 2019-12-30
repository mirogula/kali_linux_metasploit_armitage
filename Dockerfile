FROM kalilinux/kali-linux-docker

RUN apt-get update && apt-get -y install armitage
