#!/bin/sh

REPO=$(echo $1 | cut -d "/" -f 2)

git clone https://github.com/$1 $(pwd)/$REPO

docker build ./$REPO -t $REPO

# DOCKER_PWD = docker hub access key
docker login -u $DOCKER_USER -p $DOCKER_PWD

docker tag $REPO $2

docker push $2
