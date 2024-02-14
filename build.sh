#!/bin/bash

docker build -t coreelec-builder .

docker run -it --mount type=bind,source=$(pwd),target=/home/docker coreelec-builder

# PROJECT=Amlogic-ce DEVICES=Amlogic-ng ARCH=arm make image

