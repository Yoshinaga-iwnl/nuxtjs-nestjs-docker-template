FROM node:15-slim

WORKDIR /app

COPY package*.json ./
RUN npm install --quiet

COPY . .

VOLUME /app
EXPOSE 3100
CMD ["npm", "run", "start:dev"]
