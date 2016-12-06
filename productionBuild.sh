#!/bin/bash
npm install 
cd ./client
npm install 
cd ..


#clean and build the production build
npm run build

<<<<<<< HEAD


#copy important files to the build dir
cp ./Dockerfile ./build/
cp ./package.json ./build/
cp ./run.sh ./build/

#navigate into the build for the docker build to create the container from build dir
cd ./build



#build the image
docker build -t birkirfb/tictactoe .
docker push birkirfb/tictactoe
=======

>>>>>>> 20d9c752e0fcd3caf50894565d875eedf2230fa8
