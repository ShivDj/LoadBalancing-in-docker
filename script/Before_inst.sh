#!/bin/bash
  sudo rm -rf /home/ubuntu/Docker_Project/.idea
  sudo rm -rf /home/ubuntu/Docker_Project/.github
  sudo rm -rf /home/ubuntu/Docker_Project/script
  sudo rm -rf /home/ubuntu/Docker_Project/appspec.yml
  sudo rm -rf /home/ubuntu/Docker_Project/Dockerfile
  sudo rm -rf /home/ubuntu/Docker_Project/docker-compose.yml
  sudo rm -rf /home/ubuntu/Docker_Project/pipeline.groovy
  sudo rm -rf /home/ubuntu/Docker_Project/sonar-project.properties
  sudo rm -rf /home/ubuntu/Docker_Project/appspec.yml
  sudo rm -rf /home/ubuntu/Docker_Project/frontend_Docker
  sudo rm -rf /home/ubuntu/Docker_Project/db_docker
  sudo rm -rf /home/ubuntu/Docker_Project/backend
if [ -d /home/ubuntu/Docker_Project/fundoo ]; then
   sudo rm -rf /home/ubuntu/Docker_Project/fundoo
fi
if [ -f /home/ubuntu/Docker_Project/requirements.txt ]; then
    sudo rm -rf /home/ubuntu/Docker_Project/requirements.txt
fi    

