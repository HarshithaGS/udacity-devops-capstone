#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
export dockerpath=harshitha95/capstone
#echo "Dockerpath: ${dockerpath}"



# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag capstone:latest  harshitha95/capstone:latest
# fixed login
# Step 3:
# Push image to a docker repository
docker push harshitha95/capstone


