FROM eclipse-temurin:17-jre-alpine
ARG JAR_FILE=target/*.war
COPY ./target/documentWeb-0.0.1-SNAPSHOT.war documentWeb.war
EXPOSE 8080
EXPOSE 3306
ENTRYPOINT ["java","-war","documentWeb.war"]