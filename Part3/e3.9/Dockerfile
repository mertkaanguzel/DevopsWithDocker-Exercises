FROM golang:1.16-alpine3.15 as build-env

WORKDIR /usr/src/backend

COPY . .

RUN apk add --no-cache build-base && \
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build && \
    go test ./... && \
    adduser -D appuser

FROM scratch

COPY --from=build-env /etc/passwd /etc/passwd

COPY --from=build-env /etc/group /etc/group

EXPOSE 8080

WORKDIR /usr/backend

COPY --from=build-env /usr/src/backend/ .

USER appuser

CMD [ "./server" ]
