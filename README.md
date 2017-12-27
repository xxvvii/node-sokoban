# node-sokoban

A ready to use node.js general purpose development environment docker template image which may help you
setup your development quickly.

## What's included in this docker image
* This image is built on top of CentOS with development toolkit installed
* Node.js 6.10.0 with nvm installed
* nodemon and pm2 for both development and production usage
* Some useful scripts to help you manage dock container
* Using taobao npm repo as default, you may change it in the Dockerfile as you wish
* An example express server in 'src', which mounts as a volume in docker container, just replace it with your own real project!

## Commands
* run     Run node server container
* debug   Run node server container with debug option
* stop    Stop running container
* shell   Login into container shell
* build   Build docker image

## Building example image
```
./sokoban build
```
By default the docker image name is 'node-runtime', you could change it by editing variable in script 'sokoban' 

## Start docker container

### Run server normally
```
./sokoban run
```

### Run server with debug option
```
./sokoban debug
```

Note the default debug port is 5858

## How to remote debug

### WebStorm

```
Edit Configurations -> Click Add Button -> Select 'Node.js Remote Debug'
```

### Stop container

```
bin/stop-server.sh
```

Above command will stop the docker container.

### Shell
```
./sokoban shell
```

You may use this script to access the container shell and install node dependencies. 