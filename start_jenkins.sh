#!/bin/bash

## Change to the dir where the script is located and
# get the full name into a variable
cd "$(dirname $0)" ||exit
#WORK_DIR="$(pwd)"

docker rm -f jenkins 2> /dev/null
sudo mkdir -p "$(pwd)/storage"
sudo chown -R wesley. $_
sudo chmod -R 2775 $_

docker run -d \
	--name jenkins \
	-v "$(pwd)/storage":/var/jenkins_home \
	-p 8080:8080 \
	-p 50000:50000 \
	jenkins:2.3
