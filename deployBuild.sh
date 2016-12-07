#!/bin/bash


scp -o StrictHostKeyChecking=no ~/Desktop/my-ec2-key-pair.pem ubuntu@82.221.49.114:~/my-ec2-key-pair.pem


scp -o StrictHostKeyChecking=no -i "~/my-ec2-key-pair.pem" ./docker-compose.yml ec2-user@ec2-184-72-202-240.compute-1.amazonaws.com:~/docker-compose.yml
scp -o StrictHostKeyChecking=no -i "~/my-ec2-key-pair.pem" ./provision/compose-and-run.sh ec2-user@ec2-184-72-202-240.compute-1.amazonaws.com:~/compose-and-run.sh
