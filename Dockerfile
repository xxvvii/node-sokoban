FROM centos:7
RUN yum update -y && \
    yum group install "Development Tools" -y && \
    yum clean all

# Install nvm as node.js version manager and setup mirrors
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
ENV NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node \
    NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

# Node.js version
ENV NODE_VERSION 6.10.0

# Install node.js update npm and install utilities
RUN echo Installing node.js v$NODE_VERSION... && \
    . $HOME/.nvm/nvm.sh && \
    nvm install $NODE_VERSION && \
    npm config set registry=https://registry.npm.taobao.org && \
    npm update npm -g && \
    npm install nrm -g && \
    nrm use taobao && \
    npm install nodemon pm2 -g

WORKDIR /src

# CMD ["/bin/bash", "bin/run.sh"]

EXPOSE 8080 5858
