#!/bin/bash

echo Building the project .. 
npm run build

echo Copy important files ..

echo -Dockerfile
cp Dockerfile build

echo -package.json
cp package.json build

echo Navigate into build directory .. 
cd build 


echo Create new image ..
echo docker build -t birkirfb/tictactoe .
docker build -t birkirfb/tictactoe .

docker run -p 5432:5432 --name pg2 -e POSTGRES_PASSWORD=mysecretpassword -d postgres

echo docker push birkirfb/tictactoe

echo "Done"

