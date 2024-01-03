FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/backend

COPY . .

 ENV REQUEST_ORIGIN=http://localhost/

RUN go build

RUN go test ./...

CMD [ "./server" ]
