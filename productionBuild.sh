#!/bin/bash
npm install 
cd ./client
npm install 
cd ..


#clean and build the production build
npm run build
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
sudo docker build -t birkirfb/tictactoe:$GIT_COMMIT .
sudo docker push birkirfb/tictactoe:$GIT_COMMIT
