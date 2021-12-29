#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=harshitha95/capstone

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run capstone --image=harshitha95/capstone


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward capstone 8000:80


#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
# Docker ID/path
dockerpath=harshitha95/capstone

# Run the Docker Hub container with kubernetes
kubectl run capstone-containter --image=harshitha95/capstone

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward capstone-containter 8000:80

# Create deployment
kubectl apply -f deployment.yml

# Create the service to make pods accessible
kubectl apply -f service.yml

# Get Container Name from current deployment
kubectl get deployment capstone 

# Update Deployment - SHOULD WORK NOW
# kubectl set image deployment/<Deployment-Name> <Container-Name>=<Container-Image> --record=true
# kubectl set image deployment/my-first-deployment kubenginx=stacksimplify/kubenginx:2.0.0 --record=true