FROM openjdk:21-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
CMD apt uninstall -y libc6
ENTRYPOINT ["java","-jar","/app.jar"]
