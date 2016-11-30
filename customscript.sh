#!/bin/bash


npm run build

cp Dockerfile build

cd build 

docker build -t birkirfb/tictactoe .

