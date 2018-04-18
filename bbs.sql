/*
Navicat MySQL Data Transfer

Source Server         : locahost
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2018-03-25 17:33:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bbs_detail`
-- ----------------------------
DROP TABLE IF EXISTS `bbs_detail`;
CREATE TABLE `bbs_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sortId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `createDate` date NOT NULL,
  `replyCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sortid` (`sortId`),
  CONSTRAINT `sortid` FOREIGN KEY (`sortId`) REFERENCES `bbs_sort` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_detail
-- ----------------------------
INSERT INTO `bbs_detail` VALUES ('1', '1', 'Java循环', '循环', 'Java', '2018-03-14', '1');
INSERT INTO `bbs_detail` VALUES ('2', '2', 'C#循环', '循环', 'C#', '2018-03-25', '1');
INSERT INTO `bbs_detail` VALUES ('3', '3', '数据库', '数据库', '数据库', '2018-03-25', '0');
INSERT INTO `bbs_detail` VALUES ('4', '4', '移动开发', '移动', '移动开发', '2018-03-25', '100');

-- ----------------------------
-- Table structure for `bbs_sort`
-- ----------------------------
DROP TABLE IF EXISTS `bbs_sort`;
CREATE TABLE `bbs_sort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_sort
-- ----------------------------
INSERT INTO `bbs_sort` VALUES ('1', 'Java技术');
INSERT INTO `bbs_sort` VALUES ('2', '.NET技术');
INSERT INTO `bbs_sort` VALUES ('3', '数据库');
INSERT INTO `bbs_sort` VALUES ('4', '移动开发');
