#!/bin/bash

APP_NAME="project1"

echo "Checking existing container..."
if docker ps -a | grep -q $APP_NAME; then
  echo "Stopping and removing container..."
  docker stop $APP_NAME
  docker rm $APP_NAME
fi

echo "Checking existing image..."
if docker images | grep -q $APP_NAME; then
  echo "Removing image..."
  docker rmi $APP_NAME
fi

echo "Building new image..."
docker build -t $APP_NAME .

echo "Running new container..."
docker run -d -p 3000:3000 --name $APP_NAME $APP_NAME
