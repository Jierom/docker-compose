#!/bin/bash

sudo mkdir -p data/postgresql
sudo chmod 777 data/postgresql

docker-compose up -d 
