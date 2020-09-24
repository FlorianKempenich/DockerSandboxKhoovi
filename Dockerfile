FROM node:12

RUN mkdir /myapp

WORKDIR /myapp

ADD package.json .
ADD package-lock.json .

RUN npm install

ADD . .

CMD ["npm", "start"]