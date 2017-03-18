#!/usr/bin/env bash

docker run --rm \
     --name server \
     -p $http_port:$http_port \
     -p $debug_port:$debug_port \
     -v $PWD/src:/src $docker_image $1