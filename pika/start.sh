#!/bin/bash
#########################################################################
# File Name: start.sh
# Author: yjzhou
# 
# Created Time: Thu 29 Aug 2019 04:58:31 PM CST
#########################################################################

output_base_dir="data/output"
output_dir_list=(
pika-db
pika-dbsync
pika-dump
pika-log
)

for output_dir_name in "${output_dir_list[@]}"
do
    mkdir -p "$output_base_dir/$output_dir_name"
done

docker-compose up

