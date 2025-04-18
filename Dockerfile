FROM node:18.16.0-alpine3.18

WORKDIR /app

COPY package*.json ./

RUN npm install --force

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]