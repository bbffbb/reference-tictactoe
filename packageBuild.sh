#!/bin/bash
npm install 
cd client 
npm install 
cd .. 
#clean and build the production build
npm run build

#copy important files to the build dir
cp ./package.json ./build/
cp ./run ./build/

#navigate into the build for the docker build to create the container from build dir
cd ./build



#build the image
docker build -t birkirfb/tictactoe .

docker push birkirfb/tictactoe
