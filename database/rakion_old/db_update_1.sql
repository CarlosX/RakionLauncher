/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : fetch

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2013-03-29 00:37:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fetchapp`
-- ----------------------------
DROP TABLE IF EXISTS `fetchapp`;
CREATE TABLE `fetchapp` (
  `AppId` int(11) NOT NULL DEFAULT '0',
  `FileUrl` varchar(50) NOT NULL,
  `NoticeUrl` varchar(50) NOT NULL,
  `VerLimit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AppId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fetchapp
-- ----------------------------

-- ----------------------------
-- Table structure for `fetchfile`
-- ----------------------------
DROP TABLE IF EXISTS `fetchfile`;
CREATE TABLE `fetchfile` (
  `AppId` int(11) NOT NULL DEFAULT '0',
  `Command` enum('M','R') NOT NULL DEFAULT 'M',
  `FileIns` varchar(50) NOT NULL DEFAULT '.\\',
  `FileDir` varchar(50) NOT NULL DEFAULT '',
  `FileVer` int(11) NOT NULL DEFAULT '0',
  `FileSize` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fetchfile
-- ----------------------------

-- ----------------------------
-- Table structure for `logincash`
-- ----------------------------
DROP TABLE IF EXISTS `logincash`;
CREATE TABLE `logincash` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logincash
-- ----------------------------

-- ----------------------------
-- Table structure for `logingold`
-- ----------------------------
DROP TABLE IF EXISTS `logingold`;
CREATE TABLE `logingold` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logingold
-- ----------------------------
