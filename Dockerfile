# Use an official OpenJDK runtime as a parent image
FROM khipu/openjdk17-alpine:latest

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/SpringBootApp-0.0.1-SNAPSHOT.jar /app/SpringBootApp.jar

# Expose the port that the application will run on
EXPOSE 8081

# Specify the command to run your application
CMD ["java", "-jar", "SpringBootApp.jar"]
