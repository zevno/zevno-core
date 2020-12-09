FROM debian:stretch
LABEL maintainer="ZEVNO Developers <dev@zevno.org>"
LABEL description="Dockerised ZEVNOCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
