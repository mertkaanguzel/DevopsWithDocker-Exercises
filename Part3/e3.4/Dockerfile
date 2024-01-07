FROM docker:dind

WORKDIR /usr/src/app

COPY builder.sh .

RUN chmod +x ./builder.sh
RUN apk add git

ENTRYPOINT [ "/usr/src/app/builder.sh" ]
