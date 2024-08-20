FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar /app

# Specify the command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]

# Optional: Expose the port on which your application will run
EXPOSE 8080
