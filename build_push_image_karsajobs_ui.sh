#!/bin/bash

#Build Docker image dari berkas Dockerfile
docker build -t ghcr.io/alitarmuji/karsajobs-ui:latest .

#Login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u alitarmuji --password-stdin

#Push image ke GitHub Packages
docker push ghcr.io/alitarmuji/karsajobs-ui:latest