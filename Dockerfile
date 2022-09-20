FROM maven:3.6.1-jdk-8-alpine as Build
COPY ./pom.xml ./pom.xml
COPY ./src ./src
RUN mvn clean install

FROM openjdk:8u171-jre-alpine
WORKDIR /CICD to Kubernetes Deployment
COPY --from=Build ./target/hello-world-*.jar ./hello-world.jar
CMD ["java", "-jar", "./hello-world.jar"]
EXPOSE 9000