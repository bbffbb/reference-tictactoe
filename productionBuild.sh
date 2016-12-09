#!/bin/bash

#install dependencies.
npm install 
cd ./client
#also for client.
npm install 
cd ..


#clean and build the production build.
npm run build

#tag for the image, based on git commit.
if [ -z "$GIT_COMMIT" ]; then
  export GIT_COMMIT=$(git rev-parse HEAD)
fi

cat > ./build/.env <<_EOF_
GIT_COMMIT=$GIT_COMMIT
_EOF_


#copy important files to the build dir
cp ./Dockerfile ./build/
cp ./package.json ./build/
cp ./run.sh ./build/

#navigate into the build for the docker build to create the container from build dir
cd ./build


#build the image
docker build -t birkirfb/tictactoe:$GIT_COMMIT .

#push the image into dockerubs
docker push birkirfb/tictactoe:$GIT_COMMIT
