# FROM openjdk:8u151-jdk-alpine3.7
FROM tomcat:10.1.10-jdk17
EXPOSE 8070
ENV APP_HOME /usr/local/tomcat/webapps/
COPY target/petclinic.war $APP_HOME/app.war
WORKDIR $APP_HOME
# ENTRYPOINT ["java","-jar","app.war"]
CMD ["catalina.sh", "run"]
