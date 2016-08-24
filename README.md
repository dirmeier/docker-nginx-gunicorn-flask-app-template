<h1 align="center"> webapp-barebone </h1>

An empty web-app template consisting of Angular2, nginx, Gunicorn and Flask! 

## Introduction

This is a barebone that I like to use for web-servers. It uses `Angular2` on the front-end, `nginx` as a reverse-proxy, `Gunicorn` as HTTP-server and
`Flask` as web-framework. All directories/files are empty I think, so you just need to fill them.

## Installation

There are two ways to set up the barebone. The `Docker` version is easier (at some point I think I'll dockerize my whole environent).
The manual installation is similar, but doesn't hide port 4000 which is done in the dockerized version.

### Installation using Docker (Linux)

Once you have `Docker` just run:
```shell
./build_images.sh
```
This installs the containers and sets up an image. Starting the images is done by:
```shell
./run_images.sh
```
When you are finished, stop and remove the images again:
```shell
./stop_images.sh
```

### Manual installation (Mac and Linux)

As far as I know `Docker` has issues on Mac. So here is a way to manually install the barebone. First install the python requirements, e.g. into  your favourite `conda` environment:
```shell
pip install -r requirements.txt
```
Afterwards install `nginx`. Then copy the config files using:
```shell
./install.sh
```
This, of course, overrides your previous `nginx` configuration, so keep a copy.
If all worked correctly, you can run `nginx` and `Gunicorn` using:
```shell
service nginx start
gunicorn -w 4 -b 127.0.0.1:4000 app:app --chdir ./app
```

### Setting up a service

todo

## Run

Nginx listens to port 80. So if the servers are started, you can navigate to:
```
127.0.0.1
```
If you browse to 
```
127.0.0.1/hello/simon
```
this should print `Hello simon`.

## Author

* Simon Dirmeier <a href="mailto:simon.dirmeier@gmx.de">simon.dirmeier@gmx.de</a>
