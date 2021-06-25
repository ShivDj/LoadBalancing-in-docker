#!/bin/bash


sudo docker rm -f frontendcontainer backendcontainer mysql_container
sudo docker rmi -f basechatappimage frontend_image backend_image mysql_image

cd /home/ubuntu/Docker_Project
sudo docker build -t pythonbaseimage .
sudo docker-compose up --build -d
