# Build NodeJS Web Service directory, Install Dependencies, Run Service
FROM node:16-alpine
RUN mkdir -p /app/node_modules
WORKDIR /app
COPY app/. ./
# COPY app/package*.json ./
RUN npm install
EXPOSE 80
CMD ["node", "app.js"]