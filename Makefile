.PHONY: help build up down logs clean golang java typescript

help: ## Show this help message
	@echo "🚀 octo-jules - Multi-language Docker Template"
	@echo ""
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Build all services
	docker compose build

up: ## Start all services
	docker compose up -d

down: ## Stop all services
	docker compose down

logs: ## View logs from all services
	docker compose logs -f

clean: ## Remove all containers, images, and volumes
	docker compose down --rmi all -v

restart: down up ## Restart all services

status: ## Show status of all services
	docker compose ps

golang: ## Build and start only Golang service
	docker compose up -d --build golang-service

java: ## Build and start only Java service
	docker compose up -d --build java-service

typescript: ## Build and start only TypeScript service
	docker compose up -d --build typescript-service

test: ## Test all services are responding
	@echo "Testing Golang service..."
	@curl -s http://localhost:8081 || echo "Golang service not responding"
	@echo ""
	@echo "Testing Java service..."
	@curl -s http://localhost:8082 || echo "Java service not responding"
	@echo ""
	@echo "Testing TypeScript service..."
	@curl -s http://localhost:8083 || echo "TypeScript service not responding"

health: ## Check health of all services
	@echo "Checking health endpoints..."
	@echo "Golang:     " $$(curl -s http://localhost:8081/health || echo "FAIL")
	@echo "Java:       " $$(curl -s http://localhost:8082/health || echo "FAIL")
	@echo "TypeScript: " $$(curl -s http://localhost:8083/health || echo "FAIL")
