#!/bin/bash

host="localhost"
port="8848"

curl -s -XPOST "$host:$port/nacos/v1/cs/configs" -d "dataId=123&group=DEFAULT&content=123456789"
curl "$host:$port/nacos/v1/cs/configs?dataId=123&group=DEFAULT"
