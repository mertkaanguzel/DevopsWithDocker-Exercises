FROM node:16

EXPOSE 5000

WORKDIR /usr/src/frontend

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g serve

ENTRYPOINT [ "serve" ]

CMD [ "-s", "-l", "5000", "build" ]