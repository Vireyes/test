# Dockerfile create-react-app

FROM node:12-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV PORT 8080
ENV HOST 0.0.0.0

COPY / ./
RUN npm install

RUN npm run build

 CMD [ "npm", "start" ]
