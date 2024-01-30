FROM openjdk:17-jdk-slim-buster
WORKDIR /
COPY ./target/supermarket-1.0.0-SNAPSHOT.jar  /

ENTRYPOINT [ "java", "-jar","/supermarket-1.0.0-SNAPSHOT.jar" ]
EXPOSE 8080

