FROM golang:1.16

WORKDIR /go/src/app
COPY . /go/src/app

COPY *.go ./

RUN go build
EXPOSE 8080
CMD ["./frontend"]