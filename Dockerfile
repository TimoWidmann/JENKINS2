FROM openjdk:8-jre-alpine
COPY maven/*.jar /app.jar
EXPOSE 8080
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.jar"]