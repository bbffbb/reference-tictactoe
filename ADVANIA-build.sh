#!/bin/bash


#clean and build the production build
npm run build


#build the image
docker build -t birkirfb/tictactoe .
docker push birkirfb/tictactoe
