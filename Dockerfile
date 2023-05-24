FROM ubuntu:latest
ARG DEBIAN_FRONTED=noninteractive
RUN apt-get update
RUN apt-get install -y apache2 curl
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html
ENTRYPOINT [*/user/sbin/apache2ctl*]
CMD [*-D*, *FOREGROUND*]
EXPOSE 80
