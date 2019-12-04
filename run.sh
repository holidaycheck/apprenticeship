#!/bin/sh

CONTENT_DIR="_apprenticeship"
IMAGEID="apprenticeship_web"
HOST_PORT=4000
DOCKER_PORT=4000
WORKDIR=/srv/ # docker WORKDIR

docker build -t $IMAGEID .
docker run -p $HOST_PORT:$DOCKER_PORT \
       -v $(pwd)/$CONTENT_DIR:$WORKDIR$CONTENT_DIR \
       $IMAGEID
