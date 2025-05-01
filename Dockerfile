FROM node:23-alpine

USER root

ENV URL="https://github.com/webdev-arch/node-random-gen.git"

EXPOSE 3000

RUN rm -rf /opt/app
RUN mkdir -p /opt/app

WORKDIR /opt/app
RUN apk add --no-cache git
RUN git clone ${URL} /opt/app
RUN npm install

ENTRYPOINT ["npm", "run", "start"]