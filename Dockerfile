# syntax=docker/dockerfile:1
FROM node:18-bookworm-slim
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
EXPOSE 3030
CMD ["node", "app.js"]
