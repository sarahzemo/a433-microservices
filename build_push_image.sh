#!/bin/bash

# Variables
DOCKER_USERNAME="sarahzemo"
IMAGE_NAME="shipping-service"
TAG="latest"

# Build Docker image
echo "🚧 Building Docker image..."
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Login to Docker Hub
echo "🔐 Logging in to Docker Hub..."
docker login

# Push to Docker Hub
echo "📦 Pushing image to Docker Hub..."
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

echo "✅ Done: $DOCKER_USERNAME/$IMAGE_NAME:$TAG pushed!"