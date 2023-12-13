FROM node:19.9.0-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin$PATH

COPY package.json ./
COPY package-lock.json ./

RUN npm install --silent

COPY . /app

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
