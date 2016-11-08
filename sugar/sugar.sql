/*
Navicat MySQL Data Transfer

Source Server         : momolela
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : sugar

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-11-09 00:49:10
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_address
-- ----------------------------
INSERT INTO `sugar_address` VALUES ('1', '江西吉安', '江西省吉安市泰和县', '2016-10-31 22:36:05', '13616549386', '孙肇将', null, null, '1');
INSERT INTO `sugar_address` VALUES ('2', '浙江杭州', '浙江省杭州市西湖区五联西苑113号', '2016-10-31 22:37:22', '13616549386', '孙肇将', null, null, '1');
INSERT INTO `sugar_address` VALUES ('3', '浙江杭州', '浙江省杭州市西湖区五联西苑113号', '2016-11-01 19:49:02', '13616549386', '孙肇将', null, null, '1');
INSERT INTO `sugar_address` VALUES ('5', '浙江杭州', '浙江省杭州市西湖区五联西苑113号', '2016-11-01 21:24:26', '18146718316', '孙肇将', null, null, '1');
INSERT INTO `sugar_address` VALUES ('7', '贵州毕节', '贵州省毕节市哪里哪里不知道', '2016-11-01 21:28:30', '13616549386', '刘静', null, null, '1');
INSERT INTO `sugar_address` VALUES ('15', '浙江杭州', '浙江省杭州市西湖区', '2016-11-01 21:50:52', '13616549386', '孙肇将', null, null, '1');
INSERT INTO `sugar_address` VALUES ('16', '浙江杭州', '浙江省杭州市西湖区', '2016-11-01 21:53:11', '124434434532334', '孙肇将', null, null, '1');
INSERT INTO `sugar_address` VALUES ('17', '四川重庆', '四川省成都市青羊区', '2016-11-07 23:09:58', '13616549386', '刘静', null, null, '2');
INSERT INTO `sugar_address` VALUES ('18', '浙江杭州', '浙江省杭州市西湖区五莲西苑', '2016-11-08 21:45:38', '13616549386', '刘静', null, null, '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_commentslist
-- ----------------------------
INSERT INTO `sugar_commentslist` VALUES ('1', '我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好啊~质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这', '2016-10-30 19:39:32', '1', '1');
INSERT INTO `sugar_commentslist` VALUES ('2', '我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好我非常喜欢这款沙发，店家服务特别好，发货速度特别的快。沙发质量也是特别的好啊~', '2016-10-30 21:46:05', '1', '2');
INSERT INTO `sugar_commentslist` VALUES ('3', '质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这,质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这', '2016-10-30 23:42:35', '1', '3');
INSERT INTO `sugar_commentslist` VALUES ('4', '质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这,质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这.质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这质量也是特别的好我非常喜欢这', '2016-10-30 23:42:51', '1', '4');
INSERT INTO `sugar_commentslist` VALUES ('5', '非常漂亮的橱柜，放在卧室很舒心，没有异味特别的nice，而且材质特别的好，质量一级棒！！！！', '2016-10-31 20:46:36', '2', '1');
INSERT INTO `sugar_commentslist` VALUES ('6', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '2016-11-06 01:26:54', '1', '1');

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
  `hotcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e1kc9y7l3oq2e1dkjg0swbjbo` (`gclassid`),
  KEY `FK_li04kikvhnvfcjut8fdqdv580` (`shopid`),
  CONSTRAINT `FK_e1kc9y7l3oq2e1dkjg0swbjbo` FOREIGN KEY (`gclassid`) REFERENCES `sugar_goodclass` (`id`),
  CONSTRAINT `FK_li04kikvhnvfcjut8fdqdv580` FOREIGN KEY (`shopid`) REFERENCES `sugar_shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_good
-- ----------------------------
INSERT INTO `sugar_good` VALUES ('1', '2016-11-07 20:39:42', '500', '宜家精品家居，红木沙发，哈哈，就爱啊这个家居啊怎么样', '1100', '2100', '0', null, '1', '1', '500');
INSERT INTO `sugar_good` VALUES ('2', '2016-11-08 19:35:13', '1000', '精品家居，红木衣柜精品，设计师全心打造，精美衣柜爆款。', '1200', '2600', '0', null, '2', '1', '500');
INSERT INTO `sugar_good` VALUES ('3', '2016-11-08 19:04:50', '500', '精品家居，红木茶几精品，设计师全心打造，精美茶几爆款。', '600', '1600', '0', null, '3', '2', null);
INSERT INTO `sugar_good` VALUES ('4', '2016-11-08 19:34:15', '500', '厨房家居沥水架精品，设计师全心打造，精美沥水架爆款。', '1300', '1800', '0', null, '4', '1', null);
INSERT INTO `sugar_good` VALUES ('5', '2016-11-08 19:04:52', '400', '儿童部家居儿童床精品，设计师全心打造，精美儿童床爆款。', '400', '600', '0', null, '5', '1', null);
INSERT INTO `sugar_good` VALUES ('6', '2016-11-08 19:04:53', '600', '纺织品家居床褥精品，设计师全心打造，精美床褥爆款。', '150', '300', '0', null, '6', '1', null);
INSERT INTO `sugar_good` VALUES ('7', '2016-11-08 19:04:54', '700', '装饰家居照片墙相框精品，设计师全心打造，精美照片墙相框爆款。', '300', '400', '0', null, '7', '1', '500');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
INSERT INTO `sugar_goodpiclist` VALUES ('9', '2016-11-03 22:17:19', 'images/good/3/1.jpg', '3');
INSERT INTO `sugar_goodpiclist` VALUES ('10', '2016-11-03 22:17:29', 'images/good/3/2.jpg', '3');
INSERT INTO `sugar_goodpiclist` VALUES ('11', '2016-11-03 22:17:35', 'images/good/3/3.jpg', '3');
INSERT INTO `sugar_goodpiclist` VALUES ('12', '2016-11-03 22:17:44', 'images/good/3/4.jpg', '3');
INSERT INTO `sugar_goodpiclist` VALUES ('13', '2016-11-03 22:18:20', 'images/good/4/1.jpg', '4');
INSERT INTO `sugar_goodpiclist` VALUES ('14', '2016-11-03 22:18:32', 'images/good/4/2.jpg', '4');
INSERT INTO `sugar_goodpiclist` VALUES ('15', '2016-11-03 22:18:42', 'images/good/4/3.jpg', '4');
INSERT INTO `sugar_goodpiclist` VALUES ('16', '2016-11-03 22:18:52', 'images/good/5/1.jpg', '5');
INSERT INTO `sugar_goodpiclist` VALUES ('17', '2016-11-03 22:19:03', 'images/good/5/2.jpg', '5');
INSERT INTO `sugar_goodpiclist` VALUES ('18', '2016-11-03 22:19:13', 'images/good/5/3.jpg', '5');
INSERT INTO `sugar_goodpiclist` VALUES ('19', '2016-11-03 22:19:22', 'images/good/6/1.jpg', '6');
INSERT INTO `sugar_goodpiclist` VALUES ('20', '2016-11-03 22:19:33', 'images/good/6/2.jpg', '6');
INSERT INTO `sugar_goodpiclist` VALUES ('21', '2016-11-03 22:19:44', 'images/good/6/3.jpg', '6');
INSERT INTO `sugar_goodpiclist` VALUES ('22', '2016-11-03 22:19:49', 'images/good/7/1.jpg', '7');
INSERT INTO `sugar_goodpiclist` VALUES ('23', '2016-11-03 22:19:57', 'images/good/7/2.jpg', '7');
INSERT INTO `sugar_goodpiclist` VALUES ('24', '2016-11-03 22:20:13', 'images/good/7/3.jpg', '7');

-- ----------------------------
-- Table structure for sugar_ordergood
-- ----------------------------
DROP TABLE IF EXISTS `sugar_ordergood`;
CREATE TABLE `sugar_ordergood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allmoney` varchar(255) DEFAULT NULL,
  `goodcount` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `shoporder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_19j8s7h9vmd4adoadnt977tut` (`gid`),
  KEY `FK_lb9x5wn1sad11bbn1o464nk8c` (`shoporder_id`),
  CONSTRAINT `FK_19j8s7h9vmd4adoadnt977tut` FOREIGN KEY (`gid`) REFERENCES `sugar_good` (`id`),
  CONSTRAINT `FK_lb9x5wn1sad11bbn1o464nk8c` FOREIGN KEY (`shoporder_id`) REFERENCES `sugar_shoporder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_ordergood
-- ----------------------------
INSERT INTO `sugar_ordergood` VALUES ('3', '600', '1', '3', '2');
INSERT INTO `sugar_ordergood` VALUES ('10', '600', '2', '7', '7');
INSERT INTO `sugar_ordergood` VALUES ('12', '600', '1', '3', '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_shop
-- ----------------------------
INSERT INTO `sugar_shop` VALUES ('1', '2016-10-30 20:34:46', '师大家居', null, null, '1');
INSERT INTO `sugar_shop` VALUES ('2', '2016-11-08 20:48:09', '宜家家居', null, null, '4');
INSERT INTO `sugar_shop` VALUES ('4', '2016-11-07 23:20:31', '风华绝代举世无双家居城', null, null, '3');

-- ----------------------------
-- Table structure for sugar_shopcar
-- ----------------------------
DROP TABLE IF EXISTS `sugar_shopcar`;
CREATE TABLE `sugar_shopcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `goodcount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r660l85ffs8ejkjyeo7wa0lki` (`gid`),
  KEY `FK_d6798a9lcbfys3nyfss1khnvv` (`sid`),
  KEY `FK_49hf1vptg18q7bscf7w3gxqg7` (`uid`),
  CONSTRAINT `FK_49hf1vptg18q7bscf7w3gxqg7` FOREIGN KEY (`uid`) REFERENCES `sugar_user` (`id`),
  CONSTRAINT `FK_d6798a9lcbfys3nyfss1khnvv` FOREIGN KEY (`sid`) REFERENCES `sugar_shop` (`id`),
  CONSTRAINT `FK_r660l85ffs8ejkjyeo7wa0lki` FOREIGN KEY (`gid`) REFERENCES `sugar_good` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_shopcar
-- ----------------------------
INSERT INTO `sugar_shopcar` VALUES ('4', '2016-11-05 00:57:19', '1', null, null, '1', '1', '2');
INSERT INTO `sugar_shopcar` VALUES ('5', '2016-11-05 00:58:48', '1', null, null, '2', '1', '2');
INSERT INTO `sugar_shopcar` VALUES ('6', '2016-11-05 01:02:01', '1', null, null, '3', '2', '2');
INSERT INTO `sugar_shopcar` VALUES ('7', '2016-11-05 01:04:03', '1', null, null, '4', '1', '2');
INSERT INTO `sugar_shopcar` VALUES ('8', '2016-11-05 21:49:03', '1', null, null, '1', '1', '1');
INSERT INTO `sugar_shopcar` VALUES ('9', '2016-11-05 21:57:55', '1', null, null, '2', '1', '1');
INSERT INTO `sugar_shopcar` VALUES ('10', '2016-11-05 21:58:51', '1', null, null, '3', '2', '1');
INSERT INTO `sugar_shopcar` VALUES ('11', '2016-11-08 21:44:21', '1', null, null, '3', '2', '5');

-- ----------------------------
-- Table structure for sugar_shoporder
-- ----------------------------
DROP TABLE IF EXISTS `sugar_shoporder`;
CREATE TABLE `sugar_shoporder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ordernum` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gkar29p11wqd408rxwjwswwl5` (`sid`),
  KEY `FK_pa2e52ysen9pyuupmyr2atjj1` (`uid`),
  KEY `FK_iesxv8n57atw5x72kqf58prdp` (`address_id`),
  CONSTRAINT `FK_gkar29p11wqd408rxwjwswwl5` FOREIGN KEY (`sid`) REFERENCES `sugar_shop` (`id`),
  CONSTRAINT `FK_iesxv8n57atw5x72kqf58prdp` FOREIGN KEY (`address_id`) REFERENCES `sugar_address` (`id`),
  CONSTRAINT `FK_pa2e52ysen9pyuupmyr2atjj1` FOREIGN KEY (`uid`) REFERENCES `sugar_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_shoporder
-- ----------------------------
INSERT INTO `sugar_shoporder` VALUES ('2', '2016-11-08 23:37:32', '2', null, '2', '1', '2016110421082', '2');
INSERT INTO `sugar_shoporder` VALUES ('7', '2016-11-05 01:05:56', '1', null, '1', '2', '20161105010556', '17');
INSERT INTO `sugar_shoporder` VALUES ('9', '2016-11-08 21:45:51', '3', null, '2', '5', '20161108214551', '18');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sugar_user
-- ----------------------------
INSERT INTO `sugar_user` VALUES ('1', '2016-10-13 08:57:56', '1083910359@qq.com', '362426199511011810', '123456', '13216549386', 'images/user/pic.jpg', '孙肇将', 'm', '2', null, 'momolela');
INSERT INTO `sugar_user` VALUES ('2', '2016-11-08 21:00:30', '757410690@qq.com', null, '123456', null, 'images/user/pic.jpg', '', 'f', '0', null, 'jingbaba');
INSERT INTO `sugar_user` VALUES ('3', '2016-11-08 21:01:20', '1548011224@qq.com', '362426199511011810', '123456', '13216549386', 'images/user/pic.jpg', '孙孝楚', 'm', '2', null, 'forever');
INSERT INTO `sugar_user` VALUES ('4', '2016-11-08 21:01:22', '757410690@qq.com', '362426199511011810', '123456', '13216549386', 'images/user/pic.jpg', '刘静', 'm', '2', null, '大傻逼');
INSERT INTO `sugar_user` VALUES ('5', '2016-11-08 21:36:19', '1548011224@qq.com', null, '123456', null, 'images/user/pic.jpg', null, 'm', '0', null, '小白');
