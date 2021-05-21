FROM node:lts-alpine AS base

WORKDIR /server

COPY package.json .

RUN apk add postgresql 

RUN npm install

COPY . .

EXPOSE 8080

CMD npm start
