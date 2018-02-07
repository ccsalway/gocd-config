#!/usr/bin/env bash

#Set build number
sed -i "s/DEVELOPMENT_BUILD/$BUILD_NUMBER/" setup.py

#Build in Docker
cd build
chmod +x build-docker.sh
./build-docker.sh $BBUSER $BBPASS
