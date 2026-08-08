# dockerize node application , with latest node version
FROM node:latest 
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]

