# ugeek/mumble Dockerfile
Based on luzifer/mumble with ICE enabled. ICE is exposed on port 6502 with no secret by default.

This repository contains **Dockerfile** of [Mumble](http://wiki.mumble.info/wiki/Main_Page) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/luzifer/mumble/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

- Alpine
## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/ugeek/murmur/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull ugeek/mumble`

## Usage

To launch it, just type:

For **ARM**
```
docker run -d --name mumble -p 64738:64738  -p 64738:64738/udp ugeek/mumble:arm
```
For **amd64**
```
docker run -d --name mumble -p 64738:64738  -p 64738:64738/udp ugeek/mumble:amd64
```

## Config
```
docker exec -i -t --user root mumble sh
```

## Edit your password,...
```
vi /config/mumble-server.ini
```

```
exit
```

## Restart Mumble
```
docker restart mumble
```
