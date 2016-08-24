<h1 align="center"> webapp-barebone </h1>

An empty web-app template consisting of Angular2, nginx, Gunicorn and Flask! 

## Introduction

This is a barebone that I like to use for web-servers. It uses `Angular2` on the front-end, `nginx` as a reverse-proxy, `Gunicorn` as HTTP-server and
`Flask` as web-framework. All directories/files are empty I think, so you just need to fill them.

## Installation

First install the python requirements, e.g. into  your favourite `conda` environment:
```shell
pip install -r requirements.txt
```

### Installation using Docker (Linux)

I prefer the dockerized version, so install `docker` first and just run:
```shell
todo
```

### Manual installation (Mac and Linux)

As far as I know `Docker` has issues on Mac. So here is a way to manually install the barebone.
First you need the `nginx` installed. Then copy the config files using:
```shell
./install.sh
```
This, of course, overrides your previous `nginx` configuration, so keep a copy.

That's it!

### Setting up a service

todo

## Run

If all worked correctly, you can run `nginx` and `Gunicorn` using:
```shell
./run.sh
```

This starts the servers. `nginx` listens on port 80, so browse to:
```
127.0.0.1
```

## Author

* Simon Dirmeier <a href="mailto:simon.dirmeier@gmx.de">simon.dirmeier@gmx.de</a>
