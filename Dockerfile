FROM node:lts-alpine AS base

WORKDIR /server

COPY package.json .

RUN apk add mariadb-client postgresql 

RUN npm install && npm cache clean --force

COPY . .

EXPOSE 8080

CMD sleep 5 && npm start
