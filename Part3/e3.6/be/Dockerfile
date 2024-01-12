FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/backend

COPY . .

RUN go build && \
    go test ./... && \
    adduser appuser && \
    chown appuser . && \
    dpkg --purge --force-all curl && \
    rm -rf /var/lib/apt/lists/*

USER appuser

CMD [ "./server" ]
