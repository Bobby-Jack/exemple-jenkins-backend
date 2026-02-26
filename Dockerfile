FROM node:24-alpine
WORKDIR /back
COPY ./package*.json ./
RUN npm install
COPY . .

CMD ["npm", "start"]