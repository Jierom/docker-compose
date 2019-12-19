#!/bin/bash

table_list=(
opod_default_20190830_105401.AppPersonRecordTable
opod_default_20190830_105401.AppMergedDossierMetaTable
opod_default_20190830_105401.AppRecordId2DossierIndexTable
opod_camera.CameraTable
)

host="10.40.80.18"

for table in ${table_list[@]}
do
  ./clickhouse client --host "$host" < $table.meta.sql
  ./clickhouse client --host "$host" --query="INSERT INTO $table FORMAT Native" < $table.native
done

