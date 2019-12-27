create database if not exists kg_graph;

use kg_graph;

CREATE TABLE if not exists `meta_source` (
  `name` varchar(128) NOT NULL COMMENT '数据源名称',
  `desc` varchar(512) DEFAULT NULL COMMENT '数据源的描述',
  `source_type` varchar(64) NOT NULL COMMENT '数据源类型: clickhouse, elisticsearch, hugegraph等',
  `config` text NOT NULL COMMENT '数据源的配置, json格式',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE if not exists `meta_entity` (
  `label_name` varchar(64) NOT NULL COMMENT '数据实体的分类schema名称',
  `label_type` varchar(64) NOT NULL COMMENT '数据实体的分类schema的类型: vertex, edge, event',
  `in_graph` tinyint(1) NOT NULL COMMENT '数据实体的具体数据是否在图数据库中存储',
  `graph_source` varchar(64) DEFAULT NULL COMMENT '如果在图中有存储,对应的图数据源名称',
  `config` text NOT NULL COMMENT '具体的一些配置信息, json格式',
  PRIMARY KEY (`label_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

REPLACE INTO meta_source(`name`, `desc`, `source_type`, `config`) value ('zstp', '公安大数据知识图谱', 'hugegraph', '{"database":"yituKg","token":"YituKg","url":"http://10.10.25.87:8080"}');
