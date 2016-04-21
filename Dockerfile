
FROM node:5

RUN \
mkdir -p /usr/src; \
mkdir -p /workspace;

WORKDIR /usr/src

COPY package.json /usr/src/
COPY npm.sh /usr/local/bin/npm-docker

RUN \
chmod +x /usr/local/bin/npm-docker; \
npm install;

ADD app /usr/src/app
VOLUME /usr/src

