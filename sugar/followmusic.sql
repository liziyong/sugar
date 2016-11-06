/*
Navicat MySQL Data Transfer

Source Server         : momolela
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : followmusic

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-11-07 07:32:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bcontent` varchar(255) DEFAULT NULL,
  `btitle` varchar(255) DEFAULT NULL,
  `burl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '2015年6月，时隔三年后的BigBang携带新作《made》。强势回归。', 'BigBang强势回归', 'images/banner/1.jpg');
INSERT INTO `banner` VALUES ('3', '周杰伦音乐秀场，摩天轮狂卷音乐浪潮。。。', '摩天轮音乐秀场', 'images/banner/3.jpg');
INSERT INTO `banner` VALUES ('6', 'bigbang 全新火爆单曲，韩流席卷。bang bang bang', 'bang bang bang', 'images/banner/2016080310115690212.jpg');

-- ----------------------------
-- Table structure for commentslist
-- ----------------------------
DROP TABLE IF EXISTS `commentslist`;
CREATE TABLE `commentslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` longtext,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_86t1lm72sj1elc7rjoypvkyiw` (`sid`),
  KEY `FK_2can68mgik1x9pcb5ix6fa5uy` (`uid`),
  CONSTRAINT `FK_2can68mgik1x9pcb5ix6fa5uy` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_86t1lm72sj1elc7rjoypvkyiw` FOREIGN KEY (`sid`) REFERENCES `song` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commentslist
-- ----------------------------
INSERT INTO `commentslist` VALUES ('1', '很唯美的一首歌。好好听！', '2016-06-16 17:13:47', '1', '1');
INSERT INTO `commentslist` VALUES ('2', 'if you love me, i will love you too.', '2016-06-16 17:14:31', '1', '2');
INSERT INTO `commentslist` VALUES ('3', 'ffff', '2016-06-16 19:38:02', '2', '1');
INSERT INTO `commentslist` VALUES ('4', '我是一只鱼，哈哈哈', '2016-06-16 19:39:48', '2', '1');
INSERT INTO `commentslist` VALUES ('5', '好好玩啊', '2016-06-16 19:40:54', '2', '1');
INSERT INTO `commentslist` VALUES ('6', 'bigbang的最好听的一首歌', '2016-06-16 19:42:40', '3', '1');
INSERT INTO `commentslist` VALUES ('7', 'i am a amonster,but i love you!!!!', '2016-06-16 19:45:08', '3', '1');
INSERT INTO `commentslist` VALUES ('8', 'hen hao ting a ', '2016-06-16 19:48:28', '3', '1');
INSERT INTO `commentslist` VALUES ('9', 'hahah ddfgd ', '2016-06-16 19:50:20', '3', '1');
INSERT INTO `commentslist` VALUES ('10', '哈哈哈', '2016-06-16 19:52:00', '3', '1');
INSERT INTO `commentslist` VALUES ('11', '可可可可的', '2016-06-16 19:53:05', '3', '1');
INSERT INTO `commentslist` VALUES ('12', '为什么eval方法没有用啊我的天', '2016-06-16 19:55:22', '3', '1');
INSERT INTO `commentslist` VALUES ('13', '哈哈哈', '2016-06-16 19:57:13', '3', '1');
INSERT INTO `commentslist` VALUES ('14', '最后一次', '2016-06-16 19:58:34', '3', '1');
INSERT INTO `commentslist` VALUES ('15', 'hahahhahahaahahah', '2016-06-16 20:03:31', '3', '1');
INSERT INTO `commentslist` VALUES ('16', '好了', '2016-06-16 20:15:57', '1', '1');
INSERT INTO `commentslist` VALUES ('17', '好了 终于好了 累死人了', '2016-06-16 20:19:01', '1', '1');
INSERT INTO `commentslist` VALUES ('18', '评论成功', '2016-06-16 20:21:37', '1', '1');
INSERT INTO `commentslist` VALUES ('19', 'okokook', '2016-06-16 20:23:51', '1', '1');
INSERT INTO `commentslist` VALUES ('20', '时间消亡', '2016-06-16 20:24:46', '1', '1');
INSERT INTO `commentslist` VALUES ('21', '的点点滴滴', '2016-06-16 20:26:26', '1', '1');
INSERT INTO `commentslist` VALUES ('22', 'sorry idot  know', '2016-06-16 20:29:54', '1', '1');
INSERT INTO `commentslist` VALUES ('23', '成功装一波', '2016-06-16 20:30:49', '1', '1');
INSERT INTO `commentslist` VALUES ('24', '好像可以了', '2016-06-16 20:31:18', '1', '1');
INSERT INTO `commentslist` VALUES ('25', 'ifyou哈哈哈', '2016-06-16 20:32:14', '1', '1');
INSERT INTO `commentslist` VALUES ('26', '女神 女神 女神', '2016-06-16 20:43:44', '6', '1');
INSERT INTO `commentslist` VALUES ('27', '哈哈 这是 我自己 封装的 loading', '2016-06-16 20:45:53', '6', '1');
INSERT INTO `commentslist` VALUES ('28', '红颜旧 刘涛 女神', '2016-06-16 20:48:15', '6', '1');
INSERT INTO `commentslist` VALUES ('29', '很好听啊，这首歌！！！', '2016-06-16 22:42:52', '8', '2');
INSERT INTO `commentslist` VALUES ('30', '这是真的伤', '2016-06-16 22:44:14', '8', '2');
INSERT INTO `commentslist` VALUES ('31', '图片为什么没有用啊？？？？', '2016-06-16 22:45:36', '8', '3');
INSERT INTO `commentslist` VALUES ('32', '很强啊，这个评论', '2016-06-16 22:48:05', '8', '3');
INSERT INTO `commentslist` VALUES ('33', '这是什么问题啊可以用了吗？？？<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/20.gif\" width=\"20\" height=\"20\">', '2016-06-16 22:49:54', '8', '3');
INSERT INTO `commentslist` VALUES ('34', '图片终于能用了 哈哈哈<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/5.gif\" width=\"20\" height=\"20\">', '2016-06-16 22:51:20', '1', '3');
INSERT INTO `commentslist` VALUES ('35', '哈哈哈哈 好听<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/5.gif\" width=\"20\" height=\"20\">', '2016-06-16 23:13:21', '7', '10');
INSERT INTO `commentslist` VALUES ('36', '我是小黑，我评论了这首歌<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/33.gif\" width=\"20\" height=\"20\">', '2016-06-17 00:37:19', '2', '11');
INSERT INTO `commentslist` VALUES ('37', '许嵩超级好听的歌啊<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/13.gif\" width=\"20\" height=\"20\">', '2016-06-17 00:38:19', '10', '11');
INSERT INTO `commentslist` VALUES ('38', '<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/1.gif\" width=\"20\" height=\"20\">', '2016-06-17 00:42:28', '10', '11');
INSERT INTO `commentslist` VALUES ('39', '<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/4.gif\" width=\"20\" height=\"20\"><img src=\"http://localhost:8080/followMusic/images/musiccomments/face/11.gif\" width=\"20\" height=\"20\">', '2016-06-17 00:43:02', '10', '11');
INSERT INTO `commentslist` VALUES ('40', '<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/10.gif\" width=\"20\" height=\"20\">', '2016-06-17 00:44:06', '10', '11');
INSERT INTO `commentslist` VALUES ('41', '<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/1.gif\" width=\"20\" height=\"20\"><img src=\"http://localhost:8080/followMusic/images/musiccomments/face/2.gif\" width=\"20\" height=\"20\"><img src=\"http://localhost:8080/followMusic/images/musiccomments/face/3.gif\" width=\"20\" height=\"20\">', '2016-06-17 08:51:18', '1', '5');
INSERT INTO `commentslist` VALUES ('42', '我是 刘欢，。没错 我就是SB，我自豪了吗？<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/28.gif\" width=\"20\" height=\"20\">', '2016-06-17 09:02:38', '10', '6');
INSERT INTO `commentslist` VALUES ('43', '咋啦粑粑', '2016-06-17 09:03:53', '10', '6');
INSERT INTO `commentslist` VALUES ('44', '时间 好像有点假', '2016-06-17 09:09:21', '10', '6');
INSERT INTO `commentslist` VALUES ('45', '这首歌的评论好多啊<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/28.gif\" width=\"20\" height=\"20\">', '2016-06-17 09:12:28', '1', '6');
INSERT INTO `commentslist` VALUES ('46', '其实台下的观众就我一个<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/5.gif\" width=\"20\" height=\"20\">', '2016-06-17 22:38:50', '16', '1');
INSERT INTO `commentslist` VALUES ('47', '没错 就是我 ', '2016-06-18 14:23:49', '5', '6');
INSERT INTO `commentslist` VALUES ('48', '<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/4.gif\" width=\"20\" height=\"20\"><img src=\"http://localhost:8080/followMusic/images/musiccomments/face/5.gif\" width=\"20\" height=\"20\"><img src=\"http://localhost:8080/followMusic/images/musiccomments/face/7.gif\" width=\"20\" height=\"20\">', '2016-06-18 14:26:29', '1', '6');
INSERT INTO `commentslist` VALUES ('49', '我就是我 是颜色不一样的 花火<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/21.gif\" width=\"20\" height=\"20\">', '2016-06-18 14:27:15', '1', '6');
INSERT INTO `commentslist` VALUES ('50', 'hahhhah', '2016-06-20 15:36:06', '1', '1');
INSERT INTO `commentslist` VALUES ('51', 'hahhahaahah<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/33.gif\" width=\"20\" height=\"20\">', '2016-07-21 10:59:41', '1', '1');
INSERT INTO `commentslist` VALUES ('52', 'Haha<img src=\"http://192.168.23.1:8080/followMusic/images/musiccomments/face/49.gif\" width=\"20\" height=\"20\">', '2016-08-03 15:30:44', '3', '1');
INSERT INTO `commentslist` VALUES ('53', '所爱隔山海，山海不可平<img src=\"http://localhost:8080/followMusic/images/musiccomments/face/9.gif\" width=\"20\" height=\"20\">', '2016-09-13 17:17:55', '1', '5');

-- ----------------------------
-- Table structure for lrc
-- ----------------------------
DROP TABLE IF EXISTS `lrc`;
CREATE TABLE `lrc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lrcurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lrc
-- ----------------------------
INSERT INTO `lrc` VALUES ('1', 'music/lrc/任贤齐-我是一只鱼.lrc');
INSERT INTO `lrc` VALUES ('2', 'music/lrc/许嵩 黄龄-惊鸿一面.lrc');
INSERT INTO `lrc` VALUES ('3', 'music/lrc/Bigbang-monster.lrc');
INSERT INTO `lrc` VALUES ('4', 'music/lrc/薛之谦-演员.lrc');

-- ----------------------------
-- Table structure for sendlist
-- ----------------------------
DROP TABLE IF EXISTS `sendlist`;
CREATE TABLE `sendlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m7b88c8iwqdysyj3up6kn905h` (`uid`),
  CONSTRAINT `FK_m7b88c8iwqdysyj3up6kn905h` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sendlist
-- ----------------------------
INSERT INTO `sendlist` VALUES ('1', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/1.jpg', 'bigbang 歌曲精选', '1');
INSERT INTO `sendlist` VALUES ('2', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/2.jpg', '超级韩流风', '3');
INSERT INTO `sendlist` VALUES ('3', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/3.jpg', '古风古韵的味道', '2');
INSERT INTO `sendlist` VALUES ('4', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/4.jpg', '古风古韵的味道', '7');
INSERT INTO `sendlist` VALUES ('5', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/5.jpg', '古风古韵的味道', '8');
INSERT INTO `sendlist` VALUES ('6', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/1.jpg', '古风古韵的味道', '9');
INSERT INTO `sendlist` VALUES ('7', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/2.jpg', '古风古韵的味道', '10');
INSERT INTO `sendlist` VALUES ('8', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/3.jpg', '古风古韵的味道', '4');
INSERT INTO `sendlist` VALUES ('9', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/4.jpg', '古风古韵的味道', '5');
INSERT INTO `sendlist` VALUES ('10', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/5.jpg', '古风古韵的味道', '6');
INSERT INTO `sendlist` VALUES ('11', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/1.jpg', '古风古韵的味道', '11');
INSERT INTO `sendlist` VALUES ('12', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/2.jpg', '古风古韵的味道', '12');
INSERT INTO `sendlist` VALUES ('13', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/3.jpg', '古风古韵的味道', '14');
INSERT INTO `sendlist` VALUES ('14', '很古风的一些歌曲，真的很好听。。。很古风的一些歌曲，真的很好听。。。很古风的一些歌', 'images/menu/4.jpg', '古风古韵的味道', '13');

-- ----------------------------
-- Table structure for sendsong
-- ----------------------------
DROP TABLE IF EXISTS `sendsong`;
CREATE TABLE `sendsong` (
  `sendlist_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`sendlist_id`,`sid`),
  KEY `FK_ktrl1l3i8pjqp08fged0w5lgo` (`sid`),
  CONSTRAINT `FK_ia3dq8lhk17vmsyvexexygv1u` FOREIGN KEY (`sendlist_id`) REFERENCES `sendlist` (`id`),
  CONSTRAINT `FK_ktrl1l3i8pjqp08fged0w5lgo` FOREIGN KEY (`sid`) REFERENCES `song` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sendsong
-- ----------------------------
INSERT INTO `sendsong` VALUES ('1', '1');
INSERT INTO `sendsong` VALUES ('2', '1');
INSERT INTO `sendsong` VALUES ('3', '1');
INSERT INTO `sendsong` VALUES ('4', '1');
INSERT INTO `sendsong` VALUES ('5', '1');
INSERT INTO `sendsong` VALUES ('6', '1');
INSERT INTO `sendsong` VALUES ('7', '1');
INSERT INTO `sendsong` VALUES ('8', '1');
INSERT INTO `sendsong` VALUES ('9', '1');
INSERT INTO `sendsong` VALUES ('10', '1');
INSERT INTO `sendsong` VALUES ('11', '1');
INSERT INTO `sendsong` VALUES ('12', '1');
INSERT INTO `sendsong` VALUES ('13', '1');
INSERT INTO `sendsong` VALUES ('14', '1');
INSERT INTO `sendsong` VALUES ('1', '2');
INSERT INTO `sendsong` VALUES ('3', '2');
INSERT INTO `sendsong` VALUES ('4', '2');
INSERT INTO `sendsong` VALUES ('5', '2');
INSERT INTO `sendsong` VALUES ('6', '2');
INSERT INTO `sendsong` VALUES ('7', '2');
INSERT INTO `sendsong` VALUES ('8', '2');
INSERT INTO `sendsong` VALUES ('9', '2');
INSERT INTO `sendsong` VALUES ('10', '2');
INSERT INTO `sendsong` VALUES ('11', '2');
INSERT INTO `sendsong` VALUES ('12', '2');
INSERT INTO `sendsong` VALUES ('13', '2');
INSERT INTO `sendsong` VALUES ('14', '2');
INSERT INTO `sendsong` VALUES ('1', '3');
INSERT INTO `sendsong` VALUES ('1', '5');
INSERT INTO `sendsong` VALUES ('2', '6');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album` varchar(255) DEFAULT NULL,
  `singer` varchar(255) DEFAULT NULL,
  `songname` varchar(255) DEFAULT NULL,
  `uptime` date DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `songtypeid` int(11) DEFAULT NULL,
  `uploaduserid` int(11) DEFAULT NULL,
  `lrcid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1ficym57nsrpsexfg6p3njqqq` (`songtypeid`),
  KEY `FK_nyvh2yclfh25mf75lo2outr6o` (`uploaduserid`),
  KEY `FK_ht0v746bo04c4p27yhai0dtwf` (`lrcid`),
  CONSTRAINT `FK_1ficym57nsrpsexfg6p3njqqq` FOREIGN KEY (`songtypeid`) REFERENCES `songtype` (`id`),
  CONSTRAINT `FK_ht0v746bo04c4p27yhai0dtwf` FOREIGN KEY (`lrcid`) REFERENCES `lrc` (`id`),
  CONSTRAINT `FK_nyvh2yclfh25mf75lo2outr6o` FOREIGN KEY (`uploaduserid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', 'D', 'BigBang', 'if you', '2016-06-05', 'music/1/BigBang-if you.mp3', '3', '1', null);
INSERT INTO `song` VALUES ('2', '海洋', '任贤齐', '我是一只鱼', '2016-06-06', 'music/1/任贤齐-我是一只鱼.mp3', '2', '1', '1');
INSERT INTO `song` VALUES ('3', 'M', 'Bigbang', 'monster', '2016-06-06', 'music/1/Bigbang-monster.mp3', '3', '1', '3');
INSERT INTO `song` VALUES ('4', 'E', 'BIGBANG', 'BANG BANG BANG', '2016-06-21', 'music/2/BINGBANG-BANG BANG BANG.mp3', '4', '2', null);
INSERT INTO `song` VALUES ('5', 'BOY', 'GD 太阳', 'GOOD BOY', '2016-06-03', 'music/2/GD 太阳-GOOD BOY.mp3', '2', '2', null);
INSERT INTO `song` VALUES ('6', '琅琊榜主题曲', '刘涛', '红颜旧', '2016-06-18', 'music/2/刘涛-红颜旧.mp3', '1', '2', null);
INSERT INTO `song` VALUES ('7', 'in love', 'beyonce', 'baby boy', '2016-06-04', 'music/3/beyonce-baby boy.mp3', '3', '3', null);
INSERT INTO `song` VALUES ('8', 'A', 'bigbang', 'Let us not fall in love', '2016-06-05', 'music/3/bigbang-Let us not fall in love.mp3', '1', '3', null);
INSERT INTO `song` VALUES ('9', 'D', 'BIGBANG', 'WE LIKE 2 PARTY', '2016-06-25', 'music/3/BIGBANG-WE LIKE 2 PARTY.mp3', '2', '3', null);
INSERT INTO `song` VALUES ('10', '不如吃茶去', '许嵩', '微博控', '2016-07-08', 'music/4/许嵩-微博控.mp3', '4', '4', null);
INSERT INTO `song` VALUES ('11', '不如吃茶去', '许嵩 黄龄', '惊鸿一面', '2016-06-06', 'music/4/许嵩 黄龄-惊鸿一面.mp3', '1', '4', '2');
INSERT INTO `song` VALUES ('12', '天龙八部主题曲', '许嵩', '宿敌', '2016-06-17', 'music/4/许嵩-宿敌.mp3', '1', '4', null);
INSERT INTO `song` VALUES ('13', 'E', 'BigBang', 'sober', '2016-06-17', 'music/4/BigBang-sober.mp3', '3', '4', null);
INSERT INTO `song` VALUES ('14', 'A', 'gd top', 'SEX', '2016-06-17', 'music/4/gd top-SEX.mp3', '3', '4', null);
INSERT INTO `song` VALUES ('15', '红色高跟鞋', '蔡健雅', 'Beautiful Love', '2016-06-17', 'music/10/蔡健雅-Beautiful Love.mp3', '2', '10', null);
INSERT INTO `song` VALUES ('16', '绅士', '薛之谦', '演员', '2016-06-17', 'music/1/薛之谦-演员.mp3', '1', '1', '4');

-- ----------------------------
-- Table structure for songtype
-- ----------------------------
DROP TABLE IF EXISTS `songtype`;
CREATE TABLE `songtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songtype
-- ----------------------------
INSERT INTO `songtype` VALUES ('1', '内地');
INSERT INTO `songtype` VALUES ('2', '台湾');
INSERT INTO `songtype` VALUES ('3', '日韩');
INSERT INTO `songtype` VALUES ('4', '欧美');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `userpicurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1548011224@qq.com', '123456', 'boy', 'sun', 'images/user/userpic/c22e6086015f4b0dbb08a66a0fbc0fd8点击查看源网页(13).jpeg');
INSERT INTO `user` VALUES ('2', '1083910359@qq.com', '123456', 'girl', 'momolela', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('3', '1083910359@qq.com', '123456', 'boy', 'zhao', 'images/user/userpic/8c514929a4714ed2b7bb5249cb9e7f10alien.jpg');
INSERT INTO `user` VALUES ('4', '1083910359@qq.com', '123456', 'boy', 'jiang', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('5', '1083910359@qq.com', '123456', 'girl', '刘静', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('6', '1083910359@qq.com', '123456', 'boy', '刘欢', 'images/user/userpic/8ebfd79326874b3596e9b80a48fb1195CC6B88D1-6A93-405A-A06E-E4195FA9E8F9.JPG');
INSERT INTO `user` VALUES ('7', '1083910359@qq.com', '123456', 'boy', '蔡国庆', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('8', '1083910359@qq.com', '123456', 'boy', '胡凯', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('9', '1083910359@qq.com', '123456', 'boy', '那些回忆', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('10', '1083910359@qq.com', '123456', 'boy', '小白', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('11', '1083910359@qq.com', '123456', 'boy', '小黑', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('12', '1083910359@qq.com', '123456', 'girl', 'hu', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('13', '1083910359@qq.com', '123456', 'girl', '小mo', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('14', '1083910359@qq.com', '123456', 'girl', '小甜甜', 'images/user/boy.jpg');
INSERT INTO `user` VALUES ('15', '1083910359@qq.com', '123456', 'girl', '小白白', 'images/user/boy.jpg');

-- ----------------------------
-- Table structure for userlike
-- ----------------------------
DROP TABLE IF EXISTS `userlike`;
CREATE TABLE `userlike` (
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`sid`),
  KEY `FK_nxl2kkkmf00325fdab7kuuu6r` (`sid`),
  CONSTRAINT `FK_nxl2kkkmf00325fdab7kuuu6r` FOREIGN KEY (`sid`) REFERENCES `song` (`id`),
  CONSTRAINT `FK_rdmtgn9aarf52yjbpswiov4n9` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlike
-- ----------------------------
INSERT INTO `userlike` VALUES ('1', '1');
INSERT INTO `userlike` VALUES ('2', '1');
INSERT INTO `userlike` VALUES ('3', '1');
INSERT INTO `userlike` VALUES ('4', '1');
INSERT INTO `userlike` VALUES ('5', '1');
INSERT INTO `userlike` VALUES ('1', '2');
INSERT INTO `userlike` VALUES ('2', '2');
INSERT INTO `userlike` VALUES ('8', '2');
INSERT INTO `userlike` VALUES ('14', '2');
INSERT INTO `userlike` VALUES ('1', '3');
INSERT INTO `userlike` VALUES ('2', '3');
INSERT INTO `userlike` VALUES ('3', '3');
INSERT INTO `userlike` VALUES ('6', '3');
INSERT INTO `userlike` VALUES ('2', '4');
INSERT INTO `userlike` VALUES ('2', '5');
INSERT INTO `userlike` VALUES ('2', '6');
INSERT INTO `userlike` VALUES ('3', '7');
INSERT INTO `userlike` VALUES ('3', '8');
INSERT INTO `userlike` VALUES ('3', '9');
INSERT INTO `userlike` VALUES ('4', '10');
INSERT INTO `userlike` VALUES ('4', '11');
INSERT INTO `userlike` VALUES ('4', '12');
INSERT INTO `userlike` VALUES ('4', '13');
INSERT INTO `userlike` VALUES ('4', '14');
INSERT INTO `userlike` VALUES ('10', '15');
INSERT INTO `userlike` VALUES ('1', '16');
INSERT INTO `userlike` VALUES ('5', '16');
