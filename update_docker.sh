#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Step 1:
# Build image and add a descriptive tag 
docker build --tag=capstone-containter . 
# Step 2: 
# List docker images
docker image ls


# Step 3: 
# Run app
# publish the container’s port to a host port
#docker run -p 8000:80 capstone-containter
docker run -d -p 8000:80 capstone


 Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=harshitha95/capstone

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username harshitha95
#docker login --username $1 --password $2
docker tag capstone:latest $dockerpath:v2

# Push image to docker repository
docker push harshitha95/capstone:v2

# connect to aws and establish credentials
aws eks --region us-east-1 update-kubeconfig --name capstone-deployment --profile Admin

# trigger rolling update
kubectl set image deployment/capstone-rolling-update capstone-html-container=harshitha95/capstone-containter:v2

# describe deployment and services
kubectl get deployment capstone-rolling-update
kubectl get services capstone-rolling-update