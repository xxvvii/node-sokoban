# node-sokoban

A ready to use node.js general purpose development environment docker template image which may help you
setup your development quickly.

*** Windows script support is working in progress, coming soon... ***

## What's included in this docker image
* This image is built on top of CentOS7 with development toolkit installed
* Node.js 6.10.0 with nvm installed
* nodemon and pm2 for both development and production usage
* Some useful scripts to help you manage dock container
* Using taobao npm repo as default, you may change it in the Dockerfile as you wish
* A example express server in 'src', which mount as a volume in docker container, just replace it with your own real project!

## Building example image
```
bin/build.sh
```
By default the docker image name is 'devenv', you could change it by searching string 'devenv' and replace it in directory 'bin'.  

## Start docker container

### Run server normally
```
bin/run.sh
```

### Run server with debug option
```
bin/debug.sh
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