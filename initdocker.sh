#!/bin/bash

mv /etc/apt/sources.list /etc/apt/sources.list.bak
cp /home/ubuntu/sources.list /etc/apt/sources.list 

curl -sSL https://get.docker.com/ | sh
sudo docker run hello-world

sudo gpasswd -a ubuntu docker

curl -L https://github.com/docker/compose/releases/download/1.5.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
