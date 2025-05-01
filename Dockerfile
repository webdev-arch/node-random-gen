FROM node:23-alpine

USER root

ENV URL="https://github.com/webdev-arch/node-random-gen.git"

RUN apk add --no-cache git
RUN rm -rf /opt/app
RUN git clone ${URL} /opt/app

WORKDIR /opt/app

RUN npm install

ENTRYPOINT ["npm", "run", "start"]