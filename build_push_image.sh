#!/bin/bash

# Stop script jika ada error
set -e
DOCKER_USERNAME="sarahzemo"

# 1. Build Docker image dari Dockerfile
echo "Membuat Docker image item-app:v1 ..."
docker build -t item-app:v1 .

# 2. Lihat daftar image lokal
echo "Daftar Docker image lokal:"
docker images

# 3. Tag image sesuai format Docker Hub
echo "Menandai image untuk Docker Hub..."
docker tag item-app:v1 $DOCKER_USERNAME/item-app:v1

# 4. Login ke Docker Hub
echo "Login ke Docker Hub..."
docker login

# 5. Push image ke Docker Hub
echo "Mengunggah image ke Docker Hub..."
docker push $DOCKER_USERNAME/item-app:v1

echo "Selesai! Image telah diunggah ke Docker Hub sebagai: $DOCKER_USERNAME/item-app:v1"