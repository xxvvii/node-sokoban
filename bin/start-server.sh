#!/usr/bin/env bash
docker run --rm \
     --name node-server -p 8080:8080 -p 5858:5858 \
     -v $PWD/src:/src devenv $1
