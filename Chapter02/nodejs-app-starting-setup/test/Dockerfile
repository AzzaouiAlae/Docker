FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . /app

EXPOSE 808

CMD ["node", "server.js"]