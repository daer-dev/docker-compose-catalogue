FROM redis:5.0.3-alpine

MAINTAINER Daniel Herrero <daniel.herrero.101@gmail.com>

ENV     INSTALL_PATH /your_project_name
RUN     mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

RUN  mkdir -p docker
COPY ./docker/scripts ./docker/scripts

RUN chmod 777 ./docker/scripts/*.sh

RUN apk add --update bash && rm -rf /var/cache/apk/*
