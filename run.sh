#!/bin/sh

CONTENT_DIR="_apprenticeship"
IMAGEID="apprenticeship_web"
HOST_PORT=4000
DOCKER_PORT=4000
WORKDIR=/srv/

case $1 in
    "build")
	docker build -t $IMAGEID .
	;;
    "run")
	docker run -p $HOST_PORT:$DOCKER_PORT \
	       -v $(pwd)/$CONTENT_DIR:$WORKDIR$CONTENT_DIR \
	       $IMAGEID
	;;
    *)
	echo "Invalid usage!"
	echo "To build the docker image, use: ./run.sh build"
	echo "To run the docker image, use: ./run.sh run"
esac
