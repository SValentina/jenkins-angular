FROM timbru31/node-chrome

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

RUN npm install -g @angular/cli
