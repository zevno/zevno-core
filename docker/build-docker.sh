#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-zevnopay/zevnod-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/zevnod docker/bin/
cp $BUILD_DIR/src/zevno-cli docker/bin/
cp $BUILD_DIR/src/zevno-tx docker/bin/
strip docker/bin/zevnod
strip docker/bin/zevno-cli
strip docker/bin/zevno-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
