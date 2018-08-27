# gokaygurcan/dockerfile-web-sample-project

FROM gokaygurcan/node:latest

LABEL maintainer="Gökay Gürcan <docker@gokaygurcan.com>"

ENV PORT=3000 \
    PROJECT_NAME="dockerfile-web-sample-project"

RUN mkdir -p ~/${PROJECT_NAME}

COPY . ~/${PROJECT_NAME}/

WORKDIR ~/${PROJECT_NAME}

RUN npm install && npm start
