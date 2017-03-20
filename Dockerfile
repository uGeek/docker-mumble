FROM alpine:3.5
MAINTAINER Greg Helton <greg@fallendusk.com>

RUN apk update && apk add --no-cache murmur && mkdir /data && mkdir /config && chown murmur /data && chown murmur /config
ADD mumble-server.ini /config/mumble-server.ini

VOLUME ["/data", "/config"]
EXPOSE 64738/udp
EXPOSE 6502/tcp

USER murmur
ENTRYPOINT ["/usr/bin/murmurd", "-fg", "-ini", "/config/mumble-server.ini"]
