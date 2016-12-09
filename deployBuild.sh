#!/bin/bash



docker-compose down
docker pull birkirfb/tictactoe
#copy script for the aws server. copies important files to run the image on the aws server.
scp -o StrictHostKeyChecking=no -i "~/my-ec2-key-pair.pem" ./docker-compose.yml ec2-user@ec2-54-234-172-233.compute-1.amazonaws.com:~/docker-compose.yml
scp -o StrictHostKeyChecking=no -i "~/my-ec2-key-pair.pem" ./provision/compose-and-run.sh ec2-user@ec2-54-234-172-233.compute-1.amazonaws.com:~/compose-and-run.sh
scp -o StrictHostKeyChecking=no -i "~/my-ec2-key-pair.pem" ./build/.env ec2-user@ec2-54-234-172-233.compute-1.amazonaws.com:~/docker-compose.yml


docker-compose up -d