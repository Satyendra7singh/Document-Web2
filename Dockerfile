FROM maven:3.8.5-opejdk-17 AS build
COPY ..
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/documentWeb-0.0.1-SNAPSHOT.jar documentWeb.jar
EXPOSE 8080,3306
ENTRYPOINT ["java","-jar","documentWeb.jar"]