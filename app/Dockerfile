FROM ubuntu

RUN apt-get update

RUN apt-get install -y python3.5
RUN apt-get install -y python-dev

RUN apt-get install -y python-flask
RUN apt-get install -y python-pip
RUN pip install py2neo
RUN pip install numpy
RUN pip install flask-cors

RUN apt-get install -y curl

RUN mkdir /source/
ADD api /source/

EXPOSE 5000

CMD python /source/flaskr.py
