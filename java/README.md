# Java Service Template

This is a minimal Java HTTP service template for the octo-jules project using Maven.

## Structure

- `src/main/java/com/octojules/Main.java` - Main application entry point
- `pom.xml` - Maven project configuration
- `Dockerfile` - Multi-stage Docker build configuration

## Features

- Minimal HTTP server using Java's built-in HttpServer
- Health check endpoint
- Multi-stage Docker build for optimized image size
- Maven-based dependency management

## Running Locally

```bash
# Build with Maven
mvn clean package

# Run the JAR
java -jar target/java-service-1.0.0.jar
```

## Building Docker Image

```bash
docker build -t octo-jules-java .
docker run -p 8080:8080 octo-jules-java
```

## Adding Dependencies

Add dependencies to `pom.xml` in the `<dependencies>` section:

```xml
<dependency>
    <groupId>group.id</groupId>
    <artifactId>artifact-id</artifactId>
    <version>1.0.0</version>
</dependency>
```

## Extending

- Add new routes in `Main.java` using `server.createContext()`
- Add new classes in the `com.octojules` package
- Update `pom.xml` when adding dependencies
- Keep the Dockerfile updated if changing the build process
