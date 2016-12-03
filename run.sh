#!/bin/bash

function docker {
	echo "Starting docker container!"	
	service nginx start
	gunicorn -w 4 -b 127.0.0.1:4000 app:app --chdir /source/app
}

function usage {
	echo "USAGE:"
	echo "$0 --docker"
	echo -e "\t--docker: run the docker container"
	exit
}


if [[ "$1" == "--docker" ]];
then
	docker
else
	usage
fi