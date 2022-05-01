FROM timbru31/node-chrome:slim

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

RUN npm install -g @angular/cli

