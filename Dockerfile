FROM ubuntu

RUN mkdir /myapp

WORKDIR /myapp

ADD ./hello.md .

CMD ["echo", "now I'm running"]