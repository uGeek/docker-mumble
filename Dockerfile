FROM alpine:edge  #3.12
MAINTAINER angel <ugeekpodcast@gmail.com>

RUN apk update && apk add --no-cache murmur && mkdir /data && mkdir /config && chown murmur /data && chown murmur /config
ADD mumble-server.ini /config/mumble-server.ini

VOLUME ["/data", "/config"]
EXPOSE 64738/udp
EXPOSE 64738/tcp

USER murmur
ENTRYPOINT ["/usr/bin/murmurd", "-fg", "-ini", "/config/mumble-server.ini"]
