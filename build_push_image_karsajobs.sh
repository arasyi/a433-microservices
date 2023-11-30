#!/bin/bash

# Membuat docker image dari Dockerfile
docker build -t ghcr.io/arasyi/karsajobs:latest .

# Login ke Github Packages menggunakan Personal Access Token (environment variable: GHCR_PAT)
echo $GHCR_PAT | docker login ghcr.io -u arasyi --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/arasyi/karsajobs:latest