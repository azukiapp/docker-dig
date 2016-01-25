FROM alpine:3.2
MAINTAINER Azuki <support@azukiapp.com>

ENV BIND_VERSION 9.10.3

# install default packages
# and build dig and nsupdate
RUN packages=' \
    bash \
    bind \
    drill \
  ' \
  build_packages=' \
    alpine-sdk \
  ' \
  set -x \
  && apk --update add $packages \
  && apk add $build_packages \
    && cd /tmp \
    && curl ftp://ftp.isc.org/isc/bind9/${BIND_VERSION}/bind-${BIND_VERSION}.tar.gz|tar -xzv \
    && cd bind-${BIND_VERSION} \
    && CFLAGS="-static" ./configure --without-openssl --disable-symtable \
    && make \
    && cp ./bin/dig/dig /usr/bin/ \
    && cp ./bin/nsupdate/nsupdate /usr/bin/ \
    && apk del $build_packages \
    && rm -rf /tmp/* \
  && rm -rf /var/cache/apk/*
