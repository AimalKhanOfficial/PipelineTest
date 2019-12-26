FROM node
WORKDIR /test/app
COPY package.json .
RUN npm install
COPY . .
CMD ["npm", "start"]