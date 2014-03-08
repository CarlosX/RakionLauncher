/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : rakion

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-02-24 18:46:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `Class` tinyint(3) DEFAULT '0',
  `IP` char(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------

-- ----------------------------
-- Table structure for archerrankp
-- ----------------------------
DROP TABLE IF EXISTS `archerrankp`;
CREATE TABLE `archerrankp` (
  `rank` int(11) NOT NULL DEFAULT '0',
  `username` char(16) NOT NULL DEFAULT '',
  `name` char(12) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `draw` int(11) NOT NULL DEFAULT '0',
  `lastrank` int(11) NOT NULL DEFAULT '0',
  `country` smallint(6) NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of archerrankp
-- ----------------------------

-- ----------------------------
-- Table structure for blacksmithrankp
-- ----------------------------
DROP TABLE IF EXISTS `blacksmithrankp`;
CREATE TABLE `blacksmithrankp` (
  `rank` int(11) NOT NULL DEFAULT '0',
  `username` char(16) NOT NULL DEFAULT '',
  `name` char(12) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `draw` int(11) NOT NULL DEFAULT '0',
  `lastrank` int(11) NOT NULL DEFAULT '0',
  `country` smallint(6) NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blacksmithrankp
-- ----------------------------

-- ----------------------------
-- Table structure for buddylist
-- ----------------------------
DROP TABLE IF EXISTS `buddylist`;
CREATE TABLE `buddylist` (
  `Id` char(16) DEFAULT NULL,
  `Category` char(20) DEFAULT NULL,
  `Buddy` char(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buddylist
-- ----------------------------

-- ----------------------------
-- Table structure for buyinfo
-- ----------------------------
DROP TABLE IF EXISTS `buyinfo`;
CREATE TABLE `buyinfo` (
  `SerialNo` tinytext NOT NULL,
  `MenuNo` int(16) NOT NULL DEFAULT '0',
  `Price` int(16) NOT NULL DEFAULT '0',
  `Asset` text NOT NULL,
  `BuyType` int(16) NOT NULL DEFAULT '0',
  `Time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buyinfo
-- ----------------------------

-- ----------------------------
-- Table structure for cash
-- ----------------------------
DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash` (
  `id` char(16) NOT NULL DEFAULT '',
  `cash` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cash
-- ----------------------------

-- ----------------------------
-- Table structure for characterinfo
-- ----------------------------
DROP TABLE IF EXISTS `characterinfo`;
CREATE TABLE `characterinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(11) NOT NULL DEFAULT '',
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `deletekey` varchar(50) NOT NULL DEFAULT 'sirmaster',
  `auth` tinyint(2) NOT NULL DEFAULT '0',
  `Class` tinyint(3) NOT NULL DEFAULT '0',
  `level` tinyint(3) NOT NULL DEFAULT '1',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `draw` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `levelpoint` tinyint(3) NOT NULL DEFAULT '0',
  `slot` tinyint(1) NOT NULL DEFAULT '0',
  `hit1` tinyint(3) NOT NULL DEFAULT '0',
  `hit2` tinyint(3) NOT NULL DEFAULT '0',
  `hit3` tinyint(3) NOT NULL DEFAULT '0',
  `hit4` tinyint(3) NOT NULL DEFAULT '0',
  `chit` tinyint(3) NOT NULL DEFAULT '0',
  `hp` tinyint(3) NOT NULL DEFAULT '0',
  `ap` tinyint(3) NOT NULL DEFAULT '0',
  `attackspeed` tinyint(3) NOT NULL DEFAULT '0',
  `speed` tinyint(3) NOT NULL DEFAULT '0',
  `maxcp` tinyint(3) NOT NULL DEFAULT '0',
  `rankgrade` tinyint(3) NOT NULL DEFAULT '0',
  `totalrank` int(11) NOT NULL DEFAULT '0',
  `classrank` int(11) NOT NULL DEFAULT '0',
  `potionslot` tinyint(1) NOT NULL DEFAULT '3',
  `changetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of characterinfo
-- ----------------------------

-- ----------------------------
-- Table structure for claninfo
-- ----------------------------
DROP TABLE IF EXISTS `claninfo`;
CREATE TABLE `claninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `masterid` int(11) NOT NULL DEFAULT '0',
  `mastername` char(16) DEFAULT NULL,
  `name` char(12) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `members` smallint(6) DEFAULT NULL,
  `rank` int(11) unsigned DEFAULT '0',
  `createtime` datetime DEFAULT NULL,
  `country` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claninfo
-- ----------------------------

-- ----------------------------
-- Table structure for clanrankp
-- ----------------------------
DROP TABLE IF EXISTS `clanrankp`;
CREATE TABLE `clanrankp` (
  `rank` int(11) NOT NULL DEFAULT '0',
  `clanid` int(11) NOT NULL DEFAULT '0',
  `name` char(12) NOT NULL DEFAULT '',
  `master` char(16) NOT NULL DEFAULT '',
  `members` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `point` int(11) NOT NULL DEFAULT '0',
  `lastrank` int(11) NOT NULL DEFAULT '0',
  `country` smallint(6) NOT NULL DEFAULT '0',
  KEY `name` (`name`),
  KEY `master` (`master`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clanrankp
-- ----------------------------

-- ----------------------------
-- Table structure for clanschedule
-- ----------------------------
DROP TABLE IF EXISTS `clanschedule`;
CREATE TABLE `clanschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` int(11) DEFAULT NULL,
  `defence` int(11) DEFAULT NULL,
  `starttime` time DEFAULT '00:00:00',
  `result` tinyint(2) DEFAULT NULL,
  `cscore` tinyint(3) DEFAULT NULL,
  `dscore` tinyint(3) DEFAULT NULL,
  `endtime` time DEFAULT '00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clanschedule
-- ----------------------------

-- ----------------------------
-- Table structure for classinfo
-- ----------------------------
DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE `classinfo` (
  `Class` tinyint(3) NOT NULL DEFAULT '0',
  `hp` tinyint(3) DEFAULT NULL,
  `ap` tinyint(3) DEFAULT NULL,
  `maxcp` tinyint(3) DEFAULT NULL,
  `speed` tinyint(3) DEFAULT NULL,
  `attackspeed` tinyint(3) DEFAULT NULL,
  `chit` tinyint(3) DEFAULT NULL,
  `hit4` tinyint(3) DEFAULT NULL,
  `hit3` tinyint(3) DEFAULT NULL,
  `hit2` tinyint(3) DEFAULT NULL,
  `hit1` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classinfo
-- ----------------------------
INSERT INTO `classinfo` VALUES ('4', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50');
INSERT INTO `classinfo` VALUES ('2', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50');
INSERT INTO `classinfo` VALUES ('3', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50');
INSERT INTO `classinfo` VALUES ('1', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50');
INSERT INTO `classinfo` VALUES ('0', '50', '50', '50', '50', '50', '50', '50', '50', '50', '50');

-- ----------------------------
-- Table structure for classlevelinfo
-- ----------------------------
DROP TABLE IF EXISTS `classlevelinfo`;
CREATE TABLE `classlevelinfo` (
  `Class` tinyint(3) NOT NULL DEFAULT '0',
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classlevelinfo
-- ----------------------------
INSERT INTO `classlevelinfo` VALUES ('0', '0', '0');
INSERT INTO `classlevelinfo` VALUES ('1', '0', '0');
INSERT INTO `classlevelinfo` VALUES ('2', '0', '0');
INSERT INTO `classlevelinfo` VALUES ('3', '0', '0');
INSERT INTO `classlevelinfo` VALUES ('4', '0', '0');
INSERT INTO `classlevelinfo` VALUES ('0', '1', '70');
INSERT INTO `classlevelinfo` VALUES ('1', '1', '70');
INSERT INTO `classlevelinfo` VALUES ('2', '1', '70');
INSERT INTO `classlevelinfo` VALUES ('3', '1', '70');
INSERT INTO `classlevelinfo` VALUES ('4', '1', '70');
INSERT INTO `classlevelinfo` VALUES ('0', '2', '188');
INSERT INTO `classlevelinfo` VALUES ('1', '2', '188');
INSERT INTO `classlevelinfo` VALUES ('2', '2', '188');
INSERT INTO `classlevelinfo` VALUES ('3', '2', '188');
INSERT INTO `classlevelinfo` VALUES ('4', '2', '188');
INSERT INTO `classlevelinfo` VALUES ('0', '3', '386');
INSERT INTO `classlevelinfo` VALUES ('1', '3', '386');
INSERT INTO `classlevelinfo` VALUES ('2', '3', '386');
INSERT INTO `classlevelinfo` VALUES ('3', '3', '386');
INSERT INTO `classlevelinfo` VALUES ('4', '3', '386');
INSERT INTO `classlevelinfo` VALUES ('0', '4', '658');
INSERT INTO `classlevelinfo` VALUES ('1', '4', '658');
INSERT INTO `classlevelinfo` VALUES ('2', '4', '658');
INSERT INTO `classlevelinfo` VALUES ('3', '4', '658');
INSERT INTO `classlevelinfo` VALUES ('4', '4', '658');
INSERT INTO `classlevelinfo` VALUES ('0', '5', '1008');
INSERT INTO `classlevelinfo` VALUES ('1', '5', '1008');
INSERT INTO `classlevelinfo` VALUES ('2', '5', '1008');
INSERT INTO `classlevelinfo` VALUES ('3', '5', '1008');
INSERT INTO `classlevelinfo` VALUES ('4', '5', '1008');
INSERT INTO `classlevelinfo` VALUES ('0', '6', '1440');
INSERT INTO `classlevelinfo` VALUES ('1', '6', '1440');
INSERT INTO `classlevelinfo` VALUES ('2', '6', '1440');
INSERT INTO `classlevelinfo` VALUES ('3', '6', '1440');
INSERT INTO `classlevelinfo` VALUES ('4', '6', '1440');
INSERT INTO `classlevelinfo` VALUES ('0', '7', '1958');
INSERT INTO `classlevelinfo` VALUES ('1', '7', '1958');
INSERT INTO `classlevelinfo` VALUES ('2', '7', '1958');
INSERT INTO `classlevelinfo` VALUES ('3', '7', '1958');
INSERT INTO `classlevelinfo` VALUES ('4', '7', '1958');
INSERT INTO `classlevelinfo` VALUES ('0', '8', '2566');
INSERT INTO `classlevelinfo` VALUES ('1', '8', '2566');
INSERT INTO `classlevelinfo` VALUES ('2', '8', '2566');
INSERT INTO `classlevelinfo` VALUES ('3', '8', '2566');
INSERT INTO `classlevelinfo` VALUES ('4', '8', '2566');
INSERT INTO `classlevelinfo` VALUES ('0', '9', '3268');
INSERT INTO `classlevelinfo` VALUES ('1', '9', '3268');
INSERT INTO `classlevelinfo` VALUES ('2', '9', '3268');
INSERT INTO `classlevelinfo` VALUES ('3', '9', '3268');
INSERT INTO `classlevelinfo` VALUES ('4', '9', '3268');
INSERT INTO `classlevelinfo` VALUES ('0', '10', '4068');
INSERT INTO `classlevelinfo` VALUES ('1', '10', '4068');
INSERT INTO `classlevelinfo` VALUES ('2', '10', '4068');
INSERT INTO `classlevelinfo` VALUES ('3', '10', '4068');
INSERT INTO `classlevelinfo` VALUES ('4', '10', '4068');
INSERT INTO `classlevelinfo` VALUES ('0', '11', '4970');
INSERT INTO `classlevelinfo` VALUES ('1', '11', '4970');
INSERT INTO `classlevelinfo` VALUES ('2', '11', '4970');
INSERT INTO `classlevelinfo` VALUES ('3', '11', '4970');
INSERT INTO `classlevelinfo` VALUES ('4', '11', '4970');
INSERT INTO `classlevelinfo` VALUES ('0', '12', '5978');
INSERT INTO `classlevelinfo` VALUES ('1', '12', '5978');
INSERT INTO `classlevelinfo` VALUES ('2', '12', '5978');
INSERT INTO `classlevelinfo` VALUES ('3', '12', '5978');
INSERT INTO `classlevelinfo` VALUES ('4', '12', '5978');
INSERT INTO `classlevelinfo` VALUES ('0', '13', '7096');
INSERT INTO `classlevelinfo` VALUES ('1', '13', '7096');
INSERT INTO `classlevelinfo` VALUES ('2', '13', '7096');
INSERT INTO `classlevelinfo` VALUES ('3', '13', '7096');
INSERT INTO `classlevelinfo` VALUES ('4', '13', '7096');
INSERT INTO `classlevelinfo` VALUES ('0', '14', '8328');
INSERT INTO `classlevelinfo` VALUES ('1', '14', '8328');
INSERT INTO `classlevelinfo` VALUES ('2', '14', '8328');
INSERT INTO `classlevelinfo` VALUES ('3', '14', '8328');
INSERT INTO `classlevelinfo` VALUES ('4', '14', '8328');
INSERT INTO `classlevelinfo` VALUES ('0', '15', '9678');
INSERT INTO `classlevelinfo` VALUES ('1', '15', '9678');
INSERT INTO `classlevelinfo` VALUES ('2', '15', '9678');
INSERT INTO `classlevelinfo` VALUES ('3', '15', '9678');
INSERT INTO `classlevelinfo` VALUES ('4', '15', '9678');
INSERT INTO `classlevelinfo` VALUES ('0', '16', '11150');
INSERT INTO `classlevelinfo` VALUES ('1', '16', '11150');
INSERT INTO `classlevelinfo` VALUES ('2', '16', '11150');
INSERT INTO `classlevelinfo` VALUES ('3', '16', '11150');
INSERT INTO `classlevelinfo` VALUES ('4', '16', '11150');
INSERT INTO `classlevelinfo` VALUES ('0', '17', '12748');
INSERT INTO `classlevelinfo` VALUES ('1', '17', '12748');
INSERT INTO `classlevelinfo` VALUES ('2', '17', '12748');
INSERT INTO `classlevelinfo` VALUES ('3', '17', '12748');
INSERT INTO `classlevelinfo` VALUES ('4', '17', '12748');
INSERT INTO `classlevelinfo` VALUES ('0', '18', '14476');
INSERT INTO `classlevelinfo` VALUES ('1', '18', '14476');
INSERT INTO `classlevelinfo` VALUES ('2', '18', '14476');
INSERT INTO `classlevelinfo` VALUES ('3', '18', '14476');
INSERT INTO `classlevelinfo` VALUES ('4', '18', '14476');
INSERT INTO `classlevelinfo` VALUES ('0', '19', '16338');
INSERT INTO `classlevelinfo` VALUES ('1', '19', '16338');
INSERT INTO `classlevelinfo` VALUES ('2', '19', '16338');
INSERT INTO `classlevelinfo` VALUES ('3', '19', '16338');
INSERT INTO `classlevelinfo` VALUES ('4', '19', '16338');
INSERT INTO `classlevelinfo` VALUES ('0', '20', '18338');
INSERT INTO `classlevelinfo` VALUES ('1', '20', '18338');
INSERT INTO `classlevelinfo` VALUES ('2', '20', '18338');
INSERT INTO `classlevelinfo` VALUES ('3', '20', '18338');
INSERT INTO `classlevelinfo` VALUES ('4', '20', '18338');
INSERT INTO `classlevelinfo` VALUES ('0', '21', '20480');
INSERT INTO `classlevelinfo` VALUES ('1', '21', '20480');
INSERT INTO `classlevelinfo` VALUES ('2', '21', '20480');
INSERT INTO `classlevelinfo` VALUES ('3', '21', '20480');
INSERT INTO `classlevelinfo` VALUES ('4', '21', '20480');
INSERT INTO `classlevelinfo` VALUES ('0', '22', '22768');
INSERT INTO `classlevelinfo` VALUES ('1', '22', '22768');
INSERT INTO `classlevelinfo` VALUES ('2', '22', '22768');
INSERT INTO `classlevelinfo` VALUES ('3', '22', '22768');
INSERT INTO `classlevelinfo` VALUES ('4', '22', '22768');
INSERT INTO `classlevelinfo` VALUES ('0', '23', '25206');
INSERT INTO `classlevelinfo` VALUES ('1', '23', '25206');
INSERT INTO `classlevelinfo` VALUES ('2', '23', '25206');
INSERT INTO `classlevelinfo` VALUES ('3', '23', '25206');
INSERT INTO `classlevelinfo` VALUES ('4', '23', '25206');
INSERT INTO `classlevelinfo` VALUES ('0', '24', '27798');
INSERT INTO `classlevelinfo` VALUES ('1', '24', '27798');
INSERT INTO `classlevelinfo` VALUES ('2', '24', '27798');
INSERT INTO `classlevelinfo` VALUES ('3', '24', '27798');
INSERT INTO `classlevelinfo` VALUES ('4', '24', '27798');
INSERT INTO `classlevelinfo` VALUES ('0', '25', '30548');
INSERT INTO `classlevelinfo` VALUES ('1', '25', '30548');
INSERT INTO `classlevelinfo` VALUES ('2', '25', '30548');
INSERT INTO `classlevelinfo` VALUES ('3', '25', '30548');
INSERT INTO `classlevelinfo` VALUES ('4', '25', '30548');
INSERT INTO `classlevelinfo` VALUES ('0', '26', '33460');
INSERT INTO `classlevelinfo` VALUES ('1', '26', '33460');
INSERT INTO `classlevelinfo` VALUES ('2', '26', '33460');
INSERT INTO `classlevelinfo` VALUES ('3', '26', '33460');
INSERT INTO `classlevelinfo` VALUES ('4', '26', '33460');
INSERT INTO `classlevelinfo` VALUES ('0', '27', '36538');
INSERT INTO `classlevelinfo` VALUES ('1', '27', '36538');
INSERT INTO `classlevelinfo` VALUES ('2', '27', '36538');
INSERT INTO `classlevelinfo` VALUES ('3', '27', '36538');
INSERT INTO `classlevelinfo` VALUES ('4', '27', '36538');
INSERT INTO `classlevelinfo` VALUES ('0', '28', '39786');
INSERT INTO `classlevelinfo` VALUES ('1', '28', '39786');
INSERT INTO `classlevelinfo` VALUES ('2', '28', '39786');
INSERT INTO `classlevelinfo` VALUES ('3', '28', '39786');
INSERT INTO `classlevelinfo` VALUES ('4', '28', '39786');
INSERT INTO `classlevelinfo` VALUES ('0', '29', '43208');
INSERT INTO `classlevelinfo` VALUES ('1', '29', '43208');
INSERT INTO `classlevelinfo` VALUES ('2', '29', '43208');
INSERT INTO `classlevelinfo` VALUES ('3', '29', '43208');
INSERT INTO `classlevelinfo` VALUES ('4', '29', '43208');
INSERT INTO `classlevelinfo` VALUES ('0', '30', '46808');
INSERT INTO `classlevelinfo` VALUES ('1', '30', '46808');
INSERT INTO `classlevelinfo` VALUES ('2', '30', '46808');
INSERT INTO `classlevelinfo` VALUES ('3', '30', '46808');
INSERT INTO `classlevelinfo` VALUES ('4', '30', '46808');
INSERT INTO `classlevelinfo` VALUES ('0', '31', '50590');
INSERT INTO `classlevelinfo` VALUES ('1', '31', '50590');
INSERT INTO `classlevelinfo` VALUES ('2', '31', '50590');
INSERT INTO `classlevelinfo` VALUES ('3', '31', '50590');
INSERT INTO `classlevelinfo` VALUES ('4', '31', '50590');
INSERT INTO `classlevelinfo` VALUES ('0', '32', '54558');
INSERT INTO `classlevelinfo` VALUES ('1', '32', '54558');
INSERT INTO `classlevelinfo` VALUES ('2', '32', '54558');
INSERT INTO `classlevelinfo` VALUES ('3', '32', '54558');
INSERT INTO `classlevelinfo` VALUES ('4', '32', '54558');
INSERT INTO `classlevelinfo` VALUES ('0', '33', '58716');
INSERT INTO `classlevelinfo` VALUES ('1', '33', '58716');
INSERT INTO `classlevelinfo` VALUES ('2', '33', '58716');
INSERT INTO `classlevelinfo` VALUES ('3', '33', '58716');
INSERT INTO `classlevelinfo` VALUES ('4', '33', '58716');
INSERT INTO `classlevelinfo` VALUES ('0', '34', '63068');
INSERT INTO `classlevelinfo` VALUES ('1', '34', '63068');
INSERT INTO `classlevelinfo` VALUES ('2', '34', '63068');
INSERT INTO `classlevelinfo` VALUES ('3', '34', '63068');
INSERT INTO `classlevelinfo` VALUES ('4', '34', '63068');
INSERT INTO `classlevelinfo` VALUES ('0', '35', '67618');
INSERT INTO `classlevelinfo` VALUES ('1', '35', '67618');
INSERT INTO `classlevelinfo` VALUES ('2', '35', '67618');
INSERT INTO `classlevelinfo` VALUES ('3', '35', '67618');
INSERT INTO `classlevelinfo` VALUES ('4', '35', '67618');
INSERT INTO `classlevelinfo` VALUES ('0', '36', '72370');
INSERT INTO `classlevelinfo` VALUES ('1', '36', '72370');
INSERT INTO `classlevelinfo` VALUES ('2', '36', '72370');
INSERT INTO `classlevelinfo` VALUES ('3', '36', '72370');
INSERT INTO `classlevelinfo` VALUES ('4', '36', '72370');
INSERT INTO `classlevelinfo` VALUES ('0', '37', '77328');
INSERT INTO `classlevelinfo` VALUES ('1', '37', '77328');
INSERT INTO `classlevelinfo` VALUES ('2', '37', '77328');
INSERT INTO `classlevelinfo` VALUES ('3', '37', '77328');
INSERT INTO `classlevelinfo` VALUES ('4', '37', '77328');
INSERT INTO `classlevelinfo` VALUES ('0', '38', '82496');
INSERT INTO `classlevelinfo` VALUES ('1', '38', '82496');
INSERT INTO `classlevelinfo` VALUES ('2', '38', '82496');
INSERT INTO `classlevelinfo` VALUES ('3', '38', '82496');
INSERT INTO `classlevelinfo` VALUES ('4', '38', '82496');
INSERT INTO `classlevelinfo` VALUES ('0', '39', '87878');
INSERT INTO `classlevelinfo` VALUES ('1', '39', '87878');
INSERT INTO `classlevelinfo` VALUES ('2', '39', '87878');
INSERT INTO `classlevelinfo` VALUES ('3', '39', '87878');
INSERT INTO `classlevelinfo` VALUES ('4', '39', '87878');
INSERT INTO `classlevelinfo` VALUES ('0', '40', '93478');
INSERT INTO `classlevelinfo` VALUES ('1', '40', '93478');
INSERT INTO `classlevelinfo` VALUES ('2', '40', '93478');
INSERT INTO `classlevelinfo` VALUES ('3', '40', '93478');
INSERT INTO `classlevelinfo` VALUES ('4', '40', '93478');
INSERT INTO `classlevelinfo` VALUES ('0', '41', '99300');
INSERT INTO `classlevelinfo` VALUES ('1', '41', '99300');
INSERT INTO `classlevelinfo` VALUES ('2', '41', '99300');
INSERT INTO `classlevelinfo` VALUES ('3', '41', '99300');
INSERT INTO `classlevelinfo` VALUES ('4', '41', '99300');
INSERT INTO `classlevelinfo` VALUES ('0', '42', '105348');
INSERT INTO `classlevelinfo` VALUES ('1', '42', '105348');
INSERT INTO `classlevelinfo` VALUES ('2', '42', '105348');
INSERT INTO `classlevelinfo` VALUES ('3', '42', '105348');
INSERT INTO `classlevelinfo` VALUES ('4', '42', '105348');
INSERT INTO `classlevelinfo` VALUES ('0', '43', '111626');
INSERT INTO `classlevelinfo` VALUES ('1', '43', '111626');
INSERT INTO `classlevelinfo` VALUES ('2', '43', '111626');
INSERT INTO `classlevelinfo` VALUES ('3', '43', '111626');
INSERT INTO `classlevelinfo` VALUES ('4', '43', '111626');
INSERT INTO `classlevelinfo` VALUES ('0', '44', '118138');
INSERT INTO `classlevelinfo` VALUES ('1', '44', '118138');
INSERT INTO `classlevelinfo` VALUES ('2', '44', '118138');
INSERT INTO `classlevelinfo` VALUES ('3', '44', '118138');
INSERT INTO `classlevelinfo` VALUES ('4', '44', '118138');
INSERT INTO `classlevelinfo` VALUES ('0', '45', '124888');
INSERT INTO `classlevelinfo` VALUES ('1', '45', '124888');
INSERT INTO `classlevelinfo` VALUES ('2', '45', '124888');
INSERT INTO `classlevelinfo` VALUES ('3', '45', '124888');
INSERT INTO `classlevelinfo` VALUES ('4', '45', '124888');
INSERT INTO `classlevelinfo` VALUES ('0', '46', '131880');
INSERT INTO `classlevelinfo` VALUES ('1', '46', '131880');
INSERT INTO `classlevelinfo` VALUES ('2', '46', '131880');
INSERT INTO `classlevelinfo` VALUES ('3', '46', '131880');
INSERT INTO `classlevelinfo` VALUES ('4', '46', '131880');
INSERT INTO `classlevelinfo` VALUES ('0', '47', '139118');
INSERT INTO `classlevelinfo` VALUES ('1', '47', '139118');
INSERT INTO `classlevelinfo` VALUES ('2', '47', '139118');
INSERT INTO `classlevelinfo` VALUES ('3', '47', '139118');
INSERT INTO `classlevelinfo` VALUES ('4', '47', '139118');
INSERT INTO `classlevelinfo` VALUES ('0', '48', '146606');
INSERT INTO `classlevelinfo` VALUES ('1', '48', '146606');
INSERT INTO `classlevelinfo` VALUES ('2', '48', '146606');
INSERT INTO `classlevelinfo` VALUES ('3', '48', '146606');
INSERT INTO `classlevelinfo` VALUES ('4', '48', '146606');
INSERT INTO `classlevelinfo` VALUES ('0', '49', '154348');
INSERT INTO `classlevelinfo` VALUES ('1', '49', '154348');
INSERT INTO `classlevelinfo` VALUES ('2', '49', '154348');
INSERT INTO `classlevelinfo` VALUES ('3', '49', '154348');
INSERT INTO `classlevelinfo` VALUES ('4', '49', '154348');
INSERT INTO `classlevelinfo` VALUES ('0', '50', '162348');
INSERT INTO `classlevelinfo` VALUES ('1', '50', '162348');
INSERT INTO `classlevelinfo` VALUES ('2', '50', '162348');
INSERT INTO `classlevelinfo` VALUES ('3', '50', '162348');
INSERT INTO `classlevelinfo` VALUES ('4', '50', '162348');
INSERT INTO `classlevelinfo` VALUES ('0', '51', '170610');
INSERT INTO `classlevelinfo` VALUES ('1', '51', '170610');
INSERT INTO `classlevelinfo` VALUES ('2', '51', '170610');
INSERT INTO `classlevelinfo` VALUES ('3', '51', '170610');
INSERT INTO `classlevelinfo` VALUES ('4', '51', '170610');
INSERT INTO `classlevelinfo` VALUES ('0', '52', '179138');
INSERT INTO `classlevelinfo` VALUES ('1', '52', '179138');
INSERT INTO `classlevelinfo` VALUES ('2', '52', '179138');
INSERT INTO `classlevelinfo` VALUES ('3', '52', '179138');
INSERT INTO `classlevelinfo` VALUES ('4', '52', '179138');
INSERT INTO `classlevelinfo` VALUES ('0', '53', '187936');
INSERT INTO `classlevelinfo` VALUES ('1', '53', '187936');
INSERT INTO `classlevelinfo` VALUES ('2', '53', '187936');
INSERT INTO `classlevelinfo` VALUES ('3', '53', '187936');
INSERT INTO `classlevelinfo` VALUES ('4', '53', '187936');
INSERT INTO `classlevelinfo` VALUES ('0', '54', '197008');
INSERT INTO `classlevelinfo` VALUES ('1', '54', '197008');
INSERT INTO `classlevelinfo` VALUES ('2', '54', '197008');
INSERT INTO `classlevelinfo` VALUES ('3', '54', '197008');
INSERT INTO `classlevelinfo` VALUES ('4', '54', '197008');
INSERT INTO `classlevelinfo` VALUES ('0', '55', '206358');
INSERT INTO `classlevelinfo` VALUES ('1', '55', '206358');
INSERT INTO `classlevelinfo` VALUES ('2', '55', '206358');
INSERT INTO `classlevelinfo` VALUES ('3', '55', '206358');
INSERT INTO `classlevelinfo` VALUES ('4', '55', '206358');
INSERT INTO `classlevelinfo` VALUES ('0', '56', '215990');
INSERT INTO `classlevelinfo` VALUES ('1', '56', '215990');
INSERT INTO `classlevelinfo` VALUES ('2', '56', '215990');
INSERT INTO `classlevelinfo` VALUES ('3', '56', '215990');
INSERT INTO `classlevelinfo` VALUES ('4', '56', '215990');
INSERT INTO `classlevelinfo` VALUES ('0', '57', '225908');
INSERT INTO `classlevelinfo` VALUES ('1', '57', '225908');
INSERT INTO `classlevelinfo` VALUES ('2', '57', '225908');
INSERT INTO `classlevelinfo` VALUES ('3', '57', '225908');
INSERT INTO `classlevelinfo` VALUES ('4', '57', '225908');
INSERT INTO `classlevelinfo` VALUES ('0', '58', '236116');
INSERT INTO `classlevelinfo` VALUES ('1', '58', '236116');
INSERT INTO `classlevelinfo` VALUES ('2', '58', '236116');
INSERT INTO `classlevelinfo` VALUES ('3', '58', '236116');
INSERT INTO `classlevelinfo` VALUES ('4', '58', '236116');
INSERT INTO `classlevelinfo` VALUES ('0', '59', '246618');
INSERT INTO `classlevelinfo` VALUES ('1', '59', '246618');
INSERT INTO `classlevelinfo` VALUES ('2', '59', '246618');
INSERT INTO `classlevelinfo` VALUES ('3', '59', '246618');
INSERT INTO `classlevelinfo` VALUES ('4', '59', '246618');
INSERT INTO `classlevelinfo` VALUES ('0', '60', '257418');
INSERT INTO `classlevelinfo` VALUES ('1', '60', '257418');
INSERT INTO `classlevelinfo` VALUES ('2', '60', '257418');
INSERT INTO `classlevelinfo` VALUES ('3', '60', '257418');
INSERT INTO `classlevelinfo` VALUES ('4', '60', '257418');
INSERT INTO `classlevelinfo` VALUES ('0', '61', '268520');
INSERT INTO `classlevelinfo` VALUES ('1', '61', '268520');
INSERT INTO `classlevelinfo` VALUES ('2', '61', '268520');
INSERT INTO `classlevelinfo` VALUES ('3', '61', '268520');
INSERT INTO `classlevelinfo` VALUES ('4', '61', '268520');
INSERT INTO `classlevelinfo` VALUES ('0', '62', '279928');
INSERT INTO `classlevelinfo` VALUES ('1', '62', '279928');
INSERT INTO `classlevelinfo` VALUES ('2', '62', '279928');
INSERT INTO `classlevelinfo` VALUES ('3', '62', '279928');
INSERT INTO `classlevelinfo` VALUES ('4', '62', '279928');
INSERT INTO `classlevelinfo` VALUES ('0', '63', '291646');
INSERT INTO `classlevelinfo` VALUES ('1', '63', '291646');
INSERT INTO `classlevelinfo` VALUES ('2', '63', '291646');
INSERT INTO `classlevelinfo` VALUES ('3', '63', '291646');
INSERT INTO `classlevelinfo` VALUES ('4', '63', '291646');
INSERT INTO `classlevelinfo` VALUES ('0', '64', '303678');
INSERT INTO `classlevelinfo` VALUES ('1', '64', '303678');
INSERT INTO `classlevelinfo` VALUES ('2', '64', '303678');
INSERT INTO `classlevelinfo` VALUES ('3', '64', '303678');
INSERT INTO `classlevelinfo` VALUES ('4', '64', '303678');
INSERT INTO `classlevelinfo` VALUES ('0', '65', '316028');
INSERT INTO `classlevelinfo` VALUES ('1', '65', '316028');
INSERT INTO `classlevelinfo` VALUES ('2', '65', '316028');
INSERT INTO `classlevelinfo` VALUES ('3', '65', '316028');
INSERT INTO `classlevelinfo` VALUES ('4', '65', '316028');
INSERT INTO `classlevelinfo` VALUES ('0', '66', '328700');
INSERT INTO `classlevelinfo` VALUES ('1', '66', '328700');
INSERT INTO `classlevelinfo` VALUES ('2', '66', '328700');
INSERT INTO `classlevelinfo` VALUES ('3', '66', '328700');
INSERT INTO `classlevelinfo` VALUES ('4', '66', '328700');
INSERT INTO `classlevelinfo` VALUES ('0', '67', '341698');
INSERT INTO `classlevelinfo` VALUES ('1', '67', '341698');
INSERT INTO `classlevelinfo` VALUES ('2', '67', '341698');
INSERT INTO `classlevelinfo` VALUES ('3', '67', '341698');
INSERT INTO `classlevelinfo` VALUES ('4', '67', '341698');
INSERT INTO `classlevelinfo` VALUES ('0', '68', '355026');
INSERT INTO `classlevelinfo` VALUES ('1', '68', '355026');
INSERT INTO `classlevelinfo` VALUES ('2', '68', '355026');
INSERT INTO `classlevelinfo` VALUES ('3', '68', '355026');
INSERT INTO `classlevelinfo` VALUES ('4', '68', '355026');
INSERT INTO `classlevelinfo` VALUES ('0', '69', '368688');
INSERT INTO `classlevelinfo` VALUES ('1', '69', '368688');
INSERT INTO `classlevelinfo` VALUES ('2', '69', '368688');
INSERT INTO `classlevelinfo` VALUES ('3', '69', '368688');
INSERT INTO `classlevelinfo` VALUES ('4', '69', '368688');
INSERT INTO `classlevelinfo` VALUES ('0', '70', '382688');
INSERT INTO `classlevelinfo` VALUES ('1', '70', '382688');
INSERT INTO `classlevelinfo` VALUES ('2', '70', '382688');
INSERT INTO `classlevelinfo` VALUES ('3', '70', '382688');
INSERT INTO `classlevelinfo` VALUES ('4', '70', '382688');
INSERT INTO `classlevelinfo` VALUES ('0', '71', '397030');
INSERT INTO `classlevelinfo` VALUES ('1', '71', '397030');
INSERT INTO `classlevelinfo` VALUES ('2', '71', '397030');
INSERT INTO `classlevelinfo` VALUES ('3', '71', '397030');
INSERT INTO `classlevelinfo` VALUES ('4', '71', '397030');
INSERT INTO `classlevelinfo` VALUES ('0', '72', '411718');
INSERT INTO `classlevelinfo` VALUES ('1', '72', '411718');
INSERT INTO `classlevelinfo` VALUES ('2', '72', '411718');
INSERT INTO `classlevelinfo` VALUES ('3', '72', '411718');
INSERT INTO `classlevelinfo` VALUES ('4', '72', '411718');
INSERT INTO `classlevelinfo` VALUES ('0', '73', '426756');
INSERT INTO `classlevelinfo` VALUES ('1', '73', '426756');
INSERT INTO `classlevelinfo` VALUES ('2', '73', '426756');
INSERT INTO `classlevelinfo` VALUES ('3', '73', '426756');
INSERT INTO `classlevelinfo` VALUES ('4', '73', '426756');
INSERT INTO `classlevelinfo` VALUES ('0', '74', '442148');
INSERT INTO `classlevelinfo` VALUES ('1', '74', '442148');
INSERT INTO `classlevelinfo` VALUES ('2', '74', '442148');
INSERT INTO `classlevelinfo` VALUES ('3', '74', '442148');
INSERT INTO `classlevelinfo` VALUES ('4', '74', '442148');
INSERT INTO `classlevelinfo` VALUES ('0', '75', '457898');
INSERT INTO `classlevelinfo` VALUES ('1', '75', '457898');
INSERT INTO `classlevelinfo` VALUES ('2', '75', '457898');
INSERT INTO `classlevelinfo` VALUES ('3', '75', '457898');
INSERT INTO `classlevelinfo` VALUES ('4', '75', '457898');
INSERT INTO `classlevelinfo` VALUES ('0', '76', '474010');
INSERT INTO `classlevelinfo` VALUES ('1', '76', '474010');
INSERT INTO `classlevelinfo` VALUES ('2', '76', '474010');
INSERT INTO `classlevelinfo` VALUES ('3', '76', '474010');
INSERT INTO `classlevelinfo` VALUES ('4', '76', '474010');
INSERT INTO `classlevelinfo` VALUES ('0', '77', '490488');
INSERT INTO `classlevelinfo` VALUES ('1', '77', '490488');
INSERT INTO `classlevelinfo` VALUES ('2', '77', '490488');
INSERT INTO `classlevelinfo` VALUES ('3', '77', '490488');
INSERT INTO `classlevelinfo` VALUES ('4', '77', '490488');
INSERT INTO `classlevelinfo` VALUES ('0', '78', '507336');
INSERT INTO `classlevelinfo` VALUES ('1', '78', '507336');
INSERT INTO `classlevelinfo` VALUES ('2', '78', '507336');
INSERT INTO `classlevelinfo` VALUES ('3', '78', '507336');
INSERT INTO `classlevelinfo` VALUES ('4', '78', '507336');
INSERT INTO `classlevelinfo` VALUES ('0', '79', '524558');
INSERT INTO `classlevelinfo` VALUES ('1', '79', '524558');
INSERT INTO `classlevelinfo` VALUES ('2', '79', '524558');
INSERT INTO `classlevelinfo` VALUES ('3', '79', '524558');
INSERT INTO `classlevelinfo` VALUES ('4', '79', '524558');
INSERT INTO `classlevelinfo` VALUES ('0', '80', '542158');
INSERT INTO `classlevelinfo` VALUES ('1', '80', '542158');
INSERT INTO `classlevelinfo` VALUES ('2', '80', '542158');
INSERT INTO `classlevelinfo` VALUES ('3', '80', '542158');
INSERT INTO `classlevelinfo` VALUES ('4', '80', '542158');
INSERT INTO `classlevelinfo` VALUES ('0', '81', '560140');
INSERT INTO `classlevelinfo` VALUES ('1', '81', '560140');
INSERT INTO `classlevelinfo` VALUES ('2', '81', '560140');
INSERT INTO `classlevelinfo` VALUES ('3', '81', '560140');
INSERT INTO `classlevelinfo` VALUES ('4', '81', '560140');
INSERT INTO `classlevelinfo` VALUES ('0', '82', '578508');
INSERT INTO `classlevelinfo` VALUES ('1', '82', '578508');
INSERT INTO `classlevelinfo` VALUES ('2', '82', '578508');
INSERT INTO `classlevelinfo` VALUES ('3', '82', '578508');
INSERT INTO `classlevelinfo` VALUES ('4', '82', '578508');
INSERT INTO `classlevelinfo` VALUES ('0', '83', '597266');
INSERT INTO `classlevelinfo` VALUES ('1', '83', '597266');
INSERT INTO `classlevelinfo` VALUES ('2', '83', '597266');
INSERT INTO `classlevelinfo` VALUES ('3', '83', '597266');
INSERT INTO `classlevelinfo` VALUES ('4', '83', '597266');
INSERT INTO `classlevelinfo` VALUES ('0', '84', '616418');
INSERT INTO `classlevelinfo` VALUES ('1', '84', '616418');
INSERT INTO `classlevelinfo` VALUES ('2', '84', '616418');
INSERT INTO `classlevelinfo` VALUES ('3', '84', '616418');
INSERT INTO `classlevelinfo` VALUES ('4', '84', '616418');
INSERT INTO `classlevelinfo` VALUES ('0', '85', '635968');
INSERT INTO `classlevelinfo` VALUES ('1', '85', '635968');
INSERT INTO `classlevelinfo` VALUES ('2', '85', '635968');
INSERT INTO `classlevelinfo` VALUES ('3', '85', '635968');
INSERT INTO `classlevelinfo` VALUES ('4', '85', '635968');
INSERT INTO `classlevelinfo` VALUES ('0', '86', '655920');
INSERT INTO `classlevelinfo` VALUES ('1', '86', '655920');
INSERT INTO `classlevelinfo` VALUES ('2', '86', '655920');
INSERT INTO `classlevelinfo` VALUES ('3', '86', '655920');
INSERT INTO `classlevelinfo` VALUES ('4', '86', '655920');
INSERT INTO `classlevelinfo` VALUES ('0', '87', '676278');
INSERT INTO `classlevelinfo` VALUES ('1', '87', '676278');
INSERT INTO `classlevelinfo` VALUES ('2', '87', '676278');
INSERT INTO `classlevelinfo` VALUES ('3', '87', '676278');
INSERT INTO `classlevelinfo` VALUES ('4', '87', '676278');
INSERT INTO `classlevelinfo` VALUES ('0', '88', '697046');
INSERT INTO `classlevelinfo` VALUES ('1', '88', '697046');
INSERT INTO `classlevelinfo` VALUES ('2', '88', '697046');
INSERT INTO `classlevelinfo` VALUES ('3', '88', '697046');
INSERT INTO `classlevelinfo` VALUES ('4', '88', '697046');
INSERT INTO `classlevelinfo` VALUES ('0', '89', '718228');
INSERT INTO `classlevelinfo` VALUES ('1', '89', '718228');
INSERT INTO `classlevelinfo` VALUES ('2', '89', '718228');
INSERT INTO `classlevelinfo` VALUES ('3', '89', '718228');
INSERT INTO `classlevelinfo` VALUES ('4', '89', '718228');
INSERT INTO `classlevelinfo` VALUES ('0', '90', '739828');
INSERT INTO `classlevelinfo` VALUES ('1', '90', '739828');
INSERT INTO `classlevelinfo` VALUES ('2', '90', '739828');
INSERT INTO `classlevelinfo` VALUES ('3', '90', '739828');
INSERT INTO `classlevelinfo` VALUES ('4', '90', '739828');
INSERT INTO `classlevelinfo` VALUES ('0', '91', '761850');
INSERT INTO `classlevelinfo` VALUES ('1', '91', '761850');
INSERT INTO `classlevelinfo` VALUES ('2', '91', '761850');
INSERT INTO `classlevelinfo` VALUES ('3', '91', '761850');
INSERT INTO `classlevelinfo` VALUES ('4', '91', '761850');
INSERT INTO `classlevelinfo` VALUES ('0', '92', '784298');
INSERT INTO `classlevelinfo` VALUES ('1', '92', '784298');
INSERT INTO `classlevelinfo` VALUES ('2', '92', '784298');
INSERT INTO `classlevelinfo` VALUES ('3', '92', '784298');
INSERT INTO `classlevelinfo` VALUES ('4', '92', '784298');
INSERT INTO `classlevelinfo` VALUES ('0', '93', '807176');
INSERT INTO `classlevelinfo` VALUES ('1', '93', '807176');
INSERT INTO `classlevelinfo` VALUES ('2', '93', '807176');
INSERT INTO `classlevelinfo` VALUES ('3', '93', '807176');
INSERT INTO `classlevelinfo` VALUES ('4', '93', '807176');
INSERT INTO `classlevelinfo` VALUES ('0', '94', '830488');
INSERT INTO `classlevelinfo` VALUES ('1', '94', '830488');
INSERT INTO `classlevelinfo` VALUES ('2', '94', '830488');
INSERT INTO `classlevelinfo` VALUES ('3', '94', '830488');
INSERT INTO `classlevelinfo` VALUES ('4', '94', '830488');
INSERT INTO `classlevelinfo` VALUES ('0', '95', '854238');
INSERT INTO `classlevelinfo` VALUES ('1', '95', '854238');
INSERT INTO `classlevelinfo` VALUES ('2', '95', '854238');
INSERT INTO `classlevelinfo` VALUES ('3', '95', '854238');
INSERT INTO `classlevelinfo` VALUES ('4', '95', '854238');
INSERT INTO `classlevelinfo` VALUES ('0', '96', '878430');
INSERT INTO `classlevelinfo` VALUES ('1', '96', '878430');
INSERT INTO `classlevelinfo` VALUES ('2', '96', '878430');
INSERT INTO `classlevelinfo` VALUES ('3', '96', '878430');
INSERT INTO `classlevelinfo` VALUES ('4', '96', '878430');
INSERT INTO `classlevelinfo` VALUES ('0', '97', '903068');
INSERT INTO `classlevelinfo` VALUES ('1', '97', '903068');
INSERT INTO `classlevelinfo` VALUES ('2', '97', '903068');
INSERT INTO `classlevelinfo` VALUES ('3', '97', '903068');
INSERT INTO `classlevelinfo` VALUES ('4', '97', '903068');
INSERT INTO `classlevelinfo` VALUES ('0', '98', '928156');
INSERT INTO `classlevelinfo` VALUES ('1', '98', '928156');
INSERT INTO `classlevelinfo` VALUES ('2', '98', '928156');
INSERT INTO `classlevelinfo` VALUES ('3', '98', '928156');
INSERT INTO `classlevelinfo` VALUES ('4', '98', '928156');

-- ----------------------------
-- Table structure for country_reference
-- ----------------------------
DROP TABLE IF EXISTS `country_reference`;
CREATE TABLE `country_reference` (
  `Country_Count` int(11) NOT NULL AUTO_INCREMENT,
  `Country_Number` int(11) NOT NULL DEFAULT '0',
  `Country_Name` char(200) NOT NULL DEFAULT '',
  `region` char(20) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  PRIMARY KEY (`Country_Count`),
  KEY `Country_Name` (`Country_Name`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country_reference
-- ----------------------------
INSERT INTO `country_reference` VALUES ('1', '1', 'Afghanistan', 'International', 'AF');
INSERT INTO `country_reference` VALUES ('2', '2', 'Albania', 'International', 'AL');
INSERT INTO `country_reference` VALUES ('3', '3', 'Algeria', 'International', 'DZ');
INSERT INTO `country_reference` VALUES ('4', '4', 'Andorra', 'International', 'AD');
INSERT INTO `country_reference` VALUES ('5', '5', 'Angola', 'International', 'AO');
INSERT INTO `country_reference` VALUES ('6', '6', 'Anguilla', 'International', 'AI');
INSERT INTO `country_reference` VALUES ('7', '7', 'Antarctica', 'International', 'AQ');
INSERT INTO `country_reference` VALUES ('8', '8', 'Antigua and Barbuda', 'latino', 'AG');
INSERT INTO `country_reference` VALUES ('9', '9', 'Argentina', 'latino', 'AR');
INSERT INTO `country_reference` VALUES ('10', '10', 'Armenia', 'International', 'AM');
INSERT INTO `country_reference` VALUES ('11', '11', 'Aruba', 'latino', 'AW');
INSERT INTO `country_reference` VALUES ('12', '12', 'Australia', 'International', 'AU');
INSERT INTO `country_reference` VALUES ('13', '13', 'Austria', 'International', 'AT');
INSERT INTO `country_reference` VALUES ('14', '14', 'Azerbaijan', 'International', 'AZ');
INSERT INTO `country_reference` VALUES ('15', '15', 'Bahamas', 'latino', 'BS');
INSERT INTO `country_reference` VALUES ('16', '16', 'Bahrain', 'International', 'BH');
INSERT INTO `country_reference` VALUES ('17', '17', 'Bangladesh', 'International', 'BD');
INSERT INTO `country_reference` VALUES ('18', '18', 'Barbados', 'latino', 'BB');
INSERT INTO `country_reference` VALUES ('19', '19', 'Belgium', 'International', 'BE');
INSERT INTO `country_reference` VALUES ('20', '20', 'Belize', 'latino', 'BZ');
INSERT INTO `country_reference` VALUES ('21', '21', 'Belarus', 'International', 'BY');
INSERT INTO `country_reference` VALUES ('22', '22', 'Benin', 'International', 'BJ');
INSERT INTO `country_reference` VALUES ('23', '23', 'Bermuda', 'International', 'BM');
INSERT INTO `country_reference` VALUES ('24', '24', 'Bhutan', 'International', 'BT');
INSERT INTO `country_reference` VALUES ('25', '25', 'Bolivia', 'latino', 'BO');
INSERT INTO `country_reference` VALUES ('26', '26', 'Bosnia and Herzegovina', 'International', 'BA');
INSERT INTO `country_reference` VALUES ('27', '27', 'Botswana', 'International', 'BW');
INSERT INTO `country_reference` VALUES ('28', '28', 'Brazil', 'GBS', 'BR');
INSERT INTO `country_reference` VALUES ('29', '29', 'Brunei', 'International', 'BN');
INSERT INTO `country_reference` VALUES ('30', '30', 'Bulgaria', 'International', 'BG');
INSERT INTO `country_reference` VALUES ('31', '31', 'Burkina Faso', 'International', 'BF');
INSERT INTO `country_reference` VALUES ('32', '32', 'Burundi', 'International', 'BI');
INSERT INTO `country_reference` VALUES ('33', '33', 'Cambodia', 'International', 'KH');
INSERT INTO `country_reference` VALUES ('34', '34', 'Cameroon', 'International', 'CM');
INSERT INTO `country_reference` VALUES ('35', '35', 'Canada', 'International', 'CA');
INSERT INTO `country_reference` VALUES ('36', '36', 'Cape Verde', 'International', 'CV');
INSERT INTO `country_reference` VALUES ('37', '37', 'Cayman Islands', 'latino', 'KY');
INSERT INTO `country_reference` VALUES ('38', '38', 'Central African Republic', 'International', 'CF');
INSERT INTO `country_reference` VALUES ('39', '39', 'Chile', 'latino', 'CL');
INSERT INTO `country_reference` VALUES ('40', '40', 'People\'s Rep. of China', 'International', 'CN');
INSERT INTO `country_reference` VALUES ('41', '41', 'Christmas Island', 'International', 'CX');
INSERT INTO `country_reference` VALUES ('42', '42', 'Colombia', 'latino', 'CO');
INSERT INTO `country_reference` VALUES ('43', '43', 'Comoros', 'International', 'KM');
INSERT INTO `country_reference` VALUES ('44', '44', 'Congo', 'International', 'CG');
INSERT INTO `country_reference` VALUES ('45', '45', 'Democratic Republic of the Congo', 'International', 'CD');
INSERT INTO `country_reference` VALUES ('46', '46', 'Cook Islands', 'International', 'CK');
INSERT INTO `country_reference` VALUES ('47', '47', 'Costa Rica', 'latino', 'CR');
INSERT INTO `country_reference` VALUES ('48', '48', 'Cote D\'Ivoire', 'International', 'CI');
INSERT INTO `country_reference` VALUES ('49', '49', 'Croatia', 'International', 'HR');
INSERT INTO `country_reference` VALUES ('50', '50', 'Cuba', 'latino', 'CU');
INSERT INTO `country_reference` VALUES ('51', '51', 'Cyprus', 'International', 'CY');
INSERT INTO `country_reference` VALUES ('52', '52', 'Czech Republic', 'International', 'CZ');
INSERT INTO `country_reference` VALUES ('53', '53', 'Denmark', 'International', 'DK');
INSERT INTO `country_reference` VALUES ('55', '55', 'Dominica', 'latino', 'DM');
INSERT INTO `country_reference` VALUES ('56', '56', 'Dominican Republic', 'latino', 'DO');
INSERT INTO `country_reference` VALUES ('57', '57', 'Ecuador', 'latino', 'EC');
INSERT INTO `country_reference` VALUES ('58', '58', 'Egypt', 'International', 'EG');
INSERT INTO `country_reference` VALUES ('59', '59', 'El Salvador', 'latino', 'SV');
INSERT INTO `country_reference` VALUES ('60', '60', 'Equatorial Guinea', 'International', 'GQ');
INSERT INTO `country_reference` VALUES ('61', '61', 'Eritrea', 'International', 'ER');
INSERT INTO `country_reference` VALUES ('62', '62', 'Estonia', 'International', 'EE');
INSERT INTO `country_reference` VALUES ('63', '63', 'Ethiopia', 'International', 'ET');
INSERT INTO `country_reference` VALUES ('64', '64', 'Falkland Islands', 'International', 'FK');
INSERT INTO `country_reference` VALUES ('65', '65', 'Fiji', 'International', 'FJ');
INSERT INTO `country_reference` VALUES ('66', '66', 'Finland', 'International', 'FI');
INSERT INTO `country_reference` VALUES ('67', '67', 'France', 'International', 'FR');
INSERT INTO `country_reference` VALUES ('68', '68', 'French Guiana', 'latino', 'GF');
INSERT INTO `country_reference` VALUES ('69', '69', 'French Polynesia', 'International', 'PF');
INSERT INTO `country_reference` VALUES ('70', '70', 'Gabon', 'International', 'GA');
INSERT INTO `country_reference` VALUES ('71', '71', 'Gambia', 'International', 'GM');
INSERT INTO `country_reference` VALUES ('72', '72', 'Germany', 'International', 'DE');
INSERT INTO `country_reference` VALUES ('73', '73', 'Georgia', 'International', 'GE');
INSERT INTO `country_reference` VALUES ('74', '74', 'S. Georgia and the S. Sandwich Is.', 'International', 'GS');
INSERT INTO `country_reference` VALUES ('75', '75', 'Ghana', 'International', 'GH');
INSERT INTO `country_reference` VALUES ('76', '76', 'Greece', 'International', 'GR');
INSERT INTO `country_reference` VALUES ('77', '77', 'Greenland', 'International', 'GL');
INSERT INTO `country_reference` VALUES ('78', '78', 'Grenada', 'latino', 'GD');
INSERT INTO `country_reference` VALUES ('79', '79', 'Guadeloupe', 'latino', 'GP');
INSERT INTO `country_reference` VALUES ('80', '80', 'Guam', 'International', 'GU');
INSERT INTO `country_reference` VALUES ('81', '81', 'Guatemala', 'latino', 'GT');
INSERT INTO `country_reference` VALUES ('82', '82', 'Guinea', 'International', 'GN');
INSERT INTO `country_reference` VALUES ('83', '83', 'Guinea-Bissau', 'International', 'GW');
INSERT INTO `country_reference` VALUES ('84', '84', 'Guyana', 'latino', 'GY');
INSERT INTO `country_reference` VALUES ('85', '85', 'Haiti', 'latino', 'HT');
INSERT INTO `country_reference` VALUES ('86', '86', 'Honduras', 'latino', 'HN');
INSERT INTO `country_reference` VALUES ('87', '87', 'Hong Kong', 'International', 'HK');
INSERT INTO `country_reference` VALUES ('88', '88', 'Hungary', 'International', 'HU');
INSERT INTO `country_reference` VALUES ('89', '89', 'Iceland', 'International', 'IS');
INSERT INTO `country_reference` VALUES ('90', '90', 'India', 'International', 'IN');
INSERT INTO `country_reference` VALUES ('91', '91', 'Indonesia', 'International', 'ID');
INSERT INTO `country_reference` VALUES ('92', '92', 'Iran', 'International', 'IR');
INSERT INTO `country_reference` VALUES ('93', '93', 'Iraq', 'International', 'IQ');
INSERT INTO `country_reference` VALUES ('94', '94', 'Ireland', 'International', 'IE');
INSERT INTO `country_reference` VALUES ('95', '95', 'Israel', 'International', 'IL');
INSERT INTO `country_reference` VALUES ('96', '96', 'Italy', 'International', 'IT');
INSERT INTO `country_reference` VALUES ('97', '97', 'Jamaica', 'latino', 'JM');
INSERT INTO `country_reference` VALUES ('98', '98', 'Japan', 'International', 'JP');
INSERT INTO `country_reference` VALUES ('99', '99', 'Jordan', 'International', 'JO');
INSERT INTO `country_reference` VALUES ('100', '100', 'Kazakhstan', 'International', 'KZ');
INSERT INTO `country_reference` VALUES ('101', '101', 'Kenya', 'International', 'KE');
INSERT INTO `country_reference` VALUES ('102', '102', 'Kiribati', 'International', 'KI');
INSERT INTO `country_reference` VALUES ('103', '103', 'Kitts and Nevis', 'latino', 'KN');
INSERT INTO `country_reference` VALUES ('104', '104', 'North Korea', 'International', 'KP');
INSERT INTO `country_reference` VALUES ('105', '105', 'South Korea', 'International', 'KR');
INSERT INTO `country_reference` VALUES ('106', '106', 'Kyrgyzstan', 'International', 'KG');
INSERT INTO `country_reference` VALUES ('107', '107', 'Kuwait', 'International', 'KW');
INSERT INTO `country_reference` VALUES ('108', '108', 'Laos', 'International', 'LA');
INSERT INTO `country_reference` VALUES ('109', '109', 'Latvia', 'International', 'LV');
INSERT INTO `country_reference` VALUES ('110', '110', 'Lebanon', 'International', 'LB');
INSERT INTO `country_reference` VALUES ('111', '111', 'Lesotho', 'International', 'LS');
INSERT INTO `country_reference` VALUES ('112', '112', 'Liberia', 'International', 'LR');
INSERT INTO `country_reference` VALUES ('113', '113', 'Libya', 'International', 'LY');
INSERT INTO `country_reference` VALUES ('114', '114', 'Liechtenstein', 'International', 'LI');
INSERT INTO `country_reference` VALUES ('115', '115', 'Lithuania', 'International', 'LT');
INSERT INTO `country_reference` VALUES ('116', '116', 'Luxembourg', 'International', 'LU');
INSERT INTO `country_reference` VALUES ('117', '117', 'Macau', 'International', 'MO');
INSERT INTO `country_reference` VALUES ('118', '118', 'Macedonia', 'International', 'MK');
INSERT INTO `country_reference` VALUES ('119', '119', 'Madagascar', 'International', 'MG');
INSERT INTO `country_reference` VALUES ('120', '120', 'Malaysia', 'International', 'MY');
INSERT INTO `country_reference` VALUES ('121', '121', 'Maldives', 'International', 'MV');
INSERT INTO `country_reference` VALUES ('122', '122', 'Mali', 'International', 'ML');
INSERT INTO `country_reference` VALUES ('123', '123', 'Marshall Islands', 'International', 'MH');
INSERT INTO `country_reference` VALUES ('124', '124', 'Malta', 'International', 'MT');
INSERT INTO `country_reference` VALUES ('125', '125', 'Northern Mariana Islands', 'International', 'MP');
INSERT INTO `country_reference` VALUES ('126', '126', 'Malawi', 'International', 'MW');
INSERT INTO `country_reference` VALUES ('127', '127', 'Martinique', 'latino', 'MQ');
INSERT INTO `country_reference` VALUES ('128', '128', 'Mauritania', 'International', 'MR');
INSERT INTO `country_reference` VALUES ('129', '129', 'Mauritius', 'International', 'MU');
INSERT INTO `country_reference` VALUES ('130', '130', 'Mayotte', 'International', 'YT');
INSERT INTO `country_reference` VALUES ('131', '131', 'Mexico', 'latino', 'MX');
INSERT INTO `country_reference` VALUES ('132', '132', 'Micronesia', 'International', 'FM');
INSERT INTO `country_reference` VALUES ('133', '133', 'Moldova', 'International', 'MD');
INSERT INTO `country_reference` VALUES ('134', '134', 'Mongolia', 'International', 'MN');
INSERT INTO `country_reference` VALUES ('135', '135', 'Montserrat', 'International', 'MS');
INSERT INTO `country_reference` VALUES ('136', '136', 'Morocco', 'International', 'MA');
INSERT INTO `country_reference` VALUES ('137', '137', 'Mozambique', 'International', 'MZ');
INSERT INTO `country_reference` VALUES ('138', '138', 'Myanmar', 'International', 'MM');
INSERT INTO `country_reference` VALUES ('139', '139', 'Namibia', 'International', 'NA');
INSERT INTO `country_reference` VALUES ('140', '140', 'Nauru', 'International', 'NR');
INSERT INTO `country_reference` VALUES ('141', '141', 'Nepal', 'International', 'NP');
INSERT INTO `country_reference` VALUES ('142', '142', 'Netherlands', 'International', 'NL');
INSERT INTO `country_reference` VALUES ('143', '143', 'Netherlands Antilles', 'International', 'AN');
INSERT INTO `country_reference` VALUES ('144', '144', 'New Caledonia', 'International', 'NC');
INSERT INTO `country_reference` VALUES ('145', '145', 'New Zealand', 'International', 'NZ');
INSERT INTO `country_reference` VALUES ('146', '146', 'Nicaragua', 'latino', 'NI');
INSERT INTO `country_reference` VALUES ('147', '147', 'Niger', 'International', 'NE');
INSERT INTO `country_reference` VALUES ('148', '148', 'Nigeria', 'International', 'NG');
INSERT INTO `country_reference` VALUES ('149', '149', 'Niue', 'International', 'NU');
INSERT INTO `country_reference` VALUES ('150', '150', 'Norway', 'International', 'NO');
INSERT INTO `country_reference` VALUES ('151', '151', 'Oman', 'International', 'OM');
INSERT INTO `country_reference` VALUES ('152', '152', 'Pakistan', 'International', 'PK');
INSERT INTO `country_reference` VALUES ('153', '153', 'Palau', 'International', 'PW');
INSERT INTO `country_reference` VALUES ('154', '154', 'Panama', 'latino', 'PA');
INSERT INTO `country_reference` VALUES ('155', '155', 'Papua New Guinea', 'International', 'PG');
INSERT INTO `country_reference` VALUES ('156', '156', 'Paraguay', 'latino', 'PY');
INSERT INTO `country_reference` VALUES ('157', '157', 'Peru', 'latino', 'PE');
INSERT INTO `country_reference` VALUES ('158', '158', 'Philippines', 'International', 'PH');
INSERT INTO `country_reference` VALUES ('159', '159', 'Pitcairn Island', 'International', 'PN');
INSERT INTO `country_reference` VALUES ('160', '160', 'Poland', 'International', 'PL');
INSERT INTO `country_reference` VALUES ('161', '161', 'Portugal', 'International', 'PT');
INSERT INTO `country_reference` VALUES ('162', '162', 'Puerto Rico', 'latino', 'PR');
INSERT INTO `country_reference` VALUES ('163', '163', 'Qatar', 'International', 'QA');
INSERT INTO `country_reference` VALUES ('164', '164', 'Reunion', 'International', 'RE');
INSERT INTO `country_reference` VALUES ('165', '165', 'Romania', 'International', 'RO');
INSERT INTO `country_reference` VALUES ('166', '166', 'Russia', 'International', 'RU');
INSERT INTO `country_reference` VALUES ('167', '167', 'Rwanda', 'International', 'RW');
INSERT INTO `country_reference` VALUES ('168', '168', 'Saint Lucia', 'latino', 'LC');
INSERT INTO `country_reference` VALUES ('169', '169', 'Saint Vincent and the Grenadines', 'latino', 'VC');
INSERT INTO `country_reference` VALUES ('170', '170', 'Samoa-American', 'International', 'AS');
INSERT INTO `country_reference` VALUES ('171', '171', 'Samoa-Western', 'International', 'WS');
INSERT INTO `country_reference` VALUES ('172', '172', 'San Marino', 'International', 'SM');
INSERT INTO `country_reference` VALUES ('173', '173', 'Sao Tome and Principe', 'International', 'ST');
INSERT INTO `country_reference` VALUES ('174', '174', 'Saudi Arabia', 'International', 'SA');
INSERT INTO `country_reference` VALUES ('175', '175', 'Senegal', 'International', 'SN');
INSERT INTO `country_reference` VALUES ('176', '176', 'Seychelles', 'International', 'SC');
INSERT INTO `country_reference` VALUES ('177', '177', 'Sierra Leone', 'International', 'SL');
INSERT INTO `country_reference` VALUES ('178', '178', 'Singapore', 'International', 'SG');
INSERT INTO `country_reference` VALUES ('179', '179', 'Slovakia', 'International', 'SK');
INSERT INTO `country_reference` VALUES ('180', '180', 'Slovenia', 'International', 'SI');
INSERT INTO `country_reference` VALUES ('181', '181', 'Solomon Islands', 'International', 'SB');
INSERT INTO `country_reference` VALUES ('182', '182', 'Somalia', 'International', 'SO');
INSERT INTO `country_reference` VALUES ('183', '183', 'South Africa', 'International', 'ZA');
INSERT INTO `country_reference` VALUES ('184', '184', 'Spain', 'International', 'ES');
INSERT INTO `country_reference` VALUES ('185', '185', 'Sri Lanka', 'International', 'LK');
INSERT INTO `country_reference` VALUES ('186', '186', 'Sudan', 'International', 'SD');
INSERT INTO `country_reference` VALUES ('187', '187', 'Suriname', 'latino', 'SR');
INSERT INTO `country_reference` VALUES ('188', '188', 'Swaziland', 'International', 'SZ');
INSERT INTO `country_reference` VALUES ('189', '189', 'Sweden', 'International', 'SE');
INSERT INTO `country_reference` VALUES ('190', '190', 'Switzerland', 'International', 'CH');
INSERT INTO `country_reference` VALUES ('191', '191', 'Syria', 'International', 'SY');
INSERT INTO `country_reference` VALUES ('192', '192', 'Taiwan', 'International', 'TW');
INSERT INTO `country_reference` VALUES ('193', '193', 'Tajikistan', 'International', 'TJ');
INSERT INTO `country_reference` VALUES ('194', '194', 'Tanzania', 'International', 'TZ');
INSERT INTO `country_reference` VALUES ('195', '195', 'Thailand', 'International', 'TH');
INSERT INTO `country_reference` VALUES ('196', '196', 'Togo', 'International', 'TG');
INSERT INTO `country_reference` VALUES ('197', '197', 'Tonga', 'International', 'TO');
INSERT INTO `country_reference` VALUES ('198', '198', 'Trinidad and Tobago', 'latino', 'TT');
INSERT INTO `country_reference` VALUES ('199', '199', 'Tunisia', 'International', 'TN');
INSERT INTO `country_reference` VALUES ('200', '200', 'Turkey', 'International', 'TR');
INSERT INTO `country_reference` VALUES ('201', '201', 'Turkmenistan', 'International', 'TM');
INSERT INTO `country_reference` VALUES ('202', '202', 'Tuvalu', 'International', 'TV');
INSERT INTO `country_reference` VALUES ('203', '203', 'Uganda', 'International', 'UG');
INSERT INTO `country_reference` VALUES ('204', '204', 'Ukraine', 'International', 'UA');
INSERT INTO `country_reference` VALUES ('205', '205', 'United Arab Emirates', 'International', 'AE');
INSERT INTO `country_reference` VALUES ('206', '206', 'United Kingdom', 'International', 'UK');
INSERT INTO `country_reference` VALUES ('207', '207', 'USA', 'International', 'US');
INSERT INTO `country_reference` VALUES ('208', '208', 'Uruguay', 'latino', 'UY');
INSERT INTO `country_reference` VALUES ('209', '209', 'Uzbekistan', 'International', 'UZ');
INSERT INTO `country_reference` VALUES ('210', '210', 'Vanuatu', 'International', 'VU');
INSERT INTO `country_reference` VALUES ('211', '211', 'Vatican City', 'International', 'VA');
INSERT INTO `country_reference` VALUES ('212', '212', 'Venezuela', 'latino', 'VE');
INSERT INTO `country_reference` VALUES ('213', '213', 'Virgin Islands', 'latino', 'VI');
INSERT INTO `country_reference` VALUES ('214', '214', 'Vietnam', 'International', 'VN');
INSERT INTO `country_reference` VALUES ('215', '215', 'Western Sahara', 'International', 'EH');
INSERT INTO `country_reference` VALUES ('216', '216', 'Yemen', 'International', 'YE');
INSERT INTO `country_reference` VALUES ('217', '217', 'Yugoslavia', 'International', 'YU');
INSERT INTO `country_reference` VALUES ('218', '218', 'Zambia', 'International', 'ZM');
INSERT INTO `country_reference` VALUES ('219', '219', 'Zimbabwe', 'International', 'ZW');
INSERT INTO `country_reference` VALUES ('220', '220', 'APO', 'International', 'AP');
INSERT INTO `country_reference` VALUES ('221', '221', 'FPO', 'International', 'FP');
INSERT INTO `country_reference` VALUES ('222', '222', 'Other', 'International', 'OT');
INSERT INTO `country_reference` VALUES ('223', '223', 'Bouvet Island', 'International', 'BV');
INSERT INTO `country_reference` VALUES ('224', '224', 'British Indian Ocean Territory', 'International', 'IO');
INSERT INTO `country_reference` VALUES ('225', '225', 'Chad', 'International', 'TD');
INSERT INTO `country_reference` VALUES ('226', '226', 'Cocos(Keeling) Islands', 'International', 'CC');
INSERT INTO `country_reference` VALUES ('227', '227', 'East Timor', 'International', 'TP');
INSERT INTO `country_reference` VALUES ('228', '228', 'Faroe Islands', 'International', 'FO');
INSERT INTO `country_reference` VALUES ('229', '229', 'French Southern Territories', 'International', 'TF');
INSERT INTO `country_reference` VALUES ('230', '230', 'Gibraltar', 'International', 'GI');
INSERT INTO `country_reference` VALUES ('231', '231', 'Heard and McDonald Islands', 'International', 'HM');
INSERT INTO `country_reference` VALUES ('232', '232', 'Monaco', 'International', 'MC');
INSERT INTO `country_reference` VALUES ('233', '233', 'Norfolk Island', 'International', 'NF');
INSERT INTO `country_reference` VALUES ('234', '234', 'Saint Helena', 'International', 'SH');
INSERT INTO `country_reference` VALUES ('235', '235', 'Saint Pierre and Miquelon', 'International', 'PM');
INSERT INTO `country_reference` VALUES ('236', '236', 'Svalbard and Jan Mayen Islands', 'International', 'SJ');
INSERT INTO `country_reference` VALUES ('237', '237', 'Tokelau', 'International', 'TK');
INSERT INTO `country_reference` VALUES ('238', '238', 'Turks and Caicos Islands', 'latino', 'TC');
INSERT INTO `country_reference` VALUES ('239', '239', 'United States Minor Outlying Islands', 'International', 'UM');
INSERT INTO `country_reference` VALUES ('240', '240', 'Wallis and Futuna', 'International', 'WF');
INSERT INTO `country_reference` VALUES ('241', '241', 'British Virgin Islands', 'International', 'VG');
INSERT INTO `country_reference` VALUES ('242', '242', 'EU', 'International', 'EU');
INSERT INTO `country_reference` VALUES ('244', '244', 'Palestine', 'International', 'PS');
INSERT INTO `country_reference` VALUES ('245', '245', 'Serbia and Montenegro', 'International', 'CS');

-- ----------------------------
-- Table structure for couponinfo
-- ----------------------------
DROP TABLE IF EXISTS `couponinfo`;
CREATE TABLE `couponinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_rate` tinyint(3) NOT NULL DEFAULT '0',
  `expire_days` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `min_level` tinyint(3) NOT NULL DEFAULT '0',
  `max_level` tinyint(3) NOT NULL DEFAULT '0',
  `for_cash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of couponinfo
-- ----------------------------

-- ----------------------------
-- Table structure for fetchapp
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
-- Table structure for fetchfile
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
-- Table structure for itembox
-- ----------------------------
DROP TABLE IF EXISTS `itembox`;
CREATE TABLE `itembox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `limittime` bigint(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itembox
-- ----------------------------

-- ----------------------------
-- Table structure for iteminfo
-- ----------------------------
DROP TABLE IF EXISTS `iteminfo`;
CREATE TABLE `iteminfo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `Class` tinyint(3) NOT NULL DEFAULT '0',
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `shop` tinyint(3) NOT NULL DEFAULT '0',
  `gold` int(10) NOT NULL DEFAULT '0',
  `cash` int(10) NOT NULL DEFAULT '0',
  `hit1` int(3) NOT NULL DEFAULT '0',
  `hit2` int(3) NOT NULL DEFAULT '0',
  `hit3` int(3) NOT NULL DEFAULT '0',
  `hit4` int(3) NOT NULL DEFAULT '0',
  `chit` int(3) NOT NULL DEFAULT '0',
  `ap` int(3) NOT NULL DEFAULT '0',
  `hp` int(3) NOT NULL DEFAULT '0',
  `maxcp` int(3) NOT NULL DEFAULT '0',
  `power` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iteminfo
-- ----------------------------
INSERT INTO `iteminfo` VALUES ('1001', '0', '1', '2', '1', '2700', '0', '0', '0', '0', '0', '1', '0', '6', '100', '0');
INSERT INTO `iteminfo` VALUES ('1002', '0', '1', '6', '1', '4000', '0', '0', '0', '0', '0', '2', '0', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('1004', '0', '1', '11', '1', '7000', '0', '0', '0', '0', '0', '2', '0', '8', '100', '0');
INSERT INTO `iteminfo` VALUES ('1005', '0', '1', '14', '1', '13200', '0', '0', '0', '0', '0', '3', '0', '8', '200', '0');
INSERT INTO `iteminfo` VALUES ('1008', '0', '1', '21', '1', '27000', '0', '0', '0', '0', '0', '4', '0', '8', '800', '0');
INSERT INTO `iteminfo` VALUES ('1009', '0', '1', '11', '2', '27000', '4800', '0', '0', '0', '0', '4', '0', '8', '800', '0');
INSERT INTO `iteminfo` VALUES ('1010', '0', '1', '21', '2', '33000', '5900', '0', '0', '0', '0', '1', '0', '5', '400', '0');
INSERT INTO `iteminfo` VALUES ('1011', '0', '1', '11', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '10', '600', '1');
INSERT INTO `iteminfo` VALUES ('1012', '0', '1', '15', '2', '27000', '4800', '0', '0', '0', '0', '2', '4', '6', '200', '0');
INSERT INTO `iteminfo` VALUES ('1013', '0', '1', '25', '1', '27000', '0', '0', '0', '0', '0', '3', '6', '8', '400', '0');
INSERT INTO `iteminfo` VALUES ('1015', '0', '1', '29', '1', '39500', '0', '0', '0', '0', '0', '3', '0', '10', '1000', '0');
INSERT INTO `iteminfo` VALUES ('1016', '0', '1', '36', '2', '48300', '8600', '0', '0', '0', '0', '2', '5', '8', '200', '0');
INSERT INTO `iteminfo` VALUES ('1017', '0', '1', '31', '1', '47500', '9500', '0', '0', '0', '0', '0', '4', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('1018', '0', '1', '40', '1', '48300', '0', '0', '0', '0', '0', '3', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('1019', '0', '1', '45', '1', '58900', '0', '0', '0', '0', '0', '3', '0', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('1024', '0', '1', '61', '1', '137000', '0', '0', '0', '0', '0', '5', '4', '10', '1000', '1');
INSERT INTO `iteminfo` VALUES ('1030', '0', '1', '70', '1', '215000', '0', '0', '0', '0', '0', '8', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('1040', '0', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1041', '0', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1042', '0', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1043', '0', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1101', '1', '1', '2', '1', '2800', '0', '0', '0', '0', '0', '0', '5', '5', '0', '0');
INSERT INTO `iteminfo` VALUES ('1104', '1', '1', '11', '1', '5500', '0', '0', '0', '0', '0', '0', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('1105', '1', '1', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '9', '0', '0');
INSERT INTO `iteminfo` VALUES ('1108', '1', '1', '21', '1', '13200', '0', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('1109', '1', '1', '11', '2', '13200', '2300', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('1110', '1', '1', '21', '2', '16000', '2800', '0', '0', '0', '0', '0', '9', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('1111', '1', '1', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('1112', '1', '1', '15', '2', '13200', '2300', '0', '0', '0', '0', '1', '8', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('1113', '1', '1', '25', '1', '13200', '0', '0', '0', '0', '0', '2', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('1115', '1', '1', '41', '1', '19800', '0', '0', '0', '0', '0', '0', '10', '10', '400', '0');
INSERT INTO `iteminfo` VALUES ('1116', '1', '1', '36', '2', '24600', '4400', '0', '0', '0', '0', '1', '10', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('1117', '1', '1', '31', '1', '34000', '6800', '0', '0', '0', '0', '2', '10', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('1118', '1', '1', '51', '1', '24600', '0', '0', '0', '0', '0', '0', '11', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('1119', '1', '1', '46', '1', '30700', '0', '0', '0', '0', '0', '0', '12', '11', '0', '1');
INSERT INTO `iteminfo` VALUES ('1124', '1', '1', '61', '1', '81300', '0', '0', '0', '0', '0', '0', '16', '16', '0', '1');
INSERT INTO `iteminfo` VALUES ('1130', '1', '1', '70', '1', '164000', '0', '0', '0', '0', '0', '0', '15', '16', '0', '0');
INSERT INTO `iteminfo` VALUES ('1140', '1', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1141', '1', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1142', '1', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1143', '1', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1201', '2', '1', '2', '1', '2100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1204', '2', '1', '11', '1', '3100', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1208', '2', '1', '21', '1', '8300', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1209', '2', '1', '11', '2', '8300', '1400', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1210', '2', '1', '21', '2', '10000', '1800', '0', '0', '0', '0', '0', '13', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1211', '2', '1', '25', '1', '3600', '0', '0', '0', '0', '0', '0', '9', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1212', '2', '1', '15', '2', '8300', '1400', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('1213', '2', '1', '25', '1', '8300', '0', '0', '0', '0', '0', '2', '8', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('1215', '2', '1', '34', '1', '8300', '0', '0', '0', '0', '0', '0', '10', '0', '400', '0');
INSERT INTO `iteminfo` VALUES ('1216', '2', '1', '36', '2', '15000', '2700', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('1217', '1', '1', '31', '2', '21500', '4300', '0', '0', '0', '0', '0', '6', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('1218', '2', '1', '40', '1', '10000', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1219', '2', '1', '45', '1', '12200', '0', '0', '0', '0', '0', '0', '15', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1224', '2', '1', '61', '1', '23400', '0', '0', '0', '0', '0', '0', '20', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1230', '2', '1', '70', '1', '28600', '0', '0', '0', '0', '0', '0', '16', '4', '0', '0');
INSERT INTO `iteminfo` VALUES ('1240', '2', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1241', '2', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1242', '2', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1243', '2', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1301', '3', '1', '2', '1', '1700', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1304', '3', '1', '11', '1', '3000', '0', '0', '0', '0', '0', '2', '4', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1308', '3', '1', '21', '1', '6000', '0', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1309', '3', '1', '11', '2', '6000', '1000', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1310', '3', '1', '21', '2', '7300', '1300', '0', '0', '0', '0', '1', '7', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1311', '3', '1', '25', '1', '3000', '0', '0', '0', '0', '0', '1', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1312', '3', '1', '15', '2', '6000', '1000', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('1313', '3', '1', '25', '1', '6000', '0', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('1315', '3', '1', '41', '1', '8900', '0', '0', '0', '0', '0', '3', '6', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('1316', '3', '1', '36', '2', '11000', '1900', '1', '0', '1', '0', '2', '3', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('1317', '3', '1', '31', '1', '12000', '2400', '0', '0', '0', '0', '3', '3', '3', '0', '0');
INSERT INTO `iteminfo` VALUES ('1318', '3', '1', '51', '1', '7300', '0', '0', '0', '0', '0', '2', '5', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1319', '3', '1', '46', '1', '8900', '0', '0', '0', '0', '0', '2', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1324', '3', '1', '56', '1', '17000', '0', '0', '0', '0', '0', '4', '10', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1330', '3', '1', '70', '1', '21200', '0', '0', '0', '0', '0', '6', '8', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1340', '3', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1341', '3', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1342', '3', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1343', '3', '1', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1401', '4', '1', '2', '1', '2600', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1402', '4', '1', '6', '1', '3000', '0', '1', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1403', '4', '1', '1', '1', '3400', '0', '1', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1404', '4', '1', '10', '1', '4600', '0', '3', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1405', '4', '1', '16', '1', '6300', '0', '3', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1408', '4', '1', '20', '1', '9000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1409', '4', '1', '10', '2', '9000', '1600', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1410', '4', '1', '28', '1', '11000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1411', '4', '1', '25', '1', '9000', '0', '1', '2', '2', '1', '1', '2', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1412', '4', '1', '21', '2', '25700', '4600', '3', '3', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1413', '4', '1', '36', '2', '40900', '7300', '4', '2', '2', '2', '0', '2', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('1414', '4', '1', '33', '1', '16500', '0', '2', '2', '2', '1', '1', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1415', '4', '1', '41', '1', '16500', '0', '2', '2', '3', '0', '2', '0', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('1416', '4', '1', '20', '2', '25700', '4600', '3', '2', '3', '0', '2', '0', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('1418', '4', '1', '41', '1', '16500', '0', '2', '2', '4', '4', '0', '0', '-5', '0', '1');
INSERT INTO `iteminfo` VALUES ('1419', '4', '1', '51', '1', '16500', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1420', '4', '1', '46', '1', '20400', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1422', '4', '1', '25', '2', '51000', '9100', '3', '1', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1423', '4', '1', '55', '1', '32200', '0', '2', '1', '3', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1424', '4', '1', '61', '1', '40900', '0', '3', '3', '3', '3', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1425', '4', '1', '25', '2', '86700', '15600', '4', '3', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1426', '4', '1', '65', '1', '86700', '0', '4', '3', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1430', '4', '1', '70', '1', '51000', '0', '3', '3', '3', '2', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1433', '4', '1', '15', '1', '24750', '4400', '2', '2', '1', '5', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('1434', '4', '1', '10', '1', '100', '0', '3', '3', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1435', '4', '1', '30', '1', '97800', '17600', '3', '4', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1436', '4', '1', '15', '2', '13500', '2400', '4', '1', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('1437', '4', '1', '25', '1', '13500', '0', '3', '2', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('1501', '5', '1', '2', '1', '2000', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1504', '5', '1', '11', '1', '2500', '0', '1', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1508', '5', '1', '21', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1509', '5', '1', '11', '2', '3400', '600', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1510', '5', '1', '28', '1', '4000', '1500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1511', '5', '1', '25', '1', '2200', '1000', '0', '1', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1512', '5', '1', '21', '2', '4000', '700', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1513', '5', '1', '36', '2', '5600', '1000', '1', '2', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('1514', '5', '1', '33', '1', '6800', '2500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1515', '5', '1', '41', '1', '4000', '0', '1', '1', '1', '0', '1', '0', '0', '100', '0');
INSERT INTO `iteminfo` VALUES ('1518', '5', '1', '41', '1', '6800', '2500', '2', '2', '3', '2', '0', '0', '-6', '0', '1');
INSERT INTO `iteminfo` VALUES ('1519', '5', '1', '51', '1', '6800', '0', '2', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1520', '5', '1', '45', '1', '8200', '3000', '2', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1523', '5', '1', '45', '1', '8200', '3000', '1', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1524', '5', '1', '55', '1', '10000', '3700', '2', '2', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('1525', '5', '1', '25', '2', '24400', '8700', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1526', '5', '1', '65', '1', '24400', '0', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1530', '5', '1', '70', '1', '14400', '0', '2', '2', '1', '1', '2', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1533', '5', '1', '15', '1', '12300', '4500', '2', '2', '1', '2', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('1534', '5', '1', '10', '1', '100', '0', '2', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1535', '5', '1', '30', '1', '27000', '9500', '2', '3', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('1536', '5', '1', '15', '2', '3400', '600', '1', '1', '1', '0', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('1537', '5', '1', '25', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2001', '0', '2', '2', '1', '2700', '0', '0', '0', '0', '0', '1', '0', '6', '100', '0');
INSERT INTO `iteminfo` VALUES ('2002', '0', '2', '6', '1', '4000', '0', '0', '0', '0', '0', '2', '0', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('2004', '0', '2', '11', '1', '7000', '0', '0', '0', '0', '0', '2', '0', '8', '90', '0');
INSERT INTO `iteminfo` VALUES ('2005', '0', '2', '14', '1', '13200', '0', '0', '0', '0', '0', '3', '0', '8', '180', '0');
INSERT INTO `iteminfo` VALUES ('2008', '0', '2', '21', '1', '27000', '0', '0', '0', '0', '0', '4', '0', '8', '720', '0');
INSERT INTO `iteminfo` VALUES ('2009', '0', '2', '11', '2', '27000', '4800', '0', '0', '0', '0', '4', '0', '8', '720', '0');
INSERT INTO `iteminfo` VALUES ('2010', '0', '2', '21', '2', '33000', '5900', '0', '0', '0', '0', '1', '0', '5', '360', '0');
INSERT INTO `iteminfo` VALUES ('2011', '0', '2', '11', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '10', '540', '1');
INSERT INTO `iteminfo` VALUES ('2012', '0', '2', '15', '2', '27000', '4800', '0', '0', '0', '0', '2', '4', '6', '200', '0');
INSERT INTO `iteminfo` VALUES ('2013', '0', '2', '25', '1', '27000', '0', '0', '0', '0', '0', '3', '6', '8', '400', '0');
INSERT INTO `iteminfo` VALUES ('2015', '0', '2', '29', '1', '39500', '0', '0', '0', '0', '0', '3', '0', '10', '900', '0');
INSERT INTO `iteminfo` VALUES ('2016', '0', '2', '36', '2', '48300', '8600', '0', '0', '0', '0', '2', '5', '8', '200', '0');
INSERT INTO `iteminfo` VALUES ('2017', '0', '2', '31', '1', '47500', '9500', '0', '0', '0', '0', '1', '7', '7', '180', '0');
INSERT INTO `iteminfo` VALUES ('2018', '0', '2', '40', '1', '48300', '0', '0', '0', '0', '0', '3', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('2019', '0', '2', '45', '1', '58900', '0', '0', '0', '0', '0', '3', '0', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('2024', '0', '2', '61', '1', '137000', '0', '0', '0', '0', '0', '5', '4', '10', '900', '1');
INSERT INTO `iteminfo` VALUES ('2030', '0', '2', '70', '1', '215000', '0', '0', '0', '0', '0', '8', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('2040', '0', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2041', '0', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2042', '0', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2043', '0', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2101', '1', '2', '2', '1', '2800', '0', '0', '0', '0', '0', '0', '5', '5', '0', '0');
INSERT INTO `iteminfo` VALUES ('2104', '1', '2', '11', '1', '5500', '0', '0', '0', '0', '0', '0', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('2105', '1', '2', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '9', '0', '0');
INSERT INTO `iteminfo` VALUES ('2108', '1', '2', '21', '1', '13200', '0', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('2109', '1', '2', '11', '2', '13200', '2300', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('2110', '1', '2', '21', '2', '16000', '2800', '0', '0', '0', '0', '0', '9', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('2111', '1', '2', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('2112', '1', '2', '15', '2', '13200', '2300', '0', '0', '0', '0', '1', '8', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('2113', '1', '2', '25', '1', '13200', '0', '0', '0', '0', '0', '2', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('2115', '1', '2', '41', '1', '19800', '0', '0', '0', '0', '0', '0', '10', '10', '360', '0');
INSERT INTO `iteminfo` VALUES ('2116', '1', '2', '36', '2', '24600', '4400', '0', '0', '0', '0', '1', '10', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('2117', '1', '2', '31', '1', '34000', '6800', '0', '0', '0', '0', '0', '10', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('2118', '1', '2', '51', '1', '24600', '0', '0', '0', '0', '0', '0', '11', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('2119', '1', '2', '46', '1', '30700', '0', '0', '0', '0', '0', '0', '12', '11', '0', '1');
INSERT INTO `iteminfo` VALUES ('2124', '1', '2', '61', '1', '81300', '0', '0', '0', '0', '0', '0', '16', '16', '0', '1');
INSERT INTO `iteminfo` VALUES ('2130', '1', '2', '70', '1', '164000', '0', '0', '0', '0', '0', '0', '15', '16', '0', '0');
INSERT INTO `iteminfo` VALUES ('2140', '1', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2141', '1', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2142', '1', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2143', '1', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2201', '2', '2', '2', '1', '2100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2204', '2', '2', '11', '1', '3100', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2208', '2', '2', '21', '1', '8300', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2209', '2', '2', '11', '2', '8300', '1400', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2210', '2', '2', '21', '2', '10000', '1800', '0', '0', '0', '0', '0', '13', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2211', '2', '2', '25', '1', '3600', '0', '0', '0', '0', '0', '0', '9', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2212', '2', '2', '15', '2', '8300', '1400', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('2213', '2', '2', '25', '1', '8300', '0', '0', '0', '0', '0', '2', '8', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('2215', '2', '2', '34', '1', '8300', '0', '0', '0', '0', '0', '0', '10', '0', '360', '0');
INSERT INTO `iteminfo` VALUES ('2216', '2', '2', '36', '2', '15000', '2700', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('2217', '2', '2', '31', '1', '21500', '4300', '0', '0', '0', '0', '0', '6', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('2218', '2', '2', '40', '1', '10000', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2219', '2', '2', '45', '1', '12200', '0', '0', '0', '0', '0', '0', '15', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2224', '2', '2', '61', '1', '23400', '0', '0', '0', '0', '0', '0', '20', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2230', '2', '2', '70', '1', '28600', '0', '0', '0', '0', '0', '0', '16', '4', '0', '0');
INSERT INTO `iteminfo` VALUES ('2240', '2', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2241', '2', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2242', '2', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2243', '2', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2301', '3', '2', '2', '1', '1700', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2304', '3', '2', '11', '1', '3000', '0', '0', '0', '0', '0', '2', '4', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2308', '3', '2', '21', '1', '6000', '0', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2309', '3', '2', '11', '2', '6000', '1000', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2310', '3', '2', '21', '2', '7300', '1300', '0', '0', '0', '0', '1', '7', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2311', '3', '2', '25', '1', '3000', '0', '0', '0', '0', '0', '1', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2312', '3', '2', '15', '2', '6000', '1000', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('2313', '3', '2', '25', '1', '6000', '0', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('2315', '3', '2', '41', '1', '8900', '0', '0', '0', '0', '0', '3', '6', '0', '180', '0');
INSERT INTO `iteminfo` VALUES ('2316', '3', '2', '36', '2', '11000', '1900', '1', '0', '1', '0', '2', '3', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('2317', '3', '2', '31', '1', '12000', '2400', '0', '0', '0', '0', '3', '3', '3', '180', '0');
INSERT INTO `iteminfo` VALUES ('2318', '3', '2', '51', '1', '7300', '0', '0', '0', '0', '0', '2', '5', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2319', '3', '2', '46', '1', '8900', '0', '0', '0', '0', '0', '2', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2324', '3', '2', '56', '1', '17000', '0', '0', '0', '0', '0', '4', '10', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2330', '3', '2', '70', '1', '21200', '0', '0', '0', '0', '0', '6', '8', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2340', '3', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2341', '3', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2342', '3', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2343', '3', '2', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2401', '4', '2', '2', '1', '2000', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2404', '4', '2', '11', '1', '2500', '0', '1', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2408', '4', '2', '21', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2409', '4', '2', '11', '2', '3400', '600', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2410', '4', '2', '28', '1', '4000', '1500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2411', '4', '2', '25', '1', '2200', '1000', '0', '1', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2412', '4', '2', '21', '2', '4000', '700', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2413', '4', '2', '36', '2', '5600', '1000', '1', '2', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('2414', '4', '2', '33', '1', '6800', '2500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2415', '4', '2', '41', '1', '4000', '0', '1', '1', '1', '0', '1', '0', '0', '90', '0');
INSERT INTO `iteminfo` VALUES ('2418', '4', '2', '41', '1', '6800', '2500', '2', '2', '3', '2', '0', '0', '-6', '0', '1');
INSERT INTO `iteminfo` VALUES ('2419', '4', '2', '51', '1', '6800', '0', '2', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2420', '4', '2', '45', '1', '8200', '3000', '2', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2423', '4', '2', '45', '1', '8200', '3000', '1', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2424', '4', '2', '55', '1', '10000', '3700', '2', '2', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2425', '4', '2', '25', '2', '24400', '8700', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2426', '4', '2', '65', '1', '24400', '0', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2430', '4', '2', '70', '1', '14400', '0', '2', '2', '1', '1', '2', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2433', '4', '2', '15', '1', '12300', '4500', '2', '2', '1', '2', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('2434', '4', '2', '10', '1', '100', '0', '2', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2435', '4', '2', '30', '1', '27000', '9500', '2', '3', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2436', '4', '2', '15', '2', '3400', '600', '1', '1', '1', '0', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('2437', '4', '2', '25', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2501', '5', '2', '2', '1', '2600', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2502', '5', '2', '6', '1', '3000', '0', '1', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2503', '5', '2', '1', '1', '3400', '0', '1', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2504', '5', '2', '10', '1', '4600', '0', '3', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2505', '5', '2', '16', '1', '6300', '0', '3', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2508', '5', '2', '20', '1', '9000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2509', '5', '2', '10', '2', '9000', '1600', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2510', '5', '2', '28', '1', '11000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2511', '5', '2', '25', '1', '9000', '0', '1', '2', '2', '1', '1', '2', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2512', '5', '2', '21', '2', '25700', '4600', '3', '3', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2513', '5', '2', '36', '2', '40900', '7300', '4', '2', '2', '2', '0', '2', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('2514', '5', '2', '33', '1', '16500', '0', '2', '2', '2', '1', '1', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2515', '5', '2', '41', '1', '16500', '0', '2', '3', '2', '0', '2', '0', '0', '180', '0');
INSERT INTO `iteminfo` VALUES ('2516', '5', '2', '20', '2', '25700', '4600', '2', '4', '2', '0', '2', '0', '0', '180', '0');
INSERT INTO `iteminfo` VALUES ('2518', '5', '2', '41', '1', '16500', '0', '2', '3', '4', '3', '0', '0', '-5', '0', '1');
INSERT INTO `iteminfo` VALUES ('2519', '5', '2', '51', '1', '16500', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2520', '5', '2', '46', '1', '20400', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2522', '5', '2', '25', '2', '51000', '9100', '1', '3', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2523', '5', '2', '55', '1', '32200', '0', '1', '2', '3', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2524', '5', '2', '61', '1', '40900', '0', '3', '3', '3', '3', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('2525', '5', '2', '25', '2', '86700', '15400', '3', '4', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2526', '5', '2', '65', '1', '86700', '0', '3', '4', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2530', '5', '2', '70', '1', '51000', '0', '3', '3', '3', '2', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2533', '5', '2', '15', '1', '24750', '4400', '2', '2', '1', '5', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('2534', '5', '2', '10', '1', '100', '0', '3', '3', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2535', '5', '2', '30', '1', '97800', '17600', '3', '4', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('2536', '5', '2', '15', '2', '13500', '2400', '4', '1', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('2537', '5', '2', '25', '1', '13500', '0', '3', '2', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('3001', '0', '4', '2', '1', '2700', '0', '0', '0', '0', '0', '1', '0', '6', '100', '0');
INSERT INTO `iteminfo` VALUES ('3002', '0', '4', '6', '1', '4000', '0', '0', '0', '0', '0', '2', '0', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('3004', '0', '4', '11', '1', '7000', '0', '0', '0', '0', '0', '2', '0', '8', '100', '0');
INSERT INTO `iteminfo` VALUES ('3005', '0', '4', '14', '1', '13200', '0', '0', '0', '0', '0', '3', '0', '8', '200', '0');
INSERT INTO `iteminfo` VALUES ('3008', '0', '4', '21', '1', '27000', '0', '0', '0', '0', '0', '4', '0', '8', '800', '0');
INSERT INTO `iteminfo` VALUES ('3009', '0', '4', '11', '2', '27000', '4800', '0', '0', '0', '0', '4', '0', '8', '800', '0');
INSERT INTO `iteminfo` VALUES ('3010', '0', '4', '21', '2', '33000', '5900', '0', '0', '0', '0', '1', '0', '5', '400', '0');
INSERT INTO `iteminfo` VALUES ('3011', '0', '4', '11', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '10', '600', '1');
INSERT INTO `iteminfo` VALUES ('3012', '0', '4', '15', '2', '27000', '4800', '0', '0', '0', '0', '2', '4', '6', '200', '0');
INSERT INTO `iteminfo` VALUES ('3013', '0', '4', '25', '1', '27000', '0', '0', '0', '0', '0', '3', '6', '8', '400', '0');
INSERT INTO `iteminfo` VALUES ('3015', '0', '4', '29', '1', '39500', '0', '0', '0', '0', '0', '3', '0', '10', '1000', '0');
INSERT INTO `iteminfo` VALUES ('3016', '0', '4', '36', '2', '48300', '8600', '0', '0', '0', '0', '2', '5', '8', '200', '0');
INSERT INTO `iteminfo` VALUES ('3017', '0', '4', '31', '1', '47500', '9500', '0', '0', '0', '0', '0', '6', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('3018', '0', '4', '40', '1', '48300', '0', '0', '0', '0', '0', '3', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('3019', '0', '4', '45', '1', '58900', '0', '0', '0', '0', '0', '3', '0', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('3024', '0', '4', '61', '1', '137000', '0', '0', '0', '0', '0', '5', '4', '10', '1000', '1');
INSERT INTO `iteminfo` VALUES ('3030', '0', '4', '70', '1', '215000', '0', '0', '0', '0', '0', '8', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('3040', '0', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3041', '0', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3042', '0', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3043', '0', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3101', '1', '4', '2', '1', '2800', '0', '0', '0', '0', '0', '0', '5', '5', '0', '0');
INSERT INTO `iteminfo` VALUES ('3104', '1', '4', '11', '1', '5500', '0', '0', '0', '0', '0', '0', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('3105', '1', '4', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '9', '0', '0');
INSERT INTO `iteminfo` VALUES ('3108', '1', '4', '21', '1', '13200', '0', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('3109', '1', '4', '11', '2', '13200', '2300', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('3110', '1', '4', '21', '2', '16000', '2800', '0', '0', '0', '0', '0', '9', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('3111', '1', '4', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('3112', '1', '4', '15', '2', '13200', '2300', '0', '0', '0', '0', '1', '8', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('3113', '1', '4', '25', '1', '13200', '0', '0', '0', '0', '0', '2', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('3115', '1', '4', '41', '1', '19800', '0', '0', '0', '0', '0', '0', '10', '10', '400', '0');
INSERT INTO `iteminfo` VALUES ('3116', '1', '4', '36', '2', '24600', '4400', '0', '0', '0', '0', '1', '10', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('3117', '1', '4', '31', '2', '34000', '6800', '0', '0', '0', '0', '0', '10', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('3118', '1', '4', '51', '1', '24600', '0', '0', '0', '0', '0', '0', '11', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('3119', '1', '4', '46', '1', '30700', '0', '0', '0', '0', '0', '0', '12', '11', '0', '1');
INSERT INTO `iteminfo` VALUES ('3124', '1', '4', '61', '1', '81300', '0', '0', '0', '0', '0', '0', '16', '16', '0', '1');
INSERT INTO `iteminfo` VALUES ('3130', '1', '4', '70', '1', '164000', '0', '0', '0', '0', '0', '0', '15', '16', '0', '0');
INSERT INTO `iteminfo` VALUES ('3140', '1', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3141', '1', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3142', '1', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3143', '1', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3201', '2', '4', '2', '1', '2100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3204', '2', '4', '11', '1', '3100', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3208', '2', '4', '21', '1', '8300', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3209', '2', '4', '11', '2', '8300', '1400', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3210', '2', '4', '21', '2', '10000', '1800', '0', '0', '0', '0', '0', '13', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3211', '2', '4', '25', '1', '3600', '0', '0', '0', '0', '0', '0', '9', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3212', '2', '4', '15', '2', '8300', '1400', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('3213', '2', '4', '25', '1', '8300', '0', '0', '0', '0', '0', '2', '8', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('3215', '2', '4', '34', '1', '8300', '0', '0', '0', '0', '0', '0', '10', '0', '400', '0');
INSERT INTO `iteminfo` VALUES ('3216', '2', '4', '36', '2', '15000', '2700', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('3217', '2', '4', '31', '2', '21500', '4300', '0', '0', '0', '0', '0', '6', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('3218', '2', '4', '40', '1', '10000', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3219', '2', '4', '45', '1', '12200', '0', '0', '0', '0', '0', '0', '15', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3224', '2', '4', '61', '1', '23400', '0', '0', '0', '0', '0', '0', '20', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3230', '2', '4', '70', '1', '28600', '0', '0', '0', '0', '0', '0', '16', '4', '0', '0');
INSERT INTO `iteminfo` VALUES ('3240', '2', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3241', '2', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3242', '2', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3243', '2', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3301', '3', '4', '2', '1', '1700', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3304', '3', '4', '11', '1', '3000', '0', '0', '0', '0', '0', '2', '4', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3308', '3', '4', '21', '1', '6000', '0', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3309', '3', '4', '11', '2', '6000', '1000', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3310', '3', '4', '21', '2', '7300', '1300', '0', '0', '0', '0', '1', '7', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3311', '3', '4', '25', '1', '3000', '0', '0', '0', '0', '0', '1', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3312', '3', '4', '15', '2', '6000', '1000', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('3313', '3', '4', '25', '1', '6000', '0', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('3315', '3', '4', '41', '1', '8900', '0', '0', '0', '0', '0', '3', '6', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('3316', '3', '4', '36', '2', '11000', '1900', '1', '0', '1', '0', '2', '3', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('3317', '3', '4', '31', '2', '12000', '2400', '0', '0', '0', '0', '3', '3', '3', '0', '0');
INSERT INTO `iteminfo` VALUES ('3318', '3', '4', '51', '1', '7300', '0', '0', '0', '0', '0', '2', '5', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3319', '3', '4', '46', '1', '8900', '0', '0', '0', '0', '0', '2', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3324', '3', '4', '56', '1', '17000', '0', '0', '0', '0', '0', '4', '10', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3330', '3', '4', '70', '1', '21200', '0', '0', '0', '0', '0', '6', '8', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3340', '3', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3341', '3', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3342', '3', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3343', '3', '4', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3401', '4', '4', '2', '1', '2600', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3402', '4', '4', '6', '1', '3000', '0', '1', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3403', '4', '4', '1', '1', '3400', '0', '1', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3404', '4', '4', '10', '1', '4600', '0', '3', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3405', '4', '4', '16', '1', '6300', '0', '3', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3408', '4', '4', '20', '1', '9000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3409', '4', '4', '10', '2', '9000', '1600', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3410', '4', '4', '28', '1', '11000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3411', '4', '4', '25', '1', '9000', '0', '1', '2', '2', '1', '1', '2', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3412', '4', '4', '21', '2', '25700', '4600', '3', '3', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3413', '4', '4', '36', '2', '40900', '7300', '4', '2', '2', '2', '0', '2', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('3414', '4', '4', '33', '1', '16500', '0', '2', '2', '2', '1', '1', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3415', '4', '4', '41', '1', '16500', '0', '2', '2', '3', '0', '2', '0', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('3416', '4', '4', '20', '2', '25700', '4600', '3', '2', '3', '0', '2', '0', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('3418', '4', '4', '41', '1', '16500', '0', '2', '2', '4', '4', '0', '0', '-5', '0', '1');
INSERT INTO `iteminfo` VALUES ('3419', '4', '4', '51', '1', '16500', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3420', '4', '4', '46', '1', '20400', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3422', '4', '4', '25', '2', '51000', '9100', '3', '1', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3423', '4', '4', '55', '1', '32200', '0', '2', '1', '3', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3424', '4', '4', '61', '1', '40900', '0', '3', '3', '3', '3', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3425', '4', '4', '25', '2', '86700', '15400', '4', '3', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3426', '4', '4', '65', '1', '86700', '0', '4', '3', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3430', '4', '4', '70', '1', '51000', '0', '3', '3', '3', '2', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3433', '4', '4', '15', '2', '24750', '4400', '2', '2', '1', '5', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('3434', '4', '4', '10', '0', '100', '0', '3', '3', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3435', '4', '4', '30', '2', '97800', '17600', '3', '4', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3436', '4', '4', '15', '2', '13500', '2400', '4', '1', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('3437', '4', '4', '25', '1', '13500', '0', '3', '2', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('3501', '5', '4', '2', '1', '2000', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3504', '5', '4', '11', '1', '2500', '0', '1', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3508', '5', '4', '21', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3509', '5', '4', '11', '2', '3400', '600', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3510', '5', '4', '28', '1', '4000', '1500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3511', '5', '4', '25', '1', '2200', '1000', '0', '1', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3512', '5', '4', '21', '2', '4000', '700', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3513', '5', '4', '36', '2', '5600', '1000', '1', '2', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('3514', '5', '4', '33', '1', '6800', '2500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3515', '5', '4', '41', '1', '4000', '0', '1', '1', '1', '0', '1', '0', '0', '100', '0');
INSERT INTO `iteminfo` VALUES ('3518', '5', '4', '41', '1', '6800', '2500', '2', '2', '3', '2', '0', '0', '-6', '0', '1');
INSERT INTO `iteminfo` VALUES ('3519', '5', '4', '51', '1', '6800', '0', '2', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3520', '5', '4', '45', '1', '8200', '3000', '2', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3523', '5', '4', '45', '1', '8200', '3000', '1', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3524', '5', '4', '55', '1', '10000', '3700', '2', '2', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('3525', '5', '4', '25', '2', '24400', '8700', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3526', '5', '4', '65', '1', '24400', '0', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3530', '5', '4', '70', '1', '14400', '0', '2', '2', '1', '1', '2', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3533', '5', '4', '15', '2', '12300', '4500', '2', '2', '1', '2', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('3534', '5', '4', '10', '0', '100', '0', '2', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3535', '5', '4', '30', '2', '27000', '9500', '2', '3', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('3536', '5', '4', '15', '2', '3400', '600', '1', '1', '1', '0', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('3537', '5', '4', '25', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4001', '0', '8', '2', '1', '2700', '0', '0', '0', '0', '0', '1', '0', '6', '120', '0');
INSERT INTO `iteminfo` VALUES ('4002', '0', '8', '6', '1', '4000', '0', '0', '0', '0', '0', '2', '0', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('4004', '0', '8', '11', '1', '7000', '0', '0', '0', '0', '0', '2', '0', '8', '120', '0');
INSERT INTO `iteminfo` VALUES ('4005', '0', '8', '14', '1', '13200', '0', '0', '0', '0', '0', '3', '0', '8', '240', '0');
INSERT INTO `iteminfo` VALUES ('4008', '0', '8', '21', '1', '27000', '0', '0', '0', '0', '0', '4', '0', '8', '960', '0');
INSERT INTO `iteminfo` VALUES ('4009', '0', '8', '11', '2', '27000', '4800', '0', '0', '0', '0', '4', '0', '8', '960', '0');
INSERT INTO `iteminfo` VALUES ('4010', '0', '8', '21', '2', '33000', '5900', '0', '0', '0', '0', '1', '0', '5', '480', '0');
INSERT INTO `iteminfo` VALUES ('4011', '0', '8', '11', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '10', '720', '1');
INSERT INTO `iteminfo` VALUES ('4012', '0', '8', '15', '2', '27000', '4800', '0', '0', '0', '0', '2', '4', '6', '200', '0');
INSERT INTO `iteminfo` VALUES ('4013', '0', '8', '25', '1', '27000', '0', '0', '0', '0', '0', '3', '6', '8', '400', '0');
INSERT INTO `iteminfo` VALUES ('4015', '0', '8', '29', '1', '39500', '0', '0', '0', '0', '0', '3', '0', '10', '1200', '0');
INSERT INTO `iteminfo` VALUES ('4016', '0', '8', '36', '2', '48300', '8600', '0', '0', '0', '0', '2', '5', '8', '200', '0');
INSERT INTO `iteminfo` VALUES ('4017', '0', '8', '31', '2', '47500', '9500', '0', '0', '0', '0', '0', '7', '7', '0', '0');
INSERT INTO `iteminfo` VALUES ('4018', '0', '8', '40', '1', '48300', '0', '0', '0', '0', '0', '3', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('4019', '0', '8', '45', '1', '58900', '0', '0', '0', '0', '0', '3', '0', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('4024', '0', '8', '61', '1', '137000', '0', '0', '0', '0', '0', '5', '4', '10', '1200', '1');
INSERT INTO `iteminfo` VALUES ('4030', '0', '8', '70', '1', '215000', '0', '0', '0', '0', '0', '8', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('4040', '0', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4041', '0', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4042', '0', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4043', '0', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4101', '1', '8', '2', '1', '2800', '0', '0', '0', '0', '0', '0', '5', '5', '0', '0');
INSERT INTO `iteminfo` VALUES ('4104', '1', '8', '11', '1', '5500', '0', '0', '0', '0', '0', '0', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('4105', '1', '8', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '9', '0', '0');
INSERT INTO `iteminfo` VALUES ('4108', '1', '8', '21', '1', '13200', '0', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('4109', '1', '8', '11', '2', '13200', '2300', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('4110', '1', '8', '21', '2', '16000', '2800', '0', '0', '0', '0', '0', '9', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('4111', '1', '8', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('4112', '1', '8', '15', '2', '13200', '2300', '0', '0', '0', '0', '1', '8', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('4113', '1', '8', '25', '1', '13200', '0', '0', '0', '0', '0', '2', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('4115', '1', '8', '41', '1', '19800', '0', '0', '0', '0', '0', '0', '10', '10', '480', '0');
INSERT INTO `iteminfo` VALUES ('4116', '1', '8', '36', '2', '24600', '4400', '0', '0', '0', '0', '1', '10', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('4117', '1', '8', '31', '2', '34000', '6800', '0', '0', '0', '0', '1', '11', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('4118', '1', '8', '51', '1', '24600', '0', '0', '0', '0', '0', '0', '11', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('4119', '1', '8', '46', '1', '30700', '0', '0', '0', '0', '0', '0', '12', '11', '0', '1');
INSERT INTO `iteminfo` VALUES ('4124', '1', '8', '61', '1', '81300', '0', '0', '0', '0', '0', '0', '16', '16', '0', '1');
INSERT INTO `iteminfo` VALUES ('4130', '1', '8', '70', '1', '164000', '0', '0', '0', '0', '0', '0', '15', '16', '0', '0');
INSERT INTO `iteminfo` VALUES ('4140', '1', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4141', '1', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4142', '1', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4143', '1', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4201', '2', '8', '2', '1', '2100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4204', '2', '8', '11', '1', '3100', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4208', '2', '8', '21', '1', '8300', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4209', '2', '8', '11', '2', '8300', '1400', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4210', '2', '8', '21', '2', '10000', '1800', '0', '0', '0', '0', '0', '13', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4211', '2', '8', '25', '1', '3600', '0', '0', '0', '0', '0', '0', '9', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4212', '2', '8', '15', '2', '8300', '1400', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('4213', '2', '8', '25', '1', '8300', '0', '0', '0', '0', '0', '2', '8', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('4215', '2', '8', '34', '1', '8300', '0', '0', '0', '0', '0', '0', '10', '0', '480', '0');
INSERT INTO `iteminfo` VALUES ('4216', '2', '8', '36', '2', '15000', '2700', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('4217', '2', '8', '31', '2', '21500', '4300', '0', '0', '0', '0', '0', '6', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('4218', '2', '8', '40', '1', '10000', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4219', '2', '8', '45', '1', '12200', '0', '0', '0', '0', '0', '0', '15', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4224', '2', '8', '61', '1', '23400', '0', '0', '0', '0', '0', '0', '20', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4230', '2', '8', '70', '1', '28600', '0', '0', '0', '0', '0', '0', '16', '4', '0', '0');
INSERT INTO `iteminfo` VALUES ('4240', '2', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4241', '2', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4242', '2', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4243', '2', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4301', '3', '8', '2', '1', '1700', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4304', '3', '8', '11', '1', '3000', '0', '0', '0', '0', '0', '2', '4', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4308', '3', '8', '21', '1', '6000', '0', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4309', '3', '8', '11', '2', '6000', '1000', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4310', '3', '8', '21', '2', '7300', '1300', '0', '0', '0', '0', '1', '7', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4311', '3', '8', '25', '1', '3000', '0', '0', '0', '0', '0', '1', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4312', '3', '8', '15', '2', '6000', '1000', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('4313', '3', '8', '25', '1', '6000', '0', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('4315', '3', '8', '41', '1', '8900', '0', '0', '0', '0', '0', '3', '6', '0', '240', '0');
INSERT INTO `iteminfo` VALUES ('4316', '3', '8', '36', '2', '11000', '1900', '1', '0', '1', '0', '2', '3', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('4317', '3', '8', '31', '2', '12000', '2400', '0', '0', '0', '0', '3', '3', '3', '0', '0');
INSERT INTO `iteminfo` VALUES ('4318', '3', '8', '51', '1', '7300', '0', '0', '0', '0', '0', '2', '5', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4319', '3', '8', '46', '1', '8900', '0', '0', '0', '0', '0', '2', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4324', '3', '8', '56', '1', '17000', '0', '0', '0', '0', '0', '4', '10', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4330', '3', '8', '70', '1', '21200', '0', '0', '0', '0', '0', '6', '8', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4340', '3', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4341', '3', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4342', '3', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4343', '3', '8', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4401', '4', '8', '2', '1', '2600', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4402', '4', '8', '6', '1', '3000', '0', '1', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4403', '4', '8', '1', '1', '3400', '0', '1', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4404', '4', '8', '10', '1', '4600', '0', '3', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4405', '4', '8', '16', '1', '6300', '0', '3', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4408', '4', '8', '20', '1', '9000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4409', '4', '8', '10', '2', '9000', '1600', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4410', '4', '8', '28', '1', '11000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4411', '4', '8', '25', '1', '9000', '0', '1', '2', '2', '1', '1', '2', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4412', '4', '8', '21', '2', '25700', '4600', '3', '3', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4413', '4', '8', '36', '2', '40900', '7300', '4', '2', '2', '2', '0', '2', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('4414', '4', '8', '33', '1', '16500', '0', '2', '2', '2', '1', '1', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4415', '4', '8', '41', '1', '16500', '0', '2', '2', '3', '0', '2', '0', '0', '240', '0');
INSERT INTO `iteminfo` VALUES ('4416', '4', '8', '20', '2', '25700', '4600', '3', '2', '3', '0', '2', '0', '0', '240', '0');
INSERT INTO `iteminfo` VALUES ('4418', '4', '8', '41', '1', '16500', '0', '2', '3', '3', '4', '0', '0', '-5', '0', '1');
INSERT INTO `iteminfo` VALUES ('4419', '4', '8', '51', '1', '16500', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4420', '4', '8', '46', '1', '20400', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4422', '4', '8', '25', '2', '51000', '9100', '2', '2', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4423', '4', '8', '55', '1', '32200', '0', '2', '1', '3', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4424', '4', '8', '61', '1', '40900', '0', '3', '3', '3', '3', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4425', '4', '8', '25', '2', '86700', '15400', '4', '3', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4426', '4', '8', '65', '1', '86700', '0', '4', '3', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4430', '4', '8', '70', '1', '51000', '0', '3', '3', '3', '2', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4433', '4', '8', '15', '2', '24750', '4400', '2', '2', '1', '5', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('4434', '4', '8', '10', '0', '100', '0', '3', '3', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4435', '4', '8', '30', '2', '97800', '17600', '3', '4', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4436', '4', '8', '15', '2', '13500', '2400', '4', '1', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('4437', '4', '8', '25', '1', '13500', '0', '3', '2', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('4501', '5', '8', '2', '1', '2000', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4504', '5', '8', '11', '1', '2500', '0', '1', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4508', '5', '8', '21', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4509', '5', '8', '11', '2', '3400', '600', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4510', '5', '8', '28', '1', '4000', '1500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4511', '5', '8', '25', '1', '2200', '1000', '0', '1', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4512', '5', '8', '21', '2', '4000', '700', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4513', '5', '8', '36', '2', '5600', '1000', '1', '2', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('4514', '5', '8', '33', '1', '6800', '2500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4515', '5', '8', '41', '1', '4000', '0', '1', '1', '1', '0', '1', '0', '0', '120', '0');
INSERT INTO `iteminfo` VALUES ('4518', '5', '8', '41', '1', '6800', '2500', '2', '2', '3', '2', '0', '0', '-6', '0', '1');
INSERT INTO `iteminfo` VALUES ('4519', '5', '8', '51', '1', '6800', '0', '2', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4520', '5', '8', '45', '1', '8200', '3000', '2', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4523', '5', '8', '45', '1', '8200', '3000', '1', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4524', '5', '8', '55', '1', '10000', '3700', '2', '2', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('4525', '5', '8', '25', '2', '24400', '8700', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4526', '5', '8', '65', '1', '24400', '0', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4530', '5', '8', '70', '1', '14400', '0', '2', '2', '1', '1', '2', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4533', '5', '8', '15', '2', '12300', '4500', '2', '2', '1', '2', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('4534', '5', '8', '10', '0', '100', '0', '2', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4535', '5', '8', '30', '2', '27000', '9500', '2', '3', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('4536', '5', '8', '15', '2', '3400', '600', '1', '1', '1', '0', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('4537', '5', '8', '25', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5001', '0', '16', '2', '1', '2700', '0', '0', '0', '0', '0', '1', '0', '6', '60', '0');
INSERT INTO `iteminfo` VALUES ('5002', '0', '16', '6', '1', '4000', '0', '0', '0', '0', '0', '2', '0', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('5004', '0', '16', '11', '1', '7000', '0', '0', '0', '0', '0', '2', '0', '8', '60', '0');
INSERT INTO `iteminfo` VALUES ('5005', '0', '16', '14', '1', '13200', '0', '0', '0', '0', '0', '3', '0', '8', '120', '0');
INSERT INTO `iteminfo` VALUES ('5008', '0', '16', '21', '1', '27000', '0', '0', '0', '0', '0', '4', '0', '8', '480', '0');
INSERT INTO `iteminfo` VALUES ('5009', '0', '16', '11', '2', '27000', '4800', '0', '0', '0', '0', '4', '0', '8', '480', '0');
INSERT INTO `iteminfo` VALUES ('5010', '0', '16', '21', '2', '33000', '5900', '0', '0', '0', '0', '1', '0', '5', '240', '0');
INSERT INTO `iteminfo` VALUES ('5011', '0', '16', '11', '1', '7000', '0', '0', '0', '0', '0', '0', '0', '10', '360', '1');
INSERT INTO `iteminfo` VALUES ('5012', '0', '16', '15', '2', '27000', '4800', '0', '0', '0', '0', '2', '4', '6', '200', '0');
INSERT INTO `iteminfo` VALUES ('5013', '0', '16', '25', '1', '27000', '0', '0', '0', '0', '0', '3', '6', '8', '400', '0');
INSERT INTO `iteminfo` VALUES ('5015', '0', '16', '29', '1', '39500', '0', '0', '0', '0', '0', '3', '0', '10', '600', '0');
INSERT INTO `iteminfo` VALUES ('5016', '0', '16', '36', '2', '48300', '8600', '0', '0', '0', '0', '2', '5', '8', '200', '0');
INSERT INTO `iteminfo` VALUES ('5017', '0', '16', '31', '2', '47500', '9500', '0', '0', '0', '0', '6', '8', '8', '400', '0');
INSERT INTO `iteminfo` VALUES ('5018', '0', '16', '40', '1', '48300', '0', '0', '0', '0', '0', '3', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('5019', '0', '16', '45', '1', '58900', '0', '0', '0', '0', '0', '3', '0', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('5024', '0', '16', '61', '1', '137000', '0', '0', '0', '0', '0', '5', '4', '10', '600', '1');
INSERT INTO `iteminfo` VALUES ('5030', '0', '16', '70', '1', '215000', '0', '0', '0', '0', '0', '8', '0', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('5040', '0', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5041', '0', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5042', '0', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5043', '0', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5101', '1', '16', '2', '1', '2800', '0', '0', '0', '0', '0', '0', '5', '5', '0', '0');
INSERT INTO `iteminfo` VALUES ('5104', '1', '16', '11', '1', '5500', '0', '0', '0', '0', '0', '0', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('5105', '1', '16', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '9', '0', '0');
INSERT INTO `iteminfo` VALUES ('5108', '1', '16', '21', '1', '13200', '0', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('5109', '1', '16', '11', '2', '13200', '2300', '0', '0', '0', '0', '0', '12', '12', '0', '0');
INSERT INTO `iteminfo` VALUES ('5110', '1', '16', '21', '2', '16000', '2800', '0', '0', '0', '0', '0', '9', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('5111', '1', '16', '15', '1', '9100', '0', '0', '0', '0', '0', '0', '10', '8', '0', '1');
INSERT INTO `iteminfo` VALUES ('5112', '1', '16', '15', '2', '13200', '2300', '0', '0', '0', '0', '1', '8', '10', '0', '0');
INSERT INTO `iteminfo` VALUES ('5113', '1', '16', '25', '1', '13200', '0', '0', '0', '0', '0', '2', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('5115', '1', '16', '41', '1', '19800', '0', '0', '0', '0', '0', '0', '10', '10', '240', '0');
INSERT INTO `iteminfo` VALUES ('5116', '1', '16', '36', '2', '24600', '4400', '0', '0', '0', '0', '1', '10', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('5117', '1', '16', '31', '2', '34000', '6800', '0', '0', '0', '0', '2', '10', '10', '200', '0');
INSERT INTO `iteminfo` VALUES ('5118', '1', '16', '51', '1', '24600', '0', '0', '0', '0', '0', '0', '11', '11', '0', '0');
INSERT INTO `iteminfo` VALUES ('5119', '1', '16', '46', '1', '30700', '0', '0', '0', '0', '0', '0', '12', '11', '0', '1');
INSERT INTO `iteminfo` VALUES ('5124', '1', '16', '61', '1', '81300', '0', '0', '0', '0', '0', '0', '16', '16', '0', '1');
INSERT INTO `iteminfo` VALUES ('5130', '1', '16', '70', '1', '164000', '0', '0', '0', '0', '0', '0', '15', '16', '0', '0');
INSERT INTO `iteminfo` VALUES ('5140', '1', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5141', '1', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5142', '1', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5143', '1', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5201', '2', '16', '2', '1', '2100', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5204', '2', '16', '11', '1', '3100', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5208', '2', '16', '21', '1', '8300', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5209', '2', '16', '11', '2', '8300', '1400', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5210', '2', '16', '21', '2', '10000', '1800', '0', '0', '0', '0', '0', '13', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5211', '2', '16', '25', '1', '3600', '0', '0', '0', '0', '0', '0', '9', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5212', '2', '16', '15', '2', '8300', '1400', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('5213', '2', '16', '25', '1', '8300', '0', '0', '0', '0', '0', '2', '8', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('5215', '2', '16', '34', '1', '8300', '0', '0', '0', '0', '0', '0', '10', '0', '240', '0');
INSERT INTO `iteminfo` VALUES ('5216', '2', '16', '36', '2', '15000', '2700', '0', '0', '0', '0', '1', '9', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('5217', '2', '16', '31', '2', '21500', '4300', '0', '0', '0', '0', '2', '5', '5', '240', '0');
INSERT INTO `iteminfo` VALUES ('5218', '2', '16', '40', '1', '10000', '0', '0', '0', '0', '0', '0', '14', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5219', '2', '16', '45', '1', '12200', '0', '0', '0', '0', '0', '0', '15', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5224', '2', '16', '61', '1', '23400', '0', '0', '0', '0', '0', '0', '20', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5230', '2', '16', '70', '1', '28600', '0', '0', '0', '0', '0', '0', '16', '4', '0', '0');
INSERT INTO `iteminfo` VALUES ('5240', '2', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5241', '2', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5242', '2', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5243', '2', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5301', '3', '16', '2', '1', '1700', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5304', '3', '16', '11', '1', '3000', '0', '0', '0', '0', '0', '2', '4', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5308', '3', '16', '21', '1', '6000', '0', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5309', '3', '16', '11', '2', '6000', '1000', '0', '0', '0', '0', '3', '6', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5310', '3', '16', '21', '2', '7300', '1300', '0', '0', '0', '0', '1', '7', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5311', '3', '16', '25', '1', '3000', '0', '0', '0', '0', '0', '1', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5312', '3', '16', '15', '2', '6000', '1000', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('5313', '3', '16', '25', '1', '6000', '0', '1', '0', '1', '0', '2', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('5315', '3', '16', '41', '1', '8900', '0', '0', '0', '0', '0', '3', '6', '0', '120', '0');
INSERT INTO `iteminfo` VALUES ('5316', '3', '16', '36', '2', '11000', '1900', '1', '0', '1', '0', '2', '3', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('5317', '3', '16', '31', '2', '12000', '2400', '0', '0', '0', '0', '5', '3', '3', '100', '0');
INSERT INTO `iteminfo` VALUES ('5318', '3', '16', '51', '1', '7300', '0', '0', '0', '0', '0', '2', '5', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5319', '3', '16', '46', '1', '8900', '0', '0', '0', '0', '0', '2', '6', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5324', '3', '16', '56', '1', '17000', '0', '0', '0', '0', '0', '4', '10', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5330', '3', '16', '70', '1', '21200', '0', '0', '0', '0', '0', '6', '8', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5340', '3', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5341', '3', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5342', '3', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5343', '3', '16', '1', '0', '100', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5401', '4', '16', '2', '1', '2600', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5402', '4', '16', '6', '1', '3000', '0', '1', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5403', '4', '16', '1', '1', '3400', '0', '1', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5404', '4', '16', '10', '1', '4600', '0', '3', '2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5405', '4', '16', '16', '1', '6300', '0', '3', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5408', '4', '16', '20', '1', '9000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5409', '4', '16', '10', '2', '9000', '1600', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5410', '4', '16', '28', '1', '11000', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5411', '4', '16', '25', '1', '9000', '0', '1', '2', '2', '1', '1', '2', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5412', '4', '16', '21', '2', '25700', '4600', '3', '3', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5413', '4', '16', '36', '2', '40900', '7300', '4', '2', '2', '2', '0', '2', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('5414', '4', '16', '33', '1', '16500', '0', '2', '2', '2', '1', '1', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5415', '4', '16', '41', '1', '16500', '0', '2', '2', '3', '0', '2', '0', '0', '120', '0');
INSERT INTO `iteminfo` VALUES ('5416', '4', '16', '20', '2', '25700', '4600', '3', '2', '3', '0', '2', '0', '0', '120', '0');
INSERT INTO `iteminfo` VALUES ('5418', '4', '16', '41', '1', '16500', '0', '2', '2', '4', '4', '0', '0', '-5', '0', '1');
INSERT INTO `iteminfo` VALUES ('5419', '4', '16', '51', '1', '16500', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5420', '4', '16', '46', '1', '20400', '0', '2', '2', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5422', '4', '16', '25', '2', '51000', '9100', '3', '1', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5423', '4', '16', '55', '1', '32200', '0', '2', '1', '3', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5424', '4', '16', '61', '1', '40900', '0', '3', '3', '3', '3', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5425', '4', '16', '25', '2', '86700', '15400', '4', '3', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5426', '4', '16', '65', '1', '86700', '0', '4', '3', '3', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5430', '4', '16', '70', '1', '51000', '0', '3', '3', '3', '2', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5433', '4', '16', '15', '2', '24750', '4400', '2', '2', '1', '5', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('5434', '4', '16', '10', '0', '100', '0', '3', '3', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5435', '4', '16', '30', '2', '97800', '17600', '3', '4', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5436', '4', '16', '15', '2', '13500', '2400', '4', '1', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('5437', '4', '16', '25', '1', '13500', '0', '3', '2', '2', '1', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('5501', '5', '16', '2', '1', '2000', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5504', '5', '16', '11', '1', '2500', '0', '1', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5508', '5', '16', '21', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5509', '5', '16', '11', '2', '3400', '600', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5510', '5', '16', '28', '1', '4000', '1500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5511', '5', '16', '25', '1', '2200', '1000', '0', '1', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5512', '5', '16', '21', '2', '4000', '700', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5513', '5', '16', '36', '2', '5600', '1000', '1', '2', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('5514', '5', '16', '33', '1', '6800', '2500', '1', '2', '1', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5515', '5', '16', '41', '1', '4000', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5518', '5', '16', '41', '1', '6800', '2500', '2', '2', '3', '2', '0', '0', '-6', '0', '1');
INSERT INTO `iteminfo` VALUES ('5519', '5', '16', '51', '1', '6800', '0', '2', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5520', '5', '16', '45', '1', '8200', '3000', '2', '1', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5523', '5', '16', '45', '1', '8200', '3000', '1', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5524', '5', '16', '55', '1', '10000', '3700', '2', '2', '2', '1', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('5525', '5', '16', '25', '2', '24400', '8700', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5526', '5', '16', '65', '1', '24400', '0', '3', '2', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5530', '5', '16', '70', '1', '14400', '0', '2', '2', '1', '1', '2', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5533', '5', '16', '15', '2', '12300', '4500', '2', '2', '1', '2', '0', '-1', '-1', '0', '0');
INSERT INTO `iteminfo` VALUES ('5534', '5', '16', '10', '0', '100', '0', '2', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5535', '5', '16', '30', '2', '27000', '9500', '2', '3', '2', '0', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('5536', '5', '16', '15', '2', '3400', '600', '1', '1', '1', '0', '0', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('5537', '5', '16', '25', '1', '3400', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6000', '6', '31', '4', '1', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0');
INSERT INTO `iteminfo` VALUES ('6001', '6', '31', '8', '1', '4800', '0', '0', '0', '0', '1', '1', '0', '0', '300', '0');
INSERT INTO `iteminfo` VALUES ('6002', '6', '31', '5', '0', '9100', '0', '1', '1', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6003', '6', '31', '5', '0', '5400', '0', '0', '0', '0', '0', '0', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('6004', '6', '31', '10', '1', '7000', '0', '0', '0', '0', '0', '0', '6', '6', '0', '0');
INSERT INTO `iteminfo` VALUES ('6005', '6', '31', '20', '1', '10300', '0', '0', '0', '0', '0', '0', '8', '8', '0', '0');
INSERT INTO `iteminfo` VALUES ('6006', '6', '31', '5', '1', '13700', '0', '0', '0', '0', '0', '0', '9', '9', '0', '1');
INSERT INTO `iteminfo` VALUES ('6007', '6', '31', '10', '1', '7000', '0', '0', '0', '0', '0', '2', '0', '0', '600', '0');
INSERT INTO `iteminfo` VALUES ('6008', '6', '31', '20', '1', '10300', '0', '0', '0', '0', '0', '2', '0', '0', '900', '0');
INSERT INTO `iteminfo` VALUES ('6009', '6', '31', '10', '1', '13700', '0', '0', '0', '0', '0', '2', '0', '0', '1100', '1');
INSERT INTO `iteminfo` VALUES ('6010', '6', '31', '25', '1', '15700', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6011', '6', '31', '30', '1', '28300', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6012', '6', '31', '20', '1', '24400', '0', '0', '0', '0', '0', '0', '19', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('6013', '6', '31', '25', '1', '15700', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0');
INSERT INTO `iteminfo` VALUES ('6014', '6', '31', '30', '1', '28300', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0');
INSERT INTO `iteminfo` VALUES ('6015', '6', '31', '20', '1', '24400', '0', '0', '0', '0', '0', '0', '0', '19', '0', '1');
INSERT INTO `iteminfo` VALUES ('6016', '6', '31', '10', '1', '4200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6017', '6', '31', '20', '1', '9100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6018', '6', '31', '15', '1', '21000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('6019', '6', '31', '30', '1', '28300', '0', '0', '0', '0', '0', '2', '4', '2', '400', '0');
INSERT INTO `iteminfo` VALUES ('6020', '6', '31', '45', '1', '38400', '0', '0', '0', '0', '0', '3', '4', '2', '200', '0');
INSERT INTO `iteminfo` VALUES ('6021', '6', '31', '30', '1', '38400', '0', '0', '0', '0', '0', '2', '4', '2', '200', '1');
INSERT INTO `iteminfo` VALUES ('6022', '6', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6023', '6', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6024', '6', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6025', '6', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6026', '6', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6027', '6', '31', '20', '1', '28300', '0', '0', '0', '0', '0', '2', '2', '2', '400', '0');
INSERT INTO `iteminfo` VALUES ('6028', '6', '31', '5', '1', '32800', '0', '0', '0', '0', '0', '2', '2', '2', '500', '1');
INSERT INTO `iteminfo` VALUES ('6029', '6', '31', '15', '1', '38400', '0', '0', '0', '0', '0', '2', '2', '2', '600', '1');
INSERT INTO `iteminfo` VALUES ('6030', '6', '31', '20', '1', '28300', '0', '1', '1', '0', '0', '0', '2', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('6031', '6', '31', '5', '1', '32800', '0', '1', '1', '0', '0', '0', '2', '2', '0', '1');
INSERT INTO `iteminfo` VALUES ('6032', '6', '31', '15', '1', '38400', '0', '1', '1', '0', '0', '0', '2', '2', '0', '1');
INSERT INTO `iteminfo` VALUES ('6033', '6', '31', '30', '1', '38400', '0', '1', '1', '1', '1', '1', '2', '2', '200', '0');
INSERT INTO `iteminfo` VALUES ('6034', '6', '31', '15', '1', '45000', '0', '1', '1', '1', '1', '1', '2', '2', '200', '1');
INSERT INTO `iteminfo` VALUES ('6035', '6', '31', '10', '1', '21000', '0', '1', '1', '1', '0', '1', '2', '2', '200', '1');
INSERT INTO `iteminfo` VALUES ('6036', '6', '31', '25', '1', '38400', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0');
INSERT INTO `iteminfo` VALUES ('6037', '6', '31', '10', '1', '45000', '0', '0', '0', '0', '0', '1', '1', '1', '100', '1');
INSERT INTO `iteminfo` VALUES ('6038', '6', '31', '20', '1', '52600', '0', '0', '0', '0', '0', '1', '1', '1', '200', '1');
INSERT INTO `iteminfo` VALUES ('6039', '6', '31', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6040', '6', '31', '15', '2', '28300', '10000', '1', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6041', '6', '31', '5', '2', '9100', '3200', '0', '0', '0', '0', '0', '1', '1', '800', '0');
INSERT INTO `iteminfo` VALUES ('6042', '6', '31', '1', '0', '100', '200', '1', '1', '1', '1', '0', '4', '4', '200', '0');
INSERT INTO `iteminfo` VALUES ('6043', '6', '31', '1', '0', '100', '200', '4', '4', '4', '4', '4', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('6044', '6', '31', '1', '0', '100', '200', '0', '0', '0', '0', '0', '2', '2', '400', '0');
INSERT INTO `iteminfo` VALUES ('6045', '6', '31', '1', '0', '100', '200', '0', '0', '0', '0', '0', '4', '4', '800', '0');
INSERT INTO `iteminfo` VALUES ('7000', '7', '31', '2', '1', '2700', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7001', '7', '31', '5', '0', '12300', '0', '2', '2', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7002', '7', '31', '5', '0', '5800', '0', '0', '0', '0', '0', '0', '0', '0', '800', '0');
INSERT INTO `iteminfo` VALUES ('7003', '7', '31', '10', '1', '3600', '0', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7004', '7', '31', '20', '1', '6900', '0', '2', '1', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7005', '7', '31', '5', '1', '10000', '0', '2', '1', '2', '2', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('7006', '7', '31', '10', '1', '3600', '0', '0', '0', '0', '0', '0', '0', '0', '400', '0');
INSERT INTO `iteminfo` VALUES ('7007', '7', '31', '20', '1', '5800', '0', '0', '0', '0', '0', '0', '0', '0', '600', '0');
INSERT INTO `iteminfo` VALUES ('7008', '7', '31', '10', '1', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '900', '1');
INSERT INTO `iteminfo` VALUES ('7009', '7', '31', '1', '1', '3100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('7010', '7', '31', '15', '1', '4900', '0', '1', '2', '2', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7011', '7', '31', '25', '1', '8300', '0', '2', '2', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7012', '7', '31', '30', '1', '15100', '0', '3', '2', '3', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7013', '7', '31', '1', '1', '4200', '0', '0', '0', '0', '3', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('7014', '7', '31', '3', '1', '8300', '0', '0', '0', '0', '5', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('7015', '7', '31', '1', '1', '4900', '0', '0', '0', '0', '0', '0', '4', '3', '0', '1');
INSERT INTO `iteminfo` VALUES ('7016', '7', '31', '3', '0', '4200', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0');
INSERT INTO `iteminfo` VALUES ('7017', '7', '31', '35', '1', '15100', '0', '0', '0', '2', '2', '0', '0', '0', '500', '0');
INSERT INTO `iteminfo` VALUES ('7018', '7', '31', '35', '1', '15100', '0', '0', '0', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7019', '7', '31', '35', '1', '15100', '0', '0', '0', '2', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7020', '7', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7021', '7', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7022', '7', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7023', '7', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7024', '7', '31', '1', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7025', '7', '31', '8', '1', '3100', '0', '0', '0', '0', '0', '0', '0', '0', '100', '0');
INSERT INTO `iteminfo` VALUES ('7026', '7', '31', '12', '1', '4200', '0', '0', '0', '0', '0', '0', '0', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('7027', '7', '31', '16', '1', '5800', '0', '0', '0', '0', '0', '0', '0', '0', '300', '0');
INSERT INTO `iteminfo` VALUES ('7028', '7', '31', '10', '1', '5800', '0', '1', '0', '0', '0', '0', '0', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('7029', '7', '31', '5', '1', '6900', '0', '1', '0', '0', '0', '0', '0', '0', '300', '1');
INSERT INTO `iteminfo` VALUES ('7030', '7', '31', '10', '1', '8300', '0', '1', '0', '0', '0', '0', '0', '0', '400', '1');
INSERT INTO `iteminfo` VALUES ('7031', '7', '31', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7032', '7', '31', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7033', '7', '31', '10', '2', '8300', '3000', '0', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7034', '7', '31', '20', '2', '19500', '7000', '0', '1', '2', '1', '1', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('7035', '7', '31', '1', '0', '100', '200', '1', '1', '1', '1', '0', '0', '0', '200', '0');
INSERT INTO `iteminfo` VALUES ('7036', '7', '31', '1', '0', '100', '200', '2', '2', '2', '2', '2', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8000', '8', '31', '1', '1', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8001', '8', '31', '4', '1', '2500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8002', '8', '31', '8', '1', '4500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8003', '8', '31', '12', '1', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8004', '8', '31', '17', '1', '12000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('8005', '8', '31', '25', '2', '0', '23000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8006', '8', '31', '11', '2', '0', '12800', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8007', '8', '31', '30', '1', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('8008', '8', '31', '8', '2', '0', '10800', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8009', '8', '31', '35', '1', '45000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('8010', '8', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8013', '8', '31', '1', '0', '0', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8015', '8', '31', '2', '2', '0', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8016', '8', '31', '4', '0', '0', '2700', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8018', '8', '31', '4', '2', '0', '6500', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8021', '8', '31', '8', '2', '0', '9900', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8022', '8', '31', '12', '0', '0', '10800', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8025', '8', '31', '17', '0', '0', '12900', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('8033', '8', '31', '20', '2', '0', '15600', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9000', '10', '1', '1', '0', '1000', '100', '1001', '1101', '1201', '1301', '1401', '1501', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9001', '10', '2', '4', '0', '1000', '100', '2001', '2101', '2201', '2301', '2401', '2501', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9002', '10', '4', '6', '0', '1000', '100', '3001', '3101', '3201', '3301', '3401', '3501', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9003', '10', '8', '9', '0', '1000', '100', '4001', '4101', '4201', '4301', '4401', '4501', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9004', '10', '16', '14', '0', '1000', '100', '5001', '5101', '5201', '5301', '5401', '5501', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9005', '10', '31', '16', '0', '1000', '100', '7001', '7002', '7003', '7004', '7005', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9006', '10', '31', '19', '0', '1000', '100', '7001', '7002', '7003', '7004', '7005', '7006', '7007', '0', '0');
INSERT INTO `iteminfo` VALUES ('9007', '10', '31', '24', '0', '1000', '100', '8000', '8001', '8002', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9008', '10', '31', '26', '0', '1000', '100', '8004', '8005', '8007', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9009', '10', '31', '29', '0', '1000', '100', '6000', '7000', '8000', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9010', '10', '31', '40', '0', '1000', '100', '6001', '7001', '8001', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9011', '10', '31', '40', '0', '1000', '100', '6002', '7002', '7003', '7004', '8002', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9012', '10', '1', '11', '2', '1', '9300', '1009', '1109', '1209', '1309', '1409', '1509', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9013', '10', '2', '11', '2', '1', '9300', '2009', '2109', '2209', '2309', '2409', '2509', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9014', '10', '4', '11', '2', '1', '9300', '3009', '3109', '3209', '3309', '3409', '3509', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9015', '10', '8', '11', '2', '1', '9300', '4009', '4109', '4209', '4309', '4409', '4509', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9016', '10', '16', '11', '2', '1', '9300', '5009', '5109', '5209', '5309', '5409', '5509', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9017', '10', '1', '21', '2', '0', '15000', '1010', '1110', '1210', '1310', '1412', '1512', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9018', '10', '2', '21', '2', '0', '15000', '2010', '2110', '2210', '2310', '2512', '2412', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9019', '10', '4', '21', '2', '0', '15000', '3010', '3110', '3210', '3310', '3412', '3512', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9020', '10', '8', '21', '2', '0', '15000', '4010', '4110', '4210', '4310', '4412', '4512', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9021', '10', '16', '21', '2', '0', '15000', '5010', '5110', '5210', '5310', '5412', '5512', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9022', '10', '1', '36', '2', '0', '25000', '1016', '1116', '1216', '1316', '1413', '1513', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9023', '10', '2', '36', '2', '0', '25000', '2016', '2116', '2216', '2316', '2413', '2513', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9024', '10', '4', '36', '2', '0', '25000', '3016', '3116', '3216', '3316', '3413', '3513', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9025', '10', '8', '36', '2', '0', '25000', '4016', '4116', '4216', '4316', '4413', '4513', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9026', '10', '16', '36', '2', '0', '25000', '5016', '5116', '5216', '5316', '5413', '5513', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9027', '10', '1', '31', '2', '0', '45000', '1017', '1117', '1217', '1317', '1435', '1535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9028', '10', '2', '31', '2', '0', '45000', '2017', '2117', '2217', '2317', '2435', '2535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9029', '10', '4', '31', '2', '0', '45000', '3017', '3117', '3217', '3317', '3435', '3535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9030', '10', '8', '31', '2', '0', '45000', '4017', '4117', '4217', '4317', '4435', '4535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9031', '10', '16', '31', '2', '0', '45000', '5017', '5117', '5217', '5317', '5435', '5535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9032', '10', '1', '31', '2', '0', '36000', '1017', '1117', '1217', '1317', '1435', '1535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9033', '10', '2', '31', '2', '0', '36000', '2017', '2117', '2217', '2317', '2435', '2535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9034', '10', '4', '31', '2', '0', '36000', '3017', '3117', '3217', '3317', '3435', '3535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9035', '10', '8', '31', '2', '0', '36000', '4017', '4117', '4217', '4317', '4435', '4535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('9036', '10', '16', '31', '2', '0', '36000', '5017', '5117', '5217', '5317', '5435', '5535', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10000', '9', '31', '1', '2', '0', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10001', '9', '31', '1', '2', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('10002', '9', '31', '1', '2', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10003', '9', '31', '1', '2', '0', '12000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10004', '9', '31', '1', '2', '0', '19000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10005', '9', '31', '1', '2', '0', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10006', '9', '31', '1', '2', '0', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10007', '9', '31', '1', '2', '0', '12000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10008', '9', '31', '1', '2', '0', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10009', '9', '31', '1', '1', '100000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10010', '9', '31', '1', '2', '0', '31000', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10011', '9', '31', '1', '2', '0', '2900', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10012', '9', '31', '1', '2', '0', '6400', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10013', '9', '31', '1', '2', '0', '9900', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('10014', '9', '31', '1', '2', '0', '16500', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('11000', '11', '31', '1', '0', '0', '1', '10', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('11001', '11', '31', '1', '0', '0', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('11002', '11', '31', '1', '0', '0', '1', '30', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('11003', '11', '31', '1', '0', '0', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('11004', '11', '31', '1', '0', '0', '1', '70', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12000', '12', '31', '1', '2', '0', '700', '1', '10', '100', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12001', '12', '31', '1', '2', '0', '1900', '1', '30', '1000', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12002', '12', '31', '1', '2', '0', '5500', '1', '100', '3000', '1', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12003', '12', '31', '1', '2', '0', '1100', '1', '10', '100', '9', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12004', '12', '31', '1', '2', '0', '3000', '1', '30', '1000', '9', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12005', '12', '31', '1', '2', '0', '8800', '1', '100', '3000', '9', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12006', '12', '31', '1', '2', '0', '700', '1', '10', '100', '6', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12007', '12', '31', '1', '2', '0', '1900', '1', '30', '1000', '6', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12008', '12', '31', '1', '2', '0', '5500', '1', '100', '3000', '6', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12010', '12', '31', '1', '1', '5000', '0', '2', '10', '0', '10', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12011', '12', '31', '1', '1', '2800', '0', '2', '10', '0', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12012', '12', '31', '1', '1', '7600', '0', '2', '30', '0', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12013', '12', '31', '1', '1', '16400', '0', '2', '100', '0', '2', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12014', '12', '31', '1', '1', '14000', '0', '2', '30', '0', '10', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12015', '12', '31', '1', '1', '40000', '0', '2', '100', '0', '10', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12016', '12', '31', '1', '1', '2800', '0', '2', '10', '0', '7', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12017', '12', '31', '1', '1', '7600', '0', '2', '30', '0', '7', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12018', '12', '31', '1', '1', '16400', '0', '2', '100', '0', '7', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12020', '12', '31', '1', '1', '400', '0', '2', '1', '0', '3', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12021', '12', '31', '1', '1', '3600', '0', '2', '10', '0', '3', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12022', '12', '31', '1', '1', '34000', '0', '2', '100', '0', '3', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12030', '12', '31', '1', '2', '0', '600', '1', '5', '100', '4', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12031', '12', '31', '1', '2', '0', '3200', '1', '30', '1000', '4', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12032', '12', '31', '1', '2', '0', '10200', '1', '100', '4000', '4', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12041', '12', '31', '1', '1', '2400', '0', '3', '5', '0', '5', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12042', '12', '31', '1', '1', '12800', '0', '3', '30', '0', '5', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12043', '12', '31', '1', '1', '40800', '0', '3', '100', '0', '5', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12050', '12', '31', '1', '2', '0', '500', '1', '10', '100', '8', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12051', '12', '31', '1', '2', '0', '1400', '1', '30', '1000', '8', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12052', '12', '31', '1', '2', '0', '4000', '1', '100', '3000', '8', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12060', '12', '31', '1', '2', '0', '1100', '1', '10', '100', '11', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12061', '12', '31', '1', '2', '0', '3000', '1', '30', '1000', '11', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12062', '12', '31', '1', '2', '0', '8800', '1', '100', '3000', '11', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12070', '12', '31', '1', '1', '5000', '0', '2', '10', '0', '12', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12071', '12', '31', '1', '1', '14000', '0', '2', '30', '0', '12', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12072', '12', '31', '1', '1', '40000', '0', '2', '100', '0', '12', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12080', '12', '31', '1', '2', '0', '800', '2', '10', '100', '13', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12081', '12', '31', '1', '2', '0', '2200', '2', '30', '1000', '13', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12082', '12', '31', '1', '2', '0', '7200', '2', '100', '3000', '13', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12090', '12', '31', '1', '2', '0', '900', '2', '10', '100', '14', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12091', '12', '31', '1', '2', '0', '2500', '2', '30', '1000', '14', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12092', '12', '31', '1', '2', '0', '7200', '2', '100', '3000', '14', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('12200', '12', '31', '1', '2', '0', '400', '1', '10', '100', '1001', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12201', '12', '31', '1', '2', '0', '1000', '1', '30', '1000', '1001', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12202', '12', '31', '1', '2', '0', '2300', '1', '100', '3000', '1001', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12203', '12', '31', '1', '2', '0', '600', '1', '10', '100', '1009', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12204', '12', '31', '1', '2', '0', '1500', '1', '30', '1000', '1009', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12205', '12', '31', '1', '2', '0', '4400', '1', '100', '3000', '1009', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12206', '12', '31', '1', '2', '0', '400', '1', '10', '100', '1006', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12207', '12', '31', '1', '2', '0', '1000', '1', '30', '1000', '1006', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12208', '12', '31', '1', '2', '0', '2300', '1', '100', '3000', '1006', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12210', '12', '31', '1', '1', '2300', '0', '2', '10', '0', '1010', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12211', '12', '31', '1', '1', '1400', '0', '2', '10', '0', '1002', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12212', '12', '31', '1', '1', '3800', '0', '2', '30', '0', '1002', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12213', '12', '31', '1', '1', '8200', '0', '2', '100', '0', '1002', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12214', '12', '31', '1', '1', '6000', '0', '2', '30', '0', '1010', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12215', '12', '31', '1', '1', '17600', '0', '2', '100', '0', '1010', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12216', '12', '31', '1', '1', '1400', '0', '2', '10', '0', '1007', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12217', '12', '31', '1', '1', '3800', '0', '2', '30', '0', '1007', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12218', '12', '31', '1', '1', '8200', '0', '2', '100', '0', '1007', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12220', '12', '31', '1', '1', '200', '0', '2', '1', '0', '1003', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12221', '12', '31', '1', '1', '1800', '0', '2', '10', '0', '1003', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12222', '12', '31', '1', '1', '17000', '0', '2', '100', '0', '1003', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12230', '12', '31', '1', '2', '0', '300', '1', '5', '100', '1004', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12231', '12', '31', '1', '2', '0', '1600', '1', '30', '1000', '1004', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12232', '12', '31', '1', '2', '0', '5100', '1', '100', '4000', '1004', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12241', '12', '31', '1', '1', '1200', '0', '3', '5', '0', '1005', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12242', '12', '31', '1', '1', '6400', '0', '3', '30', '0', '1005', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12243', '12', '31', '1', '1', '20400', '0', '3', '100', '0', '1005', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12250', '12', '31', '1', '2', '0', '300', '1', '10', '100', '1008', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12251', '12', '31', '1', '2', '0', '700', '1', '30', '1000', '1008', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12252', '12', '31', '1', '2', '0', '2000', '1', '100', '3000', '1008', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12260', '12', '31', '1', '2', '0', '600', '1', '10', '100', '1011', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12261', '12', '31', '1', '2', '0', '1500', '1', '30', '1000', '1011', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12262', '12', '31', '1', '2', '0', '4400', '1', '100', '3000', '1011', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12270', '12', '31', '1', '1', '2300', '0', '2', '10', '0', '1012', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12271', '12', '31', '1', '1', '6000', '0', '2', '30', '0', '1012', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12272', '12', '31', '1', '1', '17600', '0', '2', '100', '0', '1012', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12280', '12', '31', '1', '2', '0', '400', '2', '10', '100', '1013', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12281', '12', '31', '1', '2', '0', '1100', '2', '30', '1000', '1013', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12282', '12', '31', '1', '2', '0', '3600', '2', '100', '3000', '1013', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12290', '12', '31', '1', '2', '0', '500', '2', '10', '100', '1014', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12291', '12', '31', '1', '2', '0', '1300', '2', '30', '1000', '1014', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('12292', '12', '31', '1', '2', '0', '3600', '2', '100', '3000', '1014', '0', '0', '0', '0', '1');
INSERT INTO `iteminfo` VALUES ('13000', '13', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13001', '13', '31', '1', '1', '1000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13002', '13', '31', '1', '2', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13003', '13', '31', '1', '2', '0', '500', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13004', '13', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13005', '13', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13006', '13', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13007', '13', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13008', '13', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13009', '13', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('13010', '13', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('14000', '14', '31', '1', '0', '999999', '999999', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('14001', '14', '31', '1', '2', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('14002', '14', '31', '1', '2', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `iteminfo` VALUES ('14003', '14', '31', '1', '2', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for localsales
-- ----------------------------
DROP TABLE IF EXISTS `localsales`;
CREATE TABLE `localsales` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `local_id` int(3) NOT NULL DEFAULT '0',
  `server_id` int(3) NOT NULL DEFAULT '0',
  `product_id` int(12) NOT NULL DEFAULT '0',
  `user_id` int(12) NOT NULL DEFAULT '0',
  `cash` int(12) NOT NULL DEFAULT '0',
  `gold` int(12) NOT NULL DEFAULT '0',
  `log_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `general1` (`local_id`,`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of localsales
-- ----------------------------

-- ----------------------------
-- Table structure for localserverstatus
-- ----------------------------
DROP TABLE IF EXISTS `localserverstatus`;
CREATE TABLE `localserverstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local_id` tinyint(3) NOT NULL DEFAULT '0',
  `server_id` tinyint(3) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `user_count` smallint(6) NOT NULL DEFAULT '0',
  `log_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `general1` (`local_id`,`log_time`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of localserverstatus
-- ----------------------------

-- ----------------------------
-- Table structure for logaddgoldcash
-- ----------------------------
DROP TABLE IF EXISTS `logaddgoldcash`;
CREATE TABLE `logaddgoldcash` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `charid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `gold` int(10) NOT NULL DEFAULT '0',
  `cash` int(10) DEFAULT NULL,
  `gold_prev` int(10) DEFAULT NULL,
  `gold_cur` int(10) DEFAULT NULL,
  `cash_prev` int(10) DEFAULT NULL,
  `cash_cur` int(10) DEFAULT NULL,
  `createtime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logaddgoldcash
-- ----------------------------

-- ----------------------------
-- Table structure for logbuycashitem
-- ----------------------------
DROP TABLE IF EXISTS `logbuycashitem`;
CREATE TABLE `logbuycashitem` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `price` int(10) NOT NULL DEFAULT '0',
  `cash_prev` int(10) NOT NULL DEFAULT '0',
  `cash_cur` int(10) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `coupon_log_id` char(60) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logbuycashitem
-- ----------------------------

-- ----------------------------
-- Table structure for logbuypoweruser
-- ----------------------------
DROP TABLE IF EXISTS `logbuypoweruser`;
CREATE TABLE `logbuypoweruser` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `extend` int(11) NOT NULL DEFAULT '0',
  `buycash` int(1) NOT NULL DEFAULT '0',
  `powertime_prev` bigint(11) NOT NULL DEFAULT '0',
  `powertime_cur` bigint(11) NOT NULL DEFAULT '0',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `powertime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `powerlevelpoint_prev` int(11) NOT NULL DEFAULT '0',
  `powerlevelpoint_cur` int(11) NOT NULL DEFAULT '0',
  `coupon_log_id` varchar(60) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logbuypoweruser
-- ----------------------------

-- ----------------------------
-- Table structure for logchangecharname
-- ----------------------------
DROP TABLE IF EXISTS `logchangecharname`;
CREATE TABLE `logchangecharname` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `charid` int(11) NOT NULL DEFAULT '0',
  `cost` int(11) NOT NULL DEFAULT '0',
  `cash_prev` int(11) NOT NULL DEFAULT '0',
  `cash_cur` int(11) NOT NULL DEFAULT '0',
  `charname_prev` char(11) NOT NULL DEFAULT '',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `coupon_log_id` char(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logchangecharname
-- ----------------------------

-- ----------------------------
-- Table structure for logcharstateclear
-- ----------------------------
DROP TABLE IF EXISTS `logcharstateclear`;
CREATE TABLE `logcharstateclear` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `charid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(11) NOT NULL DEFAULT '0',
  `cost` int(11) NOT NULL DEFAULT '0',
  `levelcost` int(11) NOT NULL DEFAULT '0',
  `cash_prev` int(11) NOT NULL DEFAULT '0',
  `cash_cur` int(11) NOT NULL DEFAULT '0',
  `totallevelpoint` int(11) NOT NULL DEFAULT '0',
  `usedpowerlevelpoint` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `coupon_log_id` char(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`,`charid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logcharstateclear
-- ----------------------------

-- ----------------------------
-- Table structure for logcoupon
-- ----------------------------
DROP TABLE IF EXISTS `logcoupon`;
CREATE TABLE `logcoupon` (
  `coupon_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `use_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logcoupon
-- ----------------------------

-- ----------------------------
-- Table structure for logcurrentuser
-- ----------------------------
DROP TABLE IF EXISTS `logcurrentuser`;
CREATE TABLE `logcurrentuser` (
  `id` int(11) NOT NULL DEFAULT '0',
  `users` int(11) NOT NULL DEFAULT '0',
  `checktime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logcurrentuser
-- ----------------------------

-- ----------------------------
-- Table structure for logcurrentuserlevel
-- ----------------------------
DROP TABLE IF EXISTS `logcurrentuserlevel`;
CREATE TABLE `logcurrentuserlevel` (
  `users` int(11) DEFAULT NULL,
  `checktime` datetime DEFAULT NULL,
  `serverid` int(2) DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logcurrentuserlevel
-- ----------------------------

-- ----------------------------
-- Table structure for logdeletecharacter
-- ----------------------------
DROP TABLE IF EXISTS `logdeletecharacter`;
CREATE TABLE `logdeletecharacter` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `charname` char(11) NOT NULL DEFAULT '',
  `deletetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logdeletecharacter
-- ----------------------------

-- ----------------------------
-- Table structure for logdieplayer
-- ----------------------------
DROP TABLE IF EXISTS `logdieplayer`;
CREATE TABLE `logdieplayer` (
  `killerid` int(11) NOT NULL DEFAULT '0',
  `killername` char(11) NOT NULL DEFAULT '',
  `deadid` int(11) NOT NULL DEFAULT '0',
  `deadname` char(11) NOT NULL DEFAULT '',
  `fieldmode` int(11) NOT NULL DEFAULT '0',
  `deadcause` smallint(50) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`killerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logdieplayer
-- ----------------------------

-- ----------------------------
-- Table structure for logfieldgameabusercheck
-- ----------------------------
DROP TABLE IF EXISTS `logfieldgameabusercheck`;
CREATE TABLE `logfieldgameabusercheck` (
  `charid` int(11) NOT NULL DEFAULT '0',
  `charname` char(11) NOT NULL DEFAULT 'NONE',
  `poweruser` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `loss` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logfieldgameabusercheck
-- ----------------------------

-- ----------------------------
-- Table structure for logfieldgamepoint
-- ----------------------------
DROP TABLE IF EXISTS `logfieldgamepoint`;
CREATE TABLE `logfieldgamepoint` (
  `BossCharID` int(11) NOT NULL DEFAULT '0',
  `BossCharName` char(11) NOT NULL DEFAULT '',
  `CharID` int(11) NOT NULL DEFAULT '0',
  `CharName` char(11) NOT NULL DEFAULT '',
  `Poweruser` tinyint(11) NOT NULL DEFAULT '0',
  `FieldMode` tinyint(11) NOT NULL DEFAULT '0',
  `maxround` tinyint(11) NOT NULL DEFAULT '0',
  `round` tinyint(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `gold` int(10) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logfieldgamepoint
-- ----------------------------

-- ----------------------------
-- Table structure for logfieldgamepointlist
-- ----------------------------
DROP TABLE IF EXISTS `logfieldgamepointlist`;
CREATE TABLE `logfieldgamepointlist` (
  `BossCharID` int(11) NOT NULL DEFAULT '0',
  `BossCharName` char(11) NOT NULL DEFAULT '',
  `CharID` int(11) NOT NULL DEFAULT '0',
  `CharName` char(11) NOT NULL DEFAULT '',
  `Poweruser` tinyint(11) NOT NULL DEFAULT '0',
  `FieldMode` tinyint(11) NOT NULL DEFAULT '0',
  `maxround` tinyint(11) NOT NULL DEFAULT '0',
  `round` tinyint(11) NOT NULL DEFAULT '0',
  `win` smallint(11) NOT NULL DEFAULT '0',
  `loss` smallint(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logfieldgamepointlist
-- ----------------------------

-- ----------------------------
-- Table structure for logfieldplayers
-- ----------------------------
DROP TABLE IF EXISTS `logfieldplayers`;
CREATE TABLE `logfieldplayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map` smallint(11) NOT NULL DEFAULT '0',
  `charname` char(11) NOT NULL DEFAULT '',
  `mode` tinyint(11) NOT NULL DEFAULT '0',
  `maxround` tinyint(11) NOT NULL DEFAULT '0',
  `round` tinyint(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0',
  `winloss` smallint(11) NOT NULL DEFAULT '0',
  `win` smallint(11) NOT NULL DEFAULT '0',
  `loss` smallint(11) NOT NULL DEFAULT '0',
  `starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logfieldplayers
-- ----------------------------

-- ----------------------------
-- Table structure for loggoldpresents
-- ----------------------------
DROP TABLE IF EXISTS `loggoldpresents`;
CREATE TABLE `loggoldpresents` (
  `user_id` int(11) DEFAULT NULL,
  `process_flg` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  `accept_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loggoldpresents
-- ----------------------------

-- ----------------------------
-- Table structure for logincash
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
-- Table structure for logingold
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

-- ----------------------------
-- Table structure for loglottery
-- ----------------------------
DROP TABLE IF EXISTS `loglottery`;
CREATE TABLE `loglottery` (
  `no` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `no1` decimal(2,0) NOT NULL DEFAULT '0',
  `no2` decimal(2,0) NOT NULL DEFAULT '0',
  `no3` decimal(2,0) NOT NULL DEFAULT '0',
  `no4` decimal(2,0) NOT NULL DEFAULT '0',
  `no5` decimal(2,0) NOT NULL DEFAULT '0',
  `bonus` tinyint(3) NOT NULL DEFAULT '0',
  `lotterytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loglottery
-- ----------------------------

-- ----------------------------
-- Table structure for logpcbang
-- ----------------------------
DROP TABLE IF EXISTS `logpcbang`;
CREATE TABLE `logpcbang` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` int(15) DEFAULT NULL,
  `connecttime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logpcbang
-- ----------------------------
INSERT INTO `logpcbang` VALUES ('1', '19216812', '2008-05-07 14:08:23');

-- ----------------------------
-- Table structure for logpresent
-- ----------------------------
DROP TABLE IF EXISTS `logpresent`;
CREATE TABLE `logpresent` (
  `pending_id` int(11) NOT NULL DEFAULT '0',
  `present_id` int(11) DEFAULT '0',
  `sender_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `present_time` datetime DEFAULT '0000-00-00 00:00:00',
  `dispose_time` datetime DEFAULT '0000-00-00 00:00:00',
  `accept_time` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pending_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logpresent
-- ----------------------------

-- ----------------------------
-- Table structure for logserverstatus
-- ----------------------------
DROP TABLE IF EXISTS `logserverstatus`;
CREATE TABLE `logserverstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localid` int(5) DEFAULT NULL,
  `serverid` int(5) DEFAULT NULL,
  `serverip` char(20) DEFAULT NULL,
  `serverport` int(11) DEFAULT NULL,
  `serverstatus` int(5) DEFAULT NULL,
  `usercount` int(11) unsigned DEFAULT NULL,
  `logtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logserverstatus
-- ----------------------------

-- ----------------------------
-- Table structure for logspendgoldcash
-- ----------------------------
DROP TABLE IF EXISTS `logspendgoldcash`;
CREATE TABLE `logspendgoldcash` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `localid` int(5) DEFAULT '0',
  `serverid` int(5) DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `disconnecttime` datetime DEFAULT NULL,
  `spendtype` int(5) DEFAULT '0',
  `spendgold` int(10) unsigned DEFAULT '0',
  `spendcash` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `disconnecttime` (`disconnecttime`,`spendcash`),
  KEY `spendtype` (`disconnecttime`,`spendtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logspendgoldcash
-- ----------------------------

-- ----------------------------
-- Table structure for logstageclear
-- ----------------------------
DROP TABLE IF EXISTS `logstageclear`;
CREATE TABLE `logstageclear` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stageid` int(11) NOT NULL DEFAULT '0',
  `charid` int(11) NOT NULL DEFAULT '0',
  `stage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `stageid` (`stageid`),
  KEY `charid` (`charid`),
  KEY `stage` (`stage`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logstageclear
-- ----------------------------

-- ----------------------------
-- Table structure for logstageclearp
-- ----------------------------
DROP TABLE IF EXISTS `logstageclearp`;
CREATE TABLE `logstageclearp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stageid` int(11) NOT NULL DEFAULT '0',
  `charid` int(11) NOT NULL DEFAULT '0',
  `stage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `stageid` (`stageid`),
  KEY `charid` (`charid`),
  KEY `stage` (`stage`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logstageclearp
-- ----------------------------

-- ----------------------------
-- Table structure for loguserconnect
-- ----------------------------
DROP TABLE IF EXISTS `loguserconnect`;
CREATE TABLE `loguserconnect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) DEFAULT NULL,
  `serverid` int(3) NOT NULL DEFAULT '0',
  `RealIP` varchar(15) DEFAULT NULL,
  `userip` varchar(15) DEFAULT NULL,
  `country` int(6) DEFAULT '9',
  `disconnecttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:01',
  `connecttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `note` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loguserconnect
-- ----------------------------

-- ----------------------------
-- Table structure for loguseritem
-- ----------------------------
DROP TABLE IF EXISTS `loguseritem`;
CREATE TABLE `loguseritem` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `characterid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0',
  `kind` tinyint(11) NOT NULL DEFAULT '0',
  `processtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gold_prev` int(11) NOT NULL DEFAULT '0',
  `gold_cur` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `coupon_log_id` char(16) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loguseritem
-- ----------------------------

-- ----------------------------
-- Table structure for lotto
-- ----------------------------
DROP TABLE IF EXISTS `lotto`;
CREATE TABLE `lotto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `no` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no1` decimal(2,0) NOT NULL DEFAULT '0',
  `no2` decimal(2,0) NOT NULL DEFAULT '0',
  `no3` decimal(2,0) NOT NULL DEFAULT '0',
  `no4` decimal(2,0) NOT NULL DEFAULT '0',
  `no5` decimal(2,0) NOT NULL DEFAULT '0',
  `gold` int(10) NOT NULL DEFAULT '0',
  `cash` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotto
-- ----------------------------

-- ----------------------------
-- Table structure for magerankp
-- ----------------------------
DROP TABLE IF EXISTS `magerankp`;
CREATE TABLE `magerankp` (
  `rank` int(11) NOT NULL DEFAULT '0',
  `username` char(16) NOT NULL DEFAULT '',
  `name` char(12) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `draw` int(11) NOT NULL DEFAULT '0',
  `lastrank` int(11) NOT NULL DEFAULT '0',
  `country` smallint(6) NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of magerankp
-- ----------------------------

-- ----------------------------
-- Table structure for ninjarankp
-- ----------------------------
DROP TABLE IF EXISTS `ninjarankp`;
CREATE TABLE `ninjarankp` (
  `rank` int(11) NOT NULL DEFAULT '0',
  `username` char(16) NOT NULL DEFAULT '',
  `name` char(12) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `draw` int(11) NOT NULL DEFAULT '0',
  `lastrank` int(11) NOT NULL DEFAULT '0',
  `country` smallint(6) NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ninjarankp
-- ----------------------------

-- ----------------------------
-- Table structure for npcinfo
-- ----------------------------
DROP TABLE IF EXISTS `npcinfo`;
CREATE TABLE `npcinfo` (
  `npc` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `gold` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of npcinfo
-- ----------------------------
INSERT INTO `npcinfo` VALUES ('1', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('1', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('1', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('1', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('1', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('1', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('1', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('1', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('1', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('1', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('1', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('1', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('1', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('1', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('1', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('1', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('1', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('1', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('1', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('1', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('1', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('1', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('1', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('1', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('1', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('1', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('1', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('1', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('1', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('1', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('1', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('1', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('1', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('1', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('1', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('1', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('1', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('1', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('1', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('1', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('1', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('1', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('1', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('1', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('1', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('1', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('1', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('1', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('1', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('1', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('1', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('1', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('1', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('1', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('1', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('1', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('1', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('1', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('1', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('1', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('1', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('1', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('1', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('1', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('1', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('1', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('1', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('1', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('1', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('1', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('1', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('1', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('1', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('1', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('1', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('1', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('1', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('1', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('1', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('1', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('1', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('1', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('1', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('1', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('1', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('1', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('1', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('1', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('1', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('1', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('1', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('1', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('1', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('1', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('1', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('1', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('1', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('1', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('1', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('1', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('1', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('1', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('2', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('2', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('2', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('2', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('2', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('2', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('2', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('2', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('2', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('2', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('2', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('2', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('2', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('2', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('2', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('2', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('2', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('2', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('2', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('2', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('2', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('2', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('2', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('2', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('2', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('2', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('2', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('2', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('2', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('2', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('2', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('2', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('2', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('2', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('2', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('2', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('2', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('2', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('2', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('2', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('2', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('2', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('2', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('2', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('2', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('2', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('2', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('2', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('2', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('2', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('2', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('2', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('2', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('2', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('2', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('2', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('2', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('2', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('2', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('2', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('2', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('2', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('2', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('2', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('2', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('2', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('2', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('2', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('2', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('2', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('2', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('2', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('2', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('2', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('2', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('2', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('2', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('2', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('2', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('2', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('2', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('2', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('2', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('2', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('2', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('2', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('2', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('2', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('2', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('2', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('2', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('2', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('2', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('2', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('2', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('2', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('2', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('2', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('2', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('2', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('2', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('2', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('3', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('3', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('3', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('3', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('3', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('3', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('3', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('3', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('3', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('3', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('3', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('3', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('3', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('3', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('3', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('3', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('3', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('3', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('3', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('3', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('3', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('3', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('3', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('3', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('3', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('3', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('3', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('3', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('3', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('3', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('3', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('3', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('3', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('3', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('3', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('3', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('3', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('3', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('3', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('3', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('3', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('3', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('3', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('3', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('3', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('3', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('3', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('3', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('3', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('3', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('3', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('3', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('3', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('3', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('3', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('3', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('3', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('3', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('3', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('3', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('3', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('3', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('3', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('3', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('3', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('3', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('3', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('3', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('3', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('3', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('3', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('3', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('3', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('3', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('3', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('3', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('3', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('3', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('3', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('3', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('3', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('3', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('3', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('3', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('3', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('3', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('3', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('3', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('3', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('3', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('3', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('3', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('3', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('3', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('3', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('3', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('3', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('3', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('3', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('3', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('3', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('3', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('4', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('4', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('4', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('4', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('4', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('4', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('4', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('4', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('4', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('4', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('4', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('4', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('4', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('4', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('4', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('4', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('4', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('4', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('4', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('4', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('4', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('4', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('4', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('4', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('4', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('4', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('4', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('4', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('4', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('4', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('4', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('4', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('4', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('4', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('4', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('4', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('4', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('4', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('4', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('4', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('4', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('4', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('4', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('4', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('4', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('4', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('4', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('4', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('4', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('4', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('4', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('4', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('4', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('4', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('4', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('4', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('4', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('4', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('4', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('4', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('4', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('4', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('4', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('4', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('4', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('4', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('4', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('4', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('4', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('4', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('4', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('4', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('4', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('4', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('4', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('4', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('4', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('4', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('4', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('4', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('4', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('4', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('4', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('4', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('4', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('4', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('4', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('4', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('4', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('4', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('4', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('4', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('4', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('4', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('4', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('4', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('4', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('4', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('4', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('4', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('4', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('4', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('5', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('5', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('5', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('5', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('5', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('5', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('5', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('5', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('5', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('5', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('5', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('5', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('5', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('5', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('5', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('5', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('5', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('5', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('5', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('5', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('5', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('5', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('5', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('5', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('5', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('5', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('5', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('5', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('5', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('5', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('5', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('5', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('5', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('5', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('5', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('5', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('5', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('5', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('5', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('5', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('5', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('5', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('5', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('5', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('5', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('5', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('5', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('5', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('5', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('5', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('5', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('5', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('5', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('5', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('5', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('5', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('5', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('5', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('5', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('5', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('5', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('5', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('5', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('5', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('5', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('5', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('5', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('5', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('5', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('5', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('5', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('5', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('5', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('5', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('5', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('5', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('5', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('5', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('5', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('5', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('5', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('5', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('5', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('5', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('5', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('5', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('5', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('5', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('5', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('5', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('5', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('5', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('5', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('5', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('5', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('5', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('5', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('5', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('5', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('5', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('5', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('5', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('6', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('6', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('6', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('6', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('6', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('6', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('6', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('6', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('6', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('6', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('6', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('6', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('6', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('6', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('6', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('6', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('6', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('6', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('6', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('6', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('6', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('6', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('6', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('6', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('6', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('6', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('6', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('6', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('6', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('6', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('6', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('6', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('6', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('6', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('6', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('6', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('6', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('6', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('6', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('6', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('6', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('6', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('6', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('6', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('6', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('6', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('6', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('6', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('6', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('6', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('6', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('6', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('6', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('6', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('6', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('6', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('6', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('6', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('6', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('6', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('6', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('6', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('6', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('6', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('6', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('6', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('6', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('6', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('6', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('6', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('6', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('6', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('6', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('6', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('6', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('6', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('6', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('6', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('6', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('6', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('6', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('6', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('6', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('6', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('6', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('6', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('6', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('6', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('6', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('6', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('6', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('6', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('6', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('6', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('6', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('6', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('6', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('6', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('6', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('6', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('6', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('6', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('1', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('7', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('7', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('7', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('7', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('7', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('7', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('7', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('7', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('7', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('7', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('7', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('7', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('7', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('7', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('7', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('7', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('7', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('7', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('7', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('7', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('7', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('7', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('7', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('7', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('7', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('7', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('7', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('7', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('7', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('7', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('7', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('7', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('7', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('7', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('7', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('7', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('7', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('7', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('7', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('7', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('7', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('7', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('7', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('7', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('7', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('7', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('7', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('7', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('7', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('7', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('7', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('7', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('7', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('7', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('7', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('7', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('7', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('7', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('7', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('7', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('7', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('7', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('7', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('7', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('7', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('7', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('7', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('7', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('7', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('7', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('7', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('7', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('7', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('7', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('7', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('7', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('7', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('7', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('7', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('7', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('7', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('7', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('7', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('7', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('7', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('7', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('7', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('7', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('7', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('7', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('7', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('7', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('7', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('7', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('7', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('7', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('7', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('7', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('7', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('7', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('7', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('8', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('8', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('8', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('8', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('8', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('8', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('8', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('8', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('8', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('8', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('8', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('8', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('8', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('8', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('8', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('8', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('8', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('8', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('8', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('8', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('8', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('8', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('8', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('8', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('8', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('8', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('8', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('8', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('8', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('8', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('8', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('8', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('8', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('8', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('8', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('8', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('8', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('8', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('8', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('8', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('8', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('8', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('8', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('8', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('8', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('8', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('8', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('8', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('8', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('8', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('8', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('8', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('8', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('8', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('8', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('8', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('8', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('8', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('8', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('8', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('8', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('8', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('8', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('8', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('8', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('8', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('8', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('8', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('8', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('8', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('8', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('8', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('8', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('8', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('8', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('8', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('8', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('8', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('8', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('8', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('8', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('8', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('8', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('8', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('8', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('8', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('8', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('8', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('8', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('8', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('8', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('8', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('8', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('8', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('8', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('8', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('8', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('8', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('8', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('8', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('8', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('8', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('9', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('9', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('9', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('9', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('9', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('9', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('9', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('9', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('9', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('9', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('9', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('9', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('9', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('9', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('9', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('9', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('9', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('9', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('9', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('9', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('9', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('9', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('9', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('9', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('9', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('9', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('9', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('9', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('9', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('9', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('9', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('9', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('9', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('9', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('9', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('9', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('9', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('9', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('9', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('9', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('9', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('9', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('9', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('9', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('9', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('9', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('9', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('9', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('9', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('9', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('9', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('9', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('9', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('9', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('9', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('9', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('9', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('9', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('9', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('9', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('9', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('9', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('9', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('9', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('9', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('9', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('9', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('9', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('9', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('9', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('9', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('9', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('9', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('9', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('9', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('9', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('9', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('9', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('9', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('9', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('9', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('9', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('9', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('9', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('9', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('9', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('9', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('9', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('9', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('9', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('9', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('9', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('9', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('9', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('9', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('9', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('9', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('9', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('9', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('9', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('9', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('9', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('10', '1', '35', '300');
INSERT INTO `npcinfo` VALUES ('10', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('10', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('10', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('10', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('10', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('10', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('10', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('10', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('10', '10', '1925', '660');
INSERT INTO `npcinfo` VALUES ('10', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('10', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('10', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('10', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('10', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('10', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('10', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('10', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('10', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('10', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('10', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('10', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('10', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('10', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('10', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('10', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('10', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('10', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('10', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('10', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('10', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('10', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('10', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('10', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('10', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('10', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('10', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('10', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('10', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('10', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('10', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('10', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('10', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('10', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('10', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('10', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('10', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('10', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('10', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('10', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('10', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('10', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('10', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('10', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('10', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('10', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('10', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('10', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('10', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('10', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('10', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('10', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('10', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('10', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('10', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('10', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('10', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('10', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('10', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('10', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('10', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('10', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('10', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('10', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('10', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('10', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('10', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('10', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('10', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('10', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('10', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('10', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('10', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('10', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('10', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('10', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('10', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('10', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('10', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('10', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('10', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('10', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('10', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('10', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('10', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('10', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('10', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('10', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('10', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('10', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('10', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('10', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('11', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('11', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('11', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('11', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('11', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('11', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('11', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('11', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('11', '11', '1925', '660');
INSERT INTO `npcinfo` VALUES ('11', '11', '2310', '700');
INSERT INTO `npcinfo` VALUES ('11', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('11', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('11', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('11', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('11', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('11', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('11', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('11', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('11', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('11', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('11', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('11', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('11', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('11', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('11', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('11', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('11', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('11', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('11', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('11', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('11', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('11', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('11', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('11', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('11', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('11', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('11', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('11', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('11', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('11', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('11', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('11', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('11', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('11', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('11', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('11', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('11', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('11', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('11', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('11', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('11', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('11', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('11', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('11', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('11', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('11', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('11', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('11', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('11', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('11', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('11', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('11', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('11', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('11', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('11', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('11', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('11', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('11', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('11', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('11', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('11', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('11', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('11', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('11', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('11', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('11', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('11', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('11', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('11', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('11', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('11', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('11', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('11', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('11', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('11', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('11', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('11', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('11', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('11', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('11', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('11', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('11', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('11', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('11', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('11', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('11', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('11', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('11', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('11', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('11', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('11', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('12', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('12', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('12', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('12', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('12', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('12', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('12', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('12', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('12', '12', '1925', '660');
INSERT INTO `npcinfo` VALUES ('12', '12', '2310', '700');
INSERT INTO `npcinfo` VALUES ('12', '12', '2730', '740');
INSERT INTO `npcinfo` VALUES ('12', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('12', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('12', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('12', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('12', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('12', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('12', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('12', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('12', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('12', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('12', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('12', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('12', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('12', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('12', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('12', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('12', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('12', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('12', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('12', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('12', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('12', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('12', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('12', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('12', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('12', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('12', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('12', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('12', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('12', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('12', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('12', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('12', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('12', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('12', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('12', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('12', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('12', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('12', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('12', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('12', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('12', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('12', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('12', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('12', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('12', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('12', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('12', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('12', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('12', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('12', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('12', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('12', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('12', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('12', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('12', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('12', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('12', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('12', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('12', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('12', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('12', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('12', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('12', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('12', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('12', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('12', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('12', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('12', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('12', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('12', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('12', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('12', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('12', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('12', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('12', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('12', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('12', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('12', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('12', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('12', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('12', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('12', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('12', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('12', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('12', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('12', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('12', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('12', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('12', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('13', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('13', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('13', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('13', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('13', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('13', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('13', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('13', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('13', '13', '1925', '660');
INSERT INTO `npcinfo` VALUES ('13', '13', '2310', '700');
INSERT INTO `npcinfo` VALUES ('13', '13', '2730', '740');
INSERT INTO `npcinfo` VALUES ('13', '13', '3185', '780');
INSERT INTO `npcinfo` VALUES ('13', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('13', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('13', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('13', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('13', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('13', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('13', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('13', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('13', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('13', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('13', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('13', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('13', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('13', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('13', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('13', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('13', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('13', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('13', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('13', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('13', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('13', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('13', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('13', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('13', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('13', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('13', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('13', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('13', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('13', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('13', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('13', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('13', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('13', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('13', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('13', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('13', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('13', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('13', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('13', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('13', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('13', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('13', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('13', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('13', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('13', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('13', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('13', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('13', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('13', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('13', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('13', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('13', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('13', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('13', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('13', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('13', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('13', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('13', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('13', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('13', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('13', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('13', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('13', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('13', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('13', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('13', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('13', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('13', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('13', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('13', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('13', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('13', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('13', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('13', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('13', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('13', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('13', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('13', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('13', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('13', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('13', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('13', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('13', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('13', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('13', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('13', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('13', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('13', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('14', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('14', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('14', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('14', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('14', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('14', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('14', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('14', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('14', '14', '1925', '660');
INSERT INTO `npcinfo` VALUES ('14', '14', '2310', '700');
INSERT INTO `npcinfo` VALUES ('14', '14', '2730', '740');
INSERT INTO `npcinfo` VALUES ('14', '14', '3185', '780');
INSERT INTO `npcinfo` VALUES ('14', '14', '3675', '820');
INSERT INTO `npcinfo` VALUES ('14', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('14', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('14', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('14', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('14', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('14', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('14', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('14', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('14', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('14', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('14', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('14', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('14', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('14', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('14', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('14', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('14', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('14', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('14', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('14', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('14', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('14', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('14', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('14', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('14', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('14', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('14', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('14', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('14', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('14', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('14', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('14', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('14', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('14', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('14', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('14', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('14', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('14', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('14', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('14', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('14', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('14', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('14', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('14', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('14', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('14', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('14', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('14', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('14', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('14', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('14', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('14', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('14', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('14', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('14', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('14', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('14', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('14', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('14', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('14', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('14', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('14', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('14', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('14', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('14', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('14', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('14', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('14', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('14', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('14', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('14', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('14', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('14', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('14', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('14', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('14', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('14', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('14', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('14', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('14', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('14', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('14', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('14', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('14', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('14', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('14', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('14', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('14', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('15', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('15', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('15', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('15', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('15', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('15', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('15', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('15', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('15', '15', '1925', '660');
INSERT INTO `npcinfo` VALUES ('15', '15', '2310', '700');
INSERT INTO `npcinfo` VALUES ('15', '15', '2730', '740');
INSERT INTO `npcinfo` VALUES ('15', '15', '3185', '780');
INSERT INTO `npcinfo` VALUES ('15', '15', '3675', '820');
INSERT INTO `npcinfo` VALUES ('15', '15', '4200', '860');
INSERT INTO `npcinfo` VALUES ('15', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('15', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('15', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('15', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('15', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('15', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('15', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('15', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('15', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('15', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('15', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('15', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('15', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('15', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('15', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('15', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('15', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('15', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('15', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('15', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('15', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('15', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('15', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('15', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('15', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('15', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('15', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('15', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('15', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('15', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('15', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('15', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('15', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('15', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('15', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('15', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('15', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('15', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('15', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('15', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('15', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('15', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('15', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('15', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('15', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('15', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('15', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('15', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('15', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('15', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('15', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('15', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('15', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('15', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('15', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('15', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('15', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('15', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('15', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('15', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('15', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('15', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('15', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('15', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('15', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('15', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('15', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('15', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('15', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('15', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('15', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('15', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('15', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('15', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('15', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('15', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('15', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('15', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('15', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('15', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('15', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('15', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('15', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('15', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('15', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('15', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('15', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('15', '1', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '2', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '3', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '4', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '5', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '6', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '7', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '8', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '9', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '10', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '11', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '12', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '13', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '14', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '15', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '16', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '17', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '18', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '19', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '20', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '21', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '22', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '23', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '24', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '25', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '26', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '27', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '28', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '29', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '30', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '31', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '32', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '33', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '34', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '35', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '36', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '37', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '38', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '39', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '40', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '41', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '42', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '43', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '44', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '45', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '46', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '47', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '48', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '49', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '50', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '51', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '52', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '53', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '54', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '55', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '56', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '57', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '58', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '59', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '60', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '61', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '62', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '63', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '64', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '65', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '66', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '67', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '68', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '69', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '70', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '71', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '72', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '73', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '74', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '75', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '76', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '77', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '78', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '79', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '80', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '81', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '82', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '83', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '84', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '85', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '86', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '87', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '88', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '89', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '90', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '91', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '92', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '93', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '94', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '95', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '96', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '97', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '98', '0', '800');
INSERT INTO `npcinfo` VALUES ('15', '99', '0', '800');
INSERT INTO `npcinfo` VALUES ('16', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('16', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('16', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('16', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('16', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('16', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('16', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('16', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('16', '16', '1925', '660');
INSERT INTO `npcinfo` VALUES ('16', '16', '2310', '700');
INSERT INTO `npcinfo` VALUES ('16', '16', '2730', '740');
INSERT INTO `npcinfo` VALUES ('16', '16', '3185', '780');
INSERT INTO `npcinfo` VALUES ('16', '16', '3675', '820');
INSERT INTO `npcinfo` VALUES ('16', '16', '4200', '860');
INSERT INTO `npcinfo` VALUES ('16', '16', '4760', '900');
INSERT INTO `npcinfo` VALUES ('16', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('16', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('16', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('16', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('16', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('16', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('16', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('16', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('16', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('16', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('16', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('16', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('16', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('16', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('16', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('16', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('16', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('16', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('16', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('16', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('16', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('16', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('16', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('16', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('16', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('16', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('16', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('16', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('16', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('16', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('16', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('16', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('16', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('16', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('16', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('16', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('16', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('16', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('16', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('16', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('16', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('16', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('16', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('16', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('16', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('16', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('16', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('16', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('16', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('16', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('16', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('16', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('16', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('16', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('16', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('16', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('16', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('16', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('16', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('16', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('16', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('16', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('16', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('16', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('16', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('16', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('16', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('16', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('16', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('16', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('16', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('16', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('16', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('16', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('16', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('16', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('16', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('16', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('16', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('16', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('17', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('17', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('17', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('17', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('17', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('17', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('17', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('17', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('17', '17', '1925', '660');
INSERT INTO `npcinfo` VALUES ('17', '17', '2310', '700');
INSERT INTO `npcinfo` VALUES ('17', '17', '2730', '740');
INSERT INTO `npcinfo` VALUES ('17', '17', '3185', '780');
INSERT INTO `npcinfo` VALUES ('17', '17', '3675', '820');
INSERT INTO `npcinfo` VALUES ('17', '17', '4200', '860');
INSERT INTO `npcinfo` VALUES ('17', '17', '4760', '900');
INSERT INTO `npcinfo` VALUES ('17', '17', '5355', '940');
INSERT INTO `npcinfo` VALUES ('17', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('17', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('17', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('17', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('17', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('17', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('17', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('17', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('17', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('17', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('17', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('17', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('17', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('17', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('17', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('17', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('17', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('17', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('17', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('17', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('17', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('17', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('17', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('17', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('17', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('17', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('17', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('17', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('17', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('17', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('17', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('17', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('17', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('17', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('17', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('17', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('17', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('17', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('17', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('17', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('17', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('17', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('17', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('17', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('17', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('17', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('17', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('17', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('17', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('17', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('17', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('17', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('17', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('17', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('17', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('17', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('17', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('17', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('17', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('17', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('17', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('17', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('17', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('17', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('17', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('17', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('17', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('17', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('17', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('17', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('17', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('17', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('17', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('17', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('17', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('17', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('17', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('17', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('17', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('17', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('17', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('17', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('17', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('17', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('17', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('18', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('18', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('18', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('18', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('18', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('18', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('18', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('18', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('18', '18', '1925', '660');
INSERT INTO `npcinfo` VALUES ('18', '18', '2310', '700');
INSERT INTO `npcinfo` VALUES ('18', '18', '2730', '740');
INSERT INTO `npcinfo` VALUES ('18', '18', '3185', '780');
INSERT INTO `npcinfo` VALUES ('18', '18', '3675', '820');
INSERT INTO `npcinfo` VALUES ('18', '18', '4200', '860');
INSERT INTO `npcinfo` VALUES ('18', '18', '4760', '900');
INSERT INTO `npcinfo` VALUES ('18', '18', '5355', '940');
INSERT INTO `npcinfo` VALUES ('18', '18', '5985', '980');
INSERT INTO `npcinfo` VALUES ('18', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('18', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('18', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('18', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('18', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('18', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('18', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('18', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('18', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('18', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('18', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('18', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('18', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('18', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('18', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('18', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('18', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('18', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('18', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('18', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('18', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('18', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('18', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('18', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('18', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('18', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('18', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('18', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('18', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('18', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('18', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('18', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('18', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('18', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('18', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('18', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('18', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('18', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('18', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('18', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('18', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('18', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('18', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('18', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('18', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('18', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('18', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('18', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('18', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('18', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('18', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('18', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('18', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('18', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('18', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('18', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('18', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('18', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('18', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('18', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('18', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('18', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('18', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('18', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('18', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('18', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('18', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('18', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('18', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('18', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('18', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('18', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('18', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('18', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('18', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('18', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('18', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('18', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('18', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('18', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('18', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('18', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('18', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('18', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('19', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('19', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('19', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('19', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('19', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('19', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('19', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('19', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('19', '19', '1925', '660');
INSERT INTO `npcinfo` VALUES ('19', '19', '2310', '700');
INSERT INTO `npcinfo` VALUES ('19', '19', '2730', '740');
INSERT INTO `npcinfo` VALUES ('19', '19', '3185', '780');
INSERT INTO `npcinfo` VALUES ('19', '19', '3675', '820');
INSERT INTO `npcinfo` VALUES ('19', '19', '4200', '860');
INSERT INTO `npcinfo` VALUES ('19', '19', '4760', '900');
INSERT INTO `npcinfo` VALUES ('19', '19', '5355', '940');
INSERT INTO `npcinfo` VALUES ('19', '19', '5985', '980');
INSERT INTO `npcinfo` VALUES ('19', '19', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('19', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('19', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('19', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('19', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('19', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('19', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('19', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('19', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('19', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('19', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('19', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('19', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('19', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('19', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('19', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('19', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('19', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('19', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('19', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('19', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('19', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('19', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('19', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('19', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('19', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('19', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('19', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('19', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('19', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('19', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('19', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('19', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('19', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('19', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('19', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('19', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('19', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('19', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('19', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('19', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('19', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('19', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('19', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('19', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('19', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('19', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('19', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('19', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('19', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('19', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('19', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('19', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('19', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('19', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('19', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('19', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('19', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('19', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('19', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('19', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('19', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('19', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('19', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('19', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('19', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('19', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('19', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('19', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('19', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('19', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('19', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('19', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('19', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('19', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('19', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('19', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('19', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('19', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('19', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('19', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('19', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('19', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('19', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('20', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('20', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('20', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('20', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('20', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('20', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('20', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('20', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('20', '20', '1925', '660');
INSERT INTO `npcinfo` VALUES ('20', '20', '2310', '700');
INSERT INTO `npcinfo` VALUES ('20', '20', '2730', '740');
INSERT INTO `npcinfo` VALUES ('20', '20', '3185', '780');
INSERT INTO `npcinfo` VALUES ('20', '20', '3675', '820');
INSERT INTO `npcinfo` VALUES ('20', '20', '4200', '860');
INSERT INTO `npcinfo` VALUES ('20', '20', '4760', '900');
INSERT INTO `npcinfo` VALUES ('20', '20', '5355', '940');
INSERT INTO `npcinfo` VALUES ('20', '20', '5985', '980');
INSERT INTO `npcinfo` VALUES ('20', '20', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('20', '20', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('20', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('20', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('20', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('20', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('20', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('20', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('20', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('20', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('20', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('20', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('20', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('20', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('20', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('20', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('20', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('20', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('20', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('20', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('20', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('20', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('20', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('20', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('20', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('20', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('20', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('20', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('20', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('20', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('20', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('20', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('20', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('20', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('20', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('20', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('20', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('20', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('20', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('20', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('20', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('20', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('20', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('20', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('20', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('20', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('20', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('20', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('20', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('20', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('20', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('20', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('20', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('20', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('20', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('20', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('20', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('20', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('20', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('20', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('20', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('20', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('20', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('20', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('20', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('20', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('20', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('20', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('20', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('20', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('20', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('20', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('20', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('20', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('20', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('20', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('20', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('20', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('20', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('20', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('20', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('20', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('20', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('20', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('21', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('21', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('21', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('21', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('21', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('21', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('21', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('21', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('21', '21', '1925', '660');
INSERT INTO `npcinfo` VALUES ('21', '21', '2310', '700');
INSERT INTO `npcinfo` VALUES ('21', '21', '2730', '740');
INSERT INTO `npcinfo` VALUES ('21', '21', '3185', '780');
INSERT INTO `npcinfo` VALUES ('21', '21', '3675', '820');
INSERT INTO `npcinfo` VALUES ('21', '21', '4200', '860');
INSERT INTO `npcinfo` VALUES ('21', '21', '4760', '900');
INSERT INTO `npcinfo` VALUES ('21', '21', '5355', '940');
INSERT INTO `npcinfo` VALUES ('21', '21', '5985', '980');
INSERT INTO `npcinfo` VALUES ('21', '21', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('21', '21', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('21', '21', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('21', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('21', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('21', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('21', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('21', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('21', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('21', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('21', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('21', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('21', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('21', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('21', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('21', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('21', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('21', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('21', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('21', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('21', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('21', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('21', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('21', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('21', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('21', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('21', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('21', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('21', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('21', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('21', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('21', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('21', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('21', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('21', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('21', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('21', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('21', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('21', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('21', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('21', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('21', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('21', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('21', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('21', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('21', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('21', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('21', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('21', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('21', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('21', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('21', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('21', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('21', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('21', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('21', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('21', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('21', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('21', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('21', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('21', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('21', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('21', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('21', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('21', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('21', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('21', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('21', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('21', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('21', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('21', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('21', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('21', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('21', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('21', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('21', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('21', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('21', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('21', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('21', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('21', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('21', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('21', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('21', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('22', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('22', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('22', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('22', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('22', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('22', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('22', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('22', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('22', '22', '1925', '660');
INSERT INTO `npcinfo` VALUES ('22', '22', '2310', '700');
INSERT INTO `npcinfo` VALUES ('22', '22', '2730', '740');
INSERT INTO `npcinfo` VALUES ('22', '22', '3185', '780');
INSERT INTO `npcinfo` VALUES ('22', '22', '3675', '820');
INSERT INTO `npcinfo` VALUES ('22', '22', '4200', '860');
INSERT INTO `npcinfo` VALUES ('22', '22', '4760', '900');
INSERT INTO `npcinfo` VALUES ('22', '22', '5355', '940');
INSERT INTO `npcinfo` VALUES ('22', '22', '5985', '980');
INSERT INTO `npcinfo` VALUES ('22', '22', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('22', '22', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('22', '22', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('22', '22', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('22', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('22', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('22', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('22', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('22', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('22', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('22', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('22', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('22', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('22', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('22', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('22', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('22', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('22', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('22', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('22', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('22', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('22', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('22', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('22', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('22', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('22', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('22', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('22', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('22', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('22', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('22', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('22', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('22', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('22', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('22', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('22', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('22', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('22', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('22', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('22', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('22', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('22', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('22', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('22', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('22', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('22', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('22', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('22', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('22', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('22', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('22', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('22', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('22', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('22', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('22', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('22', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('22', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('22', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('22', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('22', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('22', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('22', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('22', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('22', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('22', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('22', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('22', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('22', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('22', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('22', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('22', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('22', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('22', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('22', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('22', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('22', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('22', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('22', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('22', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('22', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('22', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('22', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('22', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('22', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('23', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('23', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('23', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('23', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('23', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('23', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('23', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('23', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('23', '23', '1925', '660');
INSERT INTO `npcinfo` VALUES ('23', '23', '2310', '700');
INSERT INTO `npcinfo` VALUES ('23', '23', '2730', '740');
INSERT INTO `npcinfo` VALUES ('23', '23', '3185', '780');
INSERT INTO `npcinfo` VALUES ('23', '23', '3675', '820');
INSERT INTO `npcinfo` VALUES ('23', '23', '4200', '860');
INSERT INTO `npcinfo` VALUES ('23', '23', '4760', '900');
INSERT INTO `npcinfo` VALUES ('23', '23', '5355', '940');
INSERT INTO `npcinfo` VALUES ('23', '23', '5985', '980');
INSERT INTO `npcinfo` VALUES ('23', '23', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('23', '23', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('23', '23', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('23', '23', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('23', '23', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('23', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('23', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('23', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('23', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('23', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('23', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('23', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('23', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('23', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('23', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('23', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('23', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('23', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('23', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('23', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('23', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('23', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('23', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('23', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('23', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('23', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('23', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('23', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('23', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('23', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('23', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('23', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('23', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('23', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('23', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('23', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('23', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('23', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('23', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('23', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('23', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('23', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('23', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('23', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('23', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('23', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('23', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('23', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('23', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('23', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('23', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('23', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('23', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('23', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('23', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('23', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('23', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('23', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('23', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('23', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('23', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('23', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('23', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('23', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('23', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('23', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('23', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('23', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('23', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('23', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('23', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('23', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('23', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('23', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('23', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('23', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('23', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('23', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('23', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('23', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('23', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('23', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('23', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('23', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('24', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('24', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('24', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('24', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('24', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('24', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('24', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('24', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('24', '24', '1925', '660');
INSERT INTO `npcinfo` VALUES ('24', '24', '2310', '700');
INSERT INTO `npcinfo` VALUES ('24', '24', '2730', '740');
INSERT INTO `npcinfo` VALUES ('24', '24', '3185', '780');
INSERT INTO `npcinfo` VALUES ('24', '24', '3675', '820');
INSERT INTO `npcinfo` VALUES ('24', '24', '4200', '860');
INSERT INTO `npcinfo` VALUES ('24', '24', '4760', '900');
INSERT INTO `npcinfo` VALUES ('24', '24', '5355', '940');
INSERT INTO `npcinfo` VALUES ('24', '24', '5985', '980');
INSERT INTO `npcinfo` VALUES ('24', '24', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('24', '24', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('24', '24', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('24', '24', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('24', '24', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('24', '24', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('24', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('24', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('24', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('24', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('24', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('24', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('24', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('24', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('24', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('24', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('24', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('24', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('24', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('24', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('24', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('24', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('24', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('24', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('24', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('24', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('24', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('24', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('24', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('24', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('24', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('24', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('24', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('24', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('24', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('24', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('24', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('24', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('24', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('24', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('24', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('24', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('24', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('24', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('24', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('24', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('24', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('24', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('24', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('24', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('24', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('24', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('24', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('24', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('24', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('24', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('24', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('24', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('24', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('24', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('24', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('24', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('24', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('24', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('24', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('24', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('24', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('24', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('24', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('24', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('24', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('24', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('24', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('24', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('24', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('24', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('24', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('24', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('24', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('24', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('24', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('24', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('24', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('24', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('25', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('25', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('25', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('25', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('25', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('25', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('25', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('25', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('25', '25', '1925', '660');
INSERT INTO `npcinfo` VALUES ('25', '25', '2310', '700');
INSERT INTO `npcinfo` VALUES ('25', '25', '2730', '740');
INSERT INTO `npcinfo` VALUES ('25', '25', '3185', '780');
INSERT INTO `npcinfo` VALUES ('25', '25', '3675', '820');
INSERT INTO `npcinfo` VALUES ('25', '25', '4200', '860');
INSERT INTO `npcinfo` VALUES ('25', '25', '4760', '900');
INSERT INTO `npcinfo` VALUES ('25', '25', '5355', '940');
INSERT INTO `npcinfo` VALUES ('25', '25', '5985', '980');
INSERT INTO `npcinfo` VALUES ('25', '25', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('25', '25', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('25', '25', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('25', '25', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('25', '25', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('25', '25', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('25', '25', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('25', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('25', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('25', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('25', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('25', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('25', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('25', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('25', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('25', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('25', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('25', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('25', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('25', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('25', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('25', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('25', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('25', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('25', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('25', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('25', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('25', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('25', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('25', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('25', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('25', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('25', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('25', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('25', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('25', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('25', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('25', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('25', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('25', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('25', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('25', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('25', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('25', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('25', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('25', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('25', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('25', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('25', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('25', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('25', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('25', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('25', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('25', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('25', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('25', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('25', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('25', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('25', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('25', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('25', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('25', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('25', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('25', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('25', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('25', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('25', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('25', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('25', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('25', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('25', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('25', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('25', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('25', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('25', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('25', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('25', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('25', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('25', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('25', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('25', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('25', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('25', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('25', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('26', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('26', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('26', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('26', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('26', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('26', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('26', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('26', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('26', '26', '1925', '660');
INSERT INTO `npcinfo` VALUES ('26', '26', '2310', '700');
INSERT INTO `npcinfo` VALUES ('26', '26', '2730', '740');
INSERT INTO `npcinfo` VALUES ('26', '26', '3185', '780');
INSERT INTO `npcinfo` VALUES ('26', '26', '3675', '820');
INSERT INTO `npcinfo` VALUES ('26', '26', '4200', '860');
INSERT INTO `npcinfo` VALUES ('26', '26', '4760', '900');
INSERT INTO `npcinfo` VALUES ('26', '26', '5355', '940');
INSERT INTO `npcinfo` VALUES ('26', '26', '5985', '980');
INSERT INTO `npcinfo` VALUES ('26', '26', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('26', '26', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('26', '26', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('26', '26', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('26', '26', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('26', '26', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('26', '26', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('26', '26', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('26', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('26', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('26', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('26', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('26', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('26', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('26', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('26', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('26', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('26', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('26', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('26', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('26', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('26', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('26', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('26', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('26', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('26', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('26', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('26', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('26', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('26', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('26', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('26', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('26', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('26', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('26', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('26', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('26', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('26', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('26', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('26', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('26', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('26', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('26', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('26', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('26', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('26', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('26', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('26', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('26', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('26', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('26', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('26', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('26', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('26', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('26', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('26', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('26', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('26', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('26', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('26', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('26', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('26', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('26', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('26', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('26', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('26', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('26', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('26', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('26', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('26', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('26', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('26', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('26', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('26', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('26', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('26', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('26', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('26', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('26', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('26', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('26', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('26', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('26', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('26', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('27', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('27', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('27', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('27', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('27', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('27', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('27', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('27', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('27', '27', '1925', '660');
INSERT INTO `npcinfo` VALUES ('27', '27', '2310', '700');
INSERT INTO `npcinfo` VALUES ('27', '27', '2730', '740');
INSERT INTO `npcinfo` VALUES ('27', '27', '3185', '780');
INSERT INTO `npcinfo` VALUES ('27', '27', '3675', '820');
INSERT INTO `npcinfo` VALUES ('27', '27', '4200', '860');
INSERT INTO `npcinfo` VALUES ('27', '27', '4760', '900');
INSERT INTO `npcinfo` VALUES ('27', '27', '5355', '940');
INSERT INTO `npcinfo` VALUES ('27', '27', '5985', '980');
INSERT INTO `npcinfo` VALUES ('27', '27', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('27', '27', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('27', '27', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('27', '27', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('27', '27', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('27', '27', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('27', '27', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('27', '27', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('27', '27', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('27', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('27', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('27', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('27', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('27', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('27', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('27', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('27', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('27', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('27', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('27', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('27', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('27', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('27', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('27', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('27', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('27', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('27', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('27', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('27', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('27', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('27', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('27', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('27', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('27', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('27', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('27', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('27', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('27', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('27', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('27', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('27', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('27', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('27', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('27', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('27', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('27', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('27', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('27', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('27', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('27', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('27', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('27', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('27', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('27', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('27', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('27', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('27', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('27', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('27', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('27', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('27', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('27', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('27', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('27', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('27', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('27', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('27', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('27', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('27', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('27', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('27', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('27', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('27', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('27', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('27', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('27', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('27', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('27', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('27', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('27', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('27', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('27', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('27', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('27', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('28', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('28', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('28', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('28', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('28', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('28', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('28', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('28', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('28', '28', '1925', '660');
INSERT INTO `npcinfo` VALUES ('28', '28', '2310', '700');
INSERT INTO `npcinfo` VALUES ('28', '28', '2730', '740');
INSERT INTO `npcinfo` VALUES ('28', '28', '3185', '780');
INSERT INTO `npcinfo` VALUES ('28', '28', '3675', '820');
INSERT INTO `npcinfo` VALUES ('28', '28', '4200', '860');
INSERT INTO `npcinfo` VALUES ('28', '28', '4760', '900');
INSERT INTO `npcinfo` VALUES ('28', '28', '5355', '940');
INSERT INTO `npcinfo` VALUES ('28', '28', '5985', '980');
INSERT INTO `npcinfo` VALUES ('28', '28', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('28', '28', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('28', '28', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('28', '28', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('28', '28', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('28', '28', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('28', '28', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('28', '28', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('28', '28', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('28', '28', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('28', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('28', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('28', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('28', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('28', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('28', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('28', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('28', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('28', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('28', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('28', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('28', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('28', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('28', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('28', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('28', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('28', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('28', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('28', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('28', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('28', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('28', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('28', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('28', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('28', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('28', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('28', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('28', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('28', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('28', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('28', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('28', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('28', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('28', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('28', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('28', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('28', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('28', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('28', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('28', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('28', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('28', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('28', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('28', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('28', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('28', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('28', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('28', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('28', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('28', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('28', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('28', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('28', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('28', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('28', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('28', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('28', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('28', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('28', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('28', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('28', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('28', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('28', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('28', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('28', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('28', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('28', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('28', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('28', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('28', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('28', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('28', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('28', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('28', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('29', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('29', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('29', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('29', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('29', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('29', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('29', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('29', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('29', '29', '1925', '660');
INSERT INTO `npcinfo` VALUES ('29', '29', '2310', '700');
INSERT INTO `npcinfo` VALUES ('29', '29', '2730', '740');
INSERT INTO `npcinfo` VALUES ('29', '29', '3185', '780');
INSERT INTO `npcinfo` VALUES ('29', '29', '3675', '820');
INSERT INTO `npcinfo` VALUES ('29', '29', '4200', '860');
INSERT INTO `npcinfo` VALUES ('29', '29', '4760', '900');
INSERT INTO `npcinfo` VALUES ('29', '29', '5355', '940');
INSERT INTO `npcinfo` VALUES ('29', '29', '5985', '980');
INSERT INTO `npcinfo` VALUES ('29', '29', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('29', '29', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('29', '29', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('29', '29', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('29', '29', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('29', '29', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('29', '29', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('29', '29', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('29', '29', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('29', '29', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('29', '29', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('29', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('29', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('29', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('29', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('29', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('29', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('29', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('29', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('29', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('29', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('29', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('29', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('29', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('29', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('29', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('29', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('29', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('29', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('29', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('29', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('29', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('29', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('29', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('29', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('29', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('29', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('29', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('29', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('29', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('29', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('29', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('29', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('29', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('29', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('29', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('29', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('29', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('29', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('29', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('29', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('29', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('29', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('29', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('29', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('29', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('29', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('29', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('29', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('29', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('29', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('29', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('29', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('29', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('29', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('29', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('29', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('29', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('29', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('29', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('29', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('29', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('29', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('29', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('29', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('29', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('29', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('29', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('29', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('29', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('29', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('29', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('29', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('29', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('30', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('30', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('30', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('30', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('30', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('30', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('30', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('30', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('30', '30', '1925', '660');
INSERT INTO `npcinfo` VALUES ('30', '30', '2310', '700');
INSERT INTO `npcinfo` VALUES ('30', '30', '2730', '740');
INSERT INTO `npcinfo` VALUES ('30', '30', '3185', '780');
INSERT INTO `npcinfo` VALUES ('30', '30', '3675', '820');
INSERT INTO `npcinfo` VALUES ('30', '30', '4200', '860');
INSERT INTO `npcinfo` VALUES ('30', '30', '4760', '900');
INSERT INTO `npcinfo` VALUES ('30', '30', '5355', '940');
INSERT INTO `npcinfo` VALUES ('30', '30', '5985', '980');
INSERT INTO `npcinfo` VALUES ('30', '30', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('30', '30', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('30', '30', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('30', '30', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('30', '30', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('30', '30', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('30', '30', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('30', '30', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('30', '30', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('30', '30', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('30', '30', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('30', '30', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('30', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('30', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('30', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('30', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('30', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('30', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('30', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('30', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('30', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('30', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('30', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('30', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('30', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('30', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('30', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('30', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('30', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('30', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('30', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('30', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('30', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('30', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('30', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('30', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('30', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('30', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('30', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('30', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('30', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('30', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('30', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('30', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('30', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('30', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('30', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('30', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('30', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('30', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('30', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('30', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('30', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('30', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('30', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('30', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('30', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('30', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('30', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('30', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('30', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('30', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('30', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('30', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('30', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('30', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('30', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('30', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('30', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('30', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('30', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('30', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('30', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('30', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('30', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('30', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('30', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('30', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('30', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('30', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('30', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('30', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('30', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('30', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('31', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('31', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('31', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('31', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('31', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('31', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('31', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('31', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('31', '31', '1925', '660');
INSERT INTO `npcinfo` VALUES ('31', '31', '2310', '700');
INSERT INTO `npcinfo` VALUES ('31', '31', '2730', '740');
INSERT INTO `npcinfo` VALUES ('31', '31', '3185', '780');
INSERT INTO `npcinfo` VALUES ('31', '31', '3675', '820');
INSERT INTO `npcinfo` VALUES ('31', '31', '4200', '860');
INSERT INTO `npcinfo` VALUES ('31', '31', '4760', '900');
INSERT INTO `npcinfo` VALUES ('31', '31', '5355', '940');
INSERT INTO `npcinfo` VALUES ('31', '31', '5985', '980');
INSERT INTO `npcinfo` VALUES ('31', '31', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('31', '31', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('31', '31', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('31', '31', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('31', '31', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('31', '31', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('31', '31', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('31', '31', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('31', '31', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('31', '31', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('31', '31', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('31', '31', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('31', '31', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('31', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('31', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('31', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('31', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('31', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('31', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('31', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('31', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('31', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('31', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('31', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('31', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('31', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('31', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('31', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('31', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('31', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('31', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('31', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('31', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('31', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('31', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('31', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('31', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('31', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('31', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('31', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('31', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('31', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('31', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('31', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('31', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('31', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('31', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('31', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('31', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('31', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('31', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('31', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('31', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('31', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('31', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('31', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('31', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('31', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('31', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('31', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('31', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('31', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('31', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('31', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('31', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('31', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('31', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('31', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('31', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('31', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('31', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('31', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('31', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('31', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('31', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('31', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('31', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('31', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('31', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('31', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('31', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('31', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('31', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('31', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('32', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('32', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('32', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('32', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('32', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('32', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('32', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('32', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('32', '32', '1925', '660');
INSERT INTO `npcinfo` VALUES ('32', '32', '2310', '700');
INSERT INTO `npcinfo` VALUES ('32', '32', '2730', '740');
INSERT INTO `npcinfo` VALUES ('32', '32', '3185', '780');
INSERT INTO `npcinfo` VALUES ('32', '32', '3675', '820');
INSERT INTO `npcinfo` VALUES ('32', '32', '4200', '860');
INSERT INTO `npcinfo` VALUES ('32', '32', '4760', '900');
INSERT INTO `npcinfo` VALUES ('32', '32', '5355', '940');
INSERT INTO `npcinfo` VALUES ('32', '32', '5985', '980');
INSERT INTO `npcinfo` VALUES ('32', '32', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('32', '32', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('32', '32', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('32', '32', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('32', '32', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('32', '32', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('32', '32', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('32', '32', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('32', '32', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('32', '32', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('32', '32', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('32', '32', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('32', '32', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('32', '32', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('32', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('32', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('32', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('32', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('32', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('32', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('32', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('32', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('32', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('32', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('32', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('32', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('32', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('32', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('32', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('32', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('32', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('32', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('32', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('32', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('32', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('32', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('32', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('32', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('32', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('32', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('32', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('32', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('32', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('32', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('32', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('32', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('32', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('32', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('32', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('32', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('32', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('32', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('32', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('32', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('32', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('32', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('32', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('32', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('32', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('32', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('32', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('32', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('32', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('32', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('32', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('32', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('32', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('32', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('32', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('32', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('32', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('32', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('32', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('32', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('32', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('32', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('32', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('32', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('32', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('32', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('32', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('32', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('32', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('32', '127', '173999', '4220');
INSERT INTO `npcinfo` VALUES ('33', '2', '105', '340');
INSERT INTO `npcinfo` VALUES ('33', '3', '210', '380');
INSERT INTO `npcinfo` VALUES ('33', '4', '350', '420');
INSERT INTO `npcinfo` VALUES ('33', '5', '525', '460');
INSERT INTO `npcinfo` VALUES ('33', '6', '735', '500');
INSERT INTO `npcinfo` VALUES ('33', '7', '980', '540');
INSERT INTO `npcinfo` VALUES ('33', '8', '1260', '580');
INSERT INTO `npcinfo` VALUES ('33', '9', '1575', '620');
INSERT INTO `npcinfo` VALUES ('33', '33', '1925', '660');
INSERT INTO `npcinfo` VALUES ('33', '33', '2310', '700');
INSERT INTO `npcinfo` VALUES ('33', '33', '2730', '740');
INSERT INTO `npcinfo` VALUES ('33', '33', '3185', '780');
INSERT INTO `npcinfo` VALUES ('33', '33', '3675', '820');
INSERT INTO `npcinfo` VALUES ('33', '33', '4200', '860');
INSERT INTO `npcinfo` VALUES ('33', '33', '4760', '900');
INSERT INTO `npcinfo` VALUES ('33', '33', '5355', '940');
INSERT INTO `npcinfo` VALUES ('33', '33', '5985', '980');
INSERT INTO `npcinfo` VALUES ('33', '33', '6650', '1020');
INSERT INTO `npcinfo` VALUES ('33', '33', '7350', '1060');
INSERT INTO `npcinfo` VALUES ('33', '33', '8085', '1100');
INSERT INTO `npcinfo` VALUES ('33', '33', '8855', '1140');
INSERT INTO `npcinfo` VALUES ('33', '33', '9660', '1180');
INSERT INTO `npcinfo` VALUES ('33', '33', '10500', '1220');
INSERT INTO `npcinfo` VALUES ('33', '33', '11375', '1260');
INSERT INTO `npcinfo` VALUES ('33', '33', '12285', '1300');
INSERT INTO `npcinfo` VALUES ('33', '33', '13230', '1340');
INSERT INTO `npcinfo` VALUES ('33', '33', '14210', '1380');
INSERT INTO `npcinfo` VALUES ('33', '33', '15225', '1420');
INSERT INTO `npcinfo` VALUES ('33', '33', '16275', '1460');
INSERT INTO `npcinfo` VALUES ('33', '33', '17360', '1500');
INSERT INTO `npcinfo` VALUES ('33', '33', '18480', '1540');
INSERT INTO `npcinfo` VALUES ('33', '33', '19635', '1580');
INSERT INTO `npcinfo` VALUES ('33', '34', '20825', '1620');
INSERT INTO `npcinfo` VALUES ('33', '35', '22050', '1660');
INSERT INTO `npcinfo` VALUES ('33', '36', '23310', '1700');
INSERT INTO `npcinfo` VALUES ('33', '37', '24605', '1740');
INSERT INTO `npcinfo` VALUES ('33', '38', '25935', '1780');
INSERT INTO `npcinfo` VALUES ('33', '39', '27300', '1820');
INSERT INTO `npcinfo` VALUES ('33', '40', '28700', '1860');
INSERT INTO `npcinfo` VALUES ('33', '41', '30135', '1900');
INSERT INTO `npcinfo` VALUES ('33', '42', '31605', '1940');
INSERT INTO `npcinfo` VALUES ('33', '43', '33110', '1980');
INSERT INTO `npcinfo` VALUES ('33', '44', '34650', '2020');
INSERT INTO `npcinfo` VALUES ('33', '45', '36225', '2060');
INSERT INTO `npcinfo` VALUES ('33', '46', '37835', '2100');
INSERT INTO `npcinfo` VALUES ('33', '47', '39480', '2140');
INSERT INTO `npcinfo` VALUES ('33', '48', '41160', '2180');
INSERT INTO `npcinfo` VALUES ('33', '49', '42875', '2220');
INSERT INTO `npcinfo` VALUES ('33', '50', '44625', '2260');
INSERT INTO `npcinfo` VALUES ('33', '51', '46410', '2300');
INSERT INTO `npcinfo` VALUES ('33', '52', '48230', '2340');
INSERT INTO `npcinfo` VALUES ('33', '53', '50085', '2380');
INSERT INTO `npcinfo` VALUES ('33', '54', '51975', '2420');
INSERT INTO `npcinfo` VALUES ('33', '55', '53900', '2460');
INSERT INTO `npcinfo` VALUES ('33', '56', '55860', '2500');
INSERT INTO `npcinfo` VALUES ('33', '57', '57855', '2540');
INSERT INTO `npcinfo` VALUES ('33', '58', '59885', '2580');
INSERT INTO `npcinfo` VALUES ('33', '59', '61950', '2620');
INSERT INTO `npcinfo` VALUES ('33', '60', '64050', '2660');
INSERT INTO `npcinfo` VALUES ('33', '61', '66185', '2700');
INSERT INTO `npcinfo` VALUES ('33', '62', '68355', '2740');
INSERT INTO `npcinfo` VALUES ('33', '63', '70560', '2780');
INSERT INTO `npcinfo` VALUES ('33', '64', '72800', '2820');
INSERT INTO `npcinfo` VALUES ('33', '65', '75075', '2860');
INSERT INTO `npcinfo` VALUES ('33', '66', '77385', '2900');
INSERT INTO `npcinfo` VALUES ('33', '67', '79730', '2940');
INSERT INTO `npcinfo` VALUES ('33', '68', '82110', '2980');
INSERT INTO `npcinfo` VALUES ('33', '69', '84525', '3020');
INSERT INTO `npcinfo` VALUES ('33', '70', '86975', '3060');
INSERT INTO `npcinfo` VALUES ('33', '71', '89460', '3100');
INSERT INTO `npcinfo` VALUES ('33', '72', '91980', '3140');
INSERT INTO `npcinfo` VALUES ('33', '73', '94535', '3180');
INSERT INTO `npcinfo` VALUES ('33', '74', '97125', '3220');
INSERT INTO `npcinfo` VALUES ('33', '75', '99750', '3260');
INSERT INTO `npcinfo` VALUES ('33', '76', '102410', '3300');
INSERT INTO `npcinfo` VALUES ('33', '77', '105105', '3340');
INSERT INTO `npcinfo` VALUES ('33', '78', '107835', '3380');
INSERT INTO `npcinfo` VALUES ('33', '79', '110600', '3420');
INSERT INTO `npcinfo` VALUES ('33', '80', '113400', '3460');
INSERT INTO `npcinfo` VALUES ('33', '81', '116235', '3500');
INSERT INTO `npcinfo` VALUES ('33', '82', '119105', '3540');
INSERT INTO `npcinfo` VALUES ('33', '83', '122010', '3580');
INSERT INTO `npcinfo` VALUES ('33', '84', '124950', '3620');
INSERT INTO `npcinfo` VALUES ('33', '85', '127925', '3660');
INSERT INTO `npcinfo` VALUES ('33', '86', '130935', '3700');
INSERT INTO `npcinfo` VALUES ('33', '87', '133980', '3740');
INSERT INTO `npcinfo` VALUES ('33', '88', '137060', '3780');
INSERT INTO `npcinfo` VALUES ('33', '89', '140175', '3820');
INSERT INTO `npcinfo` VALUES ('33', '90', '143325', '3860');
INSERT INTO `npcinfo` VALUES ('33', '91', '146510', '3900');
INSERT INTO `npcinfo` VALUES ('33', '92', '149730', '3940');
INSERT INTO `npcinfo` VALUES ('33', '93', '152985', '3980');
INSERT INTO `npcinfo` VALUES ('33', '94', '156275', '4020');
INSERT INTO `npcinfo` VALUES ('33', '95', '159600', '4060');
INSERT INTO `npcinfo` VALUES ('33', '96', '162960', '4100');
INSERT INTO `npcinfo` VALUES ('33', '97', '166355', '4140');
INSERT INTO `npcinfo` VALUES ('33', '98', '169785', '4180');
INSERT INTO `npcinfo` VALUES ('33', '99', '173250', '4220');
INSERT INTO `npcinfo` VALUES ('33', '100', '173251', '4220');
INSERT INTO `npcinfo` VALUES ('33', '101', '173252', '4220');
INSERT INTO `npcinfo` VALUES ('33', '127', '173999', '4220');

-- ----------------------------
-- Table structure for packet
-- ----------------------------
DROP TABLE IF EXISTS `packet`;
CREATE TABLE `packet` (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Receiver` varchar(16) NOT NULL DEFAULT '',
  `Sender` varchar(16) NOT NULL DEFAULT '',
  `Code` smallint(5) NOT NULL DEFAULT '0',
  `Body` tinyblob NOT NULL,
  `Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`SerialNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of packet
-- ----------------------------

-- ----------------------------
-- Table structure for pcbangiplist
-- ----------------------------
DROP TABLE IF EXISTS `pcbangiplist`;
CREATE TABLE `pcbangiplist` (
  `ip` int(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcbangiplist
-- ----------------------------

-- ----------------------------
-- Table structure for pendingpresents
-- ----------------------------
DROP TABLE IF EXISTS `pendingpresents`;
CREATE TABLE `pendingpresents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `present_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `added_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pendingpresents
-- ----------------------------

-- ----------------------------
-- Table structure for servicestatus
-- ----------------------------
DROP TABLE IF EXISTS `servicestatus`;
CREATE TABLE `servicestatus` (
  `SerialNo` tinytext NOT NULL,
  `Time` time NOT NULL DEFAULT '00:00:00',
  `ServerIP` int(15) NOT NULL DEFAULT '0',
  `Port` smallint(5) NOT NULL DEFAULT '0',
  `Status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servicestatus
-- ----------------------------

-- ----------------------------
-- Table structure for stageinfo
-- ----------------------------
DROP TABLE IF EXISTS `stageinfo`;
CREATE TABLE `stageinfo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `maxcharacters` tinyint(2) NOT NULL DEFAULT '0',
  `minlevel` smallint(3) NOT NULL DEFAULT '0',
  `maxlevel` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stageinfo
-- ----------------------------
INSERT INTO `stageinfo` VALUES ('1', '1', '1', '10');
INSERT INTO `stageinfo` VALUES ('2', '1', '1', '10');
INSERT INTO `stageinfo` VALUES ('3', '1', '2', '13');
INSERT INTO `stageinfo` VALUES ('4', '1', '2', '13');
INSERT INTO `stageinfo` VALUES ('5', '1', '3', '14');
INSERT INTO `stageinfo` VALUES ('6', '3', '3', '14');
INSERT INTO `stageinfo` VALUES ('7', '2', '4', '15');
INSERT INTO `stageinfo` VALUES ('8', '2', '4', '15');
INSERT INTO `stageinfo` VALUES ('9', '1', '5', '16');
INSERT INTO `stageinfo` VALUES ('10', '3', '5', '16');
INSERT INTO `stageinfo` VALUES ('11', '1', '6', '17');
INSERT INTO `stageinfo` VALUES ('12', '1', '6', '17');
INSERT INTO `stageinfo` VALUES ('13', '2', '7', '18');
INSERT INTO `stageinfo` VALUES ('14', '3', '7', '18');
INSERT INTO `stageinfo` VALUES ('15', '1', '8', '19');
INSERT INTO `stageinfo` VALUES ('16', '3', '8', '19');
INSERT INTO `stageinfo` VALUES ('17', '3', '9', '20');
INSERT INTO `stageinfo` VALUES ('18', '1', '9', '20');
INSERT INTO `stageinfo` VALUES ('19', '4', '10', '21');
INSERT INTO `stageinfo` VALUES ('20', '4', '10', '21');
INSERT INTO `stageinfo` VALUES ('21', '2', '11', '22');
INSERT INTO `stageinfo` VALUES ('22', '4', '11', '22');
INSERT INTO `stageinfo` VALUES ('23', '1', '12', '23');
INSERT INTO `stageinfo` VALUES ('24', '2', '12', '23');
INSERT INTO `stageinfo` VALUES ('25', '2', '13', '24');
INSERT INTO `stageinfo` VALUES ('26', '2', '13', '24');
INSERT INTO `stageinfo` VALUES ('27', '2', '14', '25');
INSERT INTO `stageinfo` VALUES ('28', '2', '14', '25');
INSERT INTO `stageinfo` VALUES ('29', '3', '15', '26');
INSERT INTO `stageinfo` VALUES ('30', '2', '15', '26');
INSERT INTO `stageinfo` VALUES ('31', '1', '16', '27');
INSERT INTO `stageinfo` VALUES ('32', '1', '16', '27');
INSERT INTO `stageinfo` VALUES ('33', '3', '17', '28');
INSERT INTO `stageinfo` VALUES ('34', '3', '17', '28');
INSERT INTO `stageinfo` VALUES ('35', '4', '18', '29');
INSERT INTO `stageinfo` VALUES ('36', '1', '18', '29');
INSERT INTO `stageinfo` VALUES ('37', '3', '19', '30');
INSERT INTO `stageinfo` VALUES ('38', '2', '19', '30');
INSERT INTO `stageinfo` VALUES ('39', '2', '20', '31');
INSERT INTO `stageinfo` VALUES ('40', '4', '20', '31');
INSERT INTO `stageinfo` VALUES ('41', '2', '21', '32');
INSERT INTO `stageinfo` VALUES ('42', '1', '21', '32');
INSERT INTO `stageinfo` VALUES ('43', '2', '22', '33');
INSERT INTO `stageinfo` VALUES ('44', '2', '22', '33');
INSERT INTO `stageinfo` VALUES ('45', '2', '23', '34');
INSERT INTO `stageinfo` VALUES ('46', '2', '23', '34');
INSERT INTO `stageinfo` VALUES ('47', '2', '24', '35');
INSERT INTO `stageinfo` VALUES ('48', '3', '24', '35');

-- ----------------------------
-- Table structure for swordmanrankp
-- ----------------------------
DROP TABLE IF EXISTS `swordmanrankp`;
CREATE TABLE `swordmanrankp` (
  `rank` int(11) NOT NULL DEFAULT '0',
  `username` char(16) NOT NULL DEFAULT '',
  `name` char(12) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `draw` int(11) NOT NULL DEFAULT '0',
  `lastrank` int(11) NOT NULL DEFAULT '0',
  `country` smallint(6) NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swordmanrankp
-- ----------------------------

-- ----------------------------
-- Table structure for totalrankp
-- ----------------------------
DROP TABLE IF EXISTS `totalrankp`;
CREATE TABLE `totalrankp` (
  `id` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `username` char(16) NOT NULL DEFAULT '',
  `name` char(12) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `win` int(11) NOT NULL DEFAULT '0',
  `lose` int(11) NOT NULL DEFAULT '0',
  `draw` int(11) NOT NULL DEFAULT '0',
  `lastrank` int(11) NOT NULL DEFAULT '0',
  `classrank` int(11) NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `country` smallint(6) NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `name` (`name`),
  KEY `class` (`class`),
  KEY `exp` (`exp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of totalrankp
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(11) NOT NULL DEFAULT '',
  `e_mail` varchar(50) NOT NULL DEFAULT '',
  `country` smallint(6) NOT NULL DEFAULT '0',
  `NoCountryUpdate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for usercount
-- ----------------------------
DROP TABLE IF EXISTS `usercount`;
CREATE TABLE `usercount` (
  `SerialNo` int(11) unsigned NOT NULL DEFAULT '0',
  `ServerIp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ServerPort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UserCount` int(10) NOT NULL DEFAULT '0',
  KEY `Server` (`ServerIp`,`ServerPort`),
  KEY `serialno` (`SerialNo`),
  KEY `Time` (`Time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercount
-- ----------------------------

-- ----------------------------
-- Table structure for usergameinfo
-- ----------------------------
DROP TABLE IF EXISTS `usergameinfo`;
CREATE TABLE `usergameinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL DEFAULT '',
  `gold` int(10) NOT NULL DEFAULT '10000',
  `tutorial` tinyint(1) NOT NULL DEFAULT '0',
  `stagelevelfree` tinyint(1) NOT NULL DEFAULT '0',
  `slot` tinyint(1) NOT NULL DEFAULT '4',
  `bandate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clanid` int(11) NOT NULL DEFAULT '0',
  `clanpoint` int(11) NOT NULL DEFAULT '0',
  `clanrank` int(11) NOT NULL DEFAULT '0',
  `clangrade` int(11) NOT NULL DEFAULT '0',
  `buddyname` varchar(11) NOT NULL DEFAULT '',
  `powertime` bigint(11) NOT NULL DEFAULT '0',
  `powerlevelpoint` int(11) NOT NULL DEFAULT '0',
  `powertimedate` datetime DEFAULT '0000-00-00 00:00:00',
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `charname` varchar(30) NOT NULL DEFAULT '',
  `treeuppername` varchar(30) NOT NULL DEFAULT '',
  `treerank` int(11) NOT NULL DEFAULT '0',
  `bag` tinyint(1) NOT NULL DEFAULT '1',
  `rankgrade` smallint(6) NOT NULL DEFAULT '0',
  `country` int(11) NOT NULL DEFAULT '9',
  `lastconnect` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergameinfo
-- ----------------------------

-- ----------------------------
-- Table structure for useriteminfo
-- ----------------------------
DROP TABLE IF EXISTS `useriteminfo`;
CREATE TABLE `useriteminfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `characterid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `item_sn` int(30) NOT NULL DEFAULT '8000',
  `sn_type` tinyint(2) NOT NULL DEFAULT '3',
  `level` tinyint(3) NOT NULL DEFAULT '1',
  `limittime`  int(11) NOT NULL DEFAULT '0',
  `slot` tinyint(1) NOT NULL DEFAULT '0',
  `exp` bigint(60) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useriteminfo
-- ----------------------------

-- ----------------------------
-- Table structure for userstageinfo
-- ----------------------------
DROP TABLE IF EXISTS `userstageinfo`;
CREATE TABLE `userstageinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `stage` tinyint(3) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userstageinfo
-- ----------------------------
