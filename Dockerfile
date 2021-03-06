FROM node:8.12-alpine

ENV APP_DIR /src/app/

RUN mkdir -p $APP_DIR

ADD ./package.json ${APP_DIR}

WORKDIR $APP_DIR

RUN ["npm", "install"]

COPY . .
