# 修改配置
需要修改docker-compose.yaml文件中的环境变量
```
    environment:
      LUCIFRON_HOST: 10.40.80.43
      DEBUG_OUTSIDE_RAGNAROS: "true"
      #如果大螺丝在外部, 那这两个IP要配成自己机器的IP, 视频分析才能work
      DEBUG_EXTERNAL_IP: 127.0.0.1
      LOCAL_HOST: 127.0.0.1
      LICENSE_HOST: 10.40.80.18
      LICENSE_PORT: 7411
      LICENSE_ENABLED: "false"
      CLUSTER_ID: yitu001_id
      CLUSTER_NAME: yitu001_name
      CLUSTER_PROVINCE: shandong
      CLUSTER_CITY: jinan
      CLUSTER_COUNTY: somewhere
```