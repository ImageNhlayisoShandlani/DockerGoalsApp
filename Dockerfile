FROM node

WORKDIR /app

COPY . /app

RUN npm config set strict-ssl false

RUN npm install

EXPOSE 80

CMD ["node", "server.js"]