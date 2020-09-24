FROM ubuntu:18.04

RUN apt update
RUN apt install -y nodejs npm

RUN mkdir /myapp

WORKDIR /myapp

ADD package.json .
ADD package-lock.json .

RUN npm install

ADD . .

CMD ["npm", "start"]