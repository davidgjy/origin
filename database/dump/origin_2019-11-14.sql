# ************************************************************
# Sequel Pro SQL dump
# バージョン 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.7.19)
# データベース: origin
# 作成時刻: 2019-11-14 14:29:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
	(1,NULL,'test200','9c73ddb930ac36e90d1090f2ba79bb6e',NULL,1,NULL,NULL,NULL,'b088a98f95e22d87','',1,'2019-11-12 00:00:00',NULL),
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
