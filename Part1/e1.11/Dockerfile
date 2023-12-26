FROM openjdk:8

EXPOSE 8080

WORKDIR /usr/src/myapp

COPY . .

RUN ./mvnw package

ENTRYPOINT [ "java" ]

CMD [ "-jar", "./target/docker-example-1.1.3.jar" ]