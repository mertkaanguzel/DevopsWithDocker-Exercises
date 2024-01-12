FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/backend

COPY . .

RUN go build

RUN go test ./...

RUN adduser appuser

RUN chown appuser .

USER appuser

CMD [ "./server" ]
