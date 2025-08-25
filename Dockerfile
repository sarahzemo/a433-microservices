FROM node:18-alpine AS base
WORKDIR /app
COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3001

ENV NODE_ENV=production

CMD ["node", "index.js"]