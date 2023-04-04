FROM openjdk:8
EXPOSE 8080
ADD target/jenkins-docker-integration-sample.jar target\jenkins-docker-integration-sample.jar
ENTRYPOINT [ "java","-jar","/jenkins-docker-integration-sample.jar" ]