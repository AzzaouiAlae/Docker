FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG _PORT=808

ENV PORT=$_PORT

EXPOSE $PORT

CMD ["node", "server.js"]