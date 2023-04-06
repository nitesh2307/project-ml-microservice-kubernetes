#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
kubectl get nodes

dockerpath=nitesh2307/prediction_docker_im1:nk1
docker login

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment prediction1 --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/prediction1 8000:80

