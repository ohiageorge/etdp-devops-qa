#!/usr/bin/bash
echo "Building Docker image"
#sudo docker stop watchtower
sudo docker stop
#sudo docker system prune -f
echo "Removing old images"
sudo docker-compose rm -f
echo "Downloading new images"
sudo docker-compose pull
echo "Staring the container"
sudo docker-compose  up -d
echo "Removing any dangling image"
sudo docker image prune -f
