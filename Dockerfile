FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /root
COPY ./target/demo-*.jar /root/app.jar
COPY ./src/main/resources/ /root/
EXPOSE 8001
ENTRYPOINT ["java", "-Xmx200m", "-jar", "/root/app.jar"]
