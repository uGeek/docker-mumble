# fallendusk/mumble Dockerfile
Based on luzifer/mumble with ICE enabled. ICE is exposed on port 6502 with no secret by default.

This repository contains **Dockerfile** of [Mumble](http://wiki.mumble.info/wiki/Main_Page) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/luzifer/mumble/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

- [ubuntu](https://registry.hub.docker.com/_/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/fallendusk/mumble/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull fallendusk/mumble`

## Usage

To launch it, just type:

```
docker run -d -p 64738:64738 fallendusk/mumble
```
