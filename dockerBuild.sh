#!/bin/bash


#copy important files to the build dir
cp ./Dockerfile ./build/
cp ./package.json ./build/
cp ./runserver.sh ./build/


cd ./build/


#build the image
docker build -t birkirfb/tictactoe .
docker push birkirfb/tictactoe
