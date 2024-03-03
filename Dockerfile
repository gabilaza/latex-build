FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy texlive-full && rm -rf /var/lib/apt/lists/*

WORKDIR /build

RUN mkdir -p /scripts
COPY ./scripts/build.sh /scripts

RUN mkdir -p /docs
COPY ./docs /docs

CMD bash /scripts/build.sh --inside-docker

