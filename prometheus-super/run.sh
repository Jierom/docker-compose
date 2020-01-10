#!/bin/bash

workdir=$(dirname $0)
cd ./$workdir

sudo mkdir -p data/prometheus
sudo chmod 777 data/prometheus

docker-compose up -d
