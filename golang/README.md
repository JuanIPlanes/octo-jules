# Golang Service Template

This is a minimal Golang HTTP service template for the octo-jules project.

## Structure

- `main.go` - Main application entry point
- `go.mod` - Go module definition
- `go.sum` - Dependency checksums
- `Dockerfile` - Multi-stage Docker build configuration

## Features

- Minimal HTTP server using standard library
- Health check endpoint
- Multi-stage Docker build for small image size
- Alpine-based final image

## Running Locally

```bash
# Run directly
go run main.go

# Build and run
go build -o app
./app
```

## Building Docker Image

```bash
docker build -t octo-jules-golang .
docker run -p 8080:8080 octo-jules-golang
```

## Adding Dependencies

```bash
# Add a new dependency
go get github.com/some/package

# Tidy up dependencies
go mod tidy
```

## Extending

- Add new routes in `main.go`
- Add new packages as needed
- Update `go.mod` when adding dependencies
- Keep the Dockerfile updated if changing the build process
