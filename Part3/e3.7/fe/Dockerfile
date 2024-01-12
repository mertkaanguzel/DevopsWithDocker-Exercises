FROM node:16-alpine3.18

EXPOSE 5000

WORKDIR /usr/src/frontend

COPY . .

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser -D appuser && \
    chown appuser .

USER appuser

ENTRYPOINT [ "serve" ]

CMD [ "-s", "-l", "5000", "build" ]