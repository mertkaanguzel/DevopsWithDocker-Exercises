FROM ubuntu:20.04

RUN apt-get update

RUN apt-get -y install curl

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh

ENTRYPOINT [ "./script.sh" ]

CMD ["helsinki.fi"]