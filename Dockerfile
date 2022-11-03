FROM node:18-alpine3.14 
RUN npm i -g typescript ts-node
WORKDIR /app
COPY ./magic-hello /app
RUN npm install
EXPOSE 8080
CMD ["npm", "start"]