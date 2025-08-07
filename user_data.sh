#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker

# Pull and React app container from Docker Hub
docker run -d -p 80:80 21i2656/react-frontend
