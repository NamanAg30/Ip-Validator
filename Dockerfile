FROM golang:1.17-alpine

LABEL email="naman.agarwal75@gmail.com"

EXPOSE 8081

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go mod download

RUN go build -o main 

CMD [ "/app/test" ]