/*
Navicat MySQL Data Transfer

Source Server         : momolela
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : sugar

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-10-31 23:55:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sugar_address
-- ----------------------------
DROP TABLE IF EXISTS `sugar_address`;
CREATE TABLE `sugar_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `contentdetail` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phonenum` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2ipxlwl2pwkoqi8jw2tdjxy7k` (`uid`),
  CONSTRAINT `FK_2ipxlwl2pwkoqi8jw2tdjxy7k` FOREIGN KEY (`uid`) REFERENCES `sugar_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_address
-- ----------------------------
INSERT INTO `sugar_address` VALUES ('1', '江西吉安', '江西省吉安市泰和县', '2016-10-31 22:36:05', '13616549386', '孙肇将', null, null, '1');
INSERT INTO `sugar_address` VALUES ('2', '浙江杭州', '浙江省杭州市西湖区五联西苑113号', '2016-10-31 22:37:22', '13616549386', '孙肇将', null, null, '1');

-- ----------------------------
-- Table structure for sugar_admin
-- ----------------------------
DROP TABLE IF EXISTS `sugar_admin`;
CREATE TABLE `sugar_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_admin
-- ----------------------------
INSERT INTO `sugar_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for sugar_commentslist
-- ----------------------------
DROP TABLE IF EXISTS `sugar_commentslist`;
CREATE TABLE `sugar_commentslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` longtext,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jrlh10syvko6r9lnqu3xp0sch` (`gid`),
  KEY `FK_8fkbnjms0uj9wt6psq0gsy4n9` (`uid`),
  CONSTRAINT `FK_8fkbnjms0uj9wt6psq0gsy4n9` FOREIGN KEY (`uid`) REFERENCES `sugar_user` (`id`),
  CONSTRAINT `FK_jrlh10syvko6r9lnqu3xp0sch` FOREIGN KEY (`gid`) REFERENCES `sugar_good` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_commentslist
-- ----------------------------
INSERT INTO `sugar_commentslist` VALUES ('1', '我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好啊~质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这', '2016-10-30 19:39:32', '1', '1');
INSERT INTO `sugar_commentslist` VALUES ('2', '我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好啊~', '2016-10-30 21:46:05', '1', '2');
INSERT INTO `sugar_commentslist` VALUES ('3', '质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这,质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这', '2016-10-30 23:42:35', '1', '3');
INSERT INTO `sugar_commentslist` VALUES ('4', '质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这,质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这.质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这', '2016-10-30 23:42:51', '1', '4');
INSERT INTO `sugar_commentslist` VALUES ('5', '非常漂亮的橱柜，放在卧室很舒心，没有异味特别的nice，而且材质特别的好，质量一级棒！！！！', '2016-10-31 20:46:36', '2', '1');

-- ----------------------------
-- Table structure for sugar_good
-- ----------------------------
DROP TABLE IF EXISTS `sugar_good`;
CREATE TABLE `sugar_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `goodcount` int(11) DEFAULT NULL,
  `goodname` varchar(30) DEFAULT NULL,
  `goodnprice` varchar(255) DEFAULT NULL,
  `goodoprice` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `gclassid` int(11) DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e1kc9y7l3oq2e1dkjg0swbjbo` (`gclassid`),
  KEY `FK_li04kikvhnvfcjut8fdqdv580` (`shopid`),
  CONSTRAINT `FK_e1kc9y7l3oq2e1dkjg0swbjbo` FOREIGN KEY (`gclassid`) REFERENCES `sugar_goodclass` (`id`),
  CONSTRAINT `FK_li04kikvhnvfcjut8fdqdv580` FOREIGN KEY (`shopid`) REFERENCES `sugar_shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_good
-- ----------------------------
INSERT INTO `sugar_good` VALUES ('1', '2016-10-30 20:35:44', '500', '宜家精品家居，红木沙发，哈哈哈哈哈哈，就爱啊这个家居啊怎么样', '1100', '2100', null, null, '3', '1');
INSERT INTO `sugar_good` VALUES ('2', '2016-10-31 20:45:09', '1000', '精品家居，红木沙发精品，设计师全心打造，精美橱柜爆款。', '1200', '2600', null, null, '1', '1');

-- ----------------------------
-- Table structure for sugar_goodclass
-- ----------------------------
DROP TABLE IF EXISTS `sugar_goodclass`;
CREATE TABLE `sugar_goodclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodclass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_goodclass
-- ----------------------------
INSERT INTO `sugar_goodclass` VALUES ('1', '卧室');
INSERT INTO `sugar_goodclass` VALUES ('2', '浴室');
INSERT INTO `sugar_goodclass` VALUES ('3', '客厅');
INSERT INTO `sugar_goodclass` VALUES ('4', '厨房');
INSERT INTO `sugar_goodclass` VALUES ('5', '儿童部');
INSERT INTO `sugar_goodclass` VALUES ('6', '纺织品');
INSERT INTO `sugar_goodclass` VALUES ('7', '装饰');

-- ----------------------------
-- Table structure for sugar_goodpiclist
-- ----------------------------
DROP TABLE IF EXISTS `sugar_goodpiclist`;
CREATE TABLE `sugar_goodpiclist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `goodpicurl` varchar(255) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_arxlg5jvtt2bjo5o0xro48l79` (`gid`),
  CONSTRAINT `FK_arxlg5jvtt2bjo5o0xro48l79` FOREIGN KEY (`gid`) REFERENCES `sugar_good` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_goodpiclist
-- ----------------------------
INSERT INTO `sugar_goodpiclist` VALUES ('1', '2016-10-30 19:37:42', 'images/good/1/1.jpg', '1');
INSERT INTO `sugar_goodpiclist` VALUES ('2', '2016-10-30 19:38:15', 'images/good/1/2.jpg', '1');
INSERT INTO `sugar_goodpiclist` VALUES ('3', '2016-10-30 19:38:33', 'images/good/1/3.jpg', '1');
INSERT INTO `sugar_goodpiclist` VALUES ('4', '2016-10-30 19:38:53', 'images/good/1/4.jpg', '1');
INSERT INTO `sugar_goodpiclist` VALUES ('5', '2016-10-30 19:39:12', 'images/good/1/5.jpg', '1');
INSERT INTO `sugar_goodpiclist` VALUES ('6', '2016-10-31 20:47:03', 'images/good/2/1.jpg', '2');
INSERT INTO `sugar_goodpiclist` VALUES ('7', '2016-10-31 20:47:27', 'images/good/2/2.jpg', '2');
INSERT INTO `sugar_goodpiclist` VALUES ('8', '2016-10-31 20:47:52', 'images/good/2/3.jpg', '2');

-- ----------------------------
-- Table structure for sugar_shop
-- ----------------------------
DROP TABLE IF EXISTS `sugar_shop`;
CREATE TABLE `sugar_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shopname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9n2h8s12i9741f1sl8uo03q5j` (`uid`),
  CONSTRAINT `FK_9n2h8s12i9741f1sl8uo03q5j` FOREIGN KEY (`uid`) REFERENCES `sugar_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_shop
-- ----------------------------
INSERT INTO `sugar_shop` VALUES ('1', '2016-10-30 20:34:46', '师大家居', null, null, '1');
INSERT INTO `sugar_shop` VALUES ('2', '2016-10-30 20:35:01', '宜家家居', null, null, '2');

-- ----------------------------
-- Table structure for sugar_user
-- ----------------------------
DROP TABLE IF EXISTS `sugar_user`;
CREATE TABLE `sugar_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phonenum` varchar(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0是普通用户，1是设计师，2是商家',
  `updatetime` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_user
-- ----------------------------
INSERT INTO `sugar_user` VALUES ('1', '2016-10-13 08:57:56', '1083910359@qq.com', '362426199511011810', '123456', '13216549386', 'images/user/pic.jpg', '孙肇将', 'm', '2', null, 'momolela');
INSERT INTO `sugar_user` VALUES ('2', '2016-10-27 23:54:37', '757410690@qq.com', null, '123456', null, 'images/user/pic.jpg', null, 'f', '1', null, 'jingbaba');
INSERT INTO `sugar_user` VALUES ('3', '2016-10-13 09:03:38', '1548011224@qq.com', null, '123456', null, 'images/user/pic.jpg', null, 'm', '0', null, 'forever');
INSERT INTO `sugar_user` VALUES ('4', '2016-10-17 21:14:06', '757410690@qq.com', null, '123456', null, 'images/user/pic.jpg', null, 'm', '0', null, '大傻逼');
