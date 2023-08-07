FROM java:8-jdk-alpine
COPY ./target/sb-app.jar /usr/app/
WORKDIR /usr/app
RUN sh -c 'touch sb-app.jar'
ENTRYPOINT [ "java","-jar","sb-app.jar" ]
