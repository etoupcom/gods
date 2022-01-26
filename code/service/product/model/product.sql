CREATE TABLE `product` (
	`id` bigint unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(80)  NOT NULL DEFAULT '' COMMENT '产品名称',
	`desc` varchar(255)  NOT NULL DEFAULT '' COMMENT '产品描述',
	`stock`  int(10) unsigned NOT NULL DEFAULT '0'  COMMENT '产品库存',
	`amount` int(10) unsigned NOT NULL DEFAULT '0'  COMMENT '产品金额',
	`status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '产品状态',
	`created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='产品表';
