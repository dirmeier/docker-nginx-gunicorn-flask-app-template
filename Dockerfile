FROM ubuntu

RUN apt-get update -qq &&  \
  apt-get install -y nginx && \
  apt-get install -y python3.5 && \
  apt-get install -y python-dev && \
  apt-get install -y python-flask && \
  apt-get install -y python-pip && \
  apt-get install -y git && \
  pip install flask-cors && \
  pip install gunicorn && \
  apt-get install -y curl && \
  apt-get install -y -qq npm

RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install --global bower

RUN mkdir /source/

COPY webapp-barebone/reverse-proxy/supervisord.conf /etc/supervisord.conf
COPY webapp-barebone/reverse-proxy/nginx.conf /etc/nginx/nginx.conf
COPY webapp-barebone/reverse-proxy/app /etc/nginx/sites-available/default

COPY webapp-barebone/flask /source/app
COPY webapp-barebone/run.sh /source/run.sh

RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN cd /source/app/static && bower install && npm install


EXPOSE 80

CMD ["/source/run.sh",  "--docker"]
