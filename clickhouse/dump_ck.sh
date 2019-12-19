#!/bin/bash

table_list=(
opod_default_20190830_105401.AppPersonRecordTable
opod_default_20190830_105401.AppMergedDossierMetaTable
opod_default_20190830_105401.AppRecordId2DossierIndexTable
opod_camera.CameraTable
)

for table in ${table_list[@]}
do
  ./clickhouse client --query="SELECT * FROM $table FORMAT Native" > $table.native
  ./clickhouse client --query="SHOW CREATE TABLE $table" --format=TabSeparatedRaw > $table.meta.sql
done


