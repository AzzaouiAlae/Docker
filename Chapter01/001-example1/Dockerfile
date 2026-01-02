FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG MY_PORT=3000

ENV PORT=$MY_PORT

EXPOSE $PORT

CMD [ "npm", "start" ]