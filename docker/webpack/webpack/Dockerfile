FROM node:latest

WORKDIR /app
COPY ./webpack.config.js /app/webpack.config.js
COPY ./postcss.config.js /app/webpack.config.js
COPY ./tsconfig.json /app/tsconfig.json
COPY ./package.json /app/package.json

RUN npm install -g webpack webpack-cli webpack-dev-server
RUN npm install
EXPOSE 8080
