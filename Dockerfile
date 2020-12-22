FROM openjdk:8-jdk-alpine
EXPOSE 8000
ARG JAR_FILE=target/dashboard-service*.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]