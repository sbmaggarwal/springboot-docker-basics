FROM openjdk:21-jdk

# Create a non-root user
RUN groupadd -r secure-group && useradd -r -g secure-group secure-user

# Set permissions if needed
RUN mkdir /app && chown -R secure-user:secure-group /app
WORKDIR /app

# Switch to the secure user
USER secure-user:secure-group

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]