#!/usr/bin/env bash

function usage {
  echo -e "\nUSAGE:\n./serviceh {start|stop|restart|build}\n"
  exit
}

function start {
  sudo docker run -it --name barebone -p 80:80  digitalalexandria/barebone
}

function stop {
  sudo docker stop barebone
}

function build {
  sudo docker build -t digitalalexandria/barebone  .
}


CMD=$1
case "$CMD" in
  start)
    start
  ;;
  stop)
    stop
  ;;
  restart)
    stop
    start
  ;;
  build)
    build
  ;;
  *)
  usage
esac

