/*
Navicat MySQL Data Transfer

Source Server         : momolela
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : shm

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-11-07 07:31:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hfy_banner
-- ----------------------------
DROP TABLE IF EXISTS `hfy_banner`;
CREATE TABLE `hfy_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bcontent` varchar(255) DEFAULT NULL,
  `btitle` varchar(255) DEFAULT NULL,
  `burl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_banner
-- ----------------------------
INSERT INTO `hfy_banner` VALUES ('1', '2015年6月，时隔三年后的BigBang携带新作《made》。强势回归。', 'BigBang强势回归', 'images/banner/1.jpg');
INSERT INTO `hfy_banner` VALUES ('2', '周杰伦音乐秀场，摩天轮狂卷音乐浪潮。。。', '摩天轮音乐秀场', 'images/banner/3.jpg');
INSERT INTO `hfy_banner` VALUES ('3', 'bigbang 全新火爆单曲，韩流席卷。bang bang bang', 'bang bang bang', 'images/banner/5.jpg');
INSERT INTO `hfy_banner` VALUES ('11', '哈哈哈哈哈哈哈哈哈哈哈哈哈好吧', '哈哈哈哈', 'images/banner/2016092816372563560.jpg');
INSERT INTO `hfy_banner` VALUES ('12', '学会享受生活，要享受', '既然如此，那就放肆', 'images/banner/2016092816422591429.jpg');

-- ----------------------------
-- Table structure for hfy_comments
-- ----------------------------
DROP TABLE IF EXISTS `hfy_comments`;
CREATE TABLE `hfy_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `roomid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_occv6xir5nf1gca0nuckabrmw` (`roomid`),
  KEY `FK_m7xmrohsm8etpnuhcsuhfxxf4` (`userid`),
  CONSTRAINT `FK_m7xmrohsm8etpnuhcsuhfxxf4` FOREIGN KEY (`userid`) REFERENCES `hfy_user` (`id`),
  CONSTRAINT `FK_occv6xir5nf1gca0nuckabrmw` FOREIGN KEY (`roomid`) REFERENCES `hfy_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_comments
-- ----------------------------
INSERT INTO `hfy_comments` VALUES ('1', '住房很舒服，服务非常的周到，而且价格公道。', '2016-09-29 21:59:59', '0', '1', '2');
INSERT INTO `hfy_comments` VALUES ('2', '很棒的酒店，下次有机会还会再来。。。', '2016-09-29 22:00:49', '1', '7', '3');
INSERT INTO `hfy_comments` VALUES ('3', '住房很舒服，服务非常的周到，而且价格公道。', '2016-09-30 10:02:04', '1', '4', '4');
INSERT INTO `hfy_comments` VALUES ('4', '住房很舒服，服务非常的周到，而且价格公道。', '2016-09-30 10:04:00', '1', '3', '5');
INSERT INTO `hfy_comments` VALUES ('5', '很棒的酒店，下次有机会还会再来。。。', '2016-10-06 11:48:33', '1', '3', '9');
INSERT INTO `hfy_comments` VALUES ('6', '很棒的酒店，下次有机会还会再来。。。', '2016-10-06 11:49:44', '1', '4', '10');

-- ----------------------------
-- Table structure for hfy_order
-- ----------------------------
DROP TABLE IF EXISTS `hfy_order`;
CREATE TABLE `hfy_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkintime` datetime DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expiretime` datetime DEFAULT NULL,
  `orderstauts` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `billhistoryid` int(11) DEFAULT NULL,
  `billnowid` int(11) DEFAULT NULL,
  `roomid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qwbohoun7nbs517vysivemacw` (`billhistoryid`),
  KEY `FK_4xd8u73fcc5tg0lkr6mr1hlbr` (`billnowid`),
  KEY `FK_m054pnsmlcv3w4rafvcm57ikg` (`roomid`),
  KEY `FK_9aklg1ycd2neusfh2543ml3e4` (`userid`),
  CONSTRAINT `FK_4xd8u73fcc5tg0lkr6mr1hlbr` FOREIGN KEY (`billnowid`) REFERENCES `shm_billnow` (`id`),
  CONSTRAINT `FK_9aklg1ycd2neusfh2543ml3e4` FOREIGN KEY (`userid`) REFERENCES `hfy_user` (`id`),
  CONSTRAINT `FK_m054pnsmlcv3w4rafvcm57ikg` FOREIGN KEY (`roomid`) REFERENCES `hfy_room` (`id`),
  CONSTRAINT `FK_qwbohoun7nbs517vysivemacw` FOREIGN KEY (`billhistoryid`) REFERENCES `shm_billhistory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_order
-- ----------------------------
INSERT INTO `hfy_order` VALUES ('1', '2016-09-07 20:03:23', '2016-10-07 18:01:05', '2016-09-14 23:18:32', '2', null, '1', null, '1', '2');
INSERT INTO `hfy_order` VALUES ('2', '2016-09-26 20:55:08', '2016-10-07 18:01:33', '2016-10-03 23:18:49', '0', null, null, '4', '2', '7');
INSERT INTO `hfy_order` VALUES ('3', '2016-09-28 09:38:21', '2016-10-07 18:01:59', '2016-10-05 23:18:54', '0', null, null, '1', '6', '3');
INSERT INTO `hfy_order` VALUES ('4', '2016-09-29 09:38:51', '2016-10-08 10:50:13', '2016-10-06 23:19:06', '2', null, '13', null, '11', '4');
INSERT INTO `hfy_order` VALUES ('5', '2016-09-30 09:39:16', '2016-10-07 18:02:06', '2016-10-07 23:19:16', '0', null, null, '3', '16', '5');
INSERT INTO `hfy_order` VALUES ('6', '2016-10-01 00:00:00', '2016-10-07 22:24:44', '2016-10-05 00:00:00', '2', null, '2', null, '3', '8');
INSERT INTO `hfy_order` VALUES ('7', '2016-10-07 00:00:00', '2016-10-07 18:02:15', '2016-10-14 00:00:00', '1', null, null, '6', '5', '18');
INSERT INTO `hfy_order` VALUES ('8', '2016-10-07 00:00:00', '2016-10-07 18:02:18', '2016-10-14 00:00:00', '1', null, null, '7', '7', '19');
INSERT INTO `hfy_order` VALUES ('9', '2016-10-07 00:00:00', '2016-10-07 18:02:12', '2016-10-14 00:00:00', '1', null, null, '5', '15', '9');
INSERT INTO `hfy_order` VALUES ('10', '2016-10-01 20:24:34', '2016-10-07 20:28:01', '2016-10-04 20:24:41', '2', null, '3', null, '1', '2');
INSERT INTO `hfy_order` VALUES ('11', '2016-10-07 00:00:00', '2016-10-09 17:45:59', '2016-10-11 00:00:00', '4', null, null, '8', '3', '2');
INSERT INTO `hfy_order` VALUES ('12', '2016-10-07 00:00:00', '2016-10-07 21:48:19', '2016-10-14 00:00:00', '1', null, null, '9', '20', '8');
INSERT INTO `hfy_order` VALUES ('13', '2016-10-07 00:00:00', '2016-10-08 13:44:43', '2016-10-13 00:00:00', '2', null, '14', null, '17', '16');
INSERT INTO `hfy_order` VALUES ('14', '2016-10-07 00:00:00', '2016-10-08 09:41:08', '2016-10-12 00:00:00', '2', null, '4', null, '18', '10');
INSERT INTO `hfy_order` VALUES ('15', '2016-10-08 00:00:00', '2016-10-08 10:37:21', '2016-10-10 00:00:00', '2', null, '10', null, '1', '10');
INSERT INTO `hfy_order` VALUES ('16', '2016-10-11 00:00:00', '2016-10-08 10:44:57', '2016-10-13 00:00:00', '2', null, '11', null, '1', '10');
INSERT INTO `hfy_order` VALUES ('17', '2016-10-15 00:00:00', '2016-10-08 10:47:25', '2016-10-16 00:00:00', '2', null, '12', null, '9', '10');
INSERT INTO `hfy_order` VALUES ('18', '2016-10-08 00:00:00', '2016-10-08 13:13:50', '2016-10-13 00:00:00', '1', null, null, '26', '4', '20');
INSERT INTO `hfy_order` VALUES ('19', '2016-10-22 00:00:00', '2016-10-08 13:45:25', '2016-10-23 00:00:00', '1', null, null, '27', '11', '16');
INSERT INTO `hfy_order` VALUES ('20', '2016-10-08 00:00:00', '2016-10-08 15:17:09', '2016-10-10 00:00:00', '1', null, null, '28', '13', '15');

-- ----------------------------
-- Table structure for hfy_room
-- ----------------------------
DROP TABLE IF EXISTS `hfy_room`;
CREATE TABLE `hfy_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomname` varchar(255) DEFAULT NULL,
  `roomstatus` int(11) DEFAULT NULL COMMENT '0是未预定，1是被预定，2是入住',
  `roomstyle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9kvpqlqar6rutatcqj3l9xlrh` (`roomstyle_id`),
  CONSTRAINT `FK_9kvpqlqar6rutatcqj3l9xlrh` FOREIGN KEY (`roomstyle_id`) REFERENCES `hfy_roomstyle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_room
-- ----------------------------
INSERT INTO `hfy_room` VALUES ('1', 'o_101', '0', '1');
INSERT INTO `hfy_room` VALUES ('2', 'o_102', '1', '1');
INSERT INTO `hfy_room` VALUES ('3', 'o_103', '2', '1');
INSERT INTO `hfy_room` VALUES ('4', 'o_104', '2', '1');
INSERT INTO `hfy_room` VALUES ('5', 'o_105', '2', '1');
INSERT INTO `hfy_room` VALUES ('6', 'd_201', '1', '2');
INSERT INTO `hfy_room` VALUES ('7', 'd_202', '2', '2');
INSERT INTO `hfy_room` VALUES ('8', 'd_203', '0', '2');
INSERT INTO `hfy_room` VALUES ('9', 'd_204', '0', '2');
INSERT INTO `hfy_room` VALUES ('10', 'd_205', '0', '2');
INSERT INTO `hfy_room` VALUES ('11', 't_301', '2', '3');
INSERT INTO `hfy_room` VALUES ('12', 't_302', '0', '3');
INSERT INTO `hfy_room` VALUES ('13', 't_303', '2', '3');
INSERT INTO `hfy_room` VALUES ('14', 't_304', '0', '3');
INSERT INTO `hfy_room` VALUES ('15', 't_305', '2', '3');
INSERT INTO `hfy_room` VALUES ('16', 's_401', '1', '4');
INSERT INTO `hfy_room` VALUES ('17', 's_402', '0', '4');
INSERT INTO `hfy_room` VALUES ('18', 's_403', '2', '4');
INSERT INTO `hfy_room` VALUES ('19', 's_404', '0', '4');
INSERT INTO `hfy_room` VALUES ('20', 's_405', '2', '4');

-- ----------------------------
-- Table structure for hfy_roompic
-- ----------------------------
DROP TABLE IF EXISTS `hfy_roompic`;
CREATE TABLE `hfy_roompic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roompic` varchar(255) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5juqfkxbh2oigkil413ib4c3d` (`room_id`),
  CONSTRAINT `FK_5juqfkxbh2oigkil413ib4c3d` FOREIGN KEY (`room_id`) REFERENCES `hfy_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_roompic
-- ----------------------------
INSERT INTO `hfy_roompic` VALUES ('1', 'images/room/201609260905092955.jpg', '1');
INSERT INTO `hfy_roompic` VALUES ('2', 'images/room/2016092608395381166.jpg', '1');
INSERT INTO `hfy_roompic` VALUES ('3', 'images/room/2016092608395328100.jpg', '1');

-- ----------------------------
-- Table structure for hfy_roomstyle
-- ----------------------------
DROP TABLE IF EXISTS `hfy_roomstyle`;
CREATE TABLE `hfy_roomstyle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomprice` varchar(255) DEFAULT NULL,
  `roomdesc` varchar(255) DEFAULT NULL,
  `roomstyle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_roomstyle
-- ----------------------------
INSERT INTO `hfy_roomstyle` VALUES ('1', '110', '非常nice的单人间~', '单人间');
INSERT INTO `hfy_roomstyle` VALUES ('2', '240', '非常nice的双人间', '双人间');
INSERT INTO `hfy_roomstyle` VALUES ('3', '360', '非常nice的三人间', '三人间');
INSERT INTO `hfy_roomstyle` VALUES ('4', '480', '非常nice的套间', '套间');
INSERT INTO `hfy_roomstyle` VALUES ('17', '90', '非常nice的钟点房', '钟点房');

-- ----------------------------
-- Table structure for hfy_service
-- ----------------------------
DROP TABLE IF EXISTS `hfy_service`;
CREATE TABLE `hfy_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) DEFAULT NULL,
  `servicetype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_service
-- ----------------------------
INSERT INTO `hfy_service` VALUES ('1', '30', '洗衣服');
INSERT INTO `hfy_service` VALUES ('2', '100', '健身');
INSERT INTO `hfy_service` VALUES ('3', null, '订餐');

-- ----------------------------
-- Table structure for hfy_serviceorder
-- ----------------------------
DROP TABLE IF EXISTS `hfy_serviceorder`;
CREATE TABLE `hfy_serviceorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allmoney` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `billhistoryid` int(11) DEFAULT NULL,
  `billnowid` int(11) DEFAULT NULL,
  `serviceid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g9uxjpmv7vassr1wf4oop8chy` (`billhistoryid`),
  KEY `FK_thyp92kavgq71ojec70f16uen` (`billnowid`),
  KEY `FK_4vbs37y8uffmx01dekhbrsio1` (`serviceid`),
  KEY `FK_oot4yqkwkw43lsuusu9j5lf6t` (`userid`),
  CONSTRAINT `FK_4vbs37y8uffmx01dekhbrsio1` FOREIGN KEY (`serviceid`) REFERENCES `hfy_service` (`id`),
  CONSTRAINT `FK_g9uxjpmv7vassr1wf4oop8chy` FOREIGN KEY (`billhistoryid`) REFERENCES `shm_billhistory` (`id`),
  CONSTRAINT `FK_oot4yqkwkw43lsuusu9j5lf6t` FOREIGN KEY (`userid`) REFERENCES `hfy_user` (`id`),
  CONSTRAINT `FK_thyp92kavgq71ojec70f16uen` FOREIGN KEY (`billnowid`) REFERENCES `shm_billnow` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_serviceorder
-- ----------------------------
INSERT INTO `hfy_serviceorder` VALUES ('1', '30', '1', null, '1', '1', '3');
INSERT INTO `hfy_serviceorder` VALUES ('2', '100', '1', null, '1', '2', '3');
INSERT INTO `hfy_serviceorder` VALUES ('3', '150', '1', null, '1', '3', '3');
INSERT INTO `hfy_serviceorder` VALUES ('4', '30', '1', '1', null, '1', '2');
INSERT INTO `hfy_serviceorder` VALUES ('5', '100', '1', '1', null, '2', '2');
INSERT INTO `hfy_serviceorder` VALUES ('6', '150', '1', '1', null, '3', '2');
INSERT INTO `hfy_serviceorder` VALUES ('7', '30', '1', '2', null, '1', '8');
INSERT INTO `hfy_serviceorder` VALUES ('8', '100', '1', '2', null, '2', '8');
INSERT INTO `hfy_serviceorder` VALUES ('9', '30', '1', null, '8', '1', '2');
INSERT INTO `hfy_serviceorder` VALUES ('10', '100', '1', null, '8', '2', '2');
INSERT INTO `hfy_serviceorder` VALUES ('11', '150', '1', null, '8', '3', '2');
INSERT INTO `hfy_serviceorder` VALUES ('12', '30', '1', '3', null, '1', '2');
INSERT INTO `hfy_serviceorder` VALUES ('13', '100', '1', '3', null, '2', '2');
INSERT INTO `hfy_serviceorder` VALUES ('14', '150', '1', '3', null, '3', '2');
INSERT INTO `hfy_serviceorder` VALUES ('17', '30', '1', null, '9', '1', '8');
INSERT INTO `hfy_serviceorder` VALUES ('18', '100', '1', null, '9', '2', '8');
INSERT INTO `hfy_serviceorder` VALUES ('19', '30', '1', '10', null, '1', '10');
INSERT INTO `hfy_serviceorder` VALUES ('20', '100', '1', '12', null, '2', '10');
INSERT INTO `hfy_serviceorder` VALUES ('21', '30', '0', '14', null, '1', '16');
INSERT INTO `hfy_serviceorder` VALUES ('22', '30', '0', null, '27', '1', '16');
INSERT INTO `hfy_serviceorder` VALUES ('23', '100', '0', null, '27', '2', '16');
INSERT INTO `hfy_serviceorder` VALUES ('24', '300', '0', null, '27', '3', '16');
INSERT INTO `hfy_serviceorder` VALUES ('25', '30', '0', null, '28', '1', '15');
INSERT INTO `hfy_serviceorder` VALUES ('26', '100', '0', null, '28', '2', '15');
INSERT INTO `hfy_serviceorder` VALUES ('27', '250', '0', null, '28', '3', '15');
INSERT INTO `hfy_serviceorder` VALUES ('28', '30', '0', null, '28', '1', '15');

-- ----------------------------
-- Table structure for hfy_user
-- ----------------------------
DROP TABLE IF EXISTS `hfy_user`;
CREATE TABLE `hfy_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phonenum` varchar(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(1) DEFAULT '',
  `status` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hfy_user
-- ----------------------------
INSERT INTO `hfy_user` VALUES ('1', '2016-09-27 09:48:38', '1083910359@qq.com', null, '123456', null, 'images/user/boy.jpg', null, 'm', '0', null, 'momolela');
INSERT INTO `hfy_user` VALUES ('2', '2016-09-27 15:33:33', '1548011224@qq.com', '362426199511011810', '123456', '13616549386', 'images/user/userpic/sun.jpg', '孙肇将', 'm', '1', null, 'sun');
INSERT INTO `hfy_user` VALUES ('3', '2016-09-28 09:35:19', '757410690@qq.com', '362426199410207718', '123456', '13616549386', 'images/user/boy.jpg', '刘静', 'f', '1', null, 'jingbaba');
INSERT INTO `hfy_user` VALUES ('4', '2016-09-28 09:35:15', '1278413504@qq.com', '362426199410207718', '123456', '13616549386', 'images/user/boy.jpg', '刘欢', 'm', '1', null, 'caca');
INSERT INTO `hfy_user` VALUES ('5', '2016-09-28 17:23:17', '1442645917@qq.com', '362426199511014646', '123456', '15958111214', 'images/user/userpic/jb007.jpg', '江波', 'm', '1', null, '江波');
INSERT INTO `hfy_user` VALUES ('6', '2016-09-28 09:37:41', '2685376026@qq.com', null, '123456', null, 'images/user/boy.jpg', null, 'f', '0', null, '张园贵');
INSERT INTO `hfy_user` VALUES ('7', '2016-09-28 17:23:07', null, '362426199511013425', '123456', '18146718316', 'images/user/boy.jpg', '胡方仪', 'f', '1', null, '胡方仪');
INSERT INTO `hfy_user` VALUES ('8', '2016-09-29 13:30:34', null, '362426199511013425', '123456', '18146718316', 'images/user/boy.jpg', '蔡国庆', 'm', '1', null, 'caisen');
INSERT INTO `hfy_user` VALUES ('9', '2016-09-29 13:31:51', '2685376026@qq.com', '362426199511013425', '123456', '15958111214', 'images/user/boy.jpg', '胡凯', 'm', '1', null, 'fukai');
INSERT INTO `hfy_user` VALUES ('10', '2016-09-29 13:33:29', '2685376026@qq.com', '362426199511013425', '123456', '18146718316', 'images/user/boy.jpg', '马云', 'm', '1', null, 'xiaoma');
INSERT INTO `hfy_user` VALUES ('11', '2016-09-29 13:35:44', '1083910359@qq.com', '', '123456', null, 'images/user/boy.jpg', null, 'm', '0', null, '宋吉吉');
INSERT INTO `hfy_user` VALUES ('12', '2016-09-29 13:37:15', '1083910359@qq.com', null, '123456', null, 'images/user/boy.jpg', null, 'f', '0', null, '妖艳贱货');
INSERT INTO `hfy_user` VALUES ('13', '2016-09-29 13:57:28', '1083910359@qq.com', null, '123456', null, 'images/user/boy.jpg', null, 'm', '0', null, '小白');
INSERT INTO `hfy_user` VALUES ('14', '2016-09-29 13:57:58', '1548011224@qq.com', null, '123456', null, 'images/user/boy.jpg', null, 'm', '0', null, '小黑');
INSERT INTO `hfy_user` VALUES ('15', '2016-09-29 13:59:15', '308146120@qq.com', '362426199511011910', '123456', '18146718316', 'images/user/boy.jpg', '刘希', 'f', '1', null, '刘希');
INSERT INTO `hfy_user` VALUES ('16', '2016-09-29 14:01:00', '123456789@qq.com', '362426199511011910', '123456', '18146718316', 'images/user/boy.jpg', '孙远', 'm', '1', null, '孙远');
INSERT INTO `hfy_user` VALUES ('17', '2016-09-29 14:01:50', '987654321@qq.com', '362326199511011810', '123456', '18146718316', 'images/user/boy.jpg', '刘彩霞', 'f', '1', null, '刘彩霞');
INSERT INTO `hfy_user` VALUES ('18', '2016-09-29 21:34:58', null, '362426199511011810', '123456', '18146718316', 'images/user/boy.jpg', '辜文珑', 'm', '1', null, '辜文珑');
INSERT INTO `hfy_user` VALUES ('19', '2016-09-29 21:44:13', null, '36242619951101', '123456', '18146718316', 'images/user/boy.jpg', '李嘉兴', 'm', '1', null, '李嘉兴');
INSERT INTO `hfy_user` VALUES ('20', '2016-10-08 13:12:41', null, '362426198712011106', '123456', '13279637895', 'images/user/boy.jpg', '舒畅', 'f', '1', null, '舒畅');

-- ----------------------------
-- Table structure for shm_admin
-- ----------------------------
DROP TABLE IF EXISTS `shm_admin`;
CREATE TABLE `shm_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_admin
-- ----------------------------
INSERT INTO `shm_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for shm_billhistory
-- ----------------------------
DROP TABLE IF EXISTS `shm_billhistory`;
CREATE TABLE `shm_billhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkintime` datetime DEFAULT NULL,
  `expiretime` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fi2j14l747u8ag5pow66jsf48` (`userid`),
  CONSTRAINT `FK_fi2j14l747u8ag5pow66jsf48` FOREIGN KEY (`userid`) REFERENCES `hfy_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_billhistory
-- ----------------------------
INSERT INTO `shm_billhistory` VALUES ('1', '2016-09-07 20:03:23', '2016-09-14 23:18:32', '2');
INSERT INTO `shm_billhistory` VALUES ('2', '2016-10-07 00:00:00', '2016-10-14 00:00:00', '8');
INSERT INTO `shm_billhistory` VALUES ('3', '2016-10-01 20:24:34', '2016-10-04 20:24:41', '2');
INSERT INTO `shm_billhistory` VALUES ('4', '2016-10-07 00:00:00', '2016-10-12 00:00:00', '10');
INSERT INTO `shm_billhistory` VALUES ('10', '2016-10-08 00:00:00', '2016-10-10 00:00:00', '10');
INSERT INTO `shm_billhistory` VALUES ('11', '2016-10-11 00:00:00', '2016-10-13 00:00:00', '10');
INSERT INTO `shm_billhistory` VALUES ('12', '2016-10-15 00:00:00', '2016-10-16 00:00:00', '10');
INSERT INTO `shm_billhistory` VALUES ('13', '2016-09-29 09:38:51', '2016-10-06 23:19:06', '4');
INSERT INTO `shm_billhistory` VALUES ('14', '2016-10-07 00:00:00', '2016-10-13 00:00:00', '16');

-- ----------------------------
-- Table structure for shm_billnow
-- ----------------------------
DROP TABLE IF EXISTS `shm_billnow`;
CREATE TABLE `shm_billnow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkintime` datetime DEFAULT NULL,
  `expiretime` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pi5wuwoo8be1bw1yw4aowuih9` (`userid`),
  CONSTRAINT `FK_pi5wuwoo8be1bw1yw4aowuih9` FOREIGN KEY (`userid`) REFERENCES `hfy_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_billnow
-- ----------------------------
INSERT INTO `shm_billnow` VALUES ('1', '2016-09-28 09:38:21', '2016-10-05 23:18:54', '3');
INSERT INTO `shm_billnow` VALUES ('3', '2016-09-30 09:39:16', '2016-10-07 23:19:16', '5');
INSERT INTO `shm_billnow` VALUES ('4', '2016-09-26 20:55:08', '2016-10-03 23:18:49', '7');
INSERT INTO `shm_billnow` VALUES ('5', '2016-10-07 00:00:00', '2016-10-14 00:00:00', '9');
INSERT INTO `shm_billnow` VALUES ('6', '2016-10-07 00:00:00', '2016-10-14 00:00:00', '18');
INSERT INTO `shm_billnow` VALUES ('7', '2016-10-07 00:00:00', '2016-10-14 00:00:00', '19');
INSERT INTO `shm_billnow` VALUES ('8', '2016-10-07 00:00:00', '2016-10-11 00:00:00', '2');
INSERT INTO `shm_billnow` VALUES ('9', '2016-10-07 00:00:00', '2016-10-14 00:00:00', '8');
INSERT INTO `shm_billnow` VALUES ('26', '2016-10-08 00:00:00', '2016-10-13 00:00:00', '20');
INSERT INTO `shm_billnow` VALUES ('27', '2016-10-22 00:00:00', '2016-10-23 00:00:00', '16');
INSERT INTO `shm_billnow` VALUES ('28', '2016-10-08 00:00:00', '2016-10-10 00:00:00', '15');
