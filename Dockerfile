FROM ubuntu:14.04
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python

USER daemon
EXPOSE 8000

VOLUME /www
WORKDIR /www

CMD ["python", "-m", "SimpleHTTPServer", "8000"]