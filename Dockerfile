FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

# Add the local jar file from build context into container
ADD target/myapp.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
