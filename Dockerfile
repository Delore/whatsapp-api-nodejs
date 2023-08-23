FROM node:19-alpine

ARG _WORKDIR=/home/node/app
ARG PORT=3333

USER root
RUN apk add git

ENV TZ=America/Sao_Paulo

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR ${_WORKDIR}

ADD . ${_WORKDIR}
RUN yarn install

USER node
EXPOSE ${PORT}

CMD yarn start