# A docker-nginx-gunicorn-flask-app

[![Project Status](http://www.repostatus.org/badges/latest/inactive.svg)](http://www.repostatus.org/#inactive)

An empty web-app template consisting of docker, skeleton, nginx, gunicorn and flask!

## Introduction

This is a barebone that I like to use for web-servers. It uses `skeleton` on the front-end, `nginx` as a reverse-proxy, `Gunicorn` as HTTP-server and `Flask` as web-framework. All directories/files are empty I think, so you just need to fill them. The entire stack is dockerized.

## Usage

First download the latest `tarball` and unpack it. In order to install the barebone, first get modify the `htmls`, `python` files etc. To run the service you need to have `docker` installed (any recent version ill do):

```sh
  ./service.sh build
```

This installs the image. Starting the container is done by:

```sh
  ./service.sh start
```

This starts `nginx` and lets it listen on port 80. So navigate to `localhost` or `127.0.0.1`. You should see something like this:

<img src="https://github.com/dirmeier/webapp-barebone/blob/master/_img/server.jpg" alt="Drawing" style="height: 600px; border:2px solid black" />

When you are finished, stop the container again:

```sh
  ./service.sh stop
```

## Author

* Simon Dirmeier <a href="mailto:mail@simon-dirmeier.net">mail@simon-dirmeier.net</a>
