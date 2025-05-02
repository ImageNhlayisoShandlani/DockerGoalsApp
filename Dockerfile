FROM node

WORKDIR /app

RUN npm config set strict-ssl false

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

CMD ["node", "server.js"]