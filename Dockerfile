FROM node
WORKDIR /test/app
COPY package.json .
RUN npm install
COPY . .
VOLUME /usr/test/app
CMD ["npm", "start"]