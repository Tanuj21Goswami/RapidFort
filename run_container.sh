#!/bin/bash

# Define variables
IMAGE_NAME="my-web-app-image"
CONTAINER_NAME="my-web-app-container"
# Change this line in run_container.sh
PORT_MAPPING="8080:8000"


# Check if the container is already running
if [ "$(sudo docker ps -q -f name=$CONTAINER_NAME)" ]; then
  echo "Container $CONTAINER_NAME is already running."
  exit 0
fi

# Check if the container exists but is stopped
if [ "$(sudo docker ps -q -a -f name=$CONTAINER_NAME)" ]; then
  echo "Container $CONTAINER_NAME exists but is stopped. Removing it..."
  sudo docker rm $CONTAINER_NAME
fi

# Build the Docker image (if not already built)
if ! sudo docker images | grep -q $IMAGE_NAME; then
  echo "Building Docker image $IMAGE_NAME..."
  sudo docker build -t $IMAGE_NAME .
fi

# Run the Docker container
echo "Starting Docker container $CONTAINER_NAME..."
sudo docker run -d -p $PORT_MAPPING --name $CONTAINER_NAME $IMAGE_NAME

# Print container status
echo "Container $CONTAINER_NAME is now running."
