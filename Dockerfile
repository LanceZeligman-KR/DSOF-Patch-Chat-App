FROM openjdk:21-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
CMD apt-get install 2.36-9+deb12u3
ENTRYPOINT ["java","-jar","/app.jar"]
