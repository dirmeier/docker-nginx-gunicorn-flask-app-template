#!/bin/bash
if [ -f "/source/app/app.py"];
then
	echo "Starting docker container!"
	gunicorn -w 4 -b 127.0.0.1:4000 app:app --chdir /source/app
	service nginx start
else
	echo "Starting local server!"
	gunicorn -w 4 -b 127.0.0.1:4000 app:app --chdir ./app
	service nginx start
fi

