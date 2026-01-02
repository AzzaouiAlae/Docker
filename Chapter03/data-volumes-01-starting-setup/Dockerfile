FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG _PORT=800

ENV PORT=$_PORT

CMD [ "npm", "start" ]