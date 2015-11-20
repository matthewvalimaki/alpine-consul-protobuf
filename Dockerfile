FROM smebberson/alpine-consul-base
MAINTAINER Matthew Valimaki <matthew.valimaki@gmail.com>

ADD https://github.com/google/protobuf/archive/v3.0.0-beta-1-bzl-fix.tar.gz /tmp/protobuf.tar.gz

RUN \
	apk add --update gcc g++ musl-dev make pkgconfig libtool autoconf automake libuuid file && \
	cd /tmp && tar -xzf protobuf.tar.gz && \
	cd protobuf && ./autogen.sh -s && ./configure && make -j 4 && make install && cd / && \
	apk del gcc g++ musl-dev make pkgconfig libtool autoconf automake libuuid file && \
  rm -rf /var/cache/apk/*
