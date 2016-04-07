## Docker Mary Poppins Dockerfile

This repository contains **Dockerfile** of [Mary Poppins](https://github.com/btford/mary-poppins) for [Docker](https://www.docker.com/) [automated build](https://registry.hub.docker.com/u/cogniteev/mary-poppins/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Base Docker Image

* Official [node:4.4.2](https://hub.docker.com/_/node/) image

### Installation

1. Install [Docker](https://www.docker.com/)

2. Download [automated build](https://registry.hub.docker.com/u/cogniteev/mary-poppins/): `docker pull cogniteev/mary-poppins`

### Usage

    docker run cogniteev/mary-poppins

* Exposed port is 80

### Content

Mary Poppins is a node application providing an extensible bot for issues
and pull-requests of your GitHub repositories.

### License

The `cogniteev/docker-mary-poppins` image is licensed under \
the Apache License, Version 2.0. See [LICENSE](./LICENSE) for full license text.
