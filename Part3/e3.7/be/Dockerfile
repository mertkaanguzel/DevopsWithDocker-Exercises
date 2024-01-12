FROM golang:1.16-alpine3.15
EXPOSE 8080

WORKDIR /usr/src/backend

COPY . .

RUN apk add --no-cache build-base && \
    go build && \
    go test ./... && \
    adduser -D appuser && \
    chown appuser .

USER appuser

CMD [ "./server" ]
