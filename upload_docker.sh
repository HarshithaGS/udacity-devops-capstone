#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=harshitha95/capstone
echo "Dockerpath: ${dockerpath}"


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#docker login --username $1 --password $2
docker login --username "HarshithaGS" &&\
  #docker login --password "Docker@1"
docker tag capstone:latest $dockerpath:latest


# Step 3:
# Push image to a docker repository
docker push  $dockerpath:latest