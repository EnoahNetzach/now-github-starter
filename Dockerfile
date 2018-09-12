FROM node:10

WORKDIR /home/node
EXPOSE 3000

COPY package.json .
COPY yarn.lock .
RUN yarn install

COPY index.js .

ENTRYPOINT ["node", "index.js"]
