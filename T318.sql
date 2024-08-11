/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t318`;
CREATE DATABASE IF NOT EXISTS `t318` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t318`;

DROP TABLE IF EXISTS `changdi`;
CREATE TABLE IF NOT EXISTS `changdi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `changdi_uuid_number` varchar(200) DEFAULT NULL COMMENT '场地编号',
  `changdi_name` varchar(200) DEFAULT NULL COMMENT '场地名称  Search111 ',
  `changdi_photo` varchar(200) DEFAULT NULL COMMENT '场地照片',
  `changdi_types` int DEFAULT NULL COMMENT '场地类型 Search111',
  `changdi_old_money` decimal(10,2) DEFAULT NULL COMMENT '场地原价 ',
  `changdi_new_money` decimal(10,2) DEFAULT NULL COMMENT '场地现价',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `shijianduan_ren` int DEFAULT NULL COMMENT '人数',
  `changdi_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `banquan_types` int DEFAULT NULL COMMENT '半全场',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `tuijian` varchar(200) DEFAULT NULL COMMENT '推荐吃饭地点',
  `changdi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `changdi_content` text COMMENT '场地简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='场地';

DELETE FROM `changdi`;
INSERT INTO `changdi` (`id`, `changdi_uuid_number`, `changdi_name`, `changdi_photo`, `changdi_types`, `changdi_old_money`, `changdi_new_money`, `shijianduan`, `shijianduan_ren`, `changdi_clicknum`, `banquan_types`, `shangxia_types`, `tuijian`, `changdi_delete`, `changdi_content`, `create_time`) VALUES
	(1, '1642388352019', '足球场地1', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1642388687259.webp', 2, 800.00, 400.00, '8-10,10-12,14-16,16-18', 1, 54, 2, 1, '吃饭地点1', 1, '<p>足球场地1的介绍</p>', '2022-05-13 01:34:40'),
	(2, '1642388800986', '篮球场1', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1642388812105.webp', 1, 600.00, 300.00, '8-10,10-12,14-16,16-18', 1, 7, 1, 1, '吃饭地点2', 1, '<p>篮球场1的详细介绍</p>', '2022-05-13 01:34:40'),
	(3, '1642469598832', '羽毛球场地1', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1642469609021.webp', 3, 600.00, 300.00, '8-10,10-12,14-16,16-19', 1, 9, 1, 1, '吃饭地点3', 1, '<p>羽毛球场1的场地介绍</p>', '2022-05-13 01:34:40');

DROP TABLE IF EXISTS `changdi_collection`;
CREATE TABLE IF NOT EXISTS `changdi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_id` int DEFAULT NULL COMMENT '场地',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `changdi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='场地收藏';

DELETE FROM `changdi_collection`;
INSERT INTO `changdi_collection` (`id`, `changdi_id`, `yonghu_id`, `changdi_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 1, 2, 1, '2022-05-13 01:32:39', '2022-05-13 01:32:39'),
	(3, 2, 1, 1, '2022-05-13 05:47:32', '2022-05-13 05:47:32'),
	(4, 3, 1, 1, '2024-08-04 01:20:00', '2024-08-04 01:20:00');

DROP TABLE IF EXISTS `changdi_order`;
CREATE TABLE IF NOT EXISTS `changdi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `changdi_id` int DEFAULT NULL COMMENT '场地',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `changdi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `changdi_order_types` int DEFAULT NULL COMMENT '订单类型',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '预约时间段',
  `buy_time` date DEFAULT NULL COMMENT '预约日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='场地预约';

DELETE FROM `changdi_order`;
INSERT INTO `changdi_order` (`id`, `changdi_order_uuid_number`, `changdi_id`, `yonghu_id`, `changdi_order_true_price`, `changdi_order_types`, `shijianduan`, `buy_time`, `insert_time`, `create_time`) VALUES
	(4, '1642469438092', 1, 2, 400.00, 1, '8-10', '2022-05-13', '2022-05-13 01:30:38', '2022-05-13 01:30:38'),
	(5, '1642469497037', 1, 2, 400.00, 3, '8-10,10-12,14-16,16-18', '2022-05-13', '2022-05-13 01:31:37', '2022-05-13 01:29:38'),
	(6, '1652420823464', 3, 1, 300.00, 1, '8-10', '2022-05-14', '2022-05-13 05:47:03', '2022-05-13 05:47:03'),
	(7, '1652420837918', 3, 1, 300.00, 2, '10-12', '2022-05-13', '2022-05-13 05:47:18', '2022-05-13 05:47:18'),
	(8, '1722734404641', 3, 1, 300.00, 1, '16-19', '2024-08-04', '2024-08-04 01:20:05', '2024-08-04 01:20:05');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1642468654258.webp'),
	(2, '轮播图2', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1642468665954.webp');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'gonggao_types', '公告类型名称', 1, '公告类型1', NULL, NULL, '2022-05-13 01:34:40'),
	(2, 'gonggao_types', '公告类型名称', 2, '公告类型2', NULL, NULL, '2022-05-13 01:34:40'),
	(3, 'forum_types', '帖子类型名称', 1, '帖子类型1', NULL, NULL, '2022-05-13 01:34:40'),
	(4, 'forum_types', '帖子类型名称', 2, '帖子类型2', NULL, NULL, '2022-05-13 01:34:40'),
	(5, 'forum_types', '帖子类型名称', 3, '帖子类型3', NULL, NULL, '2022-05-13 01:34:40'),
	(6, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-05-13 01:34:40'),
	(7, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-05-13 01:34:40'),
	(8, 'shangxia_types', '上下架名称', 1, '上架', NULL, NULL, '2022-05-13 01:34:40'),
	(9, 'shangxia_types', '上下架名称', 2, '下架', NULL, NULL, '2022-05-13 01:34:40'),
	(10, 'banquan_types', '半全场', 1, '半场', NULL, NULL, '2022-05-13 01:34:40'),
	(11, 'banquan_types', '半全场', 2, '全场', NULL, NULL, '2022-05-13 01:34:40'),
	(12, 'changdi_types', '场地类型名称', 1, '篮球场', NULL, NULL, '2022-05-13 01:34:40'),
	(13, 'changdi_types', '场地类型名称', 2, '足球场', NULL, NULL, '2022-05-13 01:34:40'),
	(14, 'changdi_types', '场地类型名称', 3, '羽毛球场', NULL, NULL, '2022-05-13 01:34:40'),
	(15, 'changdi_types', '场地类型名称', 4, '乒乓球场', NULL, NULL, '2022-05-13 01:34:40'),
	(16, 'changdi_types', '场地类型名称', 5, '网球场', NULL, NULL, '2022-05-13 01:34:40'),
	(17, 'changdi_order_types', '场地类型名称', 1, '已预约', NULL, NULL, '2022-05-13 01:34:40'),
	(18, 'changdi_order_types', '场地类型名称', 2, '取消预约', NULL, NULL, '2022-05-13 01:34:40'),
	(19, 'changdi_order_types', '场地类型名称', 3, '已完成', NULL, NULL, '2022-05-13 01:34:40'),
	(20, 'sex_types', '性别类型名称', 1, '男', NULL, NULL, '2022-05-13 01:34:40'),
	(21, 'sex_types', '性别类型名称', 2, '女', NULL, NULL, '2022-05-13 01:34:40'),
	(23, 'changdi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-05-13 01:34:40'),
	(24, 'gonggao_types', '公告类型名称', 3, '公告类型3', NULL, '', '2022-05-13 01:34:40');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '帖子内容1', NULL, 1, 1, '2022-01-17 09:07:55', NULL, '2022-05-13 01:34:40'),
	(2, '帖子1', 2, NULL, '帖子内容1', NULL, 3, 1, '2022-05-13 01:32:02', NULL, '2022-05-13 01:34:40'),
	(3, '帖子标题2', NULL, 6, '帖子内容2', NULL, 2, 1, '2022-05-13 01:47:38', NULL, '2022-05-13 01:34:40'),
	(4, NULL, NULL, 6, '很不错', 2, NULL, 2, '2022-05-13 01:47:52', NULL, '2022-05-13 01:34:40'),
	(5, NULL, 2, NULL, 'ss ', 2, NULL, 2, '2022-05-13 01:49:09', NULL, '2022-05-13 01:34:40');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1642410512593.jpeg', 1, '2022-01-17 01:40:17', '<p>公告1的详情</p>', '2022-05-13 01:34:40'),
	(2, '体育馆公告', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1652420966861.jpg', 1, '2022-05-13 05:49:39', '<p>开馆时间段 1 2  3</p>', '2022-05-13 05:49:39');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'ln8aolvc683kipgg9mt14aggl96lwoda', '2022-05-13 01:34:40', '2024-08-04 02:18:40'),
	(2, 1, 'a1', 'yonghu', '用户', 'y75zjxhpko8vfg4fq84uw9s35r7seyfn', '2022-05-13 01:34:40', '2024-08-04 02:19:51'),
	(3, 2, 'a2', 'yonghu', '用户', 'csb8deahz7q6zan3yob8tuk0lbwhl3kr', '2022-05-13 01:34:40', '2022-05-13 02:48:22');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-13 01:34:40');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '张1', '17703786901', '410224199610232001', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1642388298854.jpg', 2, '11@qq.com', 99000.00, '2022-05-13 01:34:40'),
	(2, '用户2', '123456', '张2', '17703786902', '410224199610232002', 'http://localhost:8080/xiaoyuantiyuchangguan/upload/1642469541407.jpg', 1, '22@qq.com', 999200.00, '2022-05-13 01:34:40');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
