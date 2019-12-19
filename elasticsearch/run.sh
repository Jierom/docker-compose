#!/bin/bash

workspace=$(dirname $0)
cd ./$workspace

sudo mkdir -p data/es/
sudo chmod 777 data/es/
sudo sysctl -w vm.max_map_count=262144

docker-compose up -d 
