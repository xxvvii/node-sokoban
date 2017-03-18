#!/usr/bin/env bash
export docker_image="node-runtime"
export http_port=8080
export debug_port=5858

$SHELL "bin/$1.sh"