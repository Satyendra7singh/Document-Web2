FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/documentWeb-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/documentWeb.war
EXPOSE 8080
EXPOSE 3306
CMD ["catalina.sh","run"]