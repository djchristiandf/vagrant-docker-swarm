#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
#sudo docker build -t my-apache2 .
#sudo docker run -dit --name my-running-app -p 8080:80 my-apache2