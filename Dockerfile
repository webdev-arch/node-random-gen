FROM node:23-alpine

USER root

ENV URL=https://github.com/webdev-arch/random-gen.git

EXPOSE 3000

WORKDIR /opt/app

RUN apt install git -y

RUN git clone ${URL} /opt/app
RUN npm install

ENTRYPOINT ["npm", "run", "start"]