FROM golang:1.16

WORKDIR /go/src/app
COPY backend /go/src/app
COPY frontend /go/src/app
COPY images /go/src/app

RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8080
RUN go build 
RUN go run backend

CMD ["app"]