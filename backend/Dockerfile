FROM golang:1.16

WORKDIR /go/src/app
COPY . /go/src/app

RUN go get -v github.com/gomodule/redigo
RUN go get -v

RUN go build 
EXPOSE 9000
CMD ["./backend"]