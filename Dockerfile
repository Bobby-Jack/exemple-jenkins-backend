FROM node:24-alpine
WORKDIR /back
COPY . .
RUN npm install


CMD ["npm", "start"]
