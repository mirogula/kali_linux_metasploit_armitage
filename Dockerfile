FROM kalilinux/kali-rolling

RUN apt-get update && apt-get -y install armitage

COPY entrypoint.sh /

RUN mkdir /data/

ENTRYPOINT ["/entrypoint.sh"]
