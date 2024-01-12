FROM node:16

EXPOSE 5000

WORKDIR /usr/src/frontend

COPY . .

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    useradd -m appuser && \
    chown appuser . && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*

USER appuser

ENTRYPOINT [ "serve" ]

CMD [ "-s", "-l", "5000", "build" ]