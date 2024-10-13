FROM node:22-slim

WORKDIR /usr/share/app

COPY package*.json ./

RUN npm install && npm cache clean --force

COPY . .

EXPOSE 5000

CMD [ "npm", "start" ]