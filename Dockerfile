FROM tomcat:8.5.85-jdk8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/vprofile-v1.war /usr/local/tomcat/webapps/ROOT.war
WORKDIR /usr/local/tomcat
EXPOSE 8080
CMD ["catalina.sh","run"]
