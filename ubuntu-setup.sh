#!/bin/bash

#installing docker-compose
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"
sudo chmod +x /usr/local/bin/docker-compose
docker-compose -v
npm config set http-proxy http://ptmproxy.gmv.es
npm config set http-proxy http://ptmproxy.gmv.es
nvm install 7
nvm use 7
npm install -g yarn
pushd recipes-api
npm config set http http://ptmproxy.gmv.es
npm config set http-proxy http://ptmproxy.gmv.es
yarn install
popd
pushd recipes-crawler
yarn install
popd
pushd recipes-id-generator
yarn install
popd
pushd recipes-infra
popd
