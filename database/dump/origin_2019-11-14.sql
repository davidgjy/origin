# ************************************************************
# Sequel Pro SQL dump
# バージョン 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.7.19)
# データベース: origin
# 作成時刻: 2019-11-14 14:51:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ merchant_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_info`;

CREATE TABLE `merchant_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) DEFAULT NULL,
  `merchant_no` varchar(50) DEFAULT NULL,
  `legal_person` varchar(30) DEFAULT NULL COMMENT '法人代表',
  `id_card` varchar(20) DEFAULT NULL COMMENT '法人身份证',
  `admin` varchar(20) DEFAULT NULL COMMENT '门店管理员',
  `mobile` varchar(11) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `service_type` int(11) DEFAULT NULL COMMENT '门店性质1 4S店  2 快修  3 综修厂  4 美容店',
  `score` double(14,2) DEFAULT NULL COMMENT '门店评分eg: 5.0分',
  `shop_source` int(11) DEFAULT NULL COMMENT '门店来源1 自营  2 连锁  3 加盟',
  `address` varchar(255) DEFAULT NULL,
  `sum_bought` int(11) DEFAULT NULL COMMENT '总计购买人数',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付方式(1: 优惠券 2: 支付宝)',
  `is_coupon_support` bit(1) DEFAULT NULL COMMENT '是否支持优惠券0 否  1 是',
  `tax_code` varchar(50) DEFAULT NULL COMMENT '纳税识别码',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '银行账号',
  `general_tax_point` varchar(20) DEFAULT NULL COMMENT '普票税点',
  `special_tax_point` varchar(20) DEFAULT NULL COMMENT '专票税点',
  `business_scope` varchar(255) DEFAULT NULL COMMENT '主营范围',
  `open_time` varchar(50) DEFAULT NULL COMMENT '营业开始时间',
  `close_time` varchar(50) DEFAULT NULL COMMENT '营业结束时间',
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL COMMENT '商户状态 1:待审核,2:审核通过.\\r\\n3:审核不通过4：修改待审核 5：下架待审核',
  `longitude` varchar(50) DEFAULT NULL COMMENT '地址经度值',
  `latitude` varchar(50) DEFAULT NULL COMMENT '地址纬度值',
  `certificate` varchar(255) DEFAULT NULL COMMENT '证书照片(三证合一)',
  `thumb_nail` varchar(255) DEFAULT NULL COMMENT '门店图片地址(门头照)',
  `china_region_id` int(11) DEFAULT NULL COMMENT '行政区域ID',
  `sec_id` int(11) DEFAULT NULL COMMENT '机构码表ID',
  `store_status` varchar(1) DEFAULT NULL COMMENT '门店上下架状态（0：上架，1：下架）',
  `bank_deposit` varchar(50) DEFAULT NULL COMMENT '开户行',
  `customer_score` double(14,2) DEFAULT NULL COMMENT '客户评分',
  `parent_merchant_id` int(20) DEFAULT NULL COMMENT '上级门店id',
  `create_date` date DEFAULT NULL COMMENT '商户创建日期',
  `last_update` date DEFAULT NULL COMMENT '商户修改日期',
  PRIMARY KEY (`id`),
  KEY `n_merchant_info_CHINA_REGION_ID` (`china_region_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `merchant_info` WRITE;
/*!40000 ALTER TABLE `merchant_info` DISABLE KEYS */;

INSERT INTO `merchant_info` (`id`, `name`, `merchant_no`, `legal_person`, `id_card`, `admin`, `mobile`, `telephone`, `service_type`, `score`, `shop_source`, `address`, `sum_bought`, `pay_type`, `is_coupon_support`, `tax_code`, `bank_account`, `general_tax_point`, `special_tax_point`, `business_scope`, `open_time`, `close_time`, `email`, `qq`, `status`, `longitude`, `latitude`, `certificate`, `thumb_nail`, `china_region_id`, `sec_id`, `store_status`, `bank_deposit`, `customer_score`, `parent_merchant_id`, `create_date`, `last_update`)
VALUES
	(92,'义乌市奔宝汽车修理有限公司','SH20161466042223037','叶炉斌','','叶炉斌','18257916786','',2,3.00,1,'浙江省义乌市机场路635号',10000,1,10000000,'','','','','二类机动车维修、汽车配件零售，奔驰、宝马、奥迪、路虎、捷豹、保时捷等高端品牌\r\n','-','','','','2','113.259491','23.181419','','SH20161466042223037_2330324736688926.jpg',1943,12762,'0','',3.00,0,'2016-06-16','2017-08-29'),
	(93,'义乌市奔宝汽车修理有限公司','SH20161466042260235',NULL,NULL,'吕敏','13857941012','',2,3.00,1,'浙江省义乌市机场路635号',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'',NULL,'2','120.05928325369796','29.34437413470897',NULL,NULL,985,13005,NULL,NULL,NULL,NULL,'2017-12-05',NULL),
	(94,'义乌市劲松汽车修理厂','SH20161466046059532','吴锦松','','吴锦松','13646899290','0579-85414999',2,3.00,1,'浙江省义乌市城店路721号',10000,1,10000000,'','','','','二类机动车维修、救援，各种家庭自用轿车（七座及以下）\r\n','-','','','','2','120.041023','29.28019','','SH20161466046059532_2331852577454238.jpg',985,12762,'0','',3.00,0,'2016-06-16','2017-08-29'),
	(95,'义乌市劲松汽车修理厂','SH20161466046073079',NULL,NULL,'吴锦松','15868986660','',2,3.00,1,'浙江省义乌市城店路721号',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'',NULL,'2','120.04772884938481','29.28611112884864',NULL,NULL,985,13005,NULL,NULL,NULL,NULL,'2017-12-05',NULL),
	(96,'义乌市奥驰汽车维修服务部','SH20161466048958173','黄希珍','','黄希珍','18367916035','0579-85116733',2,3.00,1,'浙江省义乌市北苑望道路255号',10000,1,10000000,'','','','','三类机动车维修，奔驰、宝马、奥迪、路虎、捷豹、保时捷等高端品牌\r\n','-','','','','2','120.051544','29.319233','','SH20161466048958173_2334765888631355.jpg',985,12762,'0','',3.00,0,'2016-06-16','2017-08-29'),
	(97,'义乌市奥驰汽车维修服务部','SH20161466048990324',NULL,NULL,'黄希珍','','',2,3.00,1,'浙江省义乌市望道路255号',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'',NULL,'2','120.05818999972319','29.32505402576359',NULL,NULL,985,13005,NULL,NULL,NULL,NULL,'2017-12-05',NULL),
	(98,'义乌市翼承汽车修理','SH20161466053112149','李妍',NULL,'李妍','18906895028','18906895028',1,3.00,1,'义乌市工人北路509号',20000,1,10000000,NULL,NULL,NULL,NULL,'三类机动车维修（发动机修理、车身维修）','-',NULL,'',NULL,'3','120.10123304378759','29.332584258408106',NULL,'SH20161466053112149_5180351466841572.jpg',NULL,NULL,'0',NULL,3.00,0,'2016-06-16','2016-11-21'),
	(99,'义乌市翼承汽车修理','SH20161466053132886',NULL,NULL,'李妍','18906895028','',2,3.00,1,'工人北路509号浙江省义乌市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'',NULL,'2','120.06729564866686','29.30644391183944',NULL,NULL,985,13005,NULL,NULL,NULL,NULL,'2017-12-05',NULL),
	(100,'义乌市佛堂伟红汽车修理厂','SH20161466055548979','冯信香','','冯信香','15958923788','0579-85716069',2,3.00,1,'浙江省义乌市佛堂义南工业区芳山路111号',10000,1,10000000,'','','','','二类机动车维修，各种家庭自用轿车（七座及以下）\r\n','-','','','','2','120.040718','29.193434','','SH20161466055548979_2341344022496929.jpg',985,12762,'0','',3.00,0,'2016-06-16','2017-08-29'),
	(101,'义乌市佛堂伟红汽车修理厂','SH20161466055565914',NULL,NULL,'冯信香','15958923788','',2,3.00,1,'浙江省义乌市佛堂义南工业区芳山路111号',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'',NULL,'2','120.04711700002757','29.19908602888248',NULL,NULL,985,13005,NULL,NULL,NULL,NULL,'2017-12-05',NULL),
	(102,'义乌市顺子汽车修理厂','SH20161466055937978',NULL,NULL,'张文华','15958927791','0579-85259432',2,3.00,1,'浙江省义乌市北苑街道雪峰西路726-736号',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-',NULL,'',NULL,'2','120.0528144658922','29.315634250812307',NULL,NULL,985,12762,NULL,NULL,NULL,NULL,'2017-12-05',NULL),
	(103,'义乌市顺子汽车修理厂','SH20161466056049059',NULL,NULL,'张文华','15958927791','',2,3.00,1,'浙江省义乌市北苑街道雪峰西路726-736号',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'',NULL,'2','120.0528144658922','29.315634250812307',NULL,NULL,985,13005,NULL,NULL,NULL,NULL,'2017-12-05',NULL),
	(104,'义乌市恒奥跃良汽车修理厂','SH20161466061608048','何嗣成','','何嗣成','13516945100','13516945100',2,3.00,1,'浙江省义乌市商城大道东傅宅81号',10000,1,10000000,'','','','','二类机动车维修，各种家庭自用轿车（七座及以下）\r\n','-','','','','2','120.044044','29.296471','','SH20161466061608048_2712147988489864.jpg',985,12762,'0','',3.00,0,'2016-06-16','2017-08-29'),
	(105,'义乌市美达汽车修理厂','SH20161466061718509','楼宇辉','','楼宇辉','13958400188','13958400188',2,3.00,1,'浙江省义乌市苏溪镇人民南路1号',10000,1,10000000,'','','','','二类机动车维修，各种家庭自用轿车（七座及以下）\r\n','-','','','','2','120.128708','29.40831','','SH20161466061718509_2712219950932134.jpg',985,12762,'0','',3.00,0,'2016-06-16','2017-08-29'),
	(106,'义乌市美达汽车修理厂','SH20161466061843386',NULL,NULL,'楼宇辉','13958400188','',2,3.00,1,'浙江省义乌市苏溪镇人民南路1号',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'',NULL,'2','120.13349263117493','29.41124714495985',NULL,NULL,985,13005,NULL,NULL,NULL,NULL,'2017-12-05',NULL),
	(107,'义乌市佛堂镇建森汽车修理厂','SH20161466062932617','朱萍玉','','朱萍玉','13600599557','0579-85716993',2,3.00,1,'浙江省义乌市佛堂义南工业区大士路19号',10000,1,10000000,'','','','','二类机动车维修，各种家庭自用轿车（七座及以下）\r\n','-','','','','2','120.037216','29.193039','','SH20161466062932617_2712260091694075.jpg',985,12762,'0','',3.00,0,'2016-06-16','2017-08-29'),
	(108,'义乌振鑫汽车修理店','SH20161466063183975','潘胜良','','潘胜良','13175534931','0579-85385384',2,3.00,1,'浙江省义乌市江东中路250号',10000,1,10000000,'','','','','三类机动车维修，各种家庭自用轿车（七座及以下）\r\n','-','','','','2','120.044044 ','29.296471','','SH20161466063183975_2349465076025931.jpg',985,12762,'0','',3.00,0,'2016-06-16','2017-08-29');

/*!40000 ALTER TABLE `merchant_info` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `merchant_id` int(11) DEFAULT '0' COMMENT 'FK 商户ID',
  `username` varchar(48) DEFAULT NULL COMMENT '用户名',
  `password` varchar(48) DEFAULT NULL COMMENT '加密后的密码',
  `description` varchar(256) DEFAULT NULL COMMENT '用户描述',
  `enabled` int(11) DEFAULT '1' COMMENT '用户是否有效',
  `email` varchar(48) DEFAULT NULL COMMENT '邮箱',
  `telephone` varchar(48) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐',
  `thumbnail` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `user_type` int(11) DEFAULT '1' COMMENT '用户种类 1 商户 2 后台管理人员',
  `create_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `merchant_id`, `username`, `password`, `description`, `enabled`, `email`, `telephone`, `mobile`, `salt`, `thumbnail`, `user_type`, `create_date`, `last_update`)
VALUES
	(1,92,'test200','9c73ddb930ac36e90d1090f2ba79bb6e',NULL,1,NULL,NULL,NULL,'b088a98f95e22d87','',1,'2019-11-12 00:00:00',NULL),
	(2,NULL,'gujinyi','9c73ddb930ac36e90d1090f2ba79bb6e',NULL,1,NULL,'',NULL,'b088a98f95e22d87','',2,'2019-11-12 00:00:00',NULL),
	(3,NULL,'kg','9c73ddb930ac36e90d1090f2ba79bb6e',NULL,1,NULL,NULL,NULL,'b088a98f95e22d87',NULL,2,'2019-11-12 00:00:00',NULL);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
