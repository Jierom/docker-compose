#!/bin/bash
#########################################################################
# File Name: login_clickhouse.sh
# Author: yjzhou
# 
# Created Time: Thu 29 Aug 2019 10:37:21 PM CST
#########################################################################

host=${1:-127.0.0.1}
port=9000
docker run -it --rm yandex/clickhouse-client --host $host --port $port #--database system --query="`cat query_sql | grep -v ^#`"

