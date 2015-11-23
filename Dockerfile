FROM alpine:3.2
MAINTAINER Azuki <support@azukiapp.com>

# install default packages
RUN set -x \
  && apk --update add curl \
  && curl -L https://github.com/sequenceiq/docker-alpine-dig/releases/download/v9.10.2/dig.tgz|tar -xzv -C /usr/local/bin/ \
  && apk del curl \
  && rm -rf /var/cache/apk/*
