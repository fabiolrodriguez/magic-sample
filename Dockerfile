FROM arm32v7/node
RUN npm i -g typescript ts-node
WORKDIR /app
COPY ./magic-hello /app
RUN npm install
EXPOSE 8080
CMD ["npm", "start"]