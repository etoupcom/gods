CREATE TABLE `user` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(80)  NOT NULL DEFAULT '' COMMENT '用户姓名',
	`gender` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户性别',
	`mobile` char(11)  NOT NULL DEFAULT '' COMMENT '用户电话',
	`password` varchar(255)  NOT NULL DEFAULT '' COMMENT '用户密码',
	`create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	`update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	UNIQUE KEY `idx_mobile_unique` (`mobile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';
