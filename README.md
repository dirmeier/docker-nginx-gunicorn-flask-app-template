<h1 align="center"> webapp-barebone </h1>

[![Project Status](http://www.repostatus.org/badges/latest/concept.svg)](http://www.repostatus.org/#concept)


An empty web-app template consisting of Angular2, nginx, Gunicorn and Flask! 

## Introduction

This is a barebone that I like to use for web-servers. It uses `skeleton` on the front-end, `nginx` as a reverse-proxy, `Gunicorn` as HTTP-server and
`Flask` as web-framework. All directories/files are empty I think, so you just need to fill them.

## Usage

In order to install the barebone, first get modify the `htmls`, `python` files etc. 
Then install docker and run:

```sh
  ./service.sh build
```

This installs the image. Starting the container is done by:

```sh
  ./service.sh start
```

This starts `nginx` in port 80. So navigate to `localhost` or `127.0.0.1`. You should see something like this:

![alt text](http://url/to/img.png)

When you are finished, stop the container again:

```sh
  ./service.sh stop
```

## Author

* Simon Dirmeier <a href="mailto:mail@simon-dirmeier.net">mail@simon-dirmeier.net</a>
