# octo-jules

A multi-language Docker template project for developing language-agnostic microservices. This project provides ready-to-use templates for Golang, Java, and TypeScript, inspired by Jules (Google), designed to be easily edited by AI assistants like ChatGPT and Codex.

## 🚀 Features

- **Multi-language support**: Pre-configured templates for Golang, Java, and TypeScript
- **Docker-ready**: Each service has its own optimized Dockerfile with multi-stage builds
- **Docker Compose**: Orchestrate all services with a single command
- **Health checks**: Built-in health check endpoints for all services
- **Production-ready**: Optimized for small image sizes and fast startup times
- **AI-friendly**: Structured for easy editing by AI code assistants

## 📁 Project Structure

```
octo-jules/
├── golang/                 # Go service template
│   ├── Dockerfile
│   ├── main.go
│   ├── go.mod
│   └── go.sum
├── java/                   # Java service template
│   ├── Dockerfile
│   ├── pom.xml
│   └── src/
│       └── main/java/com/octojules/Main.java
├── typescript/             # TypeScript service template
│   ├── Dockerfile
│   ├── package.json
│   ├── tsconfig.json
│   └── src/
│       └── index.ts
├── docker-compose.yml      # Orchestration file
├── .gitignore
├── LICENSE
└── README.md
```

## 🔧 Prerequisites

- Docker (20.10 or later)
- Docker Compose (2.0 or later)

## 🏃 Quick Start

### Running All Services

```bash
# Build and start all services
docker-compose up --build

# Run in detached mode
docker-compose up -d --build

# Stop all services
docker-compose down
```

### Running Individual Services

**Golang Service:**
```bash
cd golang
docker build -t octo-jules-golang .
docker run -p 8081:8080 octo-jules-golang
```

**Java Service:**
```bash
cd java
docker build -t octo-jules-java .
docker run -p 8082:8080 octo-jules-java
```

**TypeScript Service:**
```bash
cd typescript
docker build -t octo-jules-typescript .
docker run -p 8083:8080 octo-jules-typescript
```

## 🌐 Service Endpoints

Once running, the services are accessible at:

- **Golang Service**: http://localhost:8081
  - Main endpoint: http://localhost:8081/
  - Health check: http://localhost:8081/health

- **Java Service**: http://localhost:8082
  - Main endpoint: http://localhost:8082/
  - Health check: http://localhost:8082/health

- **TypeScript Service**: http://localhost:8083
  - Main endpoint: http://localhost:8083/
  - Health check: http://localhost:8083/health

## 🛠️ Development

### Golang Development

```bash
cd golang
go run main.go
```

### Java Development

```bash
cd java
mvn clean package
java -jar target/*.jar
```

### TypeScript Development

```bash
cd typescript
npm install
npm run dev
```

## 🎨 Customization

Each service template is designed to be minimal and easy to customize:

1. **Add dependencies**: Update `go.mod`, `pom.xml`, or `package.json`
2. **Add new endpoints**: Modify the main application file
3. **Configure ports**: Update the Dockerfile and docker-compose.yml
4. **Add environment variables**: Use Docker Compose environment sections

## 📝 AI Assistant Usage

This project is structured to be easily understood and modified by AI code assistants:

- Clear directory structure with one language per folder
- Standard naming conventions
- Minimal boilerplate
- Comprehensive comments in configuration files
- Ready-to-use examples

## 📄 License

This project is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0)**.

**You are free to:**
- ✅ Share — copy and redistribute the material
- ✅ Adapt — remix, transform, and build upon the material

**Under the following terms:**
- 📌 **Attribution** — You must give appropriate credit to JuanIPlanes
- 🚫 **NonCommercial** — You may NOT use this for commercial purposes without explicit permission and appropriate compensation

For commercial use, please contact JuanIPlanes for licensing terms.

See the [LICENSE](LICENSE) file for full details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## 🙏 Acknowledgments

Inspired by Jules from Google - a project focused on AI-assisted development.

## 📧 Contact

For commercial licensing inquiries or questions, please contact JuanIPlanes.

---

**Made with ❤️ for the developer community**