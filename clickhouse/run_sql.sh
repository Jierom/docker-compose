#!/bin/bash
#########################################################################
# File Name: login_clickhouse.sh
# Author: yjzhou
# 
# Created Time: Thu 29 Aug 2019 10:37:21 PM CST
#########################################################################

docker run -it --rm --network clickhouse_default --link clickhouse-server yandex/clickhouse-client --host clickhouse-server --query="`cat query.sql | grep -v ^#`"
#--database system 
