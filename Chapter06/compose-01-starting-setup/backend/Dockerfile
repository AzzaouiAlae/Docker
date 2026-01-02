FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV DB_USER=alae
ENV DB_PASS=secret

CMD ["npm", "start"]