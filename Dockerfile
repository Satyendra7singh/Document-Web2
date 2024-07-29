FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre-alpine
COPY --from=build /target/documentWeb-0.0.1-SNAPSHOT.jar documentWeb.jar
EXPOSE 8080
EXPOSE 3306
ENTRYPOINT ["java","-jar","documentWeb.jar"]