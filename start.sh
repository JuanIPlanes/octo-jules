#!/bin/bash

# Quick start script for octo-jules
# This script helps you get started with the project quickly

set -e

echo "🚀 Welcome to octo-jules!"
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    echo "   Visit: https://docs.docker.com/get-docker/"
    exit 1
fi

# Check if Docker Compose is available
if ! command -v docker compose &> /dev/null && ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    echo "   Visit: https://docs.docker.com/compose/install/"
    exit 1
fi

echo "✅ Docker is installed"
echo ""

# Function to show menu
show_menu() {
    echo "What would you like to do?"
    echo ""
    echo "1) Build and start all services"
    echo "2) Build and start Golang service only"
    echo "3) Build and start Java service only"
    echo "4) Build and start TypeScript service only"
    echo "5) Stop all services"
    echo "6) View logs"
    echo "7) Clean up (remove containers and images)"
    echo "8) Exit"
    echo ""
    read -p "Enter your choice (1-8): " choice
}

# Use docker compose or docker-compose based on availability
DOCKER_COMPOSE="docker compose"
if ! command -v docker compose &> /dev/null; then
    DOCKER_COMPOSE="docker-compose"
fi

while true; do
    show_menu
    
    case $choice in
        1)
            echo ""
            echo "🔨 Building and starting all services..."
            $DOCKER_COMPOSE up --build -d
            echo ""
            echo "✅ All services are running!"
            echo "   - Golang:     http://localhost:8081"
            echo "   - Java:       http://localhost:8082"
            echo "   - TypeScript: http://localhost:8083"
            echo ""
            ;;
        2)
            echo ""
            echo "🔨 Building and starting Golang service..."
            $DOCKER_COMPOSE up --build -d golang-service
            echo ""
            echo "✅ Golang service is running at http://localhost:8081"
            echo ""
            ;;
        3)
            echo ""
            echo "🔨 Building and starting Java service..."
            $DOCKER_COMPOSE up --build -d java-service
            echo ""
            echo "✅ Java service is running at http://localhost:8082"
            echo ""
            ;;
        4)
            echo ""
            echo "🔨 Building and starting TypeScript service..."
            $DOCKER_COMPOSE up --build -d typescript-service
            echo ""
            echo "✅ TypeScript service is running at http://localhost:8083"
            echo ""
            ;;
        5)
            echo ""
            echo "🛑 Stopping all services..."
            $DOCKER_COMPOSE down
            echo ""
            echo "✅ All services stopped"
            echo ""
            ;;
        6)
            echo ""
            echo "📋 Showing logs (Ctrl+C to exit)..."
            $DOCKER_COMPOSE logs -f
            ;;
        7)
            echo ""
            read -p "⚠️  This will remove all containers and images. Continue? (y/N): " confirm
            if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
                echo "🧹 Cleaning up..."
                $DOCKER_COMPOSE down --rmi all -v
                echo ""
                echo "✅ Cleanup complete"
            else
                echo "Cancelled"
            fi
            echo ""
            ;;
        8)
            echo ""
            echo "👋 Goodbye!"
            exit 0
            ;;
        *)
            echo ""
            echo "❌ Invalid choice. Please try again."
            echo ""
            ;;
    esac
done
