#!/bin/bash

# Membuat docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image lokal
docker images

# Mengubah nama image menjadi format Github Packages
docker tag item-app:v1 ghcr.io/arasyi/item-app:v1

# Login ke Github Packages menggunakan Personal Access Token (environment variable: GHCR_PAT)
echo $GHCR_PAT | docker login ghcr.io -u arasyi --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/arasyi/item-app:v1