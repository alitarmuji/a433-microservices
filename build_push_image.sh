#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal. 
docker images

# Mengubah nama image agar sesuai dengan format GitHub Package
docker tag item-app:v1 ghcr.io/alitarmuji/item-app:v1

# Login ke GitHub Package
echo $PAT | docker login ghcr.io --username alitarmuji --password-stdin

# Mengunggah image ke GitHub Package
docker push ghcr.io/alitarmuji/item-app:v1