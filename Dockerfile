FROM node:13.11

RUN mkdir /opt/src
WORKDIR /opt/src

RUN npm install --global http-server

RUN git clone --branch v2.0.0 --depth 1 https://github.com/radiantearth/stac-browser.git 

WORKDIR /opt/src/stac-browser

RUN npm install

RUN sed -i "s|module.exports = {|module.exports = {devServer: {disableHostCheck: true, sockPath: '/browser/sockjs-node'},|g" vue.config.js



