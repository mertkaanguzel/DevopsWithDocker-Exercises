FROM node:16-alpine3.18 as build-stage

WORKDIR /usr/src/frontend

COPY . .

RUN npm install && \
    npm run build

FROM alpine:latest

EXPOSE 5000

WORKDIR /usr/frontend

COPY --from=build-stage /usr/src/frontend/build/ ./build

RUN apk add --update nodejs npm && \
    npm install -g serve && \
    adduser -D appuser && \
    chown appuser .

USER appuser

ENTRYPOINT [ "serve" ]

CMD [ "-s", "-l", "5000", "build" ]
