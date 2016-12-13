#!/bin/bash


scp ../TicTacToe/docker-compose.yml jenkins@82.221.49.114:~/docker-compose.yml
scp ../TicTacToe/build/.env jenkins@82.221.49.114:~/.env

#docker-compose down
#docker pull birkirfb/tictactoe:$GIT_COMMIT
#copy script for the aws server. copies important files to run the image on the aws server.
scp -o StrictHostKeyChecking=no -i "~/my-ec2-key-pair.pem" ./docker-compose.yml ec2-user@ec2-54-174-116-245.compute-1.amazonaws.com:~/docker-compose.yml
#scp -o StrictHostKeyChecking=no -i "~/my-ec2-key-pair.pem" ./provision/compose-and-run.sh ec2-user@ec2-54-174-116-245.compute-1.amazonaws.com:~/compose-and-run.sh
scp -o StrictHostKeyChecking=no -i "~/my-ec2-key-pair.pem" ./.env ec2-user@ec2-54-174-116-245.compute-1.amazonaws.com:~/.env

ssh -i "~/my-ec2-key-pair.pem" ec2-user@ec2-54-174-116-245.compute-1.amazonaws.com


docker-compose up -d