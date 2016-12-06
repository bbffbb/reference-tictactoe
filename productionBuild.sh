#!/bin/bash
npm install 
cd ./client
npm install 
cd ..
#clean and build the production build
npm run build

#copy important files to the build dir
cp ./package.json ./build/
cp ./run ./build/

