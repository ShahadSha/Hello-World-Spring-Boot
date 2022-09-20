FROM openjdk:8u171-jre-alpine
WORKDIR /Hello-World-Spring-Boot
COPY ./target/hello-world-*.jar ./hello-world.jar
CMD ["java", "-jar", "./hello-world.jar"]
EXPOSE 9000