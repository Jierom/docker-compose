#!/bin/bash
#########################################################################
# File Name: sumbit_job.sh
# Author: yjzhou
# 
# Created Time: Tue 03 Sep 2019 10:22:16 PM CST
#########################################################################

jar_file_path="cell_analysis_etl-0.9-SNAPSHOT-all.jar"
flink_server="10.10.25.65:8081"
jar_file_name="`basename $jar_file_path`"
jar_file_abs_path="`readlink -f $jar_file_path`"
jar_mount_abs_path="/$jar_file_name"
docker run --rm -it -v $jar_file_abs_path:$jar_mount_abs_path flink:1.9.0 /opt/flink/bin/flink run -m $flink_server $jar_mount_abs_path

