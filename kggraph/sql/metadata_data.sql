-- meta_source
-- insert ignore into `meta_source`(`name`, `desc`, source_type, config) values ('zstp', '公安大数据知识图谱', 'hugegraph', '{"database":"yituKg","token":"YituKg","url":"http://localhost:8080"}');
-- insert ignore into `meta_source`(`name`, `desc`, source_type, config) values ('mysql', '测试库', 'mysql', '{"url":"jdbc:mysql://10.40.80.43:3306","username":"root","password":"mysqlmysql"}');
-- insert ignore into `meta_source`(`name`, `desc`, source_type, config) values ('es', '搜索', 'elasticsearch', '{"url":"jdbc:elasticsearch://wxec0055:9200"}');
-- insert ignore into `meta_source`(`name`, `desc`, source_type, config) values ('olap', '聚合', 'clickhouse', '{"password":"YTck1234","url":"jdbc:clickhouse://localhost:8123/jx_lhsys","username":"opod_testuser"}');

REPLACE INTO meta_source(`name`, `desc`, `source_type`, `config`) value ('zstp', '公安大数据知识图谱', 'hugegraph', '{"database":"yituKg","token":"YituKg","url":"http://10.10.25.87:18080"}');
REPLACE INTO meta_source(`name`, `desc`, `source_type`, `config`) value ('qhc', '青花瓷模拟数据', 'clickhouse', '{"password":"","url":"jdbc:clickhouse://10.40.57.75:8123","username":"default"}');
