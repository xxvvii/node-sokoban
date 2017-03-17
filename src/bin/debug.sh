#!/usr/bin/env bash
. ~/.nvm/nvm.sh && nvm use default; \
    npm install; \
    nodemon --debug index