#!/bin/bash
npm install --silent
cd client 
npm install --silent
cd .. 
#clean and build the production build
npm run build 

#copy important files to the build dir
cp ./Dockerfile ./build/
cp ./package.json ./build/
cp ./run ./build/

#navigate into the build for the docker build to create the container from build dir



#build the image
docker build -t birkirfb/tictactoe . 

docker push birkirfb/tictactoe 
