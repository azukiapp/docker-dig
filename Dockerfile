FROM alpine:3.2
MAINTAINER Azuki <support@azukiapp.com>

# install default packages
RUN packages=' \
    bash \
    bind-libs \
    drill \
  ' \
  set -x \
  && apk --update add $packages \
  && rm -rf /var/cache/apk/*
