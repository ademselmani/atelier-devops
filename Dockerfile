FROM openjdk:8-jdk-alpine
EXPOSE 8082
ARG JAVA_FILE_URL=http://192.168.127.132:8081/repository/maven-releases/tn/esprit/spring/services/timesheet-devops/1.0/timesheet-devops-1.0.jar
RUN wget -O /timesheet-devops-1.0.jar "$JAVA_FILE_URL"
ENTRYPOINT ["java", "-jar", "/timesheet-devops-1.0.jar"]
