FROM golang:1.16

WORKDIR /go/src/app
COPY backend /go/src/app
COPY frontend /go/src/app
COPY images /go/src/app

ENV GOBIN /go/bin


RUN go get -v github.com/gomodule/redigo


EXPOSE 8080
RUN go build 
RUN go run backend
RUN go run frontend
CMD ["./frontend"]