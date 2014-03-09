/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50534
Source Database       : rakion

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-03-07 23:13:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admininfo`
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
-- Table structure for `archerrankp`
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
-- Table structure for `blacksmithrankp`
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
-- Table structure for `buddylist`
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
-- Table structure for `buyinfo`
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
-- Table structure for `cash`
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
-- Table structure for `characterinfo`
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
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of characterinfo
-- ----------------------------
-- ----------------------------
-- Table structure for `claninfo`
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
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of claninfo
-- ----------------------------

-- ----------------------------
-- Table structure for `clanrankp`
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
-- Table structure for `clanschedule`
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
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clanschedule
-- ----------------------------

-- ----------------------------
-- Table structure for `classinfo`
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
-- Table structure for `classlevelinfo`
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
-- Table structure for `country_reference`
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
-- Table structure for `couponinfo`
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
-- Table structure for `itembox`
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
-- Table structure for `iteminfo`
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
-- Table structure for `localsales`
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
-- Table structure for `localserverstatus`
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
-- Table structure for `logaddgoldcash`
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
-- Table structure for `logbuycashitem`
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
-- Table structure for `logbuypoweruser`
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
-- Table structure for `logchangecharname`
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
-- Table structure for `logcharstateclear`
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
-- Table structure for `logcoupon`
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
-- Table structure for `logcurrentuser`
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
-- Table structure for `logcurrentuserlevel`
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
-- Table structure for `logdeletecharacter`
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
-- Table structure for `logdieplayer`
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
-- Table structure for `logfieldgameabusercheck`
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
-- Table structure for `logfieldgamepoint`
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
-- Table structure for `logfieldgamepointlist`
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
-- Table structure for `logfieldplayers`
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
-- Table structure for `loggoldpresents`
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

-- ----------------------------
-- Table structure for `loglottery`
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
-- Table structure for `logpcbang`
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
-- Table structure for `logpresent`
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
-- Table structure for `logserverstatus`
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
-- Table structure for `logspendgoldcash`
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
-- Table structure for `logstageclear`
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logstageclear
-- ----------------------------

-- ----------------------------
-- Table structure for `logstageclearp`
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
-- Table structure for `loguserconnect`
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
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loguserconnect
-- ----------------------------

-- ----------------------------
-- Table structure for `loguseritem`
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
-- Table structure for `lotto`
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
-- Table structure for `magerankp`
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
-- Table structure for `ninjarankp`
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
-- Table structure for `npcinfo`
-- ----------------------------
DROP TABLE IF EXISTS `npcinfo`;
CREATE TABLE `npcinfo` (
  `npc` int(11) NOT NULL DEFAULT '0',
  `level` int(5) DEFAULT '0',
  `exp` int(11) DEFAULT '0',
  `gold` int(10) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of npcinfo
-- ----------------------------
INSERT INTO `npcinfo` VALUES ('0', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('0', '2', '35', '1');
INSERT INTO `npcinfo` VALUES ('0', '3', '105', '1');
INSERT INTO `npcinfo` VALUES ('0', '4', '210', '1');
INSERT INTO `npcinfo` VALUES ('0', '5', '350', '1');
INSERT INTO `npcinfo` VALUES ('0', '6', '525', '1');
INSERT INTO `npcinfo` VALUES ('0', '7', '735', '1');
INSERT INTO `npcinfo` VALUES ('0', '8', '980', '1');
INSERT INTO `npcinfo` VALUES ('0', '9', '1260', '1');
INSERT INTO `npcinfo` VALUES ('0', '10', '1575', '1');
INSERT INTO `npcinfo` VALUES ('0', '11', '1925', '1');
INSERT INTO `npcinfo` VALUES ('0', '12', '2310', '1');
INSERT INTO `npcinfo` VALUES ('0', '13', '2730', '1');
INSERT INTO `npcinfo` VALUES ('0', '14', '3185', '1');
INSERT INTO `npcinfo` VALUES ('0', '15', '3675', '1');
INSERT INTO `npcinfo` VALUES ('0', '16', '4200', '1');
INSERT INTO `npcinfo` VALUES ('0', '17', '4760', '1');
INSERT INTO `npcinfo` VALUES ('0', '18', '5355', '1');
INSERT INTO `npcinfo` VALUES ('0', '19', '5985', '1');
INSERT INTO `npcinfo` VALUES ('0', '20', '6650', '1');
INSERT INTO `npcinfo` VALUES ('0', '21', '7350', '1');
INSERT INTO `npcinfo` VALUES ('0', '22', '8085', '1');
INSERT INTO `npcinfo` VALUES ('0', '23', '8855', '1');
INSERT INTO `npcinfo` VALUES ('0', '24', '9660', '1');
INSERT INTO `npcinfo` VALUES ('0', '25', '10500', '1');
INSERT INTO `npcinfo` VALUES ('0', '26', '11375', '1');
INSERT INTO `npcinfo` VALUES ('0', '27', '12285', '1');
INSERT INTO `npcinfo` VALUES ('0', '28', '13230', '1');
INSERT INTO `npcinfo` VALUES ('0', '29', '14210', '1');
INSERT INTO `npcinfo` VALUES ('0', '30', '15225', '1');
INSERT INTO `npcinfo` VALUES ('0', '31', '16275', '1');
INSERT INTO `npcinfo` VALUES ('0', '32', '17360', '1');
INSERT INTO `npcinfo` VALUES ('0', '33', '18480', '1');
INSERT INTO `npcinfo` VALUES ('0', '34', '19635', '1');
INSERT INTO `npcinfo` VALUES ('0', '35', '20825', '1');
INSERT INTO `npcinfo` VALUES ('0', '36', '22050', '1');
INSERT INTO `npcinfo` VALUES ('0', '37', '23310', '1');
INSERT INTO `npcinfo` VALUES ('0', '38', '24605', '1');
INSERT INTO `npcinfo` VALUES ('0', '39', '25935', '1');
INSERT INTO `npcinfo` VALUES ('0', '40', '27300', '1');
INSERT INTO `npcinfo` VALUES ('0', '41', '28700', '1');
INSERT INTO `npcinfo` VALUES ('0', '42', '30135', '1');
INSERT INTO `npcinfo` VALUES ('0', '43', '31605', '1');
INSERT INTO `npcinfo` VALUES ('0', '44', '33110', '1');
INSERT INTO `npcinfo` VALUES ('0', '45', '34650', '1');
INSERT INTO `npcinfo` VALUES ('0', '46', '36225', '1');
INSERT INTO `npcinfo` VALUES ('0', '47', '37835', '1');
INSERT INTO `npcinfo` VALUES ('0', '48', '39480', '1');
INSERT INTO `npcinfo` VALUES ('0', '49', '41160', '1');
INSERT INTO `npcinfo` VALUES ('0', '50', '42875', '1');
INSERT INTO `npcinfo` VALUES ('0', '51', '44625', '1');
INSERT INTO `npcinfo` VALUES ('0', '52', '46410', '1');
INSERT INTO `npcinfo` VALUES ('0', '53', '48230', '1');
INSERT INTO `npcinfo` VALUES ('0', '54', '50085', '1');
INSERT INTO `npcinfo` VALUES ('0', '55', '51975', '1');
INSERT INTO `npcinfo` VALUES ('0', '56', '53900', '1');
INSERT INTO `npcinfo` VALUES ('0', '57', '55860', '1');
INSERT INTO `npcinfo` VALUES ('0', '58', '57855', '1');
INSERT INTO `npcinfo` VALUES ('0', '59', '59885', '1');
INSERT INTO `npcinfo` VALUES ('0', '60', '61950', '1');
INSERT INTO `npcinfo` VALUES ('0', '61', '64050', '1');
INSERT INTO `npcinfo` VALUES ('0', '62', '66185', '1');
INSERT INTO `npcinfo` VALUES ('0', '63', '68355', '1');
INSERT INTO `npcinfo` VALUES ('0', '64', '70560', '1');
INSERT INTO `npcinfo` VALUES ('0', '65', '72800', '1');
INSERT INTO `npcinfo` VALUES ('0', '66', '75075', '1');
INSERT INTO `npcinfo` VALUES ('0', '67', '77385', '1');
INSERT INTO `npcinfo` VALUES ('0', '68', '79730', '1');
INSERT INTO `npcinfo` VALUES ('0', '69', '82110', '1');
INSERT INTO `npcinfo` VALUES ('0', '70', '84525', '1');
INSERT INTO `npcinfo` VALUES ('0', '71', '86975', '1');
INSERT INTO `npcinfo` VALUES ('0', '72', '89460', '1');
INSERT INTO `npcinfo` VALUES ('0', '73', '91980', '1');
INSERT INTO `npcinfo` VALUES ('0', '74', '94535', '1');
INSERT INTO `npcinfo` VALUES ('0', '75', '97125', '1');
INSERT INTO `npcinfo` VALUES ('0', '76', '99750', '1');
INSERT INTO `npcinfo` VALUES ('0', '77', '102410', '1');
INSERT INTO `npcinfo` VALUES ('0', '78', '105105', '1');
INSERT INTO `npcinfo` VALUES ('0', '79', '107835', '1');
INSERT INTO `npcinfo` VALUES ('0', '80', '110600', '1');
INSERT INTO `npcinfo` VALUES ('0', '81', '113400', '1');
INSERT INTO `npcinfo` VALUES ('0', '82', '116235', '1');
INSERT INTO `npcinfo` VALUES ('0', '83', '119105', '1');
INSERT INTO `npcinfo` VALUES ('0', '84', '122010', '1');
INSERT INTO `npcinfo` VALUES ('0', '85', '124950', '1');
INSERT INTO `npcinfo` VALUES ('0', '86', '127925', '1');
INSERT INTO `npcinfo` VALUES ('0', '87', '130935', '1');
INSERT INTO `npcinfo` VALUES ('0', '88', '133980', '1');
INSERT INTO `npcinfo` VALUES ('0', '89', '137060', '1');
INSERT INTO `npcinfo` VALUES ('0', '90', '140175', '1');
INSERT INTO `npcinfo` VALUES ('0', '91', '143325', '1');
INSERT INTO `npcinfo` VALUES ('0', '92', '146510', '1');
INSERT INTO `npcinfo` VALUES ('0', '93', '149730', '1');
INSERT INTO `npcinfo` VALUES ('0', '94', '152985', '1');
INSERT INTO `npcinfo` VALUES ('0', '95', '156275', '1');
INSERT INTO `npcinfo` VALUES ('0', '96', '159600', '1');
INSERT INTO `npcinfo` VALUES ('0', '97', '162960', '1');
INSERT INTO `npcinfo` VALUES ('0', '98', '166355', '1');
INSERT INTO `npcinfo` VALUES ('0', '99', '169785', '1');
INSERT INTO `npcinfo` VALUES ('0', '100', '173250', '1');
INSERT INTO `npcinfo` VALUES ('0', '101', '176750', '1');
INSERT INTO `npcinfo` VALUES ('0', '102', '180285', '1');
INSERT INTO `npcinfo` VALUES ('0', '103', '183855', '1');
INSERT INTO `npcinfo` VALUES ('0', '104', '187460', '1');
INSERT INTO `npcinfo` VALUES ('0', '105', '191100', '1');
INSERT INTO `npcinfo` VALUES ('0', '106', '194775', '1');
INSERT INTO `npcinfo` VALUES ('0', '107', '198485', '1');
INSERT INTO `npcinfo` VALUES ('0', '108', '202230', '1');
INSERT INTO `npcinfo` VALUES ('0', '109', '206010', '1');
INSERT INTO `npcinfo` VALUES ('0', '110', '209825', '1');
INSERT INTO `npcinfo` VALUES ('0', '111', '213675', '1');
INSERT INTO `npcinfo` VALUES ('0', '112', '217560', '1');
INSERT INTO `npcinfo` VALUES ('0', '113', '221480', '1');
INSERT INTO `npcinfo` VALUES ('0', '114', '225435', '1');
INSERT INTO `npcinfo` VALUES ('0', '115', '229425', '1');
INSERT INTO `npcinfo` VALUES ('0', '116', '233450', '1');
INSERT INTO `npcinfo` VALUES ('0', '117', '237510', '1');
INSERT INTO `npcinfo` VALUES ('0', '118', '241605', '1');
INSERT INTO `npcinfo` VALUES ('0', '119', '245735', '1');
INSERT INTO `npcinfo` VALUES ('0', '120', '249900', '1');
INSERT INTO `npcinfo` VALUES ('0', '121', '254100', '1');
INSERT INTO `npcinfo` VALUES ('0', '122', '258335', '1');
INSERT INTO `npcinfo` VALUES ('0', '123', '262605', '1');
INSERT INTO `npcinfo` VALUES ('0', '124', '266910', '1');
INSERT INTO `npcinfo` VALUES ('0', '125', '271250', '1');
INSERT INTO `npcinfo` VALUES ('0', '126', '275625', '1');
INSERT INTO `npcinfo` VALUES ('0', '127', '280035', '1');
INSERT INTO `npcinfo` VALUES ('0', '128', '284480', '1');
INSERT INTO `npcinfo` VALUES ('0', '129', '288960', '1');
INSERT INTO `npcinfo` VALUES ('0', '130', '293475', '1');
INSERT INTO `npcinfo` VALUES ('0', '131', '298025', '1');
INSERT INTO `npcinfo` VALUES ('0', '132', '302610', '1');
INSERT INTO `npcinfo` VALUES ('0', '133', '307230', '1');
INSERT INTO `npcinfo` VALUES ('0', '134', '311885', '1');
INSERT INTO `npcinfo` VALUES ('0', '135', '316575', '1');
INSERT INTO `npcinfo` VALUES ('0', '136', '321300', '1');
INSERT INTO `npcinfo` VALUES ('0', '137', '326060', '1');
INSERT INTO `npcinfo` VALUES ('0', '138', '330855', '1');
INSERT INTO `npcinfo` VALUES ('0', '139', '335685', '1');
INSERT INTO `npcinfo` VALUES ('0', '140', '340550', '1');
INSERT INTO `npcinfo` VALUES ('0', '141', '345450', '1');
INSERT INTO `npcinfo` VALUES ('0', '142', '350385', '1');
INSERT INTO `npcinfo` VALUES ('0', '143', '355355', '1');
INSERT INTO `npcinfo` VALUES ('0', '144', '360360', '1');
INSERT INTO `npcinfo` VALUES ('0', '145', '365400', '1');
INSERT INTO `npcinfo` VALUES ('0', '146', '370475', '1');
INSERT INTO `npcinfo` VALUES ('0', '147', '375585', '1');
INSERT INTO `npcinfo` VALUES ('0', '148', '380730', '1');
INSERT INTO `npcinfo` VALUES ('0', '149', '385910', '1');
INSERT INTO `npcinfo` VALUES ('0', '150', '391125', '1');
INSERT INTO `npcinfo` VALUES ('0', '151', '396375', '1');
INSERT INTO `npcinfo` VALUES ('0', '152', '401660', '1');
INSERT INTO `npcinfo` VALUES ('0', '153', '406980', '1');
INSERT INTO `npcinfo` VALUES ('0', '154', '412335', '1');
INSERT INTO `npcinfo` VALUES ('0', '155', '417725', '1');
INSERT INTO `npcinfo` VALUES ('0', '156', '423150', '1');
INSERT INTO `npcinfo` VALUES ('0', '157', '428610', '1');
INSERT INTO `npcinfo` VALUES ('0', '158', '434105', '1');
INSERT INTO `npcinfo` VALUES ('0', '159', '439635', '1');
INSERT INTO `npcinfo` VALUES ('0', '160', '445200', '1');
INSERT INTO `npcinfo` VALUES ('0', '161', '450800', '1');
INSERT INTO `npcinfo` VALUES ('0', '162', '456435', '1');
INSERT INTO `npcinfo` VALUES ('0', '163', '462105', '1');
INSERT INTO `npcinfo` VALUES ('0', '164', '467810', '1');
INSERT INTO `npcinfo` VALUES ('0', '165', '473550', '1');
INSERT INTO `npcinfo` VALUES ('0', '166', '479325', '1');
INSERT INTO `npcinfo` VALUES ('0', '167', '485135', '1');
INSERT INTO `npcinfo` VALUES ('0', '168', '490980', '1');
INSERT INTO `npcinfo` VALUES ('0', '169', '496860', '1');
INSERT INTO `npcinfo` VALUES ('0', '170', '502775', '1');
INSERT INTO `npcinfo` VALUES ('0', '171', '508725', '1');
INSERT INTO `npcinfo` VALUES ('0', '172', '514710', '1');
INSERT INTO `npcinfo` VALUES ('0', '173', '520730', '1');
INSERT INTO `npcinfo` VALUES ('0', '174', '526785', '1');
INSERT INTO `npcinfo` VALUES ('0', '175', '532875', '1');
INSERT INTO `npcinfo` VALUES ('0', '176', '539000', '1');
INSERT INTO `npcinfo` VALUES ('0', '177', '545160', '1');
INSERT INTO `npcinfo` VALUES ('0', '178', '551355', '1');
INSERT INTO `npcinfo` VALUES ('0', '179', '557585', '1');
INSERT INTO `npcinfo` VALUES ('0', '180', '563850', '1');
INSERT INTO `npcinfo` VALUES ('0', '181', '570150', '1');
INSERT INTO `npcinfo` VALUES ('0', '182', '576485', '1');
INSERT INTO `npcinfo` VALUES ('0', '183', '582855', '1');
INSERT INTO `npcinfo` VALUES ('0', '184', '589260', '1');
INSERT INTO `npcinfo` VALUES ('0', '185', '595700', '1');
INSERT INTO `npcinfo` VALUES ('0', '186', '602175', '1');
INSERT INTO `npcinfo` VALUES ('0', '187', '608685', '1');
INSERT INTO `npcinfo` VALUES ('0', '188', '615230', '1');
INSERT INTO `npcinfo` VALUES ('0', '189', '621810', '1');
INSERT INTO `npcinfo` VALUES ('0', '190', '628425', '1');
INSERT INTO `npcinfo` VALUES ('0', '191', '635075', '1');
INSERT INTO `npcinfo` VALUES ('0', '192', '641760', '1');
INSERT INTO `npcinfo` VALUES ('0', '193', '648480', '1');
INSERT INTO `npcinfo` VALUES ('0', '194', '655235', '1');
INSERT INTO `npcinfo` VALUES ('0', '195', '662025', '1');
INSERT INTO `npcinfo` VALUES ('0', '196', '668850', '1');
INSERT INTO `npcinfo` VALUES ('0', '197', '675710', '1');
INSERT INTO `npcinfo` VALUES ('0', '198', '682605', '1');
INSERT INTO `npcinfo` VALUES ('0', '199', '689535', '1');
INSERT INTO `npcinfo` VALUES ('0', '200', '696500', '1');
INSERT INTO `npcinfo` VALUES ('0', '201', '703500', '1');
INSERT INTO `npcinfo` VALUES ('0', '202', '710535', '1');
INSERT INTO `npcinfo` VALUES ('0', '203', '717605', '1');
INSERT INTO `npcinfo` VALUES ('0', '204', '724710', '1');
INSERT INTO `npcinfo` VALUES ('0', '205', '731850', '1');
INSERT INTO `npcinfo` VALUES ('0', '206', '739025', '1');
INSERT INTO `npcinfo` VALUES ('0', '207', '746235', '1');
INSERT INTO `npcinfo` VALUES ('0', '208', '753480', '1');
INSERT INTO `npcinfo` VALUES ('0', '209', '760760', '1');
INSERT INTO `npcinfo` VALUES ('0', '210', '768075', '1');
INSERT INTO `npcinfo` VALUES ('0', '211', '775425', '1');
INSERT INTO `npcinfo` VALUES ('0', '212', '782810', '1');
INSERT INTO `npcinfo` VALUES ('0', '213', '790230', '1');
INSERT INTO `npcinfo` VALUES ('0', '214', '797685', '1');
INSERT INTO `npcinfo` VALUES ('0', '215', '805175', '1');
INSERT INTO `npcinfo` VALUES ('0', '216', '812700', '1');
INSERT INTO `npcinfo` VALUES ('0', '217', '820260', '1');
INSERT INTO `npcinfo` VALUES ('0', '218', '827855', '1');
INSERT INTO `npcinfo` VALUES ('0', '219', '835485', '1');
INSERT INTO `npcinfo` VALUES ('0', '220', '843150', '1');
INSERT INTO `npcinfo` VALUES ('0', '221', '850850', '1');
INSERT INTO `npcinfo` VALUES ('0', '222', '858585', '1');
INSERT INTO `npcinfo` VALUES ('0', '223', '866355', '1');
INSERT INTO `npcinfo` VALUES ('0', '224', '874160', '1');
INSERT INTO `npcinfo` VALUES ('0', '225', '882000', '1');
INSERT INTO `npcinfo` VALUES ('0', '226', '889875', '1');
INSERT INTO `npcinfo` VALUES ('0', '227', '897785', '1');
INSERT INTO `npcinfo` VALUES ('0', '228', '905730', '1');
INSERT INTO `npcinfo` VALUES ('0', '229', '913710', '1');
INSERT INTO `npcinfo` VALUES ('0', '230', '921725', '1');
INSERT INTO `npcinfo` VALUES ('0', '231', '929775', '1');
INSERT INTO `npcinfo` VALUES ('0', '232', '937860', '1');
INSERT INTO `npcinfo` VALUES ('0', '233', '945980', '1');
INSERT INTO `npcinfo` VALUES ('0', '234', '954135', '1');
INSERT INTO `npcinfo` VALUES ('0', '235', '962325', '1');
INSERT INTO `npcinfo` VALUES ('0', '236', '970550', '1');
INSERT INTO `npcinfo` VALUES ('0', '237', '978810', '1');
INSERT INTO `npcinfo` VALUES ('0', '238', '987105', '1');
INSERT INTO `npcinfo` VALUES ('0', '239', '995435', '1');
INSERT INTO `npcinfo` VALUES ('0', '240', '1003800', '1');
INSERT INTO `npcinfo` VALUES ('0', '241', '1012200', '1');
INSERT INTO `npcinfo` VALUES ('0', '242', '1020635', '1');
INSERT INTO `npcinfo` VALUES ('0', '243', '1029105', '1');
INSERT INTO `npcinfo` VALUES ('0', '244', '1037610', '1');
INSERT INTO `npcinfo` VALUES ('0', '245', '1046150', '1');
INSERT INTO `npcinfo` VALUES ('0', '246', '1054725', '1');
INSERT INTO `npcinfo` VALUES ('0', '247', '1063335', '1');
INSERT INTO `npcinfo` VALUES ('0', '248', '1071980', '1');
INSERT INTO `npcinfo` VALUES ('0', '249', '1080660', '1');
INSERT INTO `npcinfo` VALUES ('0', '250', '1089375', '1');
INSERT INTO `npcinfo` VALUES ('0', '251', '1098125', '1');
INSERT INTO `npcinfo` VALUES ('0', '252', '1106910', '1');
INSERT INTO `npcinfo` VALUES ('0', '253', '1115730', '1');
INSERT INTO `npcinfo` VALUES ('0', '254', '1124585', '1');
INSERT INTO `npcinfo` VALUES ('0', '255', '1133475', '1');
INSERT INTO `npcinfo` VALUES ('1', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('1', '2', '40', '1');
INSERT INTO `npcinfo` VALUES ('1', '3', '120', '1');
INSERT INTO `npcinfo` VALUES ('1', '4', '240', '1');
INSERT INTO `npcinfo` VALUES ('1', '5', '400', '1');
INSERT INTO `npcinfo` VALUES ('1', '6', '600', '1');
INSERT INTO `npcinfo` VALUES ('1', '7', '840', '1');
INSERT INTO `npcinfo` VALUES ('1', '8', '1120', '1');
INSERT INTO `npcinfo` VALUES ('1', '9', '1440', '1');
INSERT INTO `npcinfo` VALUES ('1', '10', '1800', '1');
INSERT INTO `npcinfo` VALUES ('1', '11', '2200', '1');
INSERT INTO `npcinfo` VALUES ('1', '12', '2640', '1');
INSERT INTO `npcinfo` VALUES ('1', '13', '3120', '1');
INSERT INTO `npcinfo` VALUES ('1', '14', '3640', '1');
INSERT INTO `npcinfo` VALUES ('1', '15', '4200', '1');
INSERT INTO `npcinfo` VALUES ('1', '16', '4800', '1');
INSERT INTO `npcinfo` VALUES ('1', '17', '5440', '1');
INSERT INTO `npcinfo` VALUES ('1', '18', '6120', '1');
INSERT INTO `npcinfo` VALUES ('1', '19', '6840', '1');
INSERT INTO `npcinfo` VALUES ('1', '20', '7600', '1');
INSERT INTO `npcinfo` VALUES ('1', '21', '8400', '1');
INSERT INTO `npcinfo` VALUES ('1', '22', '9240', '1');
INSERT INTO `npcinfo` VALUES ('1', '23', '10120', '1');
INSERT INTO `npcinfo` VALUES ('1', '24', '11040', '1');
INSERT INTO `npcinfo` VALUES ('1', '25', '12000', '1');
INSERT INTO `npcinfo` VALUES ('1', '26', '13000', '1');
INSERT INTO `npcinfo` VALUES ('1', '27', '14040', '1');
INSERT INTO `npcinfo` VALUES ('1', '28', '15120', '1');
INSERT INTO `npcinfo` VALUES ('1', '29', '16240', '1');
INSERT INTO `npcinfo` VALUES ('1', '30', '17400', '1');
INSERT INTO `npcinfo` VALUES ('1', '31', '18600', '1');
INSERT INTO `npcinfo` VALUES ('1', '32', '19840', '1');
INSERT INTO `npcinfo` VALUES ('1', '33', '21120', '1');
INSERT INTO `npcinfo` VALUES ('1', '34', '22440', '1');
INSERT INTO `npcinfo` VALUES ('1', '35', '23800', '1');
INSERT INTO `npcinfo` VALUES ('1', '36', '25200', '1');
INSERT INTO `npcinfo` VALUES ('1', '37', '26640', '1');
INSERT INTO `npcinfo` VALUES ('1', '38', '28120', '1');
INSERT INTO `npcinfo` VALUES ('1', '39', '29640', '1');
INSERT INTO `npcinfo` VALUES ('1', '40', '31200', '1');
INSERT INTO `npcinfo` VALUES ('1', '41', '32800', '1');
INSERT INTO `npcinfo` VALUES ('1', '42', '34440', '1');
INSERT INTO `npcinfo` VALUES ('1', '43', '36120', '1');
INSERT INTO `npcinfo` VALUES ('1', '44', '37840', '1');
INSERT INTO `npcinfo` VALUES ('1', '45', '39600', '1');
INSERT INTO `npcinfo` VALUES ('1', '46', '41400', '1');
INSERT INTO `npcinfo` VALUES ('1', '47', '43240', '1');
INSERT INTO `npcinfo` VALUES ('1', '48', '45120', '1');
INSERT INTO `npcinfo` VALUES ('1', '49', '47040', '1');
INSERT INTO `npcinfo` VALUES ('1', '50', '49000', '1');
INSERT INTO `npcinfo` VALUES ('1', '51', '51000', '1');
INSERT INTO `npcinfo` VALUES ('1', '52', '53040', '1');
INSERT INTO `npcinfo` VALUES ('1', '53', '55120', '1');
INSERT INTO `npcinfo` VALUES ('1', '54', '57240', '1');
INSERT INTO `npcinfo` VALUES ('1', '55', '59400', '1');
INSERT INTO `npcinfo` VALUES ('1', '56', '61600', '1');
INSERT INTO `npcinfo` VALUES ('1', '57', '63840', '1');
INSERT INTO `npcinfo` VALUES ('1', '58', '66120', '1');
INSERT INTO `npcinfo` VALUES ('1', '59', '68440', '1');
INSERT INTO `npcinfo` VALUES ('1', '60', '70800', '1');
INSERT INTO `npcinfo` VALUES ('1', '61', '73200', '1');
INSERT INTO `npcinfo` VALUES ('1', '62', '75640', '1');
INSERT INTO `npcinfo` VALUES ('1', '63', '78120', '1');
INSERT INTO `npcinfo` VALUES ('1', '64', '80640', '1');
INSERT INTO `npcinfo` VALUES ('1', '65', '83200', '1');
INSERT INTO `npcinfo` VALUES ('1', '66', '85800', '1');
INSERT INTO `npcinfo` VALUES ('1', '67', '88440', '1');
INSERT INTO `npcinfo` VALUES ('1', '68', '91120', '1');
INSERT INTO `npcinfo` VALUES ('1', '69', '93840', '1');
INSERT INTO `npcinfo` VALUES ('1', '70', '96600', '1');
INSERT INTO `npcinfo` VALUES ('1', '71', '99400', '1');
INSERT INTO `npcinfo` VALUES ('1', '72', '102240', '1');
INSERT INTO `npcinfo` VALUES ('1', '73', '105120', '1');
INSERT INTO `npcinfo` VALUES ('1', '74', '108040', '1');
INSERT INTO `npcinfo` VALUES ('1', '75', '111000', '1');
INSERT INTO `npcinfo` VALUES ('1', '76', '114000', '1');
INSERT INTO `npcinfo` VALUES ('1', '77', '117040', '1');
INSERT INTO `npcinfo` VALUES ('1', '78', '120120', '1');
INSERT INTO `npcinfo` VALUES ('1', '79', '123240', '1');
INSERT INTO `npcinfo` VALUES ('1', '80', '126400', '1');
INSERT INTO `npcinfo` VALUES ('1', '81', '129600', '1');
INSERT INTO `npcinfo` VALUES ('1', '82', '132840', '1');
INSERT INTO `npcinfo` VALUES ('1', '83', '136120', '1');
INSERT INTO `npcinfo` VALUES ('1', '84', '139440', '1');
INSERT INTO `npcinfo` VALUES ('1', '85', '142800', '1');
INSERT INTO `npcinfo` VALUES ('1', '86', '146200', '1');
INSERT INTO `npcinfo` VALUES ('1', '87', '149640', '1');
INSERT INTO `npcinfo` VALUES ('1', '88', '153120', '1');
INSERT INTO `npcinfo` VALUES ('1', '89', '156640', '1');
INSERT INTO `npcinfo` VALUES ('1', '90', '160200', '1');
INSERT INTO `npcinfo` VALUES ('1', '91', '163800', '1');
INSERT INTO `npcinfo` VALUES ('1', '92', '167440', '1');
INSERT INTO `npcinfo` VALUES ('1', '93', '171120', '1');
INSERT INTO `npcinfo` VALUES ('1', '94', '174840', '1');
INSERT INTO `npcinfo` VALUES ('1', '95', '178600', '1');
INSERT INTO `npcinfo` VALUES ('1', '96', '182400', '1');
INSERT INTO `npcinfo` VALUES ('1', '97', '186240', '1');
INSERT INTO `npcinfo` VALUES ('1', '98', '190120', '1');
INSERT INTO `npcinfo` VALUES ('1', '99', '194040', '1');
INSERT INTO `npcinfo` VALUES ('1', '100', '198000', '1');
INSERT INTO `npcinfo` VALUES ('1', '101', '202000', '1');
INSERT INTO `npcinfo` VALUES ('1', '102', '206040', '1');
INSERT INTO `npcinfo` VALUES ('1', '103', '210120', '1');
INSERT INTO `npcinfo` VALUES ('1', '104', '214240', '1');
INSERT INTO `npcinfo` VALUES ('1', '105', '218400', '1');
INSERT INTO `npcinfo` VALUES ('1', '106', '222600', '1');
INSERT INTO `npcinfo` VALUES ('1', '107', '226840', '1');
INSERT INTO `npcinfo` VALUES ('1', '108', '231120', '1');
INSERT INTO `npcinfo` VALUES ('1', '109', '235440', '1');
INSERT INTO `npcinfo` VALUES ('1', '110', '239800', '1');
INSERT INTO `npcinfo` VALUES ('1', '111', '244200', '1');
INSERT INTO `npcinfo` VALUES ('1', '112', '248640', '1');
INSERT INTO `npcinfo` VALUES ('1', '113', '253120', '1');
INSERT INTO `npcinfo` VALUES ('1', '114', '257640', '1');
INSERT INTO `npcinfo` VALUES ('1', '115', '262200', '1');
INSERT INTO `npcinfo` VALUES ('1', '116', '266800', '1');
INSERT INTO `npcinfo` VALUES ('1', '117', '271440', '1');
INSERT INTO `npcinfo` VALUES ('1', '118', '276120', '1');
INSERT INTO `npcinfo` VALUES ('1', '119', '280840', '1');
INSERT INTO `npcinfo` VALUES ('1', '120', '285600', '1');
INSERT INTO `npcinfo` VALUES ('1', '121', '290400', '1');
INSERT INTO `npcinfo` VALUES ('1', '122', '295240', '1');
INSERT INTO `npcinfo` VALUES ('1', '123', '300120', '1');
INSERT INTO `npcinfo` VALUES ('1', '124', '305040', '1');
INSERT INTO `npcinfo` VALUES ('1', '125', '310000', '1');
INSERT INTO `npcinfo` VALUES ('1', '126', '315000', '1');
INSERT INTO `npcinfo` VALUES ('1', '127', '320040', '1');
INSERT INTO `npcinfo` VALUES ('1', '128', '325120', '1');
INSERT INTO `npcinfo` VALUES ('1', '129', '330240', '1');
INSERT INTO `npcinfo` VALUES ('1', '130', '335400', '1');
INSERT INTO `npcinfo` VALUES ('1', '131', '340600', '1');
INSERT INTO `npcinfo` VALUES ('1', '132', '345840', '1');
INSERT INTO `npcinfo` VALUES ('1', '133', '351120', '1');
INSERT INTO `npcinfo` VALUES ('1', '134', '356440', '1');
INSERT INTO `npcinfo` VALUES ('1', '135', '361800', '1');
INSERT INTO `npcinfo` VALUES ('1', '136', '367200', '1');
INSERT INTO `npcinfo` VALUES ('1', '137', '372640', '1');
INSERT INTO `npcinfo` VALUES ('1', '138', '378120', '1');
INSERT INTO `npcinfo` VALUES ('1', '139', '383640', '1');
INSERT INTO `npcinfo` VALUES ('1', '140', '389200', '1');
INSERT INTO `npcinfo` VALUES ('1', '141', '394800', '1');
INSERT INTO `npcinfo` VALUES ('1', '142', '400440', '1');
INSERT INTO `npcinfo` VALUES ('1', '143', '406120', '1');
INSERT INTO `npcinfo` VALUES ('1', '144', '411840', '1');
INSERT INTO `npcinfo` VALUES ('1', '145', '417600', '1');
INSERT INTO `npcinfo` VALUES ('1', '146', '423400', '1');
INSERT INTO `npcinfo` VALUES ('1', '147', '429240', '1');
INSERT INTO `npcinfo` VALUES ('1', '148', '435120', '1');
INSERT INTO `npcinfo` VALUES ('1', '149', '441040', '1');
INSERT INTO `npcinfo` VALUES ('1', '150', '447000', '1');
INSERT INTO `npcinfo` VALUES ('1', '151', '453000', '1');
INSERT INTO `npcinfo` VALUES ('1', '152', '459040', '1');
INSERT INTO `npcinfo` VALUES ('1', '153', '465120', '1');
INSERT INTO `npcinfo` VALUES ('1', '154', '471240', '1');
INSERT INTO `npcinfo` VALUES ('1', '155', '477400', '1');
INSERT INTO `npcinfo` VALUES ('1', '156', '483600', '1');
INSERT INTO `npcinfo` VALUES ('1', '157', '489840', '1');
INSERT INTO `npcinfo` VALUES ('1', '158', '496120', '1');
INSERT INTO `npcinfo` VALUES ('1', '159', '502440', '1');
INSERT INTO `npcinfo` VALUES ('1', '160', '508800', '1');
INSERT INTO `npcinfo` VALUES ('1', '161', '515200', '1');
INSERT INTO `npcinfo` VALUES ('1', '162', '521640', '1');
INSERT INTO `npcinfo` VALUES ('1', '163', '528120', '1');
INSERT INTO `npcinfo` VALUES ('1', '164', '534640', '1');
INSERT INTO `npcinfo` VALUES ('1', '165', '541200', '1');
INSERT INTO `npcinfo` VALUES ('1', '166', '547800', '1');
INSERT INTO `npcinfo` VALUES ('1', '167', '554440', '1');
INSERT INTO `npcinfo` VALUES ('1', '168', '561120', '1');
INSERT INTO `npcinfo` VALUES ('1', '169', '567840', '1');
INSERT INTO `npcinfo` VALUES ('1', '170', '574600', '1');
INSERT INTO `npcinfo` VALUES ('1', '171', '581400', '1');
INSERT INTO `npcinfo` VALUES ('1', '172', '588240', '1');
INSERT INTO `npcinfo` VALUES ('1', '173', '595120', '1');
INSERT INTO `npcinfo` VALUES ('1', '174', '602040', '1');
INSERT INTO `npcinfo` VALUES ('1', '175', '609000', '1');
INSERT INTO `npcinfo` VALUES ('1', '176', '616000', '1');
INSERT INTO `npcinfo` VALUES ('1', '177', '623040', '1');
INSERT INTO `npcinfo` VALUES ('1', '178', '630120', '1');
INSERT INTO `npcinfo` VALUES ('1', '179', '637240', '1');
INSERT INTO `npcinfo` VALUES ('1', '180', '644400', '1');
INSERT INTO `npcinfo` VALUES ('1', '181', '651600', '1');
INSERT INTO `npcinfo` VALUES ('1', '182', '658840', '1');
INSERT INTO `npcinfo` VALUES ('1', '183', '666120', '1');
INSERT INTO `npcinfo` VALUES ('1', '184', '673440', '1');
INSERT INTO `npcinfo` VALUES ('1', '185', '680800', '1');
INSERT INTO `npcinfo` VALUES ('1', '186', '688200', '1');
INSERT INTO `npcinfo` VALUES ('1', '187', '695640', '1');
INSERT INTO `npcinfo` VALUES ('1', '188', '703120', '1');
INSERT INTO `npcinfo` VALUES ('1', '189', '710640', '1');
INSERT INTO `npcinfo` VALUES ('1', '190', '718200', '1');
INSERT INTO `npcinfo` VALUES ('1', '191', '725800', '1');
INSERT INTO `npcinfo` VALUES ('1', '192', '733440', '1');
INSERT INTO `npcinfo` VALUES ('1', '193', '741120', '1');
INSERT INTO `npcinfo` VALUES ('1', '194', '748840', '1');
INSERT INTO `npcinfo` VALUES ('1', '195', '756600', '1');
INSERT INTO `npcinfo` VALUES ('1', '196', '764400', '1');
INSERT INTO `npcinfo` VALUES ('1', '197', '772240', '1');
INSERT INTO `npcinfo` VALUES ('1', '198', '780120', '1');
INSERT INTO `npcinfo` VALUES ('1', '199', '788040', '1');
INSERT INTO `npcinfo` VALUES ('1', '200', '796000', '1');
INSERT INTO `npcinfo` VALUES ('1', '201', '804000', '1');
INSERT INTO `npcinfo` VALUES ('1', '202', '812040', '1');
INSERT INTO `npcinfo` VALUES ('1', '203', '820120', '1');
INSERT INTO `npcinfo` VALUES ('1', '204', '828240', '1');
INSERT INTO `npcinfo` VALUES ('1', '205', '836400', '1');
INSERT INTO `npcinfo` VALUES ('1', '206', '844600', '1');
INSERT INTO `npcinfo` VALUES ('1', '207', '852840', '1');
INSERT INTO `npcinfo` VALUES ('1', '208', '861120', '1');
INSERT INTO `npcinfo` VALUES ('1', '209', '869440', '1');
INSERT INTO `npcinfo` VALUES ('1', '210', '877800', '1');
INSERT INTO `npcinfo` VALUES ('1', '211', '886200', '1');
INSERT INTO `npcinfo` VALUES ('1', '212', '894640', '1');
INSERT INTO `npcinfo` VALUES ('1', '213', '903120', '1');
INSERT INTO `npcinfo` VALUES ('1', '214', '911640', '1');
INSERT INTO `npcinfo` VALUES ('1', '215', '920200', '1');
INSERT INTO `npcinfo` VALUES ('1', '216', '928800', '1');
INSERT INTO `npcinfo` VALUES ('1', '217', '937440', '1');
INSERT INTO `npcinfo` VALUES ('1', '218', '946120', '1');
INSERT INTO `npcinfo` VALUES ('1', '219', '954840', '1');
INSERT INTO `npcinfo` VALUES ('1', '220', '963600', '1');
INSERT INTO `npcinfo` VALUES ('1', '221', '972400', '1');
INSERT INTO `npcinfo` VALUES ('1', '222', '981240', '1');
INSERT INTO `npcinfo` VALUES ('1', '223', '990120', '1');
INSERT INTO `npcinfo` VALUES ('1', '224', '999040', '1');
INSERT INTO `npcinfo` VALUES ('1', '225', '1008000', '1');
INSERT INTO `npcinfo` VALUES ('1', '226', '1017000', '1');
INSERT INTO `npcinfo` VALUES ('1', '227', '1026040', '1');
INSERT INTO `npcinfo` VALUES ('1', '228', '1035120', '1');
INSERT INTO `npcinfo` VALUES ('1', '229', '1044240', '1');
INSERT INTO `npcinfo` VALUES ('1', '230', '1053400', '1');
INSERT INTO `npcinfo` VALUES ('1', '231', '1062600', '1');
INSERT INTO `npcinfo` VALUES ('1', '232', '1071840', '1');
INSERT INTO `npcinfo` VALUES ('1', '233', '1081120', '1');
INSERT INTO `npcinfo` VALUES ('1', '234', '1090440', '1');
INSERT INTO `npcinfo` VALUES ('1', '235', '1099800', '1');
INSERT INTO `npcinfo` VALUES ('1', '236', '1109200', '1');
INSERT INTO `npcinfo` VALUES ('1', '237', '1118640', '1');
INSERT INTO `npcinfo` VALUES ('1', '238', '1128120', '1');
INSERT INTO `npcinfo` VALUES ('1', '239', '1137640', '1');
INSERT INTO `npcinfo` VALUES ('1', '240', '1147200', '1');
INSERT INTO `npcinfo` VALUES ('1', '241', '1156800', '1');
INSERT INTO `npcinfo` VALUES ('1', '242', '1166440', '1');
INSERT INTO `npcinfo` VALUES ('1', '243', '1176120', '1');
INSERT INTO `npcinfo` VALUES ('1', '244', '1185840', '1');
INSERT INTO `npcinfo` VALUES ('1', '245', '1195600', '1');
INSERT INTO `npcinfo` VALUES ('1', '246', '1205400', '1');
INSERT INTO `npcinfo` VALUES ('1', '247', '1215240', '1');
INSERT INTO `npcinfo` VALUES ('1', '248', '1225120', '1');
INSERT INTO `npcinfo` VALUES ('1', '249', '1235040', '1');
INSERT INTO `npcinfo` VALUES ('1', '250', '1245000', '1');
INSERT INTO `npcinfo` VALUES ('1', '251', '1255000', '1');
INSERT INTO `npcinfo` VALUES ('1', '252', '1265040', '1');
INSERT INTO `npcinfo` VALUES ('1', '253', '1275120', '1');
INSERT INTO `npcinfo` VALUES ('1', '254', '1285240', '1');
INSERT INTO `npcinfo` VALUES ('1', '255', '1295400', '1');
INSERT INTO `npcinfo` VALUES ('2', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('2', '2', '45', '1');
INSERT INTO `npcinfo` VALUES ('2', '3', '135', '1');
INSERT INTO `npcinfo` VALUES ('2', '4', '270', '1');
INSERT INTO `npcinfo` VALUES ('2', '5', '450', '1');
INSERT INTO `npcinfo` VALUES ('2', '6', '675', '1');
INSERT INTO `npcinfo` VALUES ('2', '7', '945', '1');
INSERT INTO `npcinfo` VALUES ('2', '8', '1260', '1');
INSERT INTO `npcinfo` VALUES ('2', '9', '1620', '1');
INSERT INTO `npcinfo` VALUES ('2', '10', '2025', '1');
INSERT INTO `npcinfo` VALUES ('2', '11', '2475', '1');
INSERT INTO `npcinfo` VALUES ('2', '12', '2970', '1');
INSERT INTO `npcinfo` VALUES ('2', '13', '3510', '1');
INSERT INTO `npcinfo` VALUES ('2', '14', '4095', '1');
INSERT INTO `npcinfo` VALUES ('2', '15', '4725', '1');
INSERT INTO `npcinfo` VALUES ('2', '16', '5400', '1');
INSERT INTO `npcinfo` VALUES ('2', '17', '6120', '1');
INSERT INTO `npcinfo` VALUES ('2', '18', '6885', '1');
INSERT INTO `npcinfo` VALUES ('2', '19', '7695', '1');
INSERT INTO `npcinfo` VALUES ('2', '20', '8550', '1');
INSERT INTO `npcinfo` VALUES ('2', '21', '9450', '1');
INSERT INTO `npcinfo` VALUES ('2', '22', '10395', '1');
INSERT INTO `npcinfo` VALUES ('2', '23', '11385', '1');
INSERT INTO `npcinfo` VALUES ('2', '24', '12420', '1');
INSERT INTO `npcinfo` VALUES ('2', '25', '13500', '1');
INSERT INTO `npcinfo` VALUES ('2', '26', '14625', '1');
INSERT INTO `npcinfo` VALUES ('2', '27', '15795', '1');
INSERT INTO `npcinfo` VALUES ('2', '28', '17010', '1');
INSERT INTO `npcinfo` VALUES ('2', '29', '18270', '1');
INSERT INTO `npcinfo` VALUES ('2', '30', '19575', '1');
INSERT INTO `npcinfo` VALUES ('2', '31', '20925', '1');
INSERT INTO `npcinfo` VALUES ('2', '32', '22320', '1');
INSERT INTO `npcinfo` VALUES ('2', '33', '23760', '1');
INSERT INTO `npcinfo` VALUES ('2', '34', '25245', '1');
INSERT INTO `npcinfo` VALUES ('2', '35', '26775', '1');
INSERT INTO `npcinfo` VALUES ('2', '36', '28350', '1');
INSERT INTO `npcinfo` VALUES ('2', '37', '29970', '1');
INSERT INTO `npcinfo` VALUES ('2', '38', '31635', '1');
INSERT INTO `npcinfo` VALUES ('2', '39', '33345', '1');
INSERT INTO `npcinfo` VALUES ('2', '40', '35100', '1');
INSERT INTO `npcinfo` VALUES ('2', '41', '36900', '1');
INSERT INTO `npcinfo` VALUES ('2', '42', '38745', '1');
INSERT INTO `npcinfo` VALUES ('2', '43', '40635', '1');
INSERT INTO `npcinfo` VALUES ('2', '44', '42570', '1');
INSERT INTO `npcinfo` VALUES ('2', '45', '44550', '1');
INSERT INTO `npcinfo` VALUES ('2', '46', '46575', '1');
INSERT INTO `npcinfo` VALUES ('2', '47', '48645', '1');
INSERT INTO `npcinfo` VALUES ('2', '48', '50760', '1');
INSERT INTO `npcinfo` VALUES ('2', '49', '52920', '1');
INSERT INTO `npcinfo` VALUES ('2', '50', '55125', '1');
INSERT INTO `npcinfo` VALUES ('2', '51', '57375', '1');
INSERT INTO `npcinfo` VALUES ('2', '52', '59670', '1');
INSERT INTO `npcinfo` VALUES ('2', '53', '62010', '1');
INSERT INTO `npcinfo` VALUES ('2', '54', '64395', '1');
INSERT INTO `npcinfo` VALUES ('2', '55', '66825', '1');
INSERT INTO `npcinfo` VALUES ('2', '56', '69300', '1');
INSERT INTO `npcinfo` VALUES ('2', '57', '71820', '1');
INSERT INTO `npcinfo` VALUES ('2', '58', '74385', '1');
INSERT INTO `npcinfo` VALUES ('2', '59', '76995', '1');
INSERT INTO `npcinfo` VALUES ('2', '60', '79650', '1');
INSERT INTO `npcinfo` VALUES ('2', '61', '82350', '1');
INSERT INTO `npcinfo` VALUES ('2', '62', '85095', '1');
INSERT INTO `npcinfo` VALUES ('2', '63', '87885', '1');
INSERT INTO `npcinfo` VALUES ('2', '64', '90720', '1');
INSERT INTO `npcinfo` VALUES ('2', '65', '93600', '1');
INSERT INTO `npcinfo` VALUES ('2', '66', '96525', '1');
INSERT INTO `npcinfo` VALUES ('2', '67', '99495', '1');
INSERT INTO `npcinfo` VALUES ('2', '68', '102510', '1');
INSERT INTO `npcinfo` VALUES ('2', '69', '105570', '1');
INSERT INTO `npcinfo` VALUES ('2', '70', '108675', '1');
INSERT INTO `npcinfo` VALUES ('2', '71', '111825', '1');
INSERT INTO `npcinfo` VALUES ('2', '72', '115020', '1');
INSERT INTO `npcinfo` VALUES ('2', '73', '118260', '1');
INSERT INTO `npcinfo` VALUES ('2', '74', '121545', '1');
INSERT INTO `npcinfo` VALUES ('2', '75', '124875', '1');
INSERT INTO `npcinfo` VALUES ('2', '76', '128250', '1');
INSERT INTO `npcinfo` VALUES ('2', '77', '131670', '1');
INSERT INTO `npcinfo` VALUES ('2', '78', '135135', '1');
INSERT INTO `npcinfo` VALUES ('2', '79', '138645', '1');
INSERT INTO `npcinfo` VALUES ('2', '80', '142200', '1');
INSERT INTO `npcinfo` VALUES ('2', '81', '145800', '1');
INSERT INTO `npcinfo` VALUES ('2', '82', '149445', '1');
INSERT INTO `npcinfo` VALUES ('2', '83', '153135', '1');
INSERT INTO `npcinfo` VALUES ('2', '84', '156870', '1');
INSERT INTO `npcinfo` VALUES ('2', '85', '160650', '1');
INSERT INTO `npcinfo` VALUES ('2', '86', '164475', '1');
INSERT INTO `npcinfo` VALUES ('2', '87', '168345', '1');
INSERT INTO `npcinfo` VALUES ('2', '88', '172260', '1');
INSERT INTO `npcinfo` VALUES ('2', '89', '176220', '1');
INSERT INTO `npcinfo` VALUES ('2', '90', '180225', '1');
INSERT INTO `npcinfo` VALUES ('2', '91', '184275', '1');
INSERT INTO `npcinfo` VALUES ('2', '92', '188370', '1');
INSERT INTO `npcinfo` VALUES ('2', '93', '192510', '1');
INSERT INTO `npcinfo` VALUES ('2', '94', '196695', '1');
INSERT INTO `npcinfo` VALUES ('2', '95', '200925', '1');
INSERT INTO `npcinfo` VALUES ('2', '96', '205200', '1');
INSERT INTO `npcinfo` VALUES ('2', '97', '209520', '1');
INSERT INTO `npcinfo` VALUES ('2', '98', '213885', '1');
INSERT INTO `npcinfo` VALUES ('2', '99', '218295', '1');
INSERT INTO `npcinfo` VALUES ('2', '100', '222750', '1');
INSERT INTO `npcinfo` VALUES ('2', '101', '227250', '1');
INSERT INTO `npcinfo` VALUES ('2', '102', '231795', '1');
INSERT INTO `npcinfo` VALUES ('2', '103', '236385', '1');
INSERT INTO `npcinfo` VALUES ('2', '104', '241020', '1');
INSERT INTO `npcinfo` VALUES ('2', '105', '245700', '1');
INSERT INTO `npcinfo` VALUES ('2', '106', '250425', '1');
INSERT INTO `npcinfo` VALUES ('2', '107', '255195', '1');
INSERT INTO `npcinfo` VALUES ('2', '108', '260010', '1');
INSERT INTO `npcinfo` VALUES ('2', '109', '264870', '1');
INSERT INTO `npcinfo` VALUES ('2', '110', '269775', '1');
INSERT INTO `npcinfo` VALUES ('2', '111', '274725', '1');
INSERT INTO `npcinfo` VALUES ('2', '112', '279720', '1');
INSERT INTO `npcinfo` VALUES ('2', '113', '284760', '1');
INSERT INTO `npcinfo` VALUES ('2', '114', '289845', '1');
INSERT INTO `npcinfo` VALUES ('2', '115', '294975', '1');
INSERT INTO `npcinfo` VALUES ('2', '116', '300150', '1');
INSERT INTO `npcinfo` VALUES ('2', '117', '305370', '1');
INSERT INTO `npcinfo` VALUES ('2', '118', '310635', '1');
INSERT INTO `npcinfo` VALUES ('2', '119', '315945', '1');
INSERT INTO `npcinfo` VALUES ('2', '120', '321300', '1');
INSERT INTO `npcinfo` VALUES ('2', '121', '326700', '1');
INSERT INTO `npcinfo` VALUES ('2', '122', '332145', '1');
INSERT INTO `npcinfo` VALUES ('2', '123', '337635', '1');
INSERT INTO `npcinfo` VALUES ('2', '124', '343170', '1');
INSERT INTO `npcinfo` VALUES ('2', '125', '348750', '1');
INSERT INTO `npcinfo` VALUES ('2', '126', '354375', '1');
INSERT INTO `npcinfo` VALUES ('2', '127', '360045', '1');
INSERT INTO `npcinfo` VALUES ('2', '128', '365760', '1');
INSERT INTO `npcinfo` VALUES ('2', '129', '371520', '1');
INSERT INTO `npcinfo` VALUES ('2', '130', '377325', '1');
INSERT INTO `npcinfo` VALUES ('2', '131', '383175', '1');
INSERT INTO `npcinfo` VALUES ('2', '132', '389070', '1');
INSERT INTO `npcinfo` VALUES ('2', '133', '395010', '1');
INSERT INTO `npcinfo` VALUES ('2', '134', '400995', '1');
INSERT INTO `npcinfo` VALUES ('2', '135', '407025', '1');
INSERT INTO `npcinfo` VALUES ('2', '136', '413100', '1');
INSERT INTO `npcinfo` VALUES ('2', '137', '419220', '1');
INSERT INTO `npcinfo` VALUES ('2', '138', '425385', '1');
INSERT INTO `npcinfo` VALUES ('2', '139', '431595', '1');
INSERT INTO `npcinfo` VALUES ('2', '140', '437850', '1');
INSERT INTO `npcinfo` VALUES ('2', '141', '444150', '1');
INSERT INTO `npcinfo` VALUES ('2', '142', '450495', '1');
INSERT INTO `npcinfo` VALUES ('2', '143', '456885', '1');
INSERT INTO `npcinfo` VALUES ('2', '144', '463320', '1');
INSERT INTO `npcinfo` VALUES ('2', '145', '469800', '1');
INSERT INTO `npcinfo` VALUES ('2', '146', '476325', '1');
INSERT INTO `npcinfo` VALUES ('2', '147', '482895', '1');
INSERT INTO `npcinfo` VALUES ('2', '148', '489510', '1');
INSERT INTO `npcinfo` VALUES ('2', '149', '496170', '1');
INSERT INTO `npcinfo` VALUES ('2', '150', '502875', '1');
INSERT INTO `npcinfo` VALUES ('2', '151', '509625', '1');
INSERT INTO `npcinfo` VALUES ('2', '152', '516420', '1');
INSERT INTO `npcinfo` VALUES ('2', '153', '523260', '1');
INSERT INTO `npcinfo` VALUES ('2', '154', '530145', '1');
INSERT INTO `npcinfo` VALUES ('2', '155', '537075', '1');
INSERT INTO `npcinfo` VALUES ('2', '156', '544050', '1');
INSERT INTO `npcinfo` VALUES ('2', '157', '551070', '1');
INSERT INTO `npcinfo` VALUES ('2', '158', '558135', '1');
INSERT INTO `npcinfo` VALUES ('2', '159', '565245', '1');
INSERT INTO `npcinfo` VALUES ('2', '160', '572400', '1');
INSERT INTO `npcinfo` VALUES ('2', '161', '579600', '1');
INSERT INTO `npcinfo` VALUES ('2', '162', '586845', '1');
INSERT INTO `npcinfo` VALUES ('2', '163', '594135', '1');
INSERT INTO `npcinfo` VALUES ('2', '164', '601470', '1');
INSERT INTO `npcinfo` VALUES ('2', '165', '608850', '1');
INSERT INTO `npcinfo` VALUES ('2', '166', '616275', '1');
INSERT INTO `npcinfo` VALUES ('2', '167', '623745', '1');
INSERT INTO `npcinfo` VALUES ('2', '168', '631260', '1');
INSERT INTO `npcinfo` VALUES ('2', '169', '638820', '1');
INSERT INTO `npcinfo` VALUES ('2', '170', '646425', '1');
INSERT INTO `npcinfo` VALUES ('2', '171', '654075', '1');
INSERT INTO `npcinfo` VALUES ('2', '172', '661770', '1');
INSERT INTO `npcinfo` VALUES ('2', '173', '669510', '1');
INSERT INTO `npcinfo` VALUES ('2', '174', '677295', '1');
INSERT INTO `npcinfo` VALUES ('2', '175', '685125', '1');
INSERT INTO `npcinfo` VALUES ('2', '176', '693000', '1');
INSERT INTO `npcinfo` VALUES ('2', '177', '700920', '1');
INSERT INTO `npcinfo` VALUES ('2', '178', '708885', '1');
INSERT INTO `npcinfo` VALUES ('2', '179', '716895', '1');
INSERT INTO `npcinfo` VALUES ('2', '180', '724950', '1');
INSERT INTO `npcinfo` VALUES ('2', '181', '733050', '1');
INSERT INTO `npcinfo` VALUES ('2', '182', '741195', '1');
INSERT INTO `npcinfo` VALUES ('2', '183', '749385', '1');
INSERT INTO `npcinfo` VALUES ('2', '184', '757620', '1');
INSERT INTO `npcinfo` VALUES ('2', '185', '765900', '1');
INSERT INTO `npcinfo` VALUES ('2', '186', '774225', '1');
INSERT INTO `npcinfo` VALUES ('2', '187', '782595', '1');
INSERT INTO `npcinfo` VALUES ('2', '188', '791010', '1');
INSERT INTO `npcinfo` VALUES ('2', '189', '799470', '1');
INSERT INTO `npcinfo` VALUES ('2', '190', '807975', '1');
INSERT INTO `npcinfo` VALUES ('2', '191', '816525', '1');
INSERT INTO `npcinfo` VALUES ('2', '192', '825120', '1');
INSERT INTO `npcinfo` VALUES ('2', '193', '833760', '1');
INSERT INTO `npcinfo` VALUES ('2', '194', '842445', '1');
INSERT INTO `npcinfo` VALUES ('2', '195', '851175', '1');
INSERT INTO `npcinfo` VALUES ('2', '196', '859950', '1');
INSERT INTO `npcinfo` VALUES ('2', '197', '868770', '1');
INSERT INTO `npcinfo` VALUES ('2', '198', '877635', '1');
INSERT INTO `npcinfo` VALUES ('2', '199', '886545', '1');
INSERT INTO `npcinfo` VALUES ('2', '200', '895500', '1');
INSERT INTO `npcinfo` VALUES ('2', '201', '904500', '1');
INSERT INTO `npcinfo` VALUES ('2', '202', '913545', '1');
INSERT INTO `npcinfo` VALUES ('2', '203', '922635', '1');
INSERT INTO `npcinfo` VALUES ('2', '204', '931770', '1');
INSERT INTO `npcinfo` VALUES ('2', '205', '940950', '1');
INSERT INTO `npcinfo` VALUES ('2', '206', '950175', '1');
INSERT INTO `npcinfo` VALUES ('2', '207', '959445', '1');
INSERT INTO `npcinfo` VALUES ('2', '208', '968760', '1');
INSERT INTO `npcinfo` VALUES ('2', '209', '978120', '1');
INSERT INTO `npcinfo` VALUES ('2', '210', '987525', '1');
INSERT INTO `npcinfo` VALUES ('2', '211', '996975', '1');
INSERT INTO `npcinfo` VALUES ('2', '212', '1006470', '1');
INSERT INTO `npcinfo` VALUES ('2', '213', '1016010', '1');
INSERT INTO `npcinfo` VALUES ('2', '214', '1025595', '1');
INSERT INTO `npcinfo` VALUES ('2', '215', '1035225', '1');
INSERT INTO `npcinfo` VALUES ('2', '216', '1044900', '1');
INSERT INTO `npcinfo` VALUES ('2', '217', '1054620', '1');
INSERT INTO `npcinfo` VALUES ('2', '218', '1064385', '1');
INSERT INTO `npcinfo` VALUES ('2', '219', '1074195', '1');
INSERT INTO `npcinfo` VALUES ('2', '220', '1084050', '1');
INSERT INTO `npcinfo` VALUES ('2', '221', '1093950', '1');
INSERT INTO `npcinfo` VALUES ('2', '222', '1103895', '1');
INSERT INTO `npcinfo` VALUES ('2', '223', '1113885', '1');
INSERT INTO `npcinfo` VALUES ('2', '224', '1123920', '1');
INSERT INTO `npcinfo` VALUES ('2', '225', '1134000', '1');
INSERT INTO `npcinfo` VALUES ('2', '226', '1144125', '1');
INSERT INTO `npcinfo` VALUES ('2', '227', '1154295', '1');
INSERT INTO `npcinfo` VALUES ('2', '228', '1164510', '1');
INSERT INTO `npcinfo` VALUES ('2', '229', '1174770', '1');
INSERT INTO `npcinfo` VALUES ('2', '230', '1185075', '1');
INSERT INTO `npcinfo` VALUES ('2', '231', '1195425', '1');
INSERT INTO `npcinfo` VALUES ('2', '232', '1205820', '1');
INSERT INTO `npcinfo` VALUES ('2', '233', '1216260', '1');
INSERT INTO `npcinfo` VALUES ('2', '234', '1226745', '1');
INSERT INTO `npcinfo` VALUES ('2', '235', '1237275', '1');
INSERT INTO `npcinfo` VALUES ('2', '236', '1247850', '1');
INSERT INTO `npcinfo` VALUES ('2', '237', '1258470', '1');
INSERT INTO `npcinfo` VALUES ('2', '238', '1269135', '1');
INSERT INTO `npcinfo` VALUES ('2', '239', '1279845', '1');
INSERT INTO `npcinfo` VALUES ('2', '240', '1290600', '1');
INSERT INTO `npcinfo` VALUES ('2', '241', '1301400', '1');
INSERT INTO `npcinfo` VALUES ('2', '242', '1312245', '1');
INSERT INTO `npcinfo` VALUES ('2', '243', '1323135', '1');
INSERT INTO `npcinfo` VALUES ('2', '244', '1334070', '1');
INSERT INTO `npcinfo` VALUES ('2', '245', '1345050', '1');
INSERT INTO `npcinfo` VALUES ('2', '246', '1356075', '1');
INSERT INTO `npcinfo` VALUES ('2', '247', '1367145', '1');
INSERT INTO `npcinfo` VALUES ('2', '248', '1378260', '1');
INSERT INTO `npcinfo` VALUES ('2', '249', '1389420', '1');
INSERT INTO `npcinfo` VALUES ('2', '250', '1400625', '1');
INSERT INTO `npcinfo` VALUES ('2', '251', '1411875', '1');
INSERT INTO `npcinfo` VALUES ('2', '252', '1423170', '1');
INSERT INTO `npcinfo` VALUES ('2', '253', '1434510', '1');
INSERT INTO `npcinfo` VALUES ('2', '254', '1445895', '1');
INSERT INTO `npcinfo` VALUES ('2', '255', '1457325', '1');
INSERT INTO `npcinfo` VALUES ('3', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('3', '2', '60', '1');
INSERT INTO `npcinfo` VALUES ('3', '3', '180', '1');
INSERT INTO `npcinfo` VALUES ('3', '4', '360', '1');
INSERT INTO `npcinfo` VALUES ('3', '5', '600', '1');
INSERT INTO `npcinfo` VALUES ('3', '6', '900', '1');
INSERT INTO `npcinfo` VALUES ('3', '7', '1260', '1');
INSERT INTO `npcinfo` VALUES ('3', '8', '1680', '1');
INSERT INTO `npcinfo` VALUES ('3', '9', '2160', '1');
INSERT INTO `npcinfo` VALUES ('3', '10', '2700', '1');
INSERT INTO `npcinfo` VALUES ('3', '11', '3300', '1');
INSERT INTO `npcinfo` VALUES ('3', '12', '3960', '1');
INSERT INTO `npcinfo` VALUES ('3', '13', '4680', '1');
INSERT INTO `npcinfo` VALUES ('3', '14', '5460', '1');
INSERT INTO `npcinfo` VALUES ('3', '15', '6300', '1');
INSERT INTO `npcinfo` VALUES ('3', '16', '7200', '1');
INSERT INTO `npcinfo` VALUES ('3', '17', '8160', '1');
INSERT INTO `npcinfo` VALUES ('3', '18', '9180', '1');
INSERT INTO `npcinfo` VALUES ('3', '19', '10260', '1');
INSERT INTO `npcinfo` VALUES ('3', '20', '11400', '1');
INSERT INTO `npcinfo` VALUES ('3', '21', '12600', '1');
INSERT INTO `npcinfo` VALUES ('3', '22', '13860', '1');
INSERT INTO `npcinfo` VALUES ('3', '23', '15180', '1');
INSERT INTO `npcinfo` VALUES ('3', '24', '16560', '1');
INSERT INTO `npcinfo` VALUES ('3', '25', '18000', '1');
INSERT INTO `npcinfo` VALUES ('3', '26', '19500', '1');
INSERT INTO `npcinfo` VALUES ('3', '27', '21060', '1');
INSERT INTO `npcinfo` VALUES ('3', '28', '22680', '1');
INSERT INTO `npcinfo` VALUES ('3', '29', '24360', '1');
INSERT INTO `npcinfo` VALUES ('3', '30', '26100', '1');
INSERT INTO `npcinfo` VALUES ('3', '31', '27900', '1');
INSERT INTO `npcinfo` VALUES ('3', '32', '29760', '1');
INSERT INTO `npcinfo` VALUES ('3', '33', '31680', '1');
INSERT INTO `npcinfo` VALUES ('3', '34', '33660', '1');
INSERT INTO `npcinfo` VALUES ('3', '35', '35700', '1');
INSERT INTO `npcinfo` VALUES ('3', '36', '37800', '1');
INSERT INTO `npcinfo` VALUES ('3', '37', '39960', '1');
INSERT INTO `npcinfo` VALUES ('3', '38', '42180', '1');
INSERT INTO `npcinfo` VALUES ('3', '39', '44460', '1');
INSERT INTO `npcinfo` VALUES ('3', '40', '46800', '1');
INSERT INTO `npcinfo` VALUES ('3', '41', '49200', '1');
INSERT INTO `npcinfo` VALUES ('3', '42', '51660', '1');
INSERT INTO `npcinfo` VALUES ('3', '43', '54180', '1');
INSERT INTO `npcinfo` VALUES ('3', '44', '56760', '1');
INSERT INTO `npcinfo` VALUES ('3', '45', '59400', '1');
INSERT INTO `npcinfo` VALUES ('3', '46', '62100', '1');
INSERT INTO `npcinfo` VALUES ('3', '47', '64860', '1');
INSERT INTO `npcinfo` VALUES ('3', '48', '67680', '1');
INSERT INTO `npcinfo` VALUES ('3', '49', '70560', '1');
INSERT INTO `npcinfo` VALUES ('3', '50', '73500', '1');
INSERT INTO `npcinfo` VALUES ('3', '51', '76500', '1');
INSERT INTO `npcinfo` VALUES ('3', '52', '79560', '1');
INSERT INTO `npcinfo` VALUES ('3', '53', '82680', '1');
INSERT INTO `npcinfo` VALUES ('3', '54', '85860', '1');
INSERT INTO `npcinfo` VALUES ('3', '55', '89100', '1');
INSERT INTO `npcinfo` VALUES ('3', '56', '92400', '1');
INSERT INTO `npcinfo` VALUES ('3', '57', '95760', '1');
INSERT INTO `npcinfo` VALUES ('3', '58', '99180', '1');
INSERT INTO `npcinfo` VALUES ('3', '59', '102660', '1');
INSERT INTO `npcinfo` VALUES ('3', '60', '106200', '1');
INSERT INTO `npcinfo` VALUES ('3', '61', '109800', '1');
INSERT INTO `npcinfo` VALUES ('3', '62', '113460', '1');
INSERT INTO `npcinfo` VALUES ('3', '63', '117180', '1');
INSERT INTO `npcinfo` VALUES ('3', '64', '120960', '1');
INSERT INTO `npcinfo` VALUES ('3', '65', '124800', '1');
INSERT INTO `npcinfo` VALUES ('3', '66', '128700', '1');
INSERT INTO `npcinfo` VALUES ('3', '67', '132660', '1');
INSERT INTO `npcinfo` VALUES ('3', '68', '136680', '1');
INSERT INTO `npcinfo` VALUES ('3', '69', '140760', '1');
INSERT INTO `npcinfo` VALUES ('3', '70', '144900', '1');
INSERT INTO `npcinfo` VALUES ('3', '71', '149100', '1');
INSERT INTO `npcinfo` VALUES ('3', '72', '153360', '1');
INSERT INTO `npcinfo` VALUES ('3', '73', '157680', '1');
INSERT INTO `npcinfo` VALUES ('3', '74', '162060', '1');
INSERT INTO `npcinfo` VALUES ('3', '75', '166500', '1');
INSERT INTO `npcinfo` VALUES ('3', '76', '171000', '1');
INSERT INTO `npcinfo` VALUES ('3', '77', '175560', '1');
INSERT INTO `npcinfo` VALUES ('3', '78', '180180', '1');
INSERT INTO `npcinfo` VALUES ('3', '79', '184860', '1');
INSERT INTO `npcinfo` VALUES ('3', '80', '189600', '1');
INSERT INTO `npcinfo` VALUES ('3', '81', '194400', '1');
INSERT INTO `npcinfo` VALUES ('3', '82', '199260', '1');
INSERT INTO `npcinfo` VALUES ('3', '83', '204180', '1');
INSERT INTO `npcinfo` VALUES ('3', '84', '209160', '1');
INSERT INTO `npcinfo` VALUES ('3', '85', '214200', '1');
INSERT INTO `npcinfo` VALUES ('3', '86', '219300', '1');
INSERT INTO `npcinfo` VALUES ('3', '87', '224460', '1');
INSERT INTO `npcinfo` VALUES ('3', '88', '229680', '1');
INSERT INTO `npcinfo` VALUES ('3', '89', '234960', '1');
INSERT INTO `npcinfo` VALUES ('3', '90', '240300', '1');
INSERT INTO `npcinfo` VALUES ('3', '91', '245700', '1');
INSERT INTO `npcinfo` VALUES ('3', '92', '251160', '1');
INSERT INTO `npcinfo` VALUES ('3', '93', '256680', '1');
INSERT INTO `npcinfo` VALUES ('3', '94', '262260', '1');
INSERT INTO `npcinfo` VALUES ('3', '95', '267900', '1');
INSERT INTO `npcinfo` VALUES ('3', '96', '273600', '1');
INSERT INTO `npcinfo` VALUES ('3', '97', '279360', '1');
INSERT INTO `npcinfo` VALUES ('3', '98', '285180', '1');
INSERT INTO `npcinfo` VALUES ('3', '99', '291060', '1');
INSERT INTO `npcinfo` VALUES ('3', '100', '297000', '1');
INSERT INTO `npcinfo` VALUES ('3', '101', '303000', '1');
INSERT INTO `npcinfo` VALUES ('3', '102', '309060', '1');
INSERT INTO `npcinfo` VALUES ('3', '103', '315180', '1');
INSERT INTO `npcinfo` VALUES ('3', '104', '321360', '1');
INSERT INTO `npcinfo` VALUES ('3', '105', '327600', '1');
INSERT INTO `npcinfo` VALUES ('3', '106', '333900', '1');
INSERT INTO `npcinfo` VALUES ('3', '107', '340260', '1');
INSERT INTO `npcinfo` VALUES ('3', '108', '346680', '1');
INSERT INTO `npcinfo` VALUES ('3', '109', '353160', '1');
INSERT INTO `npcinfo` VALUES ('3', '110', '359700', '1');
INSERT INTO `npcinfo` VALUES ('3', '111', '366300', '1');
INSERT INTO `npcinfo` VALUES ('3', '112', '372960', '1');
INSERT INTO `npcinfo` VALUES ('3', '113', '379680', '1');
INSERT INTO `npcinfo` VALUES ('3', '114', '386460', '1');
INSERT INTO `npcinfo` VALUES ('3', '115', '393300', '1');
INSERT INTO `npcinfo` VALUES ('3', '116', '400200', '1');
INSERT INTO `npcinfo` VALUES ('3', '117', '407160', '1');
INSERT INTO `npcinfo` VALUES ('3', '118', '414180', '1');
INSERT INTO `npcinfo` VALUES ('3', '119', '421260', '1');
INSERT INTO `npcinfo` VALUES ('3', '120', '428400', '1');
INSERT INTO `npcinfo` VALUES ('3', '121', '435600', '1');
INSERT INTO `npcinfo` VALUES ('3', '122', '442860', '1');
INSERT INTO `npcinfo` VALUES ('3', '123', '450180', '1');
INSERT INTO `npcinfo` VALUES ('3', '124', '457560', '1');
INSERT INTO `npcinfo` VALUES ('3', '125', '465000', '1');
INSERT INTO `npcinfo` VALUES ('3', '126', '472500', '1');
INSERT INTO `npcinfo` VALUES ('3', '127', '480060', '1');
INSERT INTO `npcinfo` VALUES ('3', '128', '487680', '1');
INSERT INTO `npcinfo` VALUES ('3', '129', '495360', '1');
INSERT INTO `npcinfo` VALUES ('3', '130', '503100', '1');
INSERT INTO `npcinfo` VALUES ('3', '131', '510900', '1');
INSERT INTO `npcinfo` VALUES ('3', '132', '518760', '1');
INSERT INTO `npcinfo` VALUES ('3', '133', '526680', '1');
INSERT INTO `npcinfo` VALUES ('3', '134', '534660', '1');
INSERT INTO `npcinfo` VALUES ('3', '135', '542700', '1');
INSERT INTO `npcinfo` VALUES ('3', '136', '550800', '1');
INSERT INTO `npcinfo` VALUES ('3', '137', '558960', '1');
INSERT INTO `npcinfo` VALUES ('3', '138', '567180', '1');
INSERT INTO `npcinfo` VALUES ('3', '139', '575460', '1');
INSERT INTO `npcinfo` VALUES ('3', '140', '583800', '1');
INSERT INTO `npcinfo` VALUES ('3', '141', '592200', '1');
INSERT INTO `npcinfo` VALUES ('3', '142', '600660', '1');
INSERT INTO `npcinfo` VALUES ('3', '143', '609180', '1');
INSERT INTO `npcinfo` VALUES ('3', '144', '617760', '1');
INSERT INTO `npcinfo` VALUES ('3', '145', '626400', '1');
INSERT INTO `npcinfo` VALUES ('3', '146', '635100', '1');
INSERT INTO `npcinfo` VALUES ('3', '147', '643860', '1');
INSERT INTO `npcinfo` VALUES ('3', '148', '652680', '1');
INSERT INTO `npcinfo` VALUES ('3', '149', '661560', '1');
INSERT INTO `npcinfo` VALUES ('3', '150', '670500', '1');
INSERT INTO `npcinfo` VALUES ('3', '151', '679500', '1');
INSERT INTO `npcinfo` VALUES ('3', '152', '688560', '1');
INSERT INTO `npcinfo` VALUES ('3', '153', '697680', '1');
INSERT INTO `npcinfo` VALUES ('3', '154', '706860', '1');
INSERT INTO `npcinfo` VALUES ('3', '155', '716100', '1');
INSERT INTO `npcinfo` VALUES ('3', '156', '725400', '1');
INSERT INTO `npcinfo` VALUES ('3', '157', '734760', '1');
INSERT INTO `npcinfo` VALUES ('3', '158', '744180', '1');
INSERT INTO `npcinfo` VALUES ('3', '159', '753660', '1');
INSERT INTO `npcinfo` VALUES ('3', '160', '763200', '1');
INSERT INTO `npcinfo` VALUES ('3', '161', '772800', '1');
INSERT INTO `npcinfo` VALUES ('3', '162', '782460', '1');
INSERT INTO `npcinfo` VALUES ('3', '163', '792180', '1');
INSERT INTO `npcinfo` VALUES ('3', '164', '801960', '1');
INSERT INTO `npcinfo` VALUES ('3', '165', '811800', '1');
INSERT INTO `npcinfo` VALUES ('3', '166', '821700', '1');
INSERT INTO `npcinfo` VALUES ('3', '167', '831660', '1');
INSERT INTO `npcinfo` VALUES ('3', '168', '841680', '1');
INSERT INTO `npcinfo` VALUES ('3', '169', '851760', '1');
INSERT INTO `npcinfo` VALUES ('3', '170', '861900', '1');
INSERT INTO `npcinfo` VALUES ('3', '171', '872100', '1');
INSERT INTO `npcinfo` VALUES ('3', '172', '882360', '1');
INSERT INTO `npcinfo` VALUES ('3', '173', '892680', '1');
INSERT INTO `npcinfo` VALUES ('3', '174', '903060', '1');
INSERT INTO `npcinfo` VALUES ('3', '175', '913500', '1');
INSERT INTO `npcinfo` VALUES ('3', '176', '924000', '1');
INSERT INTO `npcinfo` VALUES ('3', '177', '934560', '1');
INSERT INTO `npcinfo` VALUES ('3', '178', '945180', '1');
INSERT INTO `npcinfo` VALUES ('3', '179', '955860', '1');
INSERT INTO `npcinfo` VALUES ('3', '180', '966600', '1');
INSERT INTO `npcinfo` VALUES ('3', '181', '977400', '1');
INSERT INTO `npcinfo` VALUES ('3', '182', '988260', '1');
INSERT INTO `npcinfo` VALUES ('3', '183', '999180', '1');
INSERT INTO `npcinfo` VALUES ('3', '184', '1010160', '1');
INSERT INTO `npcinfo` VALUES ('3', '185', '1021200', '1');
INSERT INTO `npcinfo` VALUES ('3', '186', '1032300', '1');
INSERT INTO `npcinfo` VALUES ('3', '187', '1043460', '1');
INSERT INTO `npcinfo` VALUES ('3', '188', '1054680', '1');
INSERT INTO `npcinfo` VALUES ('3', '189', '1065960', '1');
INSERT INTO `npcinfo` VALUES ('3', '190', '1077300', '1');
INSERT INTO `npcinfo` VALUES ('3', '191', '1088700', '1');
INSERT INTO `npcinfo` VALUES ('3', '192', '1100160', '1');
INSERT INTO `npcinfo` VALUES ('3', '193', '1111680', '1');
INSERT INTO `npcinfo` VALUES ('3', '194', '1123260', '1');
INSERT INTO `npcinfo` VALUES ('3', '195', '1134900', '1');
INSERT INTO `npcinfo` VALUES ('3', '196', '1146600', '1');
INSERT INTO `npcinfo` VALUES ('3', '197', '1158360', '1');
INSERT INTO `npcinfo` VALUES ('3', '198', '1170180', '1');
INSERT INTO `npcinfo` VALUES ('3', '199', '1182060', '1');
INSERT INTO `npcinfo` VALUES ('3', '200', '1194000', '1');
INSERT INTO `npcinfo` VALUES ('3', '201', '1206000', '1');
INSERT INTO `npcinfo` VALUES ('3', '202', '1218060', '1');
INSERT INTO `npcinfo` VALUES ('3', '203', '1230180', '1');
INSERT INTO `npcinfo` VALUES ('3', '204', '1242360', '1');
INSERT INTO `npcinfo` VALUES ('3', '205', '1254600', '1');
INSERT INTO `npcinfo` VALUES ('3', '206', '1266900', '1');
INSERT INTO `npcinfo` VALUES ('3', '207', '1279260', '1');
INSERT INTO `npcinfo` VALUES ('3', '208', '1291680', '1');
INSERT INTO `npcinfo` VALUES ('3', '209', '1304160', '1');
INSERT INTO `npcinfo` VALUES ('3', '210', '1316700', '1');
INSERT INTO `npcinfo` VALUES ('3', '211', '1329300', '1');
INSERT INTO `npcinfo` VALUES ('3', '212', '1341960', '1');
INSERT INTO `npcinfo` VALUES ('3', '213', '1354680', '1');
INSERT INTO `npcinfo` VALUES ('3', '214', '1367460', '1');
INSERT INTO `npcinfo` VALUES ('3', '215', '1380300', '1');
INSERT INTO `npcinfo` VALUES ('3', '216', '1393200', '1');
INSERT INTO `npcinfo` VALUES ('3', '217', '1406160', '1');
INSERT INTO `npcinfo` VALUES ('3', '218', '1419180', '1');
INSERT INTO `npcinfo` VALUES ('3', '219', '1432260', '1');
INSERT INTO `npcinfo` VALUES ('3', '220', '1445400', '1');
INSERT INTO `npcinfo` VALUES ('3', '221', '1458600', '1');
INSERT INTO `npcinfo` VALUES ('3', '222', '1471860', '1');
INSERT INTO `npcinfo` VALUES ('3', '223', '1485180', '1');
INSERT INTO `npcinfo` VALUES ('3', '224', '1498560', '1');
INSERT INTO `npcinfo` VALUES ('3', '225', '1512000', '1');
INSERT INTO `npcinfo` VALUES ('3', '226', '1525500', '1');
INSERT INTO `npcinfo` VALUES ('3', '227', '1539060', '1');
INSERT INTO `npcinfo` VALUES ('3', '228', '1552680', '1');
INSERT INTO `npcinfo` VALUES ('3', '229', '1566360', '1');
INSERT INTO `npcinfo` VALUES ('3', '230', '1580100', '1');
INSERT INTO `npcinfo` VALUES ('3', '231', '1593900', '1');
INSERT INTO `npcinfo` VALUES ('3', '232', '1607760', '1');
INSERT INTO `npcinfo` VALUES ('3', '233', '1621680', '1');
INSERT INTO `npcinfo` VALUES ('3', '234', '1635660', '1');
INSERT INTO `npcinfo` VALUES ('3', '235', '1649700', '1');
INSERT INTO `npcinfo` VALUES ('3', '236', '1663800', '1');
INSERT INTO `npcinfo` VALUES ('3', '237', '1677960', '1');
INSERT INTO `npcinfo` VALUES ('3', '238', '1692180', '1');
INSERT INTO `npcinfo` VALUES ('3', '239', '1706460', '1');
INSERT INTO `npcinfo` VALUES ('3', '240', '1720800', '1');
INSERT INTO `npcinfo` VALUES ('3', '241', '1735200', '1');
INSERT INTO `npcinfo` VALUES ('3', '242', '1749660', '1');
INSERT INTO `npcinfo` VALUES ('3', '243', '1764180', '1');
INSERT INTO `npcinfo` VALUES ('3', '244', '1778760', '1');
INSERT INTO `npcinfo` VALUES ('3', '245', '1793400', '1');
INSERT INTO `npcinfo` VALUES ('3', '246', '1808100', '1');
INSERT INTO `npcinfo` VALUES ('3', '247', '1822860', '1');
INSERT INTO `npcinfo` VALUES ('3', '248', '1837680', '1');
INSERT INTO `npcinfo` VALUES ('3', '249', '1852560', '1');
INSERT INTO `npcinfo` VALUES ('3', '250', '1867500', '1');
INSERT INTO `npcinfo` VALUES ('3', '251', '1882500', '1');
INSERT INTO `npcinfo` VALUES ('3', '252', '1897560', '1');
INSERT INTO `npcinfo` VALUES ('3', '253', '1912680', '1');
INSERT INTO `npcinfo` VALUES ('3', '254', '1927860', '1');
INSERT INTO `npcinfo` VALUES ('3', '255', '1943100', '1');
INSERT INTO `npcinfo` VALUES ('4', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('4', '2', '70', '1');
INSERT INTO `npcinfo` VALUES ('4', '3', '210', '1');
INSERT INTO `npcinfo` VALUES ('4', '4', '420', '1');
INSERT INTO `npcinfo` VALUES ('4', '5', '700', '1');
INSERT INTO `npcinfo` VALUES ('4', '6', '1050', '1');
INSERT INTO `npcinfo` VALUES ('4', '7', '1470', '1');
INSERT INTO `npcinfo` VALUES ('4', '8', '1960', '1');
INSERT INTO `npcinfo` VALUES ('4', '9', '2520', '1');
INSERT INTO `npcinfo` VALUES ('4', '10', '3150', '1');
INSERT INTO `npcinfo` VALUES ('4', '11', '3850', '1');
INSERT INTO `npcinfo` VALUES ('4', '12', '4620', '1');
INSERT INTO `npcinfo` VALUES ('4', '13', '5460', '1');
INSERT INTO `npcinfo` VALUES ('4', '14', '6370', '1');
INSERT INTO `npcinfo` VALUES ('4', '15', '7350', '1');
INSERT INTO `npcinfo` VALUES ('4', '16', '8400', '1');
INSERT INTO `npcinfo` VALUES ('4', '17', '9520', '1');
INSERT INTO `npcinfo` VALUES ('4', '18', '10710', '1');
INSERT INTO `npcinfo` VALUES ('4', '19', '11970', '1');
INSERT INTO `npcinfo` VALUES ('4', '20', '13300', '1');
INSERT INTO `npcinfo` VALUES ('4', '21', '14700', '1');
INSERT INTO `npcinfo` VALUES ('4', '22', '16170', '1');
INSERT INTO `npcinfo` VALUES ('4', '23', '17710', '1');
INSERT INTO `npcinfo` VALUES ('4', '24', '19320', '1');
INSERT INTO `npcinfo` VALUES ('4', '25', '21000', '1');
INSERT INTO `npcinfo` VALUES ('4', '26', '22750', '1');
INSERT INTO `npcinfo` VALUES ('4', '27', '24570', '1');
INSERT INTO `npcinfo` VALUES ('4', '28', '26460', '1');
INSERT INTO `npcinfo` VALUES ('4', '29', '28420', '1');
INSERT INTO `npcinfo` VALUES ('4', '30', '30450', '1');
INSERT INTO `npcinfo` VALUES ('4', '31', '32550', '1');
INSERT INTO `npcinfo` VALUES ('4', '32', '34720', '1');
INSERT INTO `npcinfo` VALUES ('4', '33', '36960', '1');
INSERT INTO `npcinfo` VALUES ('4', '34', '39270', '1');
INSERT INTO `npcinfo` VALUES ('4', '35', '41650', '1');
INSERT INTO `npcinfo` VALUES ('4', '36', '44100', '1');
INSERT INTO `npcinfo` VALUES ('4', '37', '46620', '1');
INSERT INTO `npcinfo` VALUES ('4', '38', '49210', '1');
INSERT INTO `npcinfo` VALUES ('4', '39', '51870', '1');
INSERT INTO `npcinfo` VALUES ('4', '40', '54600', '1');
INSERT INTO `npcinfo` VALUES ('4', '41', '57400', '1');
INSERT INTO `npcinfo` VALUES ('4', '42', '60270', '1');
INSERT INTO `npcinfo` VALUES ('4', '43', '63210', '1');
INSERT INTO `npcinfo` VALUES ('4', '44', '66220', '1');
INSERT INTO `npcinfo` VALUES ('4', '45', '69300', '1');
INSERT INTO `npcinfo` VALUES ('4', '46', '72450', '1');
INSERT INTO `npcinfo` VALUES ('4', '47', '75670', '1');
INSERT INTO `npcinfo` VALUES ('4', '48', '78960', '1');
INSERT INTO `npcinfo` VALUES ('4', '49', '82320', '1');
INSERT INTO `npcinfo` VALUES ('4', '50', '85750', '1');
INSERT INTO `npcinfo` VALUES ('4', '51', '89250', '1');
INSERT INTO `npcinfo` VALUES ('4', '52', '92820', '1');
INSERT INTO `npcinfo` VALUES ('4', '53', '96460', '1');
INSERT INTO `npcinfo` VALUES ('4', '54', '100170', '1');
INSERT INTO `npcinfo` VALUES ('4', '55', '103950', '1');
INSERT INTO `npcinfo` VALUES ('4', '56', '107800', '1');
INSERT INTO `npcinfo` VALUES ('4', '57', '111720', '1');
INSERT INTO `npcinfo` VALUES ('4', '58', '115710', '1');
INSERT INTO `npcinfo` VALUES ('4', '59', '119770', '1');
INSERT INTO `npcinfo` VALUES ('4', '60', '123900', '1');
INSERT INTO `npcinfo` VALUES ('4', '61', '128100', '1');
INSERT INTO `npcinfo` VALUES ('4', '62', '132370', '1');
INSERT INTO `npcinfo` VALUES ('4', '63', '136710', '1');
INSERT INTO `npcinfo` VALUES ('4', '64', '141120', '1');
INSERT INTO `npcinfo` VALUES ('4', '65', '145600', '1');
INSERT INTO `npcinfo` VALUES ('4', '66', '150150', '1');
INSERT INTO `npcinfo` VALUES ('4', '67', '154770', '1');
INSERT INTO `npcinfo` VALUES ('4', '68', '159460', '1');
INSERT INTO `npcinfo` VALUES ('4', '69', '164220', '1');
INSERT INTO `npcinfo` VALUES ('4', '70', '169050', '1');
INSERT INTO `npcinfo` VALUES ('4', '71', '173950', '1');
INSERT INTO `npcinfo` VALUES ('4', '72', '178920', '1');
INSERT INTO `npcinfo` VALUES ('4', '73', '183960', '1');
INSERT INTO `npcinfo` VALUES ('4', '74', '189070', '1');
INSERT INTO `npcinfo` VALUES ('4', '75', '194250', '1');
INSERT INTO `npcinfo` VALUES ('4', '76', '199500', '1');
INSERT INTO `npcinfo` VALUES ('4', '77', '204820', '1');
INSERT INTO `npcinfo` VALUES ('4', '78', '210210', '1');
INSERT INTO `npcinfo` VALUES ('4', '79', '215670', '1');
INSERT INTO `npcinfo` VALUES ('4', '80', '221200', '1');
INSERT INTO `npcinfo` VALUES ('4', '81', '226800', '1');
INSERT INTO `npcinfo` VALUES ('4', '82', '232470', '1');
INSERT INTO `npcinfo` VALUES ('4', '83', '238210', '1');
INSERT INTO `npcinfo` VALUES ('4', '84', '244020', '1');
INSERT INTO `npcinfo` VALUES ('4', '85', '249900', '1');
INSERT INTO `npcinfo` VALUES ('4', '86', '255850', '1');
INSERT INTO `npcinfo` VALUES ('4', '87', '261870', '1');
INSERT INTO `npcinfo` VALUES ('4', '88', '267960', '1');
INSERT INTO `npcinfo` VALUES ('4', '89', '274120', '1');
INSERT INTO `npcinfo` VALUES ('4', '90', '280350', '1');
INSERT INTO `npcinfo` VALUES ('4', '91', '286650', '1');
INSERT INTO `npcinfo` VALUES ('4', '92', '293020', '1');
INSERT INTO `npcinfo` VALUES ('4', '93', '299460', '1');
INSERT INTO `npcinfo` VALUES ('4', '94', '305970', '1');
INSERT INTO `npcinfo` VALUES ('4', '95', '312550', '1');
INSERT INTO `npcinfo` VALUES ('4', '96', '319200', '1');
INSERT INTO `npcinfo` VALUES ('4', '97', '325920', '1');
INSERT INTO `npcinfo` VALUES ('4', '98', '332710', '1');
INSERT INTO `npcinfo` VALUES ('4', '99', '339570', '1');
INSERT INTO `npcinfo` VALUES ('4', '100', '346500', '1');
INSERT INTO `npcinfo` VALUES ('4', '101', '353500', '1');
INSERT INTO `npcinfo` VALUES ('4', '102', '360570', '1');
INSERT INTO `npcinfo` VALUES ('4', '103', '367710', '1');
INSERT INTO `npcinfo` VALUES ('4', '104', '374920', '1');
INSERT INTO `npcinfo` VALUES ('4', '105', '382200', '1');
INSERT INTO `npcinfo` VALUES ('4', '106', '389550', '1');
INSERT INTO `npcinfo` VALUES ('4', '107', '396970', '1');
INSERT INTO `npcinfo` VALUES ('4', '108', '404460', '1');
INSERT INTO `npcinfo` VALUES ('4', '109', '412020', '1');
INSERT INTO `npcinfo` VALUES ('4', '110', '419650', '1');
INSERT INTO `npcinfo` VALUES ('4', '111', '427350', '1');
INSERT INTO `npcinfo` VALUES ('4', '112', '435120', '1');
INSERT INTO `npcinfo` VALUES ('4', '113', '442960', '1');
INSERT INTO `npcinfo` VALUES ('4', '114', '450870', '1');
INSERT INTO `npcinfo` VALUES ('4', '115', '458850', '1');
INSERT INTO `npcinfo` VALUES ('4', '116', '466900', '1');
INSERT INTO `npcinfo` VALUES ('4', '117', '475020', '1');
INSERT INTO `npcinfo` VALUES ('4', '118', '483210', '1');
INSERT INTO `npcinfo` VALUES ('4', '119', '491470', '1');
INSERT INTO `npcinfo` VALUES ('4', '120', '499800', '1');
INSERT INTO `npcinfo` VALUES ('4', '121', '508200', '1');
INSERT INTO `npcinfo` VALUES ('4', '122', '516670', '1');
INSERT INTO `npcinfo` VALUES ('4', '123', '525210', '1');
INSERT INTO `npcinfo` VALUES ('4', '124', '533820', '1');
INSERT INTO `npcinfo` VALUES ('4', '125', '542500', '1');
INSERT INTO `npcinfo` VALUES ('4', '126', '551250', '1');
INSERT INTO `npcinfo` VALUES ('4', '127', '560070', '1');
INSERT INTO `npcinfo` VALUES ('4', '128', '568960', '1');
INSERT INTO `npcinfo` VALUES ('4', '129', '577920', '1');
INSERT INTO `npcinfo` VALUES ('4', '130', '586950', '1');
INSERT INTO `npcinfo` VALUES ('4', '131', '596050', '1');
INSERT INTO `npcinfo` VALUES ('4', '132', '605220', '1');
INSERT INTO `npcinfo` VALUES ('4', '133', '614460', '1');
INSERT INTO `npcinfo` VALUES ('4', '134', '623770', '1');
INSERT INTO `npcinfo` VALUES ('4', '135', '633150', '1');
INSERT INTO `npcinfo` VALUES ('4', '136', '642600', '1');
INSERT INTO `npcinfo` VALUES ('4', '137', '652120', '1');
INSERT INTO `npcinfo` VALUES ('4', '138', '661710', '1');
INSERT INTO `npcinfo` VALUES ('4', '139', '671370', '1');
INSERT INTO `npcinfo` VALUES ('4', '140', '681100', '1');
INSERT INTO `npcinfo` VALUES ('4', '141', '690900', '1');
INSERT INTO `npcinfo` VALUES ('4', '142', '700770', '1');
INSERT INTO `npcinfo` VALUES ('4', '143', '710710', '1');
INSERT INTO `npcinfo` VALUES ('4', '144', '720720', '1');
INSERT INTO `npcinfo` VALUES ('4', '145', '730800', '1');
INSERT INTO `npcinfo` VALUES ('4', '146', '740950', '1');
INSERT INTO `npcinfo` VALUES ('4', '147', '751170', '1');
INSERT INTO `npcinfo` VALUES ('4', '148', '761460', '1');
INSERT INTO `npcinfo` VALUES ('4', '149', '771820', '1');
INSERT INTO `npcinfo` VALUES ('4', '150', '782250', '1');
INSERT INTO `npcinfo` VALUES ('4', '151', '792750', '1');
INSERT INTO `npcinfo` VALUES ('4', '152', '803320', '1');
INSERT INTO `npcinfo` VALUES ('4', '153', '813960', '1');
INSERT INTO `npcinfo` VALUES ('4', '154', '824670', '1');
INSERT INTO `npcinfo` VALUES ('4', '155', '835450', '1');
INSERT INTO `npcinfo` VALUES ('4', '156', '846300', '1');
INSERT INTO `npcinfo` VALUES ('4', '157', '857220', '1');
INSERT INTO `npcinfo` VALUES ('4', '158', '868210', '1');
INSERT INTO `npcinfo` VALUES ('4', '159', '879270', '1');
INSERT INTO `npcinfo` VALUES ('4', '160', '890400', '1');
INSERT INTO `npcinfo` VALUES ('4', '161', '901600', '1');
INSERT INTO `npcinfo` VALUES ('4', '162', '912870', '1');
INSERT INTO `npcinfo` VALUES ('4', '163', '924210', '1');
INSERT INTO `npcinfo` VALUES ('4', '164', '935620', '1');
INSERT INTO `npcinfo` VALUES ('4', '165', '947100', '1');
INSERT INTO `npcinfo` VALUES ('4', '166', '958650', '1');
INSERT INTO `npcinfo` VALUES ('4', '167', '970270', '1');
INSERT INTO `npcinfo` VALUES ('4', '168', '981960', '1');
INSERT INTO `npcinfo` VALUES ('4', '169', '993720', '1');
INSERT INTO `npcinfo` VALUES ('4', '170', '1005550', '1');
INSERT INTO `npcinfo` VALUES ('4', '171', '1017450', '1');
INSERT INTO `npcinfo` VALUES ('4', '172', '1029420', '1');
INSERT INTO `npcinfo` VALUES ('4', '173', '1041460', '1');
INSERT INTO `npcinfo` VALUES ('4', '174', '1053570', '1');
INSERT INTO `npcinfo` VALUES ('4', '175', '1065750', '1');
INSERT INTO `npcinfo` VALUES ('4', '176', '1078000', '1');
INSERT INTO `npcinfo` VALUES ('4', '177', '1090320', '1');
INSERT INTO `npcinfo` VALUES ('4', '178', '1102710', '1');
INSERT INTO `npcinfo` VALUES ('4', '179', '1115170', '1');
INSERT INTO `npcinfo` VALUES ('4', '180', '1127700', '1');
INSERT INTO `npcinfo` VALUES ('4', '181', '1140300', '1');
INSERT INTO `npcinfo` VALUES ('4', '182', '1152970', '1');
INSERT INTO `npcinfo` VALUES ('4', '183', '1165710', '1');
INSERT INTO `npcinfo` VALUES ('4', '184', '1178520', '1');
INSERT INTO `npcinfo` VALUES ('4', '185', '1191400', '1');
INSERT INTO `npcinfo` VALUES ('4', '186', '1204350', '1');
INSERT INTO `npcinfo` VALUES ('4', '187', '1217370', '1');
INSERT INTO `npcinfo` VALUES ('4', '188', '1230460', '1');
INSERT INTO `npcinfo` VALUES ('4', '189', '1243620', '1');
INSERT INTO `npcinfo` VALUES ('4', '190', '1256850', '1');
INSERT INTO `npcinfo` VALUES ('4', '191', '1270150', '1');
INSERT INTO `npcinfo` VALUES ('4', '192', '1283520', '1');
INSERT INTO `npcinfo` VALUES ('4', '193', '1296960', '1');
INSERT INTO `npcinfo` VALUES ('4', '194', '1310470', '1');
INSERT INTO `npcinfo` VALUES ('4', '195', '1324050', '1');
INSERT INTO `npcinfo` VALUES ('4', '196', '1337700', '1');
INSERT INTO `npcinfo` VALUES ('4', '197', '1351420', '1');
INSERT INTO `npcinfo` VALUES ('4', '198', '1365210', '1');
INSERT INTO `npcinfo` VALUES ('4', '199', '1379070', '1');
INSERT INTO `npcinfo` VALUES ('4', '200', '1393000', '1');
INSERT INTO `npcinfo` VALUES ('4', '201', '1407000', '1');
INSERT INTO `npcinfo` VALUES ('4', '202', '1421070', '1');
INSERT INTO `npcinfo` VALUES ('4', '203', '1435210', '1');
INSERT INTO `npcinfo` VALUES ('4', '204', '1449420', '1');
INSERT INTO `npcinfo` VALUES ('4', '205', '1463700', '1');
INSERT INTO `npcinfo` VALUES ('4', '206', '1478050', '1');
INSERT INTO `npcinfo` VALUES ('4', '207', '1492470', '1');
INSERT INTO `npcinfo` VALUES ('4', '208', '1506960', '1');
INSERT INTO `npcinfo` VALUES ('4', '209', '1521520', '1');
INSERT INTO `npcinfo` VALUES ('4', '210', '1536150', '1');
INSERT INTO `npcinfo` VALUES ('4', '211', '1550850', '1');
INSERT INTO `npcinfo` VALUES ('4', '212', '1565620', '1');
INSERT INTO `npcinfo` VALUES ('4', '213', '1580460', '1');
INSERT INTO `npcinfo` VALUES ('4', '214', '1595370', '1');
INSERT INTO `npcinfo` VALUES ('4', '215', '1610350', '1');
INSERT INTO `npcinfo` VALUES ('4', '216', '1625400', '1');
INSERT INTO `npcinfo` VALUES ('4', '217', '1640520', '1');
INSERT INTO `npcinfo` VALUES ('4', '218', '1655710', '1');
INSERT INTO `npcinfo` VALUES ('4', '219', '1670970', '1');
INSERT INTO `npcinfo` VALUES ('4', '220', '1686300', '1');
INSERT INTO `npcinfo` VALUES ('4', '221', '1701700', '1');
INSERT INTO `npcinfo` VALUES ('4', '222', '1717170', '1');
INSERT INTO `npcinfo` VALUES ('4', '223', '1732710', '1');
INSERT INTO `npcinfo` VALUES ('4', '224', '1748320', '1');
INSERT INTO `npcinfo` VALUES ('4', '225', '1764000', '1');
INSERT INTO `npcinfo` VALUES ('4', '226', '1779750', '1');
INSERT INTO `npcinfo` VALUES ('4', '227', '1795570', '1');
INSERT INTO `npcinfo` VALUES ('4', '228', '1811460', '1');
INSERT INTO `npcinfo` VALUES ('4', '229', '1827420', '1');
INSERT INTO `npcinfo` VALUES ('4', '230', '1843450', '1');
INSERT INTO `npcinfo` VALUES ('4', '231', '1859550', '1');
INSERT INTO `npcinfo` VALUES ('4', '232', '1875720', '1');
INSERT INTO `npcinfo` VALUES ('4', '233', '1891960', '1');
INSERT INTO `npcinfo` VALUES ('4', '234', '1908270', '1');
INSERT INTO `npcinfo` VALUES ('4', '235', '1924650', '1');
INSERT INTO `npcinfo` VALUES ('4', '236', '1941100', '1');
INSERT INTO `npcinfo` VALUES ('4', '237', '1957620', '1');
INSERT INTO `npcinfo` VALUES ('4', '238', '1974210', '1');
INSERT INTO `npcinfo` VALUES ('4', '239', '1990870', '1');
INSERT INTO `npcinfo` VALUES ('4', '240', '2007600', '1');
INSERT INTO `npcinfo` VALUES ('4', '241', '2024400', '1');
INSERT INTO `npcinfo` VALUES ('4', '242', '2041270', '1');
INSERT INTO `npcinfo` VALUES ('4', '243', '2058210', '1');
INSERT INTO `npcinfo` VALUES ('4', '244', '2075220', '1');
INSERT INTO `npcinfo` VALUES ('4', '245', '2092300', '1');
INSERT INTO `npcinfo` VALUES ('4', '246', '2109450', '1');
INSERT INTO `npcinfo` VALUES ('4', '247', '2126670', '1');
INSERT INTO `npcinfo` VALUES ('4', '248', '2143960', '1');
INSERT INTO `npcinfo` VALUES ('4', '249', '2161320', '1');
INSERT INTO `npcinfo` VALUES ('4', '250', '2178750', '1');
INSERT INTO `npcinfo` VALUES ('4', '251', '2196250', '1');
INSERT INTO `npcinfo` VALUES ('4', '252', '2213820', '1');
INSERT INTO `npcinfo` VALUES ('4', '253', '2231460', '1');
INSERT INTO `npcinfo` VALUES ('4', '254', '2249170', '1');
INSERT INTO `npcinfo` VALUES ('4', '255', '2266950', '1');
INSERT INTO `npcinfo` VALUES ('5', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('5', '2', '70', '1');
INSERT INTO `npcinfo` VALUES ('5', '3', '210', '1');
INSERT INTO `npcinfo` VALUES ('5', '4', '420', '1');
INSERT INTO `npcinfo` VALUES ('5', '5', '700', '1');
INSERT INTO `npcinfo` VALUES ('5', '6', '1050', '1');
INSERT INTO `npcinfo` VALUES ('5', '7', '1470', '1');
INSERT INTO `npcinfo` VALUES ('5', '8', '1960', '1');
INSERT INTO `npcinfo` VALUES ('5', '9', '2520', '1');
INSERT INTO `npcinfo` VALUES ('5', '10', '3150', '1');
INSERT INTO `npcinfo` VALUES ('5', '11', '3850', '1');
INSERT INTO `npcinfo` VALUES ('5', '12', '4620', '1');
INSERT INTO `npcinfo` VALUES ('5', '13', '5460', '1');
INSERT INTO `npcinfo` VALUES ('5', '14', '6370', '1');
INSERT INTO `npcinfo` VALUES ('5', '15', '7350', '1');
INSERT INTO `npcinfo` VALUES ('5', '16', '8400', '1');
INSERT INTO `npcinfo` VALUES ('5', '17', '9520', '1');
INSERT INTO `npcinfo` VALUES ('5', '18', '10710', '1');
INSERT INTO `npcinfo` VALUES ('5', '19', '11970', '1');
INSERT INTO `npcinfo` VALUES ('5', '20', '13300', '1');
INSERT INTO `npcinfo` VALUES ('5', '21', '14700', '1');
INSERT INTO `npcinfo` VALUES ('5', '22', '16170', '1');
INSERT INTO `npcinfo` VALUES ('5', '23', '17710', '1');
INSERT INTO `npcinfo` VALUES ('5', '24', '19320', '1');
INSERT INTO `npcinfo` VALUES ('5', '25', '21000', '1');
INSERT INTO `npcinfo` VALUES ('5', '26', '22750', '1');
INSERT INTO `npcinfo` VALUES ('5', '27', '24570', '1');
INSERT INTO `npcinfo` VALUES ('5', '28', '26460', '1');
INSERT INTO `npcinfo` VALUES ('5', '29', '28420', '1');
INSERT INTO `npcinfo` VALUES ('5', '30', '30450', '1');
INSERT INTO `npcinfo` VALUES ('5', '31', '32550', '1');
INSERT INTO `npcinfo` VALUES ('5', '32', '34720', '1');
INSERT INTO `npcinfo` VALUES ('5', '33', '36960', '1');
INSERT INTO `npcinfo` VALUES ('5', '34', '39270', '1');
INSERT INTO `npcinfo` VALUES ('5', '35', '41650', '1');
INSERT INTO `npcinfo` VALUES ('5', '36', '44100', '1');
INSERT INTO `npcinfo` VALUES ('5', '37', '46620', '1');
INSERT INTO `npcinfo` VALUES ('5', '38', '49210', '1');
INSERT INTO `npcinfo` VALUES ('5', '39', '51870', '1');
INSERT INTO `npcinfo` VALUES ('5', '40', '54600', '1');
INSERT INTO `npcinfo` VALUES ('5', '41', '57400', '1');
INSERT INTO `npcinfo` VALUES ('5', '42', '60270', '1');
INSERT INTO `npcinfo` VALUES ('5', '43', '63210', '1');
INSERT INTO `npcinfo` VALUES ('5', '44', '66220', '1');
INSERT INTO `npcinfo` VALUES ('5', '45', '69300', '1');
INSERT INTO `npcinfo` VALUES ('5', '46', '72450', '1');
INSERT INTO `npcinfo` VALUES ('5', '47', '75670', '1');
INSERT INTO `npcinfo` VALUES ('5', '48', '78960', '1');
INSERT INTO `npcinfo` VALUES ('5', '49', '82320', '1');
INSERT INTO `npcinfo` VALUES ('5', '50', '85750', '1');
INSERT INTO `npcinfo` VALUES ('5', '51', '89250', '1');
INSERT INTO `npcinfo` VALUES ('5', '52', '92820', '1');
INSERT INTO `npcinfo` VALUES ('5', '53', '96460', '1');
INSERT INTO `npcinfo` VALUES ('5', '54', '100170', '1');
INSERT INTO `npcinfo` VALUES ('5', '55', '103950', '1');
INSERT INTO `npcinfo` VALUES ('5', '56', '107800', '1');
INSERT INTO `npcinfo` VALUES ('5', '57', '111720', '1');
INSERT INTO `npcinfo` VALUES ('5', '58', '115710', '1');
INSERT INTO `npcinfo` VALUES ('5', '59', '119770', '1');
INSERT INTO `npcinfo` VALUES ('5', '60', '123900', '1');
INSERT INTO `npcinfo` VALUES ('5', '61', '128100', '1');
INSERT INTO `npcinfo` VALUES ('5', '62', '132370', '1');
INSERT INTO `npcinfo` VALUES ('5', '63', '136710', '1');
INSERT INTO `npcinfo` VALUES ('5', '64', '141120', '1');
INSERT INTO `npcinfo` VALUES ('5', '65', '145600', '1');
INSERT INTO `npcinfo` VALUES ('5', '66', '150150', '1');
INSERT INTO `npcinfo` VALUES ('5', '67', '154770', '1');
INSERT INTO `npcinfo` VALUES ('5', '68', '159460', '1');
INSERT INTO `npcinfo` VALUES ('5', '69', '164220', '1');
INSERT INTO `npcinfo` VALUES ('5', '70', '169050', '1');
INSERT INTO `npcinfo` VALUES ('5', '71', '173950', '1');
INSERT INTO `npcinfo` VALUES ('5', '72', '178920', '1');
INSERT INTO `npcinfo` VALUES ('5', '73', '183960', '1');
INSERT INTO `npcinfo` VALUES ('5', '74', '189070', '1');
INSERT INTO `npcinfo` VALUES ('5', '75', '194250', '1');
INSERT INTO `npcinfo` VALUES ('5', '76', '199500', '1');
INSERT INTO `npcinfo` VALUES ('5', '77', '204820', '1');
INSERT INTO `npcinfo` VALUES ('5', '78', '210210', '1');
INSERT INTO `npcinfo` VALUES ('5', '79', '215670', '1');
INSERT INTO `npcinfo` VALUES ('5', '80', '221200', '1');
INSERT INTO `npcinfo` VALUES ('5', '81', '226800', '1');
INSERT INTO `npcinfo` VALUES ('5', '82', '232470', '1');
INSERT INTO `npcinfo` VALUES ('5', '83', '238210', '1');
INSERT INTO `npcinfo` VALUES ('5', '84', '244020', '1');
INSERT INTO `npcinfo` VALUES ('5', '85', '249900', '1');
INSERT INTO `npcinfo` VALUES ('5', '86', '255850', '1');
INSERT INTO `npcinfo` VALUES ('5', '87', '261870', '1');
INSERT INTO `npcinfo` VALUES ('5', '88', '267960', '1');
INSERT INTO `npcinfo` VALUES ('5', '89', '274120', '1');
INSERT INTO `npcinfo` VALUES ('5', '90', '280350', '1');
INSERT INTO `npcinfo` VALUES ('5', '91', '286650', '1');
INSERT INTO `npcinfo` VALUES ('5', '92', '293020', '1');
INSERT INTO `npcinfo` VALUES ('5', '93', '299460', '1');
INSERT INTO `npcinfo` VALUES ('5', '94', '305970', '1');
INSERT INTO `npcinfo` VALUES ('5', '95', '312550', '1');
INSERT INTO `npcinfo` VALUES ('5', '96', '319200', '1');
INSERT INTO `npcinfo` VALUES ('5', '97', '325920', '1');
INSERT INTO `npcinfo` VALUES ('5', '98', '332710', '1');
INSERT INTO `npcinfo` VALUES ('5', '99', '339570', '1');
INSERT INTO `npcinfo` VALUES ('5', '100', '346500', '1');
INSERT INTO `npcinfo` VALUES ('5', '101', '353500', '1');
INSERT INTO `npcinfo` VALUES ('5', '102', '360570', '1');
INSERT INTO `npcinfo` VALUES ('5', '103', '367710', '1');
INSERT INTO `npcinfo` VALUES ('5', '104', '374920', '1');
INSERT INTO `npcinfo` VALUES ('5', '105', '382200', '1');
INSERT INTO `npcinfo` VALUES ('5', '106', '389550', '1');
INSERT INTO `npcinfo` VALUES ('5', '107', '396970', '1');
INSERT INTO `npcinfo` VALUES ('5', '108', '404460', '1');
INSERT INTO `npcinfo` VALUES ('5', '109', '412020', '1');
INSERT INTO `npcinfo` VALUES ('5', '110', '419650', '1');
INSERT INTO `npcinfo` VALUES ('5', '111', '427350', '1');
INSERT INTO `npcinfo` VALUES ('5', '112', '435120', '1');
INSERT INTO `npcinfo` VALUES ('5', '113', '442960', '1');
INSERT INTO `npcinfo` VALUES ('5', '114', '450870', '1');
INSERT INTO `npcinfo` VALUES ('5', '115', '458850', '1');
INSERT INTO `npcinfo` VALUES ('5', '116', '466900', '1');
INSERT INTO `npcinfo` VALUES ('5', '117', '475020', '1');
INSERT INTO `npcinfo` VALUES ('5', '118', '483210', '1');
INSERT INTO `npcinfo` VALUES ('5', '119', '491470', '1');
INSERT INTO `npcinfo` VALUES ('5', '120', '499800', '1');
INSERT INTO `npcinfo` VALUES ('5', '121', '508200', '1');
INSERT INTO `npcinfo` VALUES ('5', '122', '516670', '1');
INSERT INTO `npcinfo` VALUES ('5', '123', '525210', '1');
INSERT INTO `npcinfo` VALUES ('5', '124', '533820', '1');
INSERT INTO `npcinfo` VALUES ('5', '125', '542500', '1');
INSERT INTO `npcinfo` VALUES ('5', '126', '551250', '1');
INSERT INTO `npcinfo` VALUES ('5', '127', '560070', '1');
INSERT INTO `npcinfo` VALUES ('5', '128', '568960', '1');
INSERT INTO `npcinfo` VALUES ('5', '129', '577920', '1');
INSERT INTO `npcinfo` VALUES ('5', '130', '586950', '1');
INSERT INTO `npcinfo` VALUES ('5', '131', '596050', '1');
INSERT INTO `npcinfo` VALUES ('5', '132', '605220', '1');
INSERT INTO `npcinfo` VALUES ('5', '133', '614460', '1');
INSERT INTO `npcinfo` VALUES ('5', '134', '623770', '1');
INSERT INTO `npcinfo` VALUES ('5', '135', '633150', '1');
INSERT INTO `npcinfo` VALUES ('5', '136', '642600', '1');
INSERT INTO `npcinfo` VALUES ('5', '137', '652120', '1');
INSERT INTO `npcinfo` VALUES ('5', '138', '661710', '1');
INSERT INTO `npcinfo` VALUES ('5', '139', '671370', '1');
INSERT INTO `npcinfo` VALUES ('5', '140', '681100', '1');
INSERT INTO `npcinfo` VALUES ('5', '141', '690900', '1');
INSERT INTO `npcinfo` VALUES ('5', '142', '700770', '1');
INSERT INTO `npcinfo` VALUES ('5', '143', '710710', '1');
INSERT INTO `npcinfo` VALUES ('5', '144', '720720', '1');
INSERT INTO `npcinfo` VALUES ('5', '145', '730800', '1');
INSERT INTO `npcinfo` VALUES ('5', '146', '740950', '1');
INSERT INTO `npcinfo` VALUES ('5', '147', '751170', '1');
INSERT INTO `npcinfo` VALUES ('5', '148', '761460', '1');
INSERT INTO `npcinfo` VALUES ('5', '149', '771820', '1');
INSERT INTO `npcinfo` VALUES ('5', '150', '782250', '1');
INSERT INTO `npcinfo` VALUES ('5', '151', '792750', '1');
INSERT INTO `npcinfo` VALUES ('5', '152', '803320', '1');
INSERT INTO `npcinfo` VALUES ('5', '153', '813960', '1');
INSERT INTO `npcinfo` VALUES ('5', '154', '824670', '1');
INSERT INTO `npcinfo` VALUES ('5', '155', '835450', '1');
INSERT INTO `npcinfo` VALUES ('5', '156', '846300', '1');
INSERT INTO `npcinfo` VALUES ('5', '157', '857220', '1');
INSERT INTO `npcinfo` VALUES ('5', '158', '868210', '1');
INSERT INTO `npcinfo` VALUES ('5', '159', '879270', '1');
INSERT INTO `npcinfo` VALUES ('5', '160', '890400', '1');
INSERT INTO `npcinfo` VALUES ('5', '161', '901600', '1');
INSERT INTO `npcinfo` VALUES ('5', '162', '912870', '1');
INSERT INTO `npcinfo` VALUES ('5', '163', '924210', '1');
INSERT INTO `npcinfo` VALUES ('5', '164', '935620', '1');
INSERT INTO `npcinfo` VALUES ('5', '165', '947100', '1');
INSERT INTO `npcinfo` VALUES ('5', '166', '958650', '1');
INSERT INTO `npcinfo` VALUES ('5', '167', '970270', '1');
INSERT INTO `npcinfo` VALUES ('5', '168', '981960', '1');
INSERT INTO `npcinfo` VALUES ('5', '169', '993720', '1');
INSERT INTO `npcinfo` VALUES ('5', '170', '1005550', '1');
INSERT INTO `npcinfo` VALUES ('5', '171', '1017450', '1');
INSERT INTO `npcinfo` VALUES ('5', '172', '1029420', '1');
INSERT INTO `npcinfo` VALUES ('5', '173', '1041460', '1');
INSERT INTO `npcinfo` VALUES ('5', '174', '1053570', '1');
INSERT INTO `npcinfo` VALUES ('5', '175', '1065750', '1');
INSERT INTO `npcinfo` VALUES ('5', '176', '1078000', '1');
INSERT INTO `npcinfo` VALUES ('5', '177', '1090320', '1');
INSERT INTO `npcinfo` VALUES ('5', '178', '1102710', '1');
INSERT INTO `npcinfo` VALUES ('5', '179', '1115170', '1');
INSERT INTO `npcinfo` VALUES ('5', '180', '1127700', '1');
INSERT INTO `npcinfo` VALUES ('5', '181', '1140300', '1');
INSERT INTO `npcinfo` VALUES ('5', '182', '1152970', '1');
INSERT INTO `npcinfo` VALUES ('5', '183', '1165710', '1');
INSERT INTO `npcinfo` VALUES ('5', '184', '1178520', '1');
INSERT INTO `npcinfo` VALUES ('5', '185', '1191400', '1');
INSERT INTO `npcinfo` VALUES ('5', '186', '1204350', '1');
INSERT INTO `npcinfo` VALUES ('5', '187', '1217370', '1');
INSERT INTO `npcinfo` VALUES ('5', '188', '1230460', '1');
INSERT INTO `npcinfo` VALUES ('5', '189', '1243620', '1');
INSERT INTO `npcinfo` VALUES ('5', '190', '1256850', '1');
INSERT INTO `npcinfo` VALUES ('5', '191', '1270150', '1');
INSERT INTO `npcinfo` VALUES ('5', '192', '1283520', '1');
INSERT INTO `npcinfo` VALUES ('5', '193', '1296960', '1');
INSERT INTO `npcinfo` VALUES ('5', '194', '1310470', '1');
INSERT INTO `npcinfo` VALUES ('5', '195', '1324050', '1');
INSERT INTO `npcinfo` VALUES ('5', '196', '1337700', '1');
INSERT INTO `npcinfo` VALUES ('5', '197', '1351420', '1');
INSERT INTO `npcinfo` VALUES ('5', '198', '1365210', '1');
INSERT INTO `npcinfo` VALUES ('5', '199', '1379070', '1');
INSERT INTO `npcinfo` VALUES ('5', '200', '1393000', '1');
INSERT INTO `npcinfo` VALUES ('5', '201', '1407000', '1');
INSERT INTO `npcinfo` VALUES ('5', '202', '1421070', '1');
INSERT INTO `npcinfo` VALUES ('5', '203', '1435210', '1');
INSERT INTO `npcinfo` VALUES ('5', '204', '1449420', '1');
INSERT INTO `npcinfo` VALUES ('5', '205', '1463700', '1');
INSERT INTO `npcinfo` VALUES ('5', '206', '1478050', '1');
INSERT INTO `npcinfo` VALUES ('5', '207', '1492470', '1');
INSERT INTO `npcinfo` VALUES ('5', '208', '1506960', '1');
INSERT INTO `npcinfo` VALUES ('5', '209', '1521520', '1');
INSERT INTO `npcinfo` VALUES ('5', '210', '1536150', '1');
INSERT INTO `npcinfo` VALUES ('5', '211', '1550850', '1');
INSERT INTO `npcinfo` VALUES ('5', '212', '1565620', '1');
INSERT INTO `npcinfo` VALUES ('5', '213', '1580460', '1');
INSERT INTO `npcinfo` VALUES ('5', '214', '1595370', '1');
INSERT INTO `npcinfo` VALUES ('5', '215', '1610350', '1');
INSERT INTO `npcinfo` VALUES ('5', '216', '1625400', '1');
INSERT INTO `npcinfo` VALUES ('5', '217', '1640520', '1');
INSERT INTO `npcinfo` VALUES ('5', '218', '1655710', '1');
INSERT INTO `npcinfo` VALUES ('5', '219', '1670970', '1');
INSERT INTO `npcinfo` VALUES ('5', '220', '1686300', '1');
INSERT INTO `npcinfo` VALUES ('5', '221', '1701700', '1');
INSERT INTO `npcinfo` VALUES ('5', '222', '1717170', '1');
INSERT INTO `npcinfo` VALUES ('5', '223', '1732710', '1');
INSERT INTO `npcinfo` VALUES ('5', '224', '1748320', '1');
INSERT INTO `npcinfo` VALUES ('5', '225', '1764000', '1');
INSERT INTO `npcinfo` VALUES ('5', '226', '1779750', '1');
INSERT INTO `npcinfo` VALUES ('5', '227', '1795570', '1');
INSERT INTO `npcinfo` VALUES ('5', '228', '1811460', '1');
INSERT INTO `npcinfo` VALUES ('5', '229', '1827420', '1');
INSERT INTO `npcinfo` VALUES ('5', '230', '1843450', '1');
INSERT INTO `npcinfo` VALUES ('5', '231', '1859550', '1');
INSERT INTO `npcinfo` VALUES ('5', '232', '1875720', '1');
INSERT INTO `npcinfo` VALUES ('5', '233', '1891960', '1');
INSERT INTO `npcinfo` VALUES ('5', '234', '1908270', '1');
INSERT INTO `npcinfo` VALUES ('5', '235', '1924650', '1');
INSERT INTO `npcinfo` VALUES ('5', '236', '1941100', '1');
INSERT INTO `npcinfo` VALUES ('5', '237', '1957620', '1');
INSERT INTO `npcinfo` VALUES ('5', '238', '1974210', '1');
INSERT INTO `npcinfo` VALUES ('5', '239', '1990870', '1');
INSERT INTO `npcinfo` VALUES ('5', '240', '2007600', '1');
INSERT INTO `npcinfo` VALUES ('5', '241', '2024400', '1');
INSERT INTO `npcinfo` VALUES ('5', '242', '2041270', '1');
INSERT INTO `npcinfo` VALUES ('5', '243', '2058210', '1');
INSERT INTO `npcinfo` VALUES ('5', '244', '2075220', '1');
INSERT INTO `npcinfo` VALUES ('5', '245', '2092300', '1');
INSERT INTO `npcinfo` VALUES ('5', '246', '2109450', '1');
INSERT INTO `npcinfo` VALUES ('5', '247', '2126670', '1');
INSERT INTO `npcinfo` VALUES ('5', '248', '2143960', '1');
INSERT INTO `npcinfo` VALUES ('5', '249', '2161320', '1');
INSERT INTO `npcinfo` VALUES ('5', '250', '2178750', '1');
INSERT INTO `npcinfo` VALUES ('5', '251', '2196250', '1');
INSERT INTO `npcinfo` VALUES ('5', '252', '2213820', '1');
INSERT INTO `npcinfo` VALUES ('5', '253', '2231460', '1');
INSERT INTO `npcinfo` VALUES ('5', '254', '2249170', '1');
INSERT INTO `npcinfo` VALUES ('5', '255', '2266950', '1');
INSERT INTO `npcinfo` VALUES ('6', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('6', '2', '75', '1');
INSERT INTO `npcinfo` VALUES ('6', '3', '225', '1');
INSERT INTO `npcinfo` VALUES ('6', '4', '450', '1');
INSERT INTO `npcinfo` VALUES ('6', '5', '750', '1');
INSERT INTO `npcinfo` VALUES ('6', '6', '1125', '1');
INSERT INTO `npcinfo` VALUES ('6', '7', '1575', '1');
INSERT INTO `npcinfo` VALUES ('6', '8', '2100', '1');
INSERT INTO `npcinfo` VALUES ('6', '9', '2700', '1');
INSERT INTO `npcinfo` VALUES ('6', '10', '3375', '1');
INSERT INTO `npcinfo` VALUES ('6', '11', '4125', '1');
INSERT INTO `npcinfo` VALUES ('6', '12', '4950', '1');
INSERT INTO `npcinfo` VALUES ('6', '13', '5850', '1');
INSERT INTO `npcinfo` VALUES ('6', '14', '6825', '1');
INSERT INTO `npcinfo` VALUES ('6', '15', '7875', '1');
INSERT INTO `npcinfo` VALUES ('6', '16', '9000', '1');
INSERT INTO `npcinfo` VALUES ('6', '17', '10200', '1');
INSERT INTO `npcinfo` VALUES ('6', '18', '11475', '1');
INSERT INTO `npcinfo` VALUES ('6', '19', '12825', '1');
INSERT INTO `npcinfo` VALUES ('6', '20', '14250', '1');
INSERT INTO `npcinfo` VALUES ('6', '21', '15750', '1');
INSERT INTO `npcinfo` VALUES ('6', '22', '17325', '1');
INSERT INTO `npcinfo` VALUES ('6', '23', '18975', '1');
INSERT INTO `npcinfo` VALUES ('6', '24', '20700', '1');
INSERT INTO `npcinfo` VALUES ('6', '25', '22500', '1');
INSERT INTO `npcinfo` VALUES ('6', '26', '24375', '1');
INSERT INTO `npcinfo` VALUES ('6', '27', '26325', '1');
INSERT INTO `npcinfo` VALUES ('6', '28', '28350', '1');
INSERT INTO `npcinfo` VALUES ('6', '29', '30450', '1');
INSERT INTO `npcinfo` VALUES ('6', '30', '32625', '1');
INSERT INTO `npcinfo` VALUES ('6', '31', '34875', '1');
INSERT INTO `npcinfo` VALUES ('6', '32', '37200', '1');
INSERT INTO `npcinfo` VALUES ('6', '33', '39600', '1');
INSERT INTO `npcinfo` VALUES ('6', '34', '42075', '1');
INSERT INTO `npcinfo` VALUES ('6', '35', '44625', '1');
INSERT INTO `npcinfo` VALUES ('6', '36', '47250', '1');
INSERT INTO `npcinfo` VALUES ('6', '37', '49950', '1');
INSERT INTO `npcinfo` VALUES ('6', '38', '52725', '1');
INSERT INTO `npcinfo` VALUES ('6', '39', '55575', '1');
INSERT INTO `npcinfo` VALUES ('6', '40', '58500', '1');
INSERT INTO `npcinfo` VALUES ('6', '41', '61500', '1');
INSERT INTO `npcinfo` VALUES ('6', '42', '64575', '1');
INSERT INTO `npcinfo` VALUES ('6', '43', '67725', '1');
INSERT INTO `npcinfo` VALUES ('6', '44', '70950', '1');
INSERT INTO `npcinfo` VALUES ('6', '45', '74250', '1');
INSERT INTO `npcinfo` VALUES ('6', '46', '77625', '1');
INSERT INTO `npcinfo` VALUES ('6', '47', '81075', '1');
INSERT INTO `npcinfo` VALUES ('6', '48', '84600', '1');
INSERT INTO `npcinfo` VALUES ('6', '49', '88200', '1');
INSERT INTO `npcinfo` VALUES ('6', '50', '91875', '1');
INSERT INTO `npcinfo` VALUES ('6', '51', '95625', '1');
INSERT INTO `npcinfo` VALUES ('6', '52', '99450', '1');
INSERT INTO `npcinfo` VALUES ('6', '53', '103350', '1');
INSERT INTO `npcinfo` VALUES ('6', '54', '107325', '1');
INSERT INTO `npcinfo` VALUES ('6', '55', '111375', '1');
INSERT INTO `npcinfo` VALUES ('6', '56', '115500', '1');
INSERT INTO `npcinfo` VALUES ('6', '57', '119700', '1');
INSERT INTO `npcinfo` VALUES ('6', '58', '123975', '1');
INSERT INTO `npcinfo` VALUES ('6', '59', '128325', '1');
INSERT INTO `npcinfo` VALUES ('6', '60', '132750', '1');
INSERT INTO `npcinfo` VALUES ('6', '61', '137250', '1');
INSERT INTO `npcinfo` VALUES ('6', '62', '141825', '1');
INSERT INTO `npcinfo` VALUES ('6', '63', '146475', '1');
INSERT INTO `npcinfo` VALUES ('6', '64', '151200', '1');
INSERT INTO `npcinfo` VALUES ('6', '65', '156000', '1');
INSERT INTO `npcinfo` VALUES ('6', '66', '160875', '1');
INSERT INTO `npcinfo` VALUES ('6', '67', '165825', '1');
INSERT INTO `npcinfo` VALUES ('6', '68', '170850', '1');
INSERT INTO `npcinfo` VALUES ('6', '69', '175950', '1');
INSERT INTO `npcinfo` VALUES ('6', '70', '181125', '1');
INSERT INTO `npcinfo` VALUES ('6', '71', '186375', '1');
INSERT INTO `npcinfo` VALUES ('6', '72', '191700', '1');
INSERT INTO `npcinfo` VALUES ('6', '73', '197100', '1');
INSERT INTO `npcinfo` VALUES ('6', '74', '202575', '1');
INSERT INTO `npcinfo` VALUES ('6', '75', '208125', '1');
INSERT INTO `npcinfo` VALUES ('6', '76', '213750', '1');
INSERT INTO `npcinfo` VALUES ('6', '77', '219450', '1');
INSERT INTO `npcinfo` VALUES ('6', '78', '225225', '1');
INSERT INTO `npcinfo` VALUES ('6', '79', '231075', '1');
INSERT INTO `npcinfo` VALUES ('6', '80', '237000', '1');
INSERT INTO `npcinfo` VALUES ('6', '81', '243000', '1');
INSERT INTO `npcinfo` VALUES ('6', '82', '249075', '1');
INSERT INTO `npcinfo` VALUES ('6', '83', '255225', '1');
INSERT INTO `npcinfo` VALUES ('6', '84', '261450', '1');
INSERT INTO `npcinfo` VALUES ('6', '85', '267750', '1');
INSERT INTO `npcinfo` VALUES ('6', '86', '274125', '1');
INSERT INTO `npcinfo` VALUES ('6', '87', '280575', '1');
INSERT INTO `npcinfo` VALUES ('6', '88', '287100', '1');
INSERT INTO `npcinfo` VALUES ('6', '89', '293700', '1');
INSERT INTO `npcinfo` VALUES ('6', '90', '300375', '1');
INSERT INTO `npcinfo` VALUES ('6', '91', '307125', '1');
INSERT INTO `npcinfo` VALUES ('6', '92', '313950', '1');
INSERT INTO `npcinfo` VALUES ('6', '93', '320850', '1');
INSERT INTO `npcinfo` VALUES ('6', '94', '327825', '1');
INSERT INTO `npcinfo` VALUES ('6', '95', '334875', '1');
INSERT INTO `npcinfo` VALUES ('6', '96', '342000', '1');
INSERT INTO `npcinfo` VALUES ('6', '97', '349200', '1');
INSERT INTO `npcinfo` VALUES ('6', '98', '356475', '1');
INSERT INTO `npcinfo` VALUES ('6', '99', '363825', '1');
INSERT INTO `npcinfo` VALUES ('6', '100', '371250', '1');
INSERT INTO `npcinfo` VALUES ('6', '101', '378750', '1');
INSERT INTO `npcinfo` VALUES ('6', '102', '386325', '1');
INSERT INTO `npcinfo` VALUES ('6', '103', '393975', '1');
INSERT INTO `npcinfo` VALUES ('6', '104', '401700', '1');
INSERT INTO `npcinfo` VALUES ('6', '105', '409500', '1');
INSERT INTO `npcinfo` VALUES ('6', '106', '417375', '1');
INSERT INTO `npcinfo` VALUES ('6', '107', '425325', '1');
INSERT INTO `npcinfo` VALUES ('6', '108', '433350', '1');
INSERT INTO `npcinfo` VALUES ('6', '109', '441450', '1');
INSERT INTO `npcinfo` VALUES ('6', '110', '449625', '1');
INSERT INTO `npcinfo` VALUES ('6', '111', '457875', '1');
INSERT INTO `npcinfo` VALUES ('6', '112', '466200', '1');
INSERT INTO `npcinfo` VALUES ('6', '113', '474600', '1');
INSERT INTO `npcinfo` VALUES ('6', '114', '483075', '1');
INSERT INTO `npcinfo` VALUES ('6', '115', '491625', '1');
INSERT INTO `npcinfo` VALUES ('6', '116', '500250', '1');
INSERT INTO `npcinfo` VALUES ('6', '117', '508950', '1');
INSERT INTO `npcinfo` VALUES ('6', '118', '517725', '1');
INSERT INTO `npcinfo` VALUES ('6', '119', '526575', '1');
INSERT INTO `npcinfo` VALUES ('6', '120', '535500', '1');
INSERT INTO `npcinfo` VALUES ('6', '121', '544500', '1');
INSERT INTO `npcinfo` VALUES ('6', '122', '553575', '1');
INSERT INTO `npcinfo` VALUES ('6', '123', '562725', '1');
INSERT INTO `npcinfo` VALUES ('6', '124', '571950', '1');
INSERT INTO `npcinfo` VALUES ('6', '125', '581250', '1');
INSERT INTO `npcinfo` VALUES ('6', '126', '590625', '1');
INSERT INTO `npcinfo` VALUES ('6', '127', '600075', '1');
INSERT INTO `npcinfo` VALUES ('6', '128', '609600', '1');
INSERT INTO `npcinfo` VALUES ('6', '129', '619200', '1');
INSERT INTO `npcinfo` VALUES ('6', '130', '628875', '1');
INSERT INTO `npcinfo` VALUES ('6', '131', '638625', '1');
INSERT INTO `npcinfo` VALUES ('6', '132', '648450', '1');
INSERT INTO `npcinfo` VALUES ('6', '133', '658350', '1');
INSERT INTO `npcinfo` VALUES ('6', '134', '668325', '1');
INSERT INTO `npcinfo` VALUES ('6', '135', '678375', '1');
INSERT INTO `npcinfo` VALUES ('6', '136', '688500', '1');
INSERT INTO `npcinfo` VALUES ('6', '137', '698700', '1');
INSERT INTO `npcinfo` VALUES ('6', '138', '708975', '1');
INSERT INTO `npcinfo` VALUES ('6', '139', '719325', '1');
INSERT INTO `npcinfo` VALUES ('6', '140', '729750', '1');
INSERT INTO `npcinfo` VALUES ('6', '141', '740250', '1');
INSERT INTO `npcinfo` VALUES ('6', '142', '750825', '1');
INSERT INTO `npcinfo` VALUES ('6', '143', '761475', '1');
INSERT INTO `npcinfo` VALUES ('6', '144', '772200', '1');
INSERT INTO `npcinfo` VALUES ('6', '145', '783000', '1');
INSERT INTO `npcinfo` VALUES ('6', '146', '793875', '1');
INSERT INTO `npcinfo` VALUES ('6', '147', '804825', '1');
INSERT INTO `npcinfo` VALUES ('6', '148', '815850', '1');
INSERT INTO `npcinfo` VALUES ('6', '149', '826950', '1');
INSERT INTO `npcinfo` VALUES ('6', '150', '838125', '1');
INSERT INTO `npcinfo` VALUES ('6', '151', '849375', '1');
INSERT INTO `npcinfo` VALUES ('6', '152', '860700', '1');
INSERT INTO `npcinfo` VALUES ('6', '153', '872100', '1');
INSERT INTO `npcinfo` VALUES ('6', '154', '883575', '1');
INSERT INTO `npcinfo` VALUES ('6', '155', '895125', '1');
INSERT INTO `npcinfo` VALUES ('6', '156', '906750', '1');
INSERT INTO `npcinfo` VALUES ('6', '157', '918450', '1');
INSERT INTO `npcinfo` VALUES ('6', '158', '930225', '1');
INSERT INTO `npcinfo` VALUES ('6', '159', '942075', '1');
INSERT INTO `npcinfo` VALUES ('6', '160', '954000', '1');
INSERT INTO `npcinfo` VALUES ('6', '161', '966000', '1');
INSERT INTO `npcinfo` VALUES ('6', '162', '978075', '1');
INSERT INTO `npcinfo` VALUES ('6', '163', '990225', '1');
INSERT INTO `npcinfo` VALUES ('6', '164', '1002450', '1');
INSERT INTO `npcinfo` VALUES ('6', '165', '1014750', '1');
INSERT INTO `npcinfo` VALUES ('6', '166', '1027125', '1');
INSERT INTO `npcinfo` VALUES ('6', '167', '1039575', '1');
INSERT INTO `npcinfo` VALUES ('6', '168', '1052100', '1');
INSERT INTO `npcinfo` VALUES ('6', '169', '1064700', '1');
INSERT INTO `npcinfo` VALUES ('6', '170', '1077375', '1');
INSERT INTO `npcinfo` VALUES ('6', '171', '1090125', '1');
INSERT INTO `npcinfo` VALUES ('6', '172', '1102950', '1');
INSERT INTO `npcinfo` VALUES ('6', '173', '1115850', '1');
INSERT INTO `npcinfo` VALUES ('6', '174', '1128825', '1');
INSERT INTO `npcinfo` VALUES ('6', '175', '1141875', '1');
INSERT INTO `npcinfo` VALUES ('6', '176', '1155000', '1');
INSERT INTO `npcinfo` VALUES ('6', '177', '1168200', '1');
INSERT INTO `npcinfo` VALUES ('6', '178', '1181475', '1');
INSERT INTO `npcinfo` VALUES ('6', '179', '1194825', '1');
INSERT INTO `npcinfo` VALUES ('6', '180', '1208250', '1');
INSERT INTO `npcinfo` VALUES ('6', '181', '1221750', '1');
INSERT INTO `npcinfo` VALUES ('6', '182', '1235325', '1');
INSERT INTO `npcinfo` VALUES ('6', '183', '1248975', '1');
INSERT INTO `npcinfo` VALUES ('6', '184', '1262700', '1');
INSERT INTO `npcinfo` VALUES ('6', '185', '1276500', '1');
INSERT INTO `npcinfo` VALUES ('6', '186', '1290375', '1');
INSERT INTO `npcinfo` VALUES ('6', '187', '1304325', '1');
INSERT INTO `npcinfo` VALUES ('6', '188', '1318350', '1');
INSERT INTO `npcinfo` VALUES ('6', '189', '1332450', '1');
INSERT INTO `npcinfo` VALUES ('6', '190', '1346625', '1');
INSERT INTO `npcinfo` VALUES ('6', '191', '1360875', '1');
INSERT INTO `npcinfo` VALUES ('6', '192', '1375200', '1');
INSERT INTO `npcinfo` VALUES ('6', '193', '1389600', '1');
INSERT INTO `npcinfo` VALUES ('6', '194', '1404075', '1');
INSERT INTO `npcinfo` VALUES ('6', '195', '1418625', '1');
INSERT INTO `npcinfo` VALUES ('6', '196', '1433250', '1');
INSERT INTO `npcinfo` VALUES ('6', '197', '1447950', '1');
INSERT INTO `npcinfo` VALUES ('6', '198', '1462725', '1');
INSERT INTO `npcinfo` VALUES ('6', '199', '1477575', '1');
INSERT INTO `npcinfo` VALUES ('6', '200', '1492500', '1');
INSERT INTO `npcinfo` VALUES ('6', '201', '1507500', '1');
INSERT INTO `npcinfo` VALUES ('6', '202', '1522575', '1');
INSERT INTO `npcinfo` VALUES ('6', '203', '1537725', '1');
INSERT INTO `npcinfo` VALUES ('6', '204', '1552950', '1');
INSERT INTO `npcinfo` VALUES ('6', '205', '1568250', '1');
INSERT INTO `npcinfo` VALUES ('6', '206', '1583625', '1');
INSERT INTO `npcinfo` VALUES ('6', '207', '1599075', '1');
INSERT INTO `npcinfo` VALUES ('6', '208', '1614600', '1');
INSERT INTO `npcinfo` VALUES ('6', '209', '1630200', '1');
INSERT INTO `npcinfo` VALUES ('6', '210', '1645875', '1');
INSERT INTO `npcinfo` VALUES ('6', '211', '1661625', '1');
INSERT INTO `npcinfo` VALUES ('6', '212', '1677450', '1');
INSERT INTO `npcinfo` VALUES ('6', '213', '1693350', '1');
INSERT INTO `npcinfo` VALUES ('6', '214', '1709325', '1');
INSERT INTO `npcinfo` VALUES ('6', '215', '1725375', '1');
INSERT INTO `npcinfo` VALUES ('6', '216', '1741500', '1');
INSERT INTO `npcinfo` VALUES ('6', '217', '1757700', '1');
INSERT INTO `npcinfo` VALUES ('6', '218', '1773975', '1');
INSERT INTO `npcinfo` VALUES ('6', '219', '1790325', '1');
INSERT INTO `npcinfo` VALUES ('6', '220', '1806750', '1');
INSERT INTO `npcinfo` VALUES ('6', '221', '1823250', '1');
INSERT INTO `npcinfo` VALUES ('6', '222', '1839825', '1');
INSERT INTO `npcinfo` VALUES ('6', '223', '1856475', '1');
INSERT INTO `npcinfo` VALUES ('6', '224', '1873200', '1');
INSERT INTO `npcinfo` VALUES ('6', '225', '1890000', '1');
INSERT INTO `npcinfo` VALUES ('6', '226', '1906875', '1');
INSERT INTO `npcinfo` VALUES ('6', '227', '1923825', '1');
INSERT INTO `npcinfo` VALUES ('6', '228', '1940850', '1');
INSERT INTO `npcinfo` VALUES ('6', '229', '1957950', '1');
INSERT INTO `npcinfo` VALUES ('6', '230', '1975125', '1');
INSERT INTO `npcinfo` VALUES ('6', '231', '1992375', '1');
INSERT INTO `npcinfo` VALUES ('6', '232', '2009700', '1');
INSERT INTO `npcinfo` VALUES ('6', '233', '2027100', '1');
INSERT INTO `npcinfo` VALUES ('6', '234', '2044575', '1');
INSERT INTO `npcinfo` VALUES ('6', '235', '2062125', '1');
INSERT INTO `npcinfo` VALUES ('6', '236', '2079750', '1');
INSERT INTO `npcinfo` VALUES ('6', '237', '2097450', '1');
INSERT INTO `npcinfo` VALUES ('6', '238', '2115225', '1');
INSERT INTO `npcinfo` VALUES ('6', '239', '2133075', '1');
INSERT INTO `npcinfo` VALUES ('6', '240', '2151000', '1');
INSERT INTO `npcinfo` VALUES ('6', '241', '2169000', '1');
INSERT INTO `npcinfo` VALUES ('6', '242', '2187075', '1');
INSERT INTO `npcinfo` VALUES ('6', '243', '2205225', '1');
INSERT INTO `npcinfo` VALUES ('6', '244', '2223450', '1');
INSERT INTO `npcinfo` VALUES ('6', '245', '2241750', '1');
INSERT INTO `npcinfo` VALUES ('6', '246', '2260125', '1');
INSERT INTO `npcinfo` VALUES ('6', '247', '2278575', '1');
INSERT INTO `npcinfo` VALUES ('6', '248', '2297100', '1');
INSERT INTO `npcinfo` VALUES ('6', '249', '2315700', '1');
INSERT INTO `npcinfo` VALUES ('6', '250', '2334375', '1');
INSERT INTO `npcinfo` VALUES ('6', '251', '2353125', '1');
INSERT INTO `npcinfo` VALUES ('6', '252', '2371950', '1');
INSERT INTO `npcinfo` VALUES ('6', '253', '2390850', '1');
INSERT INTO `npcinfo` VALUES ('6', '254', '2409825', '1');
INSERT INTO `npcinfo` VALUES ('6', '255', '2428875', '1');
INSERT INTO `npcinfo` VALUES ('7', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('7', '2', '80', '1');
INSERT INTO `npcinfo` VALUES ('7', '3', '240', '1');
INSERT INTO `npcinfo` VALUES ('7', '4', '480', '1');
INSERT INTO `npcinfo` VALUES ('7', '5', '800', '1');
INSERT INTO `npcinfo` VALUES ('7', '6', '1200', '1');
INSERT INTO `npcinfo` VALUES ('7', '7', '1680', '1');
INSERT INTO `npcinfo` VALUES ('7', '8', '2240', '1');
INSERT INTO `npcinfo` VALUES ('7', '9', '2880', '1');
INSERT INTO `npcinfo` VALUES ('7', '10', '3600', '1');
INSERT INTO `npcinfo` VALUES ('7', '11', '4400', '1');
INSERT INTO `npcinfo` VALUES ('7', '12', '5280', '1');
INSERT INTO `npcinfo` VALUES ('7', '13', '6240', '1');
INSERT INTO `npcinfo` VALUES ('7', '14', '7280', '1');
INSERT INTO `npcinfo` VALUES ('7', '15', '8400', '1');
INSERT INTO `npcinfo` VALUES ('7', '16', '9600', '1');
INSERT INTO `npcinfo` VALUES ('7', '17', '10880', '1');
INSERT INTO `npcinfo` VALUES ('7', '18', '12240', '1');
INSERT INTO `npcinfo` VALUES ('7', '19', '13680', '1');
INSERT INTO `npcinfo` VALUES ('7', '20', '15200', '1');
INSERT INTO `npcinfo` VALUES ('7', '21', '16800', '1');
INSERT INTO `npcinfo` VALUES ('7', '22', '18480', '1');
INSERT INTO `npcinfo` VALUES ('7', '23', '20240', '1');
INSERT INTO `npcinfo` VALUES ('7', '24', '22080', '1');
INSERT INTO `npcinfo` VALUES ('7', '25', '24000', '1');
INSERT INTO `npcinfo` VALUES ('7', '26', '26000', '1');
INSERT INTO `npcinfo` VALUES ('7', '27', '28080', '1');
INSERT INTO `npcinfo` VALUES ('7', '28', '30240', '1');
INSERT INTO `npcinfo` VALUES ('7', '29', '32480', '1');
INSERT INTO `npcinfo` VALUES ('7', '30', '34800', '1');
INSERT INTO `npcinfo` VALUES ('7', '31', '37200', '1');
INSERT INTO `npcinfo` VALUES ('7', '32', '39680', '1');
INSERT INTO `npcinfo` VALUES ('7', '33', '42240', '1');
INSERT INTO `npcinfo` VALUES ('7', '34', '44880', '1');
INSERT INTO `npcinfo` VALUES ('7', '35', '47600', '1');
INSERT INTO `npcinfo` VALUES ('7', '36', '50400', '1');
INSERT INTO `npcinfo` VALUES ('7', '37', '53280', '1');
INSERT INTO `npcinfo` VALUES ('7', '38', '56240', '1');
INSERT INTO `npcinfo` VALUES ('7', '39', '59280', '1');
INSERT INTO `npcinfo` VALUES ('7', '40', '62400', '1');
INSERT INTO `npcinfo` VALUES ('7', '41', '65600', '1');
INSERT INTO `npcinfo` VALUES ('7', '42', '68880', '1');
INSERT INTO `npcinfo` VALUES ('7', '43', '72240', '1');
INSERT INTO `npcinfo` VALUES ('7', '44', '75680', '1');
INSERT INTO `npcinfo` VALUES ('7', '45', '79200', '1');
INSERT INTO `npcinfo` VALUES ('7', '46', '82800', '1');
INSERT INTO `npcinfo` VALUES ('7', '47', '86480', '1');
INSERT INTO `npcinfo` VALUES ('7', '48', '90240', '1');
INSERT INTO `npcinfo` VALUES ('7', '49', '94080', '1');
INSERT INTO `npcinfo` VALUES ('7', '50', '98000', '1');
INSERT INTO `npcinfo` VALUES ('7', '51', '102000', '1');
INSERT INTO `npcinfo` VALUES ('7', '52', '106080', '1');
INSERT INTO `npcinfo` VALUES ('7', '53', '110240', '1');
INSERT INTO `npcinfo` VALUES ('7', '54', '114480', '1');
INSERT INTO `npcinfo` VALUES ('7', '55', '118800', '1');
INSERT INTO `npcinfo` VALUES ('7', '56', '123200', '1');
INSERT INTO `npcinfo` VALUES ('7', '57', '127680', '1');
INSERT INTO `npcinfo` VALUES ('7', '58', '132240', '1');
INSERT INTO `npcinfo` VALUES ('7', '59', '136880', '1');
INSERT INTO `npcinfo` VALUES ('7', '60', '141600', '1');
INSERT INTO `npcinfo` VALUES ('7', '61', '146400', '1');
INSERT INTO `npcinfo` VALUES ('7', '62', '151280', '1');
INSERT INTO `npcinfo` VALUES ('7', '63', '156240', '1');
INSERT INTO `npcinfo` VALUES ('7', '64', '161280', '1');
INSERT INTO `npcinfo` VALUES ('7', '65', '166400', '1');
INSERT INTO `npcinfo` VALUES ('7', '66', '171600', '1');
INSERT INTO `npcinfo` VALUES ('7', '67', '176880', '1');
INSERT INTO `npcinfo` VALUES ('7', '68', '182240', '1');
INSERT INTO `npcinfo` VALUES ('7', '69', '187680', '1');
INSERT INTO `npcinfo` VALUES ('7', '70', '193200', '1');
INSERT INTO `npcinfo` VALUES ('7', '71', '198800', '1');
INSERT INTO `npcinfo` VALUES ('7', '72', '204480', '1');
INSERT INTO `npcinfo` VALUES ('7', '73', '210240', '1');
INSERT INTO `npcinfo` VALUES ('7', '74', '216080', '1');
INSERT INTO `npcinfo` VALUES ('7', '75', '222000', '1');
INSERT INTO `npcinfo` VALUES ('7', '76', '228000', '1');
INSERT INTO `npcinfo` VALUES ('7', '77', '234080', '1');
INSERT INTO `npcinfo` VALUES ('7', '78', '240240', '1');
INSERT INTO `npcinfo` VALUES ('7', '79', '246480', '1');
INSERT INTO `npcinfo` VALUES ('7', '80', '252800', '1');
INSERT INTO `npcinfo` VALUES ('7', '81', '259200', '1');
INSERT INTO `npcinfo` VALUES ('7', '82', '265680', '1');
INSERT INTO `npcinfo` VALUES ('7', '83', '272240', '1');
INSERT INTO `npcinfo` VALUES ('7', '84', '278880', '1');
INSERT INTO `npcinfo` VALUES ('7', '85', '285600', '1');
INSERT INTO `npcinfo` VALUES ('7', '86', '292400', '1');
INSERT INTO `npcinfo` VALUES ('7', '87', '299280', '1');
INSERT INTO `npcinfo` VALUES ('7', '88', '306240', '1');
INSERT INTO `npcinfo` VALUES ('7', '89', '313280', '1');
INSERT INTO `npcinfo` VALUES ('7', '90', '320400', '1');
INSERT INTO `npcinfo` VALUES ('7', '91', '327600', '1');
INSERT INTO `npcinfo` VALUES ('7', '92', '334880', '1');
INSERT INTO `npcinfo` VALUES ('7', '93', '342240', '1');
INSERT INTO `npcinfo` VALUES ('7', '94', '349680', '1');
INSERT INTO `npcinfo` VALUES ('7', '95', '357200', '1');
INSERT INTO `npcinfo` VALUES ('7', '96', '364800', '1');
INSERT INTO `npcinfo` VALUES ('7', '97', '372480', '1');
INSERT INTO `npcinfo` VALUES ('7', '98', '380240', '1');
INSERT INTO `npcinfo` VALUES ('7', '99', '388080', '1');
INSERT INTO `npcinfo` VALUES ('7', '100', '396000', '1');
INSERT INTO `npcinfo` VALUES ('7', '101', '404000', '1');
INSERT INTO `npcinfo` VALUES ('7', '102', '412080', '1');
INSERT INTO `npcinfo` VALUES ('7', '103', '420240', '1');
INSERT INTO `npcinfo` VALUES ('7', '104', '428480', '1');
INSERT INTO `npcinfo` VALUES ('7', '105', '436800', '1');
INSERT INTO `npcinfo` VALUES ('7', '106', '445200', '1');
INSERT INTO `npcinfo` VALUES ('7', '107', '453680', '1');
INSERT INTO `npcinfo` VALUES ('7', '108', '462240', '1');
INSERT INTO `npcinfo` VALUES ('7', '109', '470880', '1');
INSERT INTO `npcinfo` VALUES ('7', '110', '479600', '1');
INSERT INTO `npcinfo` VALUES ('7', '111', '488400', '1');
INSERT INTO `npcinfo` VALUES ('7', '112', '497280', '1');
INSERT INTO `npcinfo` VALUES ('7', '113', '506240', '1');
INSERT INTO `npcinfo` VALUES ('7', '114', '515280', '1');
INSERT INTO `npcinfo` VALUES ('7', '115', '524400', '1');
INSERT INTO `npcinfo` VALUES ('7', '116', '533600', '1');
INSERT INTO `npcinfo` VALUES ('7', '117', '542880', '1');
INSERT INTO `npcinfo` VALUES ('7', '118', '552240', '1');
INSERT INTO `npcinfo` VALUES ('7', '119', '561680', '1');
INSERT INTO `npcinfo` VALUES ('7', '120', '571200', '1');
INSERT INTO `npcinfo` VALUES ('7', '121', '580800', '1');
INSERT INTO `npcinfo` VALUES ('7', '122', '590480', '1');
INSERT INTO `npcinfo` VALUES ('7', '123', '600240', '1');
INSERT INTO `npcinfo` VALUES ('7', '124', '610080', '1');
INSERT INTO `npcinfo` VALUES ('7', '125', '620000', '1');
INSERT INTO `npcinfo` VALUES ('7', '126', '630000', '1');
INSERT INTO `npcinfo` VALUES ('7', '127', '640080', '1');
INSERT INTO `npcinfo` VALUES ('7', '128', '650240', '1');
INSERT INTO `npcinfo` VALUES ('7', '129', '660480', '1');
INSERT INTO `npcinfo` VALUES ('7', '130', '670800', '1');
INSERT INTO `npcinfo` VALUES ('7', '131', '681200', '1');
INSERT INTO `npcinfo` VALUES ('7', '132', '691680', '1');
INSERT INTO `npcinfo` VALUES ('7', '133', '702240', '1');
INSERT INTO `npcinfo` VALUES ('7', '134', '712880', '1');
INSERT INTO `npcinfo` VALUES ('7', '135', '723600', '1');
INSERT INTO `npcinfo` VALUES ('7', '136', '734400', '1');
INSERT INTO `npcinfo` VALUES ('7', '137', '745280', '1');
INSERT INTO `npcinfo` VALUES ('7', '138', '756240', '1');
INSERT INTO `npcinfo` VALUES ('7', '139', '767280', '1');
INSERT INTO `npcinfo` VALUES ('7', '140', '778400', '1');
INSERT INTO `npcinfo` VALUES ('7', '141', '789600', '1');
INSERT INTO `npcinfo` VALUES ('7', '142', '800880', '1');
INSERT INTO `npcinfo` VALUES ('7', '143', '812240', '1');
INSERT INTO `npcinfo` VALUES ('7', '144', '823680', '1');
INSERT INTO `npcinfo` VALUES ('7', '145', '835200', '1');
INSERT INTO `npcinfo` VALUES ('7', '146', '846800', '1');
INSERT INTO `npcinfo` VALUES ('7', '147', '858480', '1');
INSERT INTO `npcinfo` VALUES ('7', '148', '870240', '1');
INSERT INTO `npcinfo` VALUES ('7', '149', '882080', '1');
INSERT INTO `npcinfo` VALUES ('7', '150', '894000', '1');
INSERT INTO `npcinfo` VALUES ('7', '151', '906000', '1');
INSERT INTO `npcinfo` VALUES ('7', '152', '918080', '1');
INSERT INTO `npcinfo` VALUES ('7', '153', '930240', '1');
INSERT INTO `npcinfo` VALUES ('7', '154', '942480', '1');
INSERT INTO `npcinfo` VALUES ('7', '155', '954800', '1');
INSERT INTO `npcinfo` VALUES ('7', '156', '967200', '1');
INSERT INTO `npcinfo` VALUES ('7', '157', '979680', '1');
INSERT INTO `npcinfo` VALUES ('7', '158', '992240', '1');
INSERT INTO `npcinfo` VALUES ('7', '159', '1004880', '1');
INSERT INTO `npcinfo` VALUES ('7', '160', '1017600', '1');
INSERT INTO `npcinfo` VALUES ('7', '161', '1030400', '1');
INSERT INTO `npcinfo` VALUES ('7', '162', '1043280', '1');
INSERT INTO `npcinfo` VALUES ('7', '163', '1056240', '1');
INSERT INTO `npcinfo` VALUES ('7', '164', '1069280', '1');
INSERT INTO `npcinfo` VALUES ('7', '165', '1082400', '1');
INSERT INTO `npcinfo` VALUES ('7', '166', '1095600', '1');
INSERT INTO `npcinfo` VALUES ('7', '167', '1108880', '1');
INSERT INTO `npcinfo` VALUES ('7', '168', '1122240', '1');
INSERT INTO `npcinfo` VALUES ('7', '169', '1135680', '1');
INSERT INTO `npcinfo` VALUES ('7', '170', '1149200', '1');
INSERT INTO `npcinfo` VALUES ('7', '171', '1162800', '1');
INSERT INTO `npcinfo` VALUES ('7', '172', '1176480', '1');
INSERT INTO `npcinfo` VALUES ('7', '173', '1190240', '1');
INSERT INTO `npcinfo` VALUES ('7', '174', '1204080', '1');
INSERT INTO `npcinfo` VALUES ('7', '175', '1218000', '1');
INSERT INTO `npcinfo` VALUES ('7', '176', '1232000', '1');
INSERT INTO `npcinfo` VALUES ('7', '177', '1246080', '1');
INSERT INTO `npcinfo` VALUES ('7', '178', '1260240', '1');
INSERT INTO `npcinfo` VALUES ('7', '179', '1274480', '1');
INSERT INTO `npcinfo` VALUES ('7', '180', '1288800', '1');
INSERT INTO `npcinfo` VALUES ('7', '181', '1303200', '1');
INSERT INTO `npcinfo` VALUES ('7', '182', '1317680', '1');
INSERT INTO `npcinfo` VALUES ('7', '183', '1332240', '1');
INSERT INTO `npcinfo` VALUES ('7', '184', '1346880', '1');
INSERT INTO `npcinfo` VALUES ('7', '185', '1361600', '1');
INSERT INTO `npcinfo` VALUES ('7', '186', '1376400', '1');
INSERT INTO `npcinfo` VALUES ('7', '187', '1391280', '1');
INSERT INTO `npcinfo` VALUES ('7', '188', '1406240', '1');
INSERT INTO `npcinfo` VALUES ('7', '189', '1421280', '1');
INSERT INTO `npcinfo` VALUES ('7', '190', '1436400', '1');
INSERT INTO `npcinfo` VALUES ('7', '191', '1451600', '1');
INSERT INTO `npcinfo` VALUES ('7', '192', '1466880', '1');
INSERT INTO `npcinfo` VALUES ('7', '193', '1482240', '1');
INSERT INTO `npcinfo` VALUES ('7', '194', '1497680', '1');
INSERT INTO `npcinfo` VALUES ('7', '195', '1513200', '1');
INSERT INTO `npcinfo` VALUES ('7', '196', '1528800', '1');
INSERT INTO `npcinfo` VALUES ('7', '197', '1544480', '1');
INSERT INTO `npcinfo` VALUES ('7', '198', '1560240', '1');
INSERT INTO `npcinfo` VALUES ('7', '199', '1576080', '1');
INSERT INTO `npcinfo` VALUES ('7', '200', '1592000', '1');
INSERT INTO `npcinfo` VALUES ('7', '201', '1608000', '1');
INSERT INTO `npcinfo` VALUES ('7', '202', '1624080', '1');
INSERT INTO `npcinfo` VALUES ('7', '203', '1640240', '1');
INSERT INTO `npcinfo` VALUES ('7', '204', '1656480', '1');
INSERT INTO `npcinfo` VALUES ('7', '205', '1672800', '1');
INSERT INTO `npcinfo` VALUES ('7', '206', '1689200', '1');
INSERT INTO `npcinfo` VALUES ('7', '207', '1705680', '1');
INSERT INTO `npcinfo` VALUES ('7', '208', '1722240', '1');
INSERT INTO `npcinfo` VALUES ('7', '209', '1738880', '1');
INSERT INTO `npcinfo` VALUES ('7', '210', '1755600', '1');
INSERT INTO `npcinfo` VALUES ('7', '211', '1772400', '1');
INSERT INTO `npcinfo` VALUES ('7', '212', '1789280', '1');
INSERT INTO `npcinfo` VALUES ('7', '213', '1806240', '1');
INSERT INTO `npcinfo` VALUES ('7', '214', '1823280', '1');
INSERT INTO `npcinfo` VALUES ('7', '215', '1840400', '1');
INSERT INTO `npcinfo` VALUES ('7', '216', '1857600', '1');
INSERT INTO `npcinfo` VALUES ('7', '217', '1874880', '1');
INSERT INTO `npcinfo` VALUES ('7', '218', '1892240', '1');
INSERT INTO `npcinfo` VALUES ('7', '219', '1909680', '1');
INSERT INTO `npcinfo` VALUES ('7', '220', '1927200', '1');
INSERT INTO `npcinfo` VALUES ('7', '221', '1944800', '1');
INSERT INTO `npcinfo` VALUES ('7', '222', '1962480', '1');
INSERT INTO `npcinfo` VALUES ('7', '223', '1980240', '1');
INSERT INTO `npcinfo` VALUES ('7', '224', '1998080', '1');
INSERT INTO `npcinfo` VALUES ('7', '225', '2016000', '1');
INSERT INTO `npcinfo` VALUES ('7', '226', '2034000', '1');
INSERT INTO `npcinfo` VALUES ('7', '227', '2052080', '1');
INSERT INTO `npcinfo` VALUES ('7', '228', '2070240', '1');
INSERT INTO `npcinfo` VALUES ('7', '229', '2088480', '1');
INSERT INTO `npcinfo` VALUES ('7', '230', '2106800', '1');
INSERT INTO `npcinfo` VALUES ('7', '231', '2125200', '1');
INSERT INTO `npcinfo` VALUES ('7', '232', '2143680', '1');
INSERT INTO `npcinfo` VALUES ('7', '233', '2162240', '1');
INSERT INTO `npcinfo` VALUES ('7', '234', '2180880', '1');
INSERT INTO `npcinfo` VALUES ('7', '235', '2199600', '1');
INSERT INTO `npcinfo` VALUES ('7', '236', '2218400', '1');
INSERT INTO `npcinfo` VALUES ('7', '237', '2237280', '1');
INSERT INTO `npcinfo` VALUES ('7', '238', '2256240', '1');
INSERT INTO `npcinfo` VALUES ('7', '239', '2275280', '1');
INSERT INTO `npcinfo` VALUES ('7', '240', '2294400', '1');
INSERT INTO `npcinfo` VALUES ('7', '241', '2313600', '1');
INSERT INTO `npcinfo` VALUES ('7', '242', '2332880', '1');
INSERT INTO `npcinfo` VALUES ('7', '243', '2352240', '1');
INSERT INTO `npcinfo` VALUES ('7', '244', '2371680', '1');
INSERT INTO `npcinfo` VALUES ('7', '245', '2391200', '1');
INSERT INTO `npcinfo` VALUES ('7', '246', '2410800', '1');
INSERT INTO `npcinfo` VALUES ('7', '247', '2430480', '1');
INSERT INTO `npcinfo` VALUES ('7', '248', '2450240', '1');
INSERT INTO `npcinfo` VALUES ('7', '249', '2470080', '1');
INSERT INTO `npcinfo` VALUES ('7', '250', '2490000', '1');
INSERT INTO `npcinfo` VALUES ('7', '251', '2510000', '1');
INSERT INTO `npcinfo` VALUES ('7', '252', '2530080', '1');
INSERT INTO `npcinfo` VALUES ('7', '253', '2550240', '1');
INSERT INTO `npcinfo` VALUES ('7', '254', '2570480', '1');
INSERT INTO `npcinfo` VALUES ('7', '255', '2590800', '1');
INSERT INTO `npcinfo` VALUES ('8', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('8', '2', '75', '1');
INSERT INTO `npcinfo` VALUES ('8', '3', '225', '1');
INSERT INTO `npcinfo` VALUES ('8', '4', '450', '1');
INSERT INTO `npcinfo` VALUES ('8', '5', '750', '1');
INSERT INTO `npcinfo` VALUES ('8', '6', '1125', '1');
INSERT INTO `npcinfo` VALUES ('8', '7', '1575', '1');
INSERT INTO `npcinfo` VALUES ('8', '8', '2100', '1');
INSERT INTO `npcinfo` VALUES ('8', '9', '2700', '1');
INSERT INTO `npcinfo` VALUES ('8', '10', '3375', '1');
INSERT INTO `npcinfo` VALUES ('8', '11', '4125', '1');
INSERT INTO `npcinfo` VALUES ('8', '12', '4950', '1');
INSERT INTO `npcinfo` VALUES ('8', '13', '5850', '1');
INSERT INTO `npcinfo` VALUES ('8', '14', '6825', '1');
INSERT INTO `npcinfo` VALUES ('8', '15', '7875', '1');
INSERT INTO `npcinfo` VALUES ('8', '16', '9000', '1');
INSERT INTO `npcinfo` VALUES ('8', '17', '10200', '1');
INSERT INTO `npcinfo` VALUES ('8', '18', '11475', '1');
INSERT INTO `npcinfo` VALUES ('8', '19', '12825', '1');
INSERT INTO `npcinfo` VALUES ('8', '20', '14250', '1');
INSERT INTO `npcinfo` VALUES ('8', '21', '15750', '1');
INSERT INTO `npcinfo` VALUES ('8', '22', '17325', '1');
INSERT INTO `npcinfo` VALUES ('8', '23', '18975', '1');
INSERT INTO `npcinfo` VALUES ('8', '24', '20700', '1');
INSERT INTO `npcinfo` VALUES ('8', '25', '22500', '1');
INSERT INTO `npcinfo` VALUES ('8', '26', '24375', '1');
INSERT INTO `npcinfo` VALUES ('8', '27', '26325', '1');
INSERT INTO `npcinfo` VALUES ('8', '28', '28350', '1');
INSERT INTO `npcinfo` VALUES ('8', '29', '30450', '1');
INSERT INTO `npcinfo` VALUES ('8', '30', '32625', '1');
INSERT INTO `npcinfo` VALUES ('8', '31', '34875', '1');
INSERT INTO `npcinfo` VALUES ('8', '32', '37200', '1');
INSERT INTO `npcinfo` VALUES ('8', '33', '39600', '1');
INSERT INTO `npcinfo` VALUES ('8', '34', '42075', '1');
INSERT INTO `npcinfo` VALUES ('8', '35', '44625', '1');
INSERT INTO `npcinfo` VALUES ('8', '36', '47250', '1');
INSERT INTO `npcinfo` VALUES ('8', '37', '49950', '1');
INSERT INTO `npcinfo` VALUES ('8', '38', '52725', '1');
INSERT INTO `npcinfo` VALUES ('8', '39', '55575', '1');
INSERT INTO `npcinfo` VALUES ('8', '40', '58500', '1');
INSERT INTO `npcinfo` VALUES ('8', '41', '61500', '1');
INSERT INTO `npcinfo` VALUES ('8', '42', '64575', '1');
INSERT INTO `npcinfo` VALUES ('8', '43', '67725', '1');
INSERT INTO `npcinfo` VALUES ('8', '44', '70950', '1');
INSERT INTO `npcinfo` VALUES ('8', '45', '74250', '1');
INSERT INTO `npcinfo` VALUES ('8', '46', '77625', '1');
INSERT INTO `npcinfo` VALUES ('8', '47', '81075', '1');
INSERT INTO `npcinfo` VALUES ('8', '48', '84600', '1');
INSERT INTO `npcinfo` VALUES ('8', '49', '88200', '1');
INSERT INTO `npcinfo` VALUES ('8', '50', '91875', '1');
INSERT INTO `npcinfo` VALUES ('8', '51', '95625', '1');
INSERT INTO `npcinfo` VALUES ('8', '52', '99450', '1');
INSERT INTO `npcinfo` VALUES ('8', '53', '103350', '1');
INSERT INTO `npcinfo` VALUES ('8', '54', '107325', '1');
INSERT INTO `npcinfo` VALUES ('8', '55', '111375', '1');
INSERT INTO `npcinfo` VALUES ('8', '56', '115500', '1');
INSERT INTO `npcinfo` VALUES ('8', '57', '119700', '1');
INSERT INTO `npcinfo` VALUES ('8', '58', '123975', '1');
INSERT INTO `npcinfo` VALUES ('8', '59', '128325', '1');
INSERT INTO `npcinfo` VALUES ('8', '60', '132750', '1');
INSERT INTO `npcinfo` VALUES ('8', '61', '137250', '1');
INSERT INTO `npcinfo` VALUES ('8', '62', '141825', '1');
INSERT INTO `npcinfo` VALUES ('8', '63', '146475', '1');
INSERT INTO `npcinfo` VALUES ('8', '64', '151200', '1');
INSERT INTO `npcinfo` VALUES ('8', '65', '156000', '1');
INSERT INTO `npcinfo` VALUES ('8', '66', '160875', '1');
INSERT INTO `npcinfo` VALUES ('8', '67', '165825', '1');
INSERT INTO `npcinfo` VALUES ('8', '68', '170850', '1');
INSERT INTO `npcinfo` VALUES ('8', '69', '175950', '1');
INSERT INTO `npcinfo` VALUES ('8', '70', '181125', '1');
INSERT INTO `npcinfo` VALUES ('8', '71', '186375', '1');
INSERT INTO `npcinfo` VALUES ('8', '72', '191700', '1');
INSERT INTO `npcinfo` VALUES ('8', '73', '197100', '1');
INSERT INTO `npcinfo` VALUES ('8', '74', '202575', '1');
INSERT INTO `npcinfo` VALUES ('8', '75', '208125', '1');
INSERT INTO `npcinfo` VALUES ('8', '76', '213750', '1');
INSERT INTO `npcinfo` VALUES ('8', '77', '219450', '1');
INSERT INTO `npcinfo` VALUES ('8', '78', '225225', '1');
INSERT INTO `npcinfo` VALUES ('8', '79', '231075', '1');
INSERT INTO `npcinfo` VALUES ('8', '80', '237000', '1');
INSERT INTO `npcinfo` VALUES ('8', '81', '243000', '1');
INSERT INTO `npcinfo` VALUES ('8', '82', '249075', '1');
INSERT INTO `npcinfo` VALUES ('8', '83', '255225', '1');
INSERT INTO `npcinfo` VALUES ('8', '84', '261450', '1');
INSERT INTO `npcinfo` VALUES ('8', '85', '267750', '1');
INSERT INTO `npcinfo` VALUES ('8', '86', '274125', '1');
INSERT INTO `npcinfo` VALUES ('8', '87', '280575', '1');
INSERT INTO `npcinfo` VALUES ('8', '88', '287100', '1');
INSERT INTO `npcinfo` VALUES ('8', '89', '293700', '1');
INSERT INTO `npcinfo` VALUES ('8', '90', '300375', '1');
INSERT INTO `npcinfo` VALUES ('8', '91', '307125', '1');
INSERT INTO `npcinfo` VALUES ('8', '92', '313950', '1');
INSERT INTO `npcinfo` VALUES ('8', '93', '320850', '1');
INSERT INTO `npcinfo` VALUES ('8', '94', '327825', '1');
INSERT INTO `npcinfo` VALUES ('8', '95', '334875', '1');
INSERT INTO `npcinfo` VALUES ('8', '96', '342000', '1');
INSERT INTO `npcinfo` VALUES ('8', '97', '349200', '1');
INSERT INTO `npcinfo` VALUES ('8', '98', '356475', '1');
INSERT INTO `npcinfo` VALUES ('8', '99', '363825', '1');
INSERT INTO `npcinfo` VALUES ('8', '100', '371250', '1');
INSERT INTO `npcinfo` VALUES ('8', '101', '378750', '1');
INSERT INTO `npcinfo` VALUES ('8', '102', '386325', '1');
INSERT INTO `npcinfo` VALUES ('8', '103', '393975', '1');
INSERT INTO `npcinfo` VALUES ('8', '104', '401700', '1');
INSERT INTO `npcinfo` VALUES ('8', '105', '409500', '1');
INSERT INTO `npcinfo` VALUES ('8', '106', '417375', '1');
INSERT INTO `npcinfo` VALUES ('8', '107', '425325', '1');
INSERT INTO `npcinfo` VALUES ('8', '108', '433350', '1');
INSERT INTO `npcinfo` VALUES ('8', '109', '441450', '1');
INSERT INTO `npcinfo` VALUES ('8', '110', '449625', '1');
INSERT INTO `npcinfo` VALUES ('8', '111', '457875', '1');
INSERT INTO `npcinfo` VALUES ('8', '112', '466200', '1');
INSERT INTO `npcinfo` VALUES ('8', '113', '474600', '1');
INSERT INTO `npcinfo` VALUES ('8', '114', '483075', '1');
INSERT INTO `npcinfo` VALUES ('8', '115', '491625', '1');
INSERT INTO `npcinfo` VALUES ('8', '116', '500250', '1');
INSERT INTO `npcinfo` VALUES ('8', '117', '508950', '1');
INSERT INTO `npcinfo` VALUES ('8', '118', '517725', '1');
INSERT INTO `npcinfo` VALUES ('8', '119', '526575', '1');
INSERT INTO `npcinfo` VALUES ('8', '120', '535500', '1');
INSERT INTO `npcinfo` VALUES ('8', '121', '544500', '1');
INSERT INTO `npcinfo` VALUES ('8', '122', '553575', '1');
INSERT INTO `npcinfo` VALUES ('8', '123', '562725', '1');
INSERT INTO `npcinfo` VALUES ('8', '124', '571950', '1');
INSERT INTO `npcinfo` VALUES ('8', '125', '581250', '1');
INSERT INTO `npcinfo` VALUES ('8', '126', '590625', '1');
INSERT INTO `npcinfo` VALUES ('8', '127', '600075', '1');
INSERT INTO `npcinfo` VALUES ('8', '128', '609600', '1');
INSERT INTO `npcinfo` VALUES ('8', '129', '619200', '1');
INSERT INTO `npcinfo` VALUES ('8', '130', '628875', '1');
INSERT INTO `npcinfo` VALUES ('8', '131', '638625', '1');
INSERT INTO `npcinfo` VALUES ('8', '132', '648450', '1');
INSERT INTO `npcinfo` VALUES ('8', '133', '658350', '1');
INSERT INTO `npcinfo` VALUES ('8', '134', '668325', '1');
INSERT INTO `npcinfo` VALUES ('8', '135', '678375', '1');
INSERT INTO `npcinfo` VALUES ('8', '136', '688500', '1');
INSERT INTO `npcinfo` VALUES ('8', '137', '698700', '1');
INSERT INTO `npcinfo` VALUES ('8', '138', '708975', '1');
INSERT INTO `npcinfo` VALUES ('8', '139', '719325', '1');
INSERT INTO `npcinfo` VALUES ('8', '140', '729750', '1');
INSERT INTO `npcinfo` VALUES ('8', '141', '740250', '1');
INSERT INTO `npcinfo` VALUES ('8', '142', '750825', '1');
INSERT INTO `npcinfo` VALUES ('8', '143', '761475', '1');
INSERT INTO `npcinfo` VALUES ('8', '144', '772200', '1');
INSERT INTO `npcinfo` VALUES ('8', '145', '783000', '1');
INSERT INTO `npcinfo` VALUES ('8', '146', '793875', '1');
INSERT INTO `npcinfo` VALUES ('8', '147', '804825', '1');
INSERT INTO `npcinfo` VALUES ('8', '148', '815850', '1');
INSERT INTO `npcinfo` VALUES ('8', '149', '826950', '1');
INSERT INTO `npcinfo` VALUES ('8', '150', '838125', '1');
INSERT INTO `npcinfo` VALUES ('8', '151', '849375', '1');
INSERT INTO `npcinfo` VALUES ('8', '152', '860700', '1');
INSERT INTO `npcinfo` VALUES ('8', '153', '872100', '1');
INSERT INTO `npcinfo` VALUES ('8', '154', '883575', '1');
INSERT INTO `npcinfo` VALUES ('8', '155', '895125', '1');
INSERT INTO `npcinfo` VALUES ('8', '156', '906750', '1');
INSERT INTO `npcinfo` VALUES ('8', '157', '918450', '1');
INSERT INTO `npcinfo` VALUES ('8', '158', '930225', '1');
INSERT INTO `npcinfo` VALUES ('8', '159', '942075', '1');
INSERT INTO `npcinfo` VALUES ('8', '160', '954000', '1');
INSERT INTO `npcinfo` VALUES ('8', '161', '966000', '1');
INSERT INTO `npcinfo` VALUES ('8', '162', '978075', '1');
INSERT INTO `npcinfo` VALUES ('8', '163', '990225', '1');
INSERT INTO `npcinfo` VALUES ('8', '164', '1002450', '1');
INSERT INTO `npcinfo` VALUES ('8', '165', '1014750', '1');
INSERT INTO `npcinfo` VALUES ('8', '166', '1027125', '1');
INSERT INTO `npcinfo` VALUES ('8', '167', '1039575', '1');
INSERT INTO `npcinfo` VALUES ('8', '168', '1052100', '1');
INSERT INTO `npcinfo` VALUES ('8', '169', '1064700', '1');
INSERT INTO `npcinfo` VALUES ('8', '170', '1077375', '1');
INSERT INTO `npcinfo` VALUES ('8', '171', '1090125', '1');
INSERT INTO `npcinfo` VALUES ('8', '172', '1102950', '1');
INSERT INTO `npcinfo` VALUES ('8', '173', '1115850', '1');
INSERT INTO `npcinfo` VALUES ('8', '174', '1128825', '1');
INSERT INTO `npcinfo` VALUES ('8', '175', '1141875', '1');
INSERT INTO `npcinfo` VALUES ('8', '176', '1155000', '1');
INSERT INTO `npcinfo` VALUES ('8', '177', '1168200', '1');
INSERT INTO `npcinfo` VALUES ('8', '178', '1181475', '1');
INSERT INTO `npcinfo` VALUES ('8', '179', '1194825', '1');
INSERT INTO `npcinfo` VALUES ('8', '180', '1208250', '1');
INSERT INTO `npcinfo` VALUES ('8', '181', '1221750', '1');
INSERT INTO `npcinfo` VALUES ('8', '182', '1235325', '1');
INSERT INTO `npcinfo` VALUES ('8', '183', '1248975', '1');
INSERT INTO `npcinfo` VALUES ('8', '184', '1262700', '1');
INSERT INTO `npcinfo` VALUES ('8', '185', '1276500', '1');
INSERT INTO `npcinfo` VALUES ('8', '186', '1290375', '1');
INSERT INTO `npcinfo` VALUES ('8', '187', '1304325', '1');
INSERT INTO `npcinfo` VALUES ('8', '188', '1318350', '1');
INSERT INTO `npcinfo` VALUES ('8', '189', '1332450', '1');
INSERT INTO `npcinfo` VALUES ('8', '190', '1346625', '1');
INSERT INTO `npcinfo` VALUES ('8', '191', '1360875', '1');
INSERT INTO `npcinfo` VALUES ('8', '192', '1375200', '1');
INSERT INTO `npcinfo` VALUES ('8', '193', '1389600', '1');
INSERT INTO `npcinfo` VALUES ('8', '194', '1404075', '1');
INSERT INTO `npcinfo` VALUES ('8', '195', '1418625', '1');
INSERT INTO `npcinfo` VALUES ('8', '196', '1433250', '1');
INSERT INTO `npcinfo` VALUES ('8', '197', '1447950', '1');
INSERT INTO `npcinfo` VALUES ('8', '198', '1462725', '1');
INSERT INTO `npcinfo` VALUES ('8', '199', '1477575', '1');
INSERT INTO `npcinfo` VALUES ('8', '200', '1492500', '1');
INSERT INTO `npcinfo` VALUES ('8', '201', '1507500', '1');
INSERT INTO `npcinfo` VALUES ('8', '202', '1522575', '1');
INSERT INTO `npcinfo` VALUES ('8', '203', '1537725', '1');
INSERT INTO `npcinfo` VALUES ('8', '204', '1552950', '1');
INSERT INTO `npcinfo` VALUES ('8', '205', '1568250', '1');
INSERT INTO `npcinfo` VALUES ('8', '206', '1583625', '1');
INSERT INTO `npcinfo` VALUES ('8', '207', '1599075', '1');
INSERT INTO `npcinfo` VALUES ('8', '208', '1614600', '1');
INSERT INTO `npcinfo` VALUES ('8', '209', '1630200', '1');
INSERT INTO `npcinfo` VALUES ('8', '210', '1645875', '1');
INSERT INTO `npcinfo` VALUES ('8', '211', '1661625', '1');
INSERT INTO `npcinfo` VALUES ('8', '212', '1677450', '1');
INSERT INTO `npcinfo` VALUES ('8', '213', '1693350', '1');
INSERT INTO `npcinfo` VALUES ('8', '214', '1709325', '1');
INSERT INTO `npcinfo` VALUES ('8', '215', '1725375', '1');
INSERT INTO `npcinfo` VALUES ('8', '216', '1741500', '1');
INSERT INTO `npcinfo` VALUES ('8', '217', '1757700', '1');
INSERT INTO `npcinfo` VALUES ('8', '218', '1773975', '1');
INSERT INTO `npcinfo` VALUES ('8', '219', '1790325', '1');
INSERT INTO `npcinfo` VALUES ('8', '220', '1806750', '1');
INSERT INTO `npcinfo` VALUES ('8', '221', '1823250', '1');
INSERT INTO `npcinfo` VALUES ('8', '222', '1839825', '1');
INSERT INTO `npcinfo` VALUES ('8', '223', '1856475', '1');
INSERT INTO `npcinfo` VALUES ('8', '224', '1873200', '1');
INSERT INTO `npcinfo` VALUES ('8', '225', '1890000', '1');
INSERT INTO `npcinfo` VALUES ('8', '226', '1906875', '1');
INSERT INTO `npcinfo` VALUES ('8', '227', '1923825', '1');
INSERT INTO `npcinfo` VALUES ('8', '228', '1940850', '1');
INSERT INTO `npcinfo` VALUES ('8', '229', '1957950', '1');
INSERT INTO `npcinfo` VALUES ('8', '230', '1975125', '1');
INSERT INTO `npcinfo` VALUES ('8', '231', '1992375', '1');
INSERT INTO `npcinfo` VALUES ('8', '232', '2009700', '1');
INSERT INTO `npcinfo` VALUES ('8', '233', '2027100', '1');
INSERT INTO `npcinfo` VALUES ('8', '234', '2044575', '1');
INSERT INTO `npcinfo` VALUES ('8', '235', '2062125', '1');
INSERT INTO `npcinfo` VALUES ('8', '236', '2079750', '1');
INSERT INTO `npcinfo` VALUES ('8', '237', '2097450', '1');
INSERT INTO `npcinfo` VALUES ('8', '238', '2115225', '1');
INSERT INTO `npcinfo` VALUES ('8', '239', '2133075', '1');
INSERT INTO `npcinfo` VALUES ('8', '240', '2151000', '1');
INSERT INTO `npcinfo` VALUES ('8', '241', '2169000', '1');
INSERT INTO `npcinfo` VALUES ('8', '242', '2187075', '1');
INSERT INTO `npcinfo` VALUES ('8', '243', '2205225', '1');
INSERT INTO `npcinfo` VALUES ('8', '244', '2223450', '1');
INSERT INTO `npcinfo` VALUES ('8', '245', '2241750', '1');
INSERT INTO `npcinfo` VALUES ('8', '246', '2260125', '1');
INSERT INTO `npcinfo` VALUES ('8', '247', '2278575', '1');
INSERT INTO `npcinfo` VALUES ('8', '248', '2297100', '1');
INSERT INTO `npcinfo` VALUES ('8', '249', '2315700', '1');
INSERT INTO `npcinfo` VALUES ('8', '250', '2334375', '1');
INSERT INTO `npcinfo` VALUES ('8', '251', '2353125', '1');
INSERT INTO `npcinfo` VALUES ('8', '252', '2371950', '1');
INSERT INTO `npcinfo` VALUES ('8', '253', '2390850', '1');
INSERT INTO `npcinfo` VALUES ('8', '254', '2409825', '1');
INSERT INTO `npcinfo` VALUES ('8', '255', '2428875', '1');
INSERT INTO `npcinfo` VALUES ('9', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('9', '2', '80', '1');
INSERT INTO `npcinfo` VALUES ('9', '3', '240', '1');
INSERT INTO `npcinfo` VALUES ('9', '4', '480', '1');
INSERT INTO `npcinfo` VALUES ('9', '5', '800', '1');
INSERT INTO `npcinfo` VALUES ('9', '6', '1200', '1');
INSERT INTO `npcinfo` VALUES ('9', '7', '1680', '1');
INSERT INTO `npcinfo` VALUES ('9', '8', '2240', '1');
INSERT INTO `npcinfo` VALUES ('9', '9', '2880', '1');
INSERT INTO `npcinfo` VALUES ('9', '10', '3600', '1');
INSERT INTO `npcinfo` VALUES ('9', '11', '4400', '1');
INSERT INTO `npcinfo` VALUES ('9', '12', '5280', '1');
INSERT INTO `npcinfo` VALUES ('9', '13', '6240', '1');
INSERT INTO `npcinfo` VALUES ('9', '14', '7280', '1');
INSERT INTO `npcinfo` VALUES ('9', '15', '8400', '1');
INSERT INTO `npcinfo` VALUES ('9', '16', '9600', '1');
INSERT INTO `npcinfo` VALUES ('9', '17', '10880', '1');
INSERT INTO `npcinfo` VALUES ('9', '18', '12240', '1');
INSERT INTO `npcinfo` VALUES ('9', '19', '13680', '1');
INSERT INTO `npcinfo` VALUES ('9', '20', '15200', '1');
INSERT INTO `npcinfo` VALUES ('9', '21', '16800', '1');
INSERT INTO `npcinfo` VALUES ('9', '22', '18480', '1');
INSERT INTO `npcinfo` VALUES ('9', '23', '20240', '1');
INSERT INTO `npcinfo` VALUES ('9', '24', '22080', '1');
INSERT INTO `npcinfo` VALUES ('9', '25', '24000', '1');
INSERT INTO `npcinfo` VALUES ('9', '26', '26000', '1');
INSERT INTO `npcinfo` VALUES ('9', '27', '28080', '1');
INSERT INTO `npcinfo` VALUES ('9', '28', '30240', '1');
INSERT INTO `npcinfo` VALUES ('9', '29', '32480', '1');
INSERT INTO `npcinfo` VALUES ('9', '30', '34800', '1');
INSERT INTO `npcinfo` VALUES ('9', '31', '37200', '1');
INSERT INTO `npcinfo` VALUES ('9', '32', '39680', '1');
INSERT INTO `npcinfo` VALUES ('9', '33', '42240', '1');
INSERT INTO `npcinfo` VALUES ('9', '34', '44880', '1');
INSERT INTO `npcinfo` VALUES ('9', '35', '47600', '1');
INSERT INTO `npcinfo` VALUES ('9', '36', '50400', '1');
INSERT INTO `npcinfo` VALUES ('9', '37', '53280', '1');
INSERT INTO `npcinfo` VALUES ('9', '38', '56240', '1');
INSERT INTO `npcinfo` VALUES ('9', '39', '59280', '1');
INSERT INTO `npcinfo` VALUES ('9', '40', '62400', '1');
INSERT INTO `npcinfo` VALUES ('9', '41', '65600', '1');
INSERT INTO `npcinfo` VALUES ('9', '42', '68880', '1');
INSERT INTO `npcinfo` VALUES ('9', '43', '72240', '1');
INSERT INTO `npcinfo` VALUES ('9', '44', '75680', '1');
INSERT INTO `npcinfo` VALUES ('9', '45', '79200', '1');
INSERT INTO `npcinfo` VALUES ('9', '46', '82800', '1');
INSERT INTO `npcinfo` VALUES ('9', '47', '86480', '1');
INSERT INTO `npcinfo` VALUES ('9', '48', '90240', '1');
INSERT INTO `npcinfo` VALUES ('9', '49', '94080', '1');
INSERT INTO `npcinfo` VALUES ('9', '50', '98000', '1');
INSERT INTO `npcinfo` VALUES ('9', '51', '102000', '1');
INSERT INTO `npcinfo` VALUES ('9', '52', '106080', '1');
INSERT INTO `npcinfo` VALUES ('9', '53', '110240', '1');
INSERT INTO `npcinfo` VALUES ('9', '54', '114480', '1');
INSERT INTO `npcinfo` VALUES ('9', '55', '118800', '1');
INSERT INTO `npcinfo` VALUES ('9', '56', '123200', '1');
INSERT INTO `npcinfo` VALUES ('9', '57', '127680', '1');
INSERT INTO `npcinfo` VALUES ('9', '58', '132240', '1');
INSERT INTO `npcinfo` VALUES ('9', '59', '136880', '1');
INSERT INTO `npcinfo` VALUES ('9', '60', '141600', '1');
INSERT INTO `npcinfo` VALUES ('9', '61', '146400', '1');
INSERT INTO `npcinfo` VALUES ('9', '62', '151280', '1');
INSERT INTO `npcinfo` VALUES ('9', '63', '156240', '1');
INSERT INTO `npcinfo` VALUES ('9', '64', '161280', '1');
INSERT INTO `npcinfo` VALUES ('9', '65', '166400', '1');
INSERT INTO `npcinfo` VALUES ('9', '66', '171600', '1');
INSERT INTO `npcinfo` VALUES ('9', '67', '176880', '1');
INSERT INTO `npcinfo` VALUES ('9', '68', '182240', '1');
INSERT INTO `npcinfo` VALUES ('9', '69', '187680', '1');
INSERT INTO `npcinfo` VALUES ('9', '70', '193200', '1');
INSERT INTO `npcinfo` VALUES ('9', '71', '198800', '1');
INSERT INTO `npcinfo` VALUES ('9', '72', '204480', '1');
INSERT INTO `npcinfo` VALUES ('9', '73', '210240', '1');
INSERT INTO `npcinfo` VALUES ('9', '74', '216080', '1');
INSERT INTO `npcinfo` VALUES ('9', '75', '222000', '1');
INSERT INTO `npcinfo` VALUES ('9', '76', '228000', '1');
INSERT INTO `npcinfo` VALUES ('9', '77', '234080', '1');
INSERT INTO `npcinfo` VALUES ('9', '78', '240240', '1');
INSERT INTO `npcinfo` VALUES ('9', '79', '246480', '1');
INSERT INTO `npcinfo` VALUES ('9', '80', '252800', '1');
INSERT INTO `npcinfo` VALUES ('9', '81', '259200', '1');
INSERT INTO `npcinfo` VALUES ('9', '82', '265680', '1');
INSERT INTO `npcinfo` VALUES ('9', '83', '272240', '1');
INSERT INTO `npcinfo` VALUES ('9', '84', '278880', '1');
INSERT INTO `npcinfo` VALUES ('9', '85', '285600', '1');
INSERT INTO `npcinfo` VALUES ('9', '86', '292400', '1');
INSERT INTO `npcinfo` VALUES ('9', '87', '299280', '1');
INSERT INTO `npcinfo` VALUES ('9', '88', '306240', '1');
INSERT INTO `npcinfo` VALUES ('9', '89', '313280', '1');
INSERT INTO `npcinfo` VALUES ('9', '90', '320400', '1');
INSERT INTO `npcinfo` VALUES ('9', '91', '327600', '1');
INSERT INTO `npcinfo` VALUES ('9', '92', '334880', '1');
INSERT INTO `npcinfo` VALUES ('9', '93', '342240', '1');
INSERT INTO `npcinfo` VALUES ('9', '94', '349680', '1');
INSERT INTO `npcinfo` VALUES ('9', '95', '357200', '1');
INSERT INTO `npcinfo` VALUES ('9', '96', '364800', '1');
INSERT INTO `npcinfo` VALUES ('9', '97', '372480', '1');
INSERT INTO `npcinfo` VALUES ('9', '98', '380240', '1');
INSERT INTO `npcinfo` VALUES ('9', '99', '388080', '1');
INSERT INTO `npcinfo` VALUES ('9', '100', '396000', '1');
INSERT INTO `npcinfo` VALUES ('9', '101', '404000', '1');
INSERT INTO `npcinfo` VALUES ('9', '102', '412080', '1');
INSERT INTO `npcinfo` VALUES ('9', '103', '420240', '1');
INSERT INTO `npcinfo` VALUES ('9', '104', '428480', '1');
INSERT INTO `npcinfo` VALUES ('9', '105', '436800', '1');
INSERT INTO `npcinfo` VALUES ('9', '106', '445200', '1');
INSERT INTO `npcinfo` VALUES ('9', '107', '453680', '1');
INSERT INTO `npcinfo` VALUES ('9', '108', '462240', '1');
INSERT INTO `npcinfo` VALUES ('9', '109', '470880', '1');
INSERT INTO `npcinfo` VALUES ('9', '110', '479600', '1');
INSERT INTO `npcinfo` VALUES ('9', '111', '488400', '1');
INSERT INTO `npcinfo` VALUES ('9', '112', '497280', '1');
INSERT INTO `npcinfo` VALUES ('9', '113', '506240', '1');
INSERT INTO `npcinfo` VALUES ('9', '114', '515280', '1');
INSERT INTO `npcinfo` VALUES ('9', '115', '524400', '1');
INSERT INTO `npcinfo` VALUES ('9', '116', '533600', '1');
INSERT INTO `npcinfo` VALUES ('9', '117', '542880', '1');
INSERT INTO `npcinfo` VALUES ('9', '118', '552240', '1');
INSERT INTO `npcinfo` VALUES ('9', '119', '561680', '1');
INSERT INTO `npcinfo` VALUES ('9', '120', '571200', '1');
INSERT INTO `npcinfo` VALUES ('9', '121', '580800', '1');
INSERT INTO `npcinfo` VALUES ('9', '122', '590480', '1');
INSERT INTO `npcinfo` VALUES ('9', '123', '600240', '1');
INSERT INTO `npcinfo` VALUES ('9', '124', '610080', '1');
INSERT INTO `npcinfo` VALUES ('9', '125', '620000', '1');
INSERT INTO `npcinfo` VALUES ('9', '126', '630000', '1');
INSERT INTO `npcinfo` VALUES ('9', '127', '640080', '1');
INSERT INTO `npcinfo` VALUES ('9', '128', '650240', '1');
INSERT INTO `npcinfo` VALUES ('9', '129', '660480', '1');
INSERT INTO `npcinfo` VALUES ('9', '130', '670800', '1');
INSERT INTO `npcinfo` VALUES ('9', '131', '681200', '1');
INSERT INTO `npcinfo` VALUES ('9', '132', '691680', '1');
INSERT INTO `npcinfo` VALUES ('9', '133', '702240', '1');
INSERT INTO `npcinfo` VALUES ('9', '134', '712880', '1');
INSERT INTO `npcinfo` VALUES ('9', '135', '723600', '1');
INSERT INTO `npcinfo` VALUES ('9', '136', '734400', '1');
INSERT INTO `npcinfo` VALUES ('9', '137', '745280', '1');
INSERT INTO `npcinfo` VALUES ('9', '138', '756240', '1');
INSERT INTO `npcinfo` VALUES ('9', '139', '767280', '1');
INSERT INTO `npcinfo` VALUES ('9', '140', '778400', '1');
INSERT INTO `npcinfo` VALUES ('9', '141', '789600', '1');
INSERT INTO `npcinfo` VALUES ('9', '142', '800880', '1');
INSERT INTO `npcinfo` VALUES ('9', '143', '812240', '1');
INSERT INTO `npcinfo` VALUES ('9', '144', '823680', '1');
INSERT INTO `npcinfo` VALUES ('9', '145', '835200', '1');
INSERT INTO `npcinfo` VALUES ('9', '146', '846800', '1');
INSERT INTO `npcinfo` VALUES ('9', '147', '858480', '1');
INSERT INTO `npcinfo` VALUES ('9', '148', '870240', '1');
INSERT INTO `npcinfo` VALUES ('9', '149', '882080', '1');
INSERT INTO `npcinfo` VALUES ('9', '150', '894000', '1');
INSERT INTO `npcinfo` VALUES ('9', '151', '906000', '1');
INSERT INTO `npcinfo` VALUES ('9', '152', '918080', '1');
INSERT INTO `npcinfo` VALUES ('9', '153', '930240', '1');
INSERT INTO `npcinfo` VALUES ('9', '154', '942480', '1');
INSERT INTO `npcinfo` VALUES ('9', '155', '954800', '1');
INSERT INTO `npcinfo` VALUES ('9', '156', '967200', '1');
INSERT INTO `npcinfo` VALUES ('9', '157', '979680', '1');
INSERT INTO `npcinfo` VALUES ('9', '158', '992240', '1');
INSERT INTO `npcinfo` VALUES ('9', '159', '1004880', '1');
INSERT INTO `npcinfo` VALUES ('9', '160', '1017600', '1');
INSERT INTO `npcinfo` VALUES ('9', '161', '1030400', '1');
INSERT INTO `npcinfo` VALUES ('9', '162', '1043280', '1');
INSERT INTO `npcinfo` VALUES ('9', '163', '1056240', '1');
INSERT INTO `npcinfo` VALUES ('9', '164', '1069280', '1');
INSERT INTO `npcinfo` VALUES ('9', '165', '1082400', '1');
INSERT INTO `npcinfo` VALUES ('9', '166', '1095600', '1');
INSERT INTO `npcinfo` VALUES ('9', '167', '1108880', '1');
INSERT INTO `npcinfo` VALUES ('9', '168', '1122240', '1');
INSERT INTO `npcinfo` VALUES ('9', '169', '1135680', '1');
INSERT INTO `npcinfo` VALUES ('9', '170', '1149200', '1');
INSERT INTO `npcinfo` VALUES ('9', '171', '1162800', '1');
INSERT INTO `npcinfo` VALUES ('9', '172', '1176480', '1');
INSERT INTO `npcinfo` VALUES ('9', '173', '1190240', '1');
INSERT INTO `npcinfo` VALUES ('9', '174', '1204080', '1');
INSERT INTO `npcinfo` VALUES ('9', '175', '1218000', '1');
INSERT INTO `npcinfo` VALUES ('9', '176', '1232000', '1');
INSERT INTO `npcinfo` VALUES ('9', '177', '1246080', '1');
INSERT INTO `npcinfo` VALUES ('9', '178', '1260240', '1');
INSERT INTO `npcinfo` VALUES ('9', '179', '1274480', '1');
INSERT INTO `npcinfo` VALUES ('9', '180', '1288800', '1');
INSERT INTO `npcinfo` VALUES ('9', '181', '1303200', '1');
INSERT INTO `npcinfo` VALUES ('9', '182', '1317680', '1');
INSERT INTO `npcinfo` VALUES ('9', '183', '1332240', '1');
INSERT INTO `npcinfo` VALUES ('9', '184', '1346880', '1');
INSERT INTO `npcinfo` VALUES ('9', '185', '1361600', '1');
INSERT INTO `npcinfo` VALUES ('9', '186', '1376400', '1');
INSERT INTO `npcinfo` VALUES ('9', '187', '1391280', '1');
INSERT INTO `npcinfo` VALUES ('9', '188', '1406240', '1');
INSERT INTO `npcinfo` VALUES ('9', '189', '1421280', '1');
INSERT INTO `npcinfo` VALUES ('9', '190', '1436400', '1');
INSERT INTO `npcinfo` VALUES ('9', '191', '1451600', '1');
INSERT INTO `npcinfo` VALUES ('9', '192', '1466880', '1');
INSERT INTO `npcinfo` VALUES ('9', '193', '1482240', '1');
INSERT INTO `npcinfo` VALUES ('9', '194', '1497680', '1');
INSERT INTO `npcinfo` VALUES ('9', '195', '1513200', '1');
INSERT INTO `npcinfo` VALUES ('9', '196', '1528800', '1');
INSERT INTO `npcinfo` VALUES ('9', '197', '1544480', '1');
INSERT INTO `npcinfo` VALUES ('9', '198', '1560240', '1');
INSERT INTO `npcinfo` VALUES ('9', '199', '1576080', '1');
INSERT INTO `npcinfo` VALUES ('9', '200', '1592000', '1');
INSERT INTO `npcinfo` VALUES ('9', '201', '1608000', '1');
INSERT INTO `npcinfo` VALUES ('9', '202', '1624080', '1');
INSERT INTO `npcinfo` VALUES ('9', '203', '1640240', '1');
INSERT INTO `npcinfo` VALUES ('9', '204', '1656480', '1');
INSERT INTO `npcinfo` VALUES ('9', '205', '1672800', '1');
INSERT INTO `npcinfo` VALUES ('9', '206', '1689200', '1');
INSERT INTO `npcinfo` VALUES ('9', '207', '1705680', '1');
INSERT INTO `npcinfo` VALUES ('9', '208', '1722240', '1');
INSERT INTO `npcinfo` VALUES ('9', '209', '1738880', '1');
INSERT INTO `npcinfo` VALUES ('9', '210', '1755600', '1');
INSERT INTO `npcinfo` VALUES ('9', '211', '1772400', '1');
INSERT INTO `npcinfo` VALUES ('9', '212', '1789280', '1');
INSERT INTO `npcinfo` VALUES ('9', '213', '1806240', '1');
INSERT INTO `npcinfo` VALUES ('9', '214', '1823280', '1');
INSERT INTO `npcinfo` VALUES ('9', '215', '1840400', '1');
INSERT INTO `npcinfo` VALUES ('9', '216', '1857600', '1');
INSERT INTO `npcinfo` VALUES ('9', '217', '1874880', '1');
INSERT INTO `npcinfo` VALUES ('9', '218', '1892240', '1');
INSERT INTO `npcinfo` VALUES ('9', '219', '1909680', '1');
INSERT INTO `npcinfo` VALUES ('9', '220', '1927200', '1');
INSERT INTO `npcinfo` VALUES ('9', '221', '1944800', '1');
INSERT INTO `npcinfo` VALUES ('9', '222', '1962480', '1');
INSERT INTO `npcinfo` VALUES ('9', '223', '1980240', '1');
INSERT INTO `npcinfo` VALUES ('9', '224', '1998080', '1');
INSERT INTO `npcinfo` VALUES ('9', '225', '2016000', '1');
INSERT INTO `npcinfo` VALUES ('9', '226', '2034000', '1');
INSERT INTO `npcinfo` VALUES ('9', '227', '2052080', '1');
INSERT INTO `npcinfo` VALUES ('9', '228', '2070240', '1');
INSERT INTO `npcinfo` VALUES ('9', '229', '2088480', '1');
INSERT INTO `npcinfo` VALUES ('9', '230', '2106800', '1');
INSERT INTO `npcinfo` VALUES ('9', '231', '2125200', '1');
INSERT INTO `npcinfo` VALUES ('9', '232', '2143680', '1');
INSERT INTO `npcinfo` VALUES ('9', '233', '2162240', '1');
INSERT INTO `npcinfo` VALUES ('9', '234', '2180880', '1');
INSERT INTO `npcinfo` VALUES ('9', '235', '2199600', '1');
INSERT INTO `npcinfo` VALUES ('9', '236', '2218400', '1');
INSERT INTO `npcinfo` VALUES ('9', '237', '2237280', '1');
INSERT INTO `npcinfo` VALUES ('9', '238', '2256240', '1');
INSERT INTO `npcinfo` VALUES ('9', '239', '2275280', '1');
INSERT INTO `npcinfo` VALUES ('9', '240', '2294400', '1');
INSERT INTO `npcinfo` VALUES ('9', '241', '2313600', '1');
INSERT INTO `npcinfo` VALUES ('9', '242', '2332880', '1');
INSERT INTO `npcinfo` VALUES ('9', '243', '2352240', '1');
INSERT INTO `npcinfo` VALUES ('9', '244', '2371680', '1');
INSERT INTO `npcinfo` VALUES ('9', '245', '2391200', '1');
INSERT INTO `npcinfo` VALUES ('9', '246', '2410800', '1');
INSERT INTO `npcinfo` VALUES ('9', '247', '2430480', '1');
INSERT INTO `npcinfo` VALUES ('9', '248', '2450240', '1');
INSERT INTO `npcinfo` VALUES ('9', '249', '2470080', '1');
INSERT INTO `npcinfo` VALUES ('9', '250', '2490000', '1');
INSERT INTO `npcinfo` VALUES ('9', '251', '2510000', '1');
INSERT INTO `npcinfo` VALUES ('9', '252', '2530080', '1');
INSERT INTO `npcinfo` VALUES ('9', '253', '2550240', '1');
INSERT INTO `npcinfo` VALUES ('9', '254', '2570480', '1');
INSERT INTO `npcinfo` VALUES ('9', '255', '2590800', '1');
INSERT INTO `npcinfo` VALUES ('15', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('15', '2', '40', '1');
INSERT INTO `npcinfo` VALUES ('15', '3', '120', '1');
INSERT INTO `npcinfo` VALUES ('15', '4', '240', '1');
INSERT INTO `npcinfo` VALUES ('15', '5', '400', '1');
INSERT INTO `npcinfo` VALUES ('15', '6', '600', '1');
INSERT INTO `npcinfo` VALUES ('15', '7', '840', '1');
INSERT INTO `npcinfo` VALUES ('15', '8', '1120', '1');
INSERT INTO `npcinfo` VALUES ('15', '9', '1440', '1');
INSERT INTO `npcinfo` VALUES ('15', '10', '1800', '1');
INSERT INTO `npcinfo` VALUES ('15', '11', '2200', '1');
INSERT INTO `npcinfo` VALUES ('15', '12', '2640', '1');
INSERT INTO `npcinfo` VALUES ('15', '13', '3120', '1');
INSERT INTO `npcinfo` VALUES ('15', '14', '3640', '1');
INSERT INTO `npcinfo` VALUES ('15', '15', '4200', '1');
INSERT INTO `npcinfo` VALUES ('15', '16', '4800', '1');
INSERT INTO `npcinfo` VALUES ('15', '17', '5440', '1');
INSERT INTO `npcinfo` VALUES ('15', '18', '6120', '1');
INSERT INTO `npcinfo` VALUES ('15', '19', '6840', '1');
INSERT INTO `npcinfo` VALUES ('15', '20', '7600', '1');
INSERT INTO `npcinfo` VALUES ('15', '21', '8400', '1');
INSERT INTO `npcinfo` VALUES ('15', '22', '9240', '1');
INSERT INTO `npcinfo` VALUES ('15', '23', '10120', '1');
INSERT INTO `npcinfo` VALUES ('15', '24', '11040', '1');
INSERT INTO `npcinfo` VALUES ('15', '25', '12000', '1');
INSERT INTO `npcinfo` VALUES ('15', '26', '13000', '1');
INSERT INTO `npcinfo` VALUES ('15', '27', '14040', '1');
INSERT INTO `npcinfo` VALUES ('15', '28', '15120', '1');
INSERT INTO `npcinfo` VALUES ('15', '29', '16240', '1');
INSERT INTO `npcinfo` VALUES ('15', '30', '17400', '1');
INSERT INTO `npcinfo` VALUES ('15', '31', '18600', '1');
INSERT INTO `npcinfo` VALUES ('15', '32', '19840', '1');
INSERT INTO `npcinfo` VALUES ('15', '33', '21120', '1');
INSERT INTO `npcinfo` VALUES ('15', '34', '22440', '1');
INSERT INTO `npcinfo` VALUES ('15', '35', '23800', '1');
INSERT INTO `npcinfo` VALUES ('15', '36', '25200', '1');
INSERT INTO `npcinfo` VALUES ('15', '37', '26640', '1');
INSERT INTO `npcinfo` VALUES ('15', '38', '28120', '1');
INSERT INTO `npcinfo` VALUES ('15', '39', '29640', '1');
INSERT INTO `npcinfo` VALUES ('15', '40', '31200', '1');
INSERT INTO `npcinfo` VALUES ('15', '41', '32800', '1');
INSERT INTO `npcinfo` VALUES ('15', '42', '34440', '1');
INSERT INTO `npcinfo` VALUES ('15', '43', '36120', '1');
INSERT INTO `npcinfo` VALUES ('15', '44', '37840', '1');
INSERT INTO `npcinfo` VALUES ('15', '45', '39600', '1');
INSERT INTO `npcinfo` VALUES ('15', '46', '41400', '1');
INSERT INTO `npcinfo` VALUES ('15', '47', '43240', '1');
INSERT INTO `npcinfo` VALUES ('15', '48', '45120', '1');
INSERT INTO `npcinfo` VALUES ('15', '49', '47040', '1');
INSERT INTO `npcinfo` VALUES ('15', '50', '49000', '1');
INSERT INTO `npcinfo` VALUES ('15', '51', '51000', '1');
INSERT INTO `npcinfo` VALUES ('15', '52', '53040', '1');
INSERT INTO `npcinfo` VALUES ('15', '53', '55120', '1');
INSERT INTO `npcinfo` VALUES ('15', '54', '57240', '1');
INSERT INTO `npcinfo` VALUES ('15', '55', '59400', '1');
INSERT INTO `npcinfo` VALUES ('15', '56', '61600', '1');
INSERT INTO `npcinfo` VALUES ('15', '57', '63840', '1');
INSERT INTO `npcinfo` VALUES ('15', '58', '66120', '1');
INSERT INTO `npcinfo` VALUES ('15', '59', '68440', '1');
INSERT INTO `npcinfo` VALUES ('15', '60', '70800', '1');
INSERT INTO `npcinfo` VALUES ('15', '61', '73200', '1');
INSERT INTO `npcinfo` VALUES ('15', '62', '75640', '1');
INSERT INTO `npcinfo` VALUES ('15', '63', '78120', '1');
INSERT INTO `npcinfo` VALUES ('15', '64', '80640', '1');
INSERT INTO `npcinfo` VALUES ('15', '65', '83200', '1');
INSERT INTO `npcinfo` VALUES ('15', '66', '85800', '1');
INSERT INTO `npcinfo` VALUES ('15', '67', '88440', '1');
INSERT INTO `npcinfo` VALUES ('15', '68', '91120', '1');
INSERT INTO `npcinfo` VALUES ('15', '69', '93840', '1');
INSERT INTO `npcinfo` VALUES ('15', '70', '96600', '1');
INSERT INTO `npcinfo` VALUES ('15', '71', '99400', '1');
INSERT INTO `npcinfo` VALUES ('15', '72', '102240', '1');
INSERT INTO `npcinfo` VALUES ('15', '73', '105120', '1');
INSERT INTO `npcinfo` VALUES ('15', '74', '108040', '1');
INSERT INTO `npcinfo` VALUES ('15', '75', '111000', '1');
INSERT INTO `npcinfo` VALUES ('15', '76', '114000', '1');
INSERT INTO `npcinfo` VALUES ('15', '77', '117040', '1');
INSERT INTO `npcinfo` VALUES ('15', '78', '120120', '1');
INSERT INTO `npcinfo` VALUES ('15', '79', '123240', '1');
INSERT INTO `npcinfo` VALUES ('15', '80', '126400', '1');
INSERT INTO `npcinfo` VALUES ('15', '81', '129600', '1');
INSERT INTO `npcinfo` VALUES ('15', '82', '132840', '1');
INSERT INTO `npcinfo` VALUES ('15', '83', '136120', '1');
INSERT INTO `npcinfo` VALUES ('15', '84', '139440', '1');
INSERT INTO `npcinfo` VALUES ('15', '85', '142800', '1');
INSERT INTO `npcinfo` VALUES ('15', '86', '146200', '1');
INSERT INTO `npcinfo` VALUES ('15', '87', '149640', '1');
INSERT INTO `npcinfo` VALUES ('15', '88', '153120', '1');
INSERT INTO `npcinfo` VALUES ('15', '89', '156640', '1');
INSERT INTO `npcinfo` VALUES ('15', '90', '160200', '1');
INSERT INTO `npcinfo` VALUES ('15', '91', '163800', '1');
INSERT INTO `npcinfo` VALUES ('15', '92', '167440', '1');
INSERT INTO `npcinfo` VALUES ('15', '93', '171120', '1');
INSERT INTO `npcinfo` VALUES ('15', '94', '174840', '1');
INSERT INTO `npcinfo` VALUES ('15', '95', '178600', '1');
INSERT INTO `npcinfo` VALUES ('15', '96', '182400', '1');
INSERT INTO `npcinfo` VALUES ('15', '97', '186240', '1');
INSERT INTO `npcinfo` VALUES ('15', '98', '190120', '1');
INSERT INTO `npcinfo` VALUES ('15', '99', '194040', '1');
INSERT INTO `npcinfo` VALUES ('15', '100', '198000', '1');
INSERT INTO `npcinfo` VALUES ('15', '101', '202000', '1');
INSERT INTO `npcinfo` VALUES ('15', '102', '206040', '1');
INSERT INTO `npcinfo` VALUES ('15', '103', '210120', '1');
INSERT INTO `npcinfo` VALUES ('15', '104', '214240', '1');
INSERT INTO `npcinfo` VALUES ('15', '105', '218400', '1');
INSERT INTO `npcinfo` VALUES ('15', '106', '222600', '1');
INSERT INTO `npcinfo` VALUES ('15', '107', '226840', '1');
INSERT INTO `npcinfo` VALUES ('15', '108', '231120', '1');
INSERT INTO `npcinfo` VALUES ('15', '109', '235440', '1');
INSERT INTO `npcinfo` VALUES ('15', '110', '239800', '1');
INSERT INTO `npcinfo` VALUES ('15', '111', '244200', '1');
INSERT INTO `npcinfo` VALUES ('15', '112', '248640', '1');
INSERT INTO `npcinfo` VALUES ('15', '113', '253120', '1');
INSERT INTO `npcinfo` VALUES ('15', '114', '257640', '1');
INSERT INTO `npcinfo` VALUES ('15', '115', '262200', '1');
INSERT INTO `npcinfo` VALUES ('15', '116', '266800', '1');
INSERT INTO `npcinfo` VALUES ('15', '117', '271440', '1');
INSERT INTO `npcinfo` VALUES ('15', '118', '276120', '1');
INSERT INTO `npcinfo` VALUES ('15', '119', '280840', '1');
INSERT INTO `npcinfo` VALUES ('15', '120', '285600', '1');
INSERT INTO `npcinfo` VALUES ('15', '121', '290400', '1');
INSERT INTO `npcinfo` VALUES ('15', '122', '295240', '1');
INSERT INTO `npcinfo` VALUES ('15', '123', '300120', '1');
INSERT INTO `npcinfo` VALUES ('15', '124', '305040', '1');
INSERT INTO `npcinfo` VALUES ('15', '125', '310000', '1');
INSERT INTO `npcinfo` VALUES ('15', '126', '315000', '1');
INSERT INTO `npcinfo` VALUES ('15', '127', '320040', '1');
INSERT INTO `npcinfo` VALUES ('15', '128', '325120', '1');
INSERT INTO `npcinfo` VALUES ('15', '129', '330240', '1');
INSERT INTO `npcinfo` VALUES ('15', '130', '335400', '1');
INSERT INTO `npcinfo` VALUES ('15', '131', '340600', '1');
INSERT INTO `npcinfo` VALUES ('15', '132', '345840', '1');
INSERT INTO `npcinfo` VALUES ('15', '133', '351120', '1');
INSERT INTO `npcinfo` VALUES ('15', '134', '356440', '1');
INSERT INTO `npcinfo` VALUES ('15', '135', '361800', '1');
INSERT INTO `npcinfo` VALUES ('15', '136', '367200', '1');
INSERT INTO `npcinfo` VALUES ('15', '137', '372640', '1');
INSERT INTO `npcinfo` VALUES ('15', '138', '378120', '1');
INSERT INTO `npcinfo` VALUES ('15', '139', '383640', '1');
INSERT INTO `npcinfo` VALUES ('15', '140', '389200', '1');
INSERT INTO `npcinfo` VALUES ('15', '141', '394800', '1');
INSERT INTO `npcinfo` VALUES ('15', '142', '400440', '1');
INSERT INTO `npcinfo` VALUES ('15', '143', '406120', '1');
INSERT INTO `npcinfo` VALUES ('15', '144', '411840', '1');
INSERT INTO `npcinfo` VALUES ('15', '145', '417600', '1');
INSERT INTO `npcinfo` VALUES ('15', '146', '423400', '1');
INSERT INTO `npcinfo` VALUES ('15', '147', '429240', '1');
INSERT INTO `npcinfo` VALUES ('15', '148', '435120', '1');
INSERT INTO `npcinfo` VALUES ('15', '149', '441040', '1');
INSERT INTO `npcinfo` VALUES ('15', '150', '447000', '1');
INSERT INTO `npcinfo` VALUES ('15', '151', '453000', '1');
INSERT INTO `npcinfo` VALUES ('15', '152', '459040', '1');
INSERT INTO `npcinfo` VALUES ('15', '153', '465120', '1');
INSERT INTO `npcinfo` VALUES ('15', '154', '471240', '1');
INSERT INTO `npcinfo` VALUES ('15', '155', '477400', '1');
INSERT INTO `npcinfo` VALUES ('15', '156', '483600', '1');
INSERT INTO `npcinfo` VALUES ('15', '157', '489840', '1');
INSERT INTO `npcinfo` VALUES ('15', '158', '496120', '1');
INSERT INTO `npcinfo` VALUES ('15', '159', '502440', '1');
INSERT INTO `npcinfo` VALUES ('15', '160', '508800', '1');
INSERT INTO `npcinfo` VALUES ('15', '161', '515200', '1');
INSERT INTO `npcinfo` VALUES ('15', '162', '521640', '1');
INSERT INTO `npcinfo` VALUES ('15', '163', '528120', '1');
INSERT INTO `npcinfo` VALUES ('15', '164', '534640', '1');
INSERT INTO `npcinfo` VALUES ('15', '165', '541200', '1');
INSERT INTO `npcinfo` VALUES ('15', '166', '547800', '1');
INSERT INTO `npcinfo` VALUES ('15', '167', '554440', '1');
INSERT INTO `npcinfo` VALUES ('15', '168', '561120', '1');
INSERT INTO `npcinfo` VALUES ('15', '169', '567840', '1');
INSERT INTO `npcinfo` VALUES ('15', '170', '574600', '1');
INSERT INTO `npcinfo` VALUES ('15', '171', '581400', '1');
INSERT INTO `npcinfo` VALUES ('15', '172', '588240', '1');
INSERT INTO `npcinfo` VALUES ('15', '173', '595120', '1');
INSERT INTO `npcinfo` VALUES ('15', '174', '602040', '1');
INSERT INTO `npcinfo` VALUES ('15', '175', '609000', '1');
INSERT INTO `npcinfo` VALUES ('15', '176', '616000', '1');
INSERT INTO `npcinfo` VALUES ('15', '177', '623040', '1');
INSERT INTO `npcinfo` VALUES ('15', '178', '630120', '1');
INSERT INTO `npcinfo` VALUES ('15', '179', '637240', '1');
INSERT INTO `npcinfo` VALUES ('15', '180', '644400', '1');
INSERT INTO `npcinfo` VALUES ('15', '181', '651600', '1');
INSERT INTO `npcinfo` VALUES ('15', '182', '658840', '1');
INSERT INTO `npcinfo` VALUES ('15', '183', '666120', '1');
INSERT INTO `npcinfo` VALUES ('15', '184', '673440', '1');
INSERT INTO `npcinfo` VALUES ('15', '185', '680800', '1');
INSERT INTO `npcinfo` VALUES ('15', '186', '688200', '1');
INSERT INTO `npcinfo` VALUES ('15', '187', '695640', '1');
INSERT INTO `npcinfo` VALUES ('15', '188', '703120', '1');
INSERT INTO `npcinfo` VALUES ('15', '189', '710640', '1');
INSERT INTO `npcinfo` VALUES ('15', '190', '718200', '1');
INSERT INTO `npcinfo` VALUES ('15', '191', '725800', '1');
INSERT INTO `npcinfo` VALUES ('15', '192', '733440', '1');
INSERT INTO `npcinfo` VALUES ('15', '193', '741120', '1');
INSERT INTO `npcinfo` VALUES ('15', '194', '748840', '1');
INSERT INTO `npcinfo` VALUES ('15', '195', '756600', '1');
INSERT INTO `npcinfo` VALUES ('15', '196', '764400', '1');
INSERT INTO `npcinfo` VALUES ('15', '197', '772240', '1');
INSERT INTO `npcinfo` VALUES ('15', '198', '780120', '1');
INSERT INTO `npcinfo` VALUES ('15', '199', '788040', '1');
INSERT INTO `npcinfo` VALUES ('15', '200', '796000', '1');
INSERT INTO `npcinfo` VALUES ('15', '201', '804000', '1');
INSERT INTO `npcinfo` VALUES ('15', '202', '812040', '1');
INSERT INTO `npcinfo` VALUES ('15', '203', '820120', '1');
INSERT INTO `npcinfo` VALUES ('15', '204', '828240', '1');
INSERT INTO `npcinfo` VALUES ('15', '205', '836400', '1');
INSERT INTO `npcinfo` VALUES ('15', '206', '844600', '1');
INSERT INTO `npcinfo` VALUES ('15', '207', '852840', '1');
INSERT INTO `npcinfo` VALUES ('15', '208', '861120', '1');
INSERT INTO `npcinfo` VALUES ('15', '209', '869440', '1');
INSERT INTO `npcinfo` VALUES ('15', '210', '877800', '1');
INSERT INTO `npcinfo` VALUES ('15', '211', '886200', '1');
INSERT INTO `npcinfo` VALUES ('15', '212', '894640', '1');
INSERT INTO `npcinfo` VALUES ('15', '213', '903120', '1');
INSERT INTO `npcinfo` VALUES ('15', '214', '911640', '1');
INSERT INTO `npcinfo` VALUES ('15', '215', '920200', '1');
INSERT INTO `npcinfo` VALUES ('15', '216', '928800', '1');
INSERT INTO `npcinfo` VALUES ('15', '217', '937440', '1');
INSERT INTO `npcinfo` VALUES ('15', '218', '946120', '1');
INSERT INTO `npcinfo` VALUES ('15', '219', '954840', '1');
INSERT INTO `npcinfo` VALUES ('15', '220', '963600', '1');
INSERT INTO `npcinfo` VALUES ('15', '221', '972400', '1');
INSERT INTO `npcinfo` VALUES ('15', '222', '981240', '1');
INSERT INTO `npcinfo` VALUES ('15', '223', '990120', '1');
INSERT INTO `npcinfo` VALUES ('15', '224', '999040', '1');
INSERT INTO `npcinfo` VALUES ('15', '225', '1008000', '1');
INSERT INTO `npcinfo` VALUES ('15', '226', '1017000', '1');
INSERT INTO `npcinfo` VALUES ('15', '227', '1026040', '1');
INSERT INTO `npcinfo` VALUES ('15', '228', '1035120', '1');
INSERT INTO `npcinfo` VALUES ('15', '229', '1044240', '1');
INSERT INTO `npcinfo` VALUES ('15', '230', '1053400', '1');
INSERT INTO `npcinfo` VALUES ('15', '231', '1062600', '1');
INSERT INTO `npcinfo` VALUES ('15', '232', '1071840', '1');
INSERT INTO `npcinfo` VALUES ('15', '233', '1081120', '1');
INSERT INTO `npcinfo` VALUES ('15', '234', '1090440', '1');
INSERT INTO `npcinfo` VALUES ('15', '235', '1099800', '1');
INSERT INTO `npcinfo` VALUES ('15', '236', '1109200', '1');
INSERT INTO `npcinfo` VALUES ('15', '237', '1118640', '1');
INSERT INTO `npcinfo` VALUES ('15', '238', '1128120', '1');
INSERT INTO `npcinfo` VALUES ('15', '239', '1137640', '1');
INSERT INTO `npcinfo` VALUES ('15', '240', '1147200', '1');
INSERT INTO `npcinfo` VALUES ('15', '241', '1156800', '1');
INSERT INTO `npcinfo` VALUES ('15', '242', '1166440', '1');
INSERT INTO `npcinfo` VALUES ('15', '243', '1176120', '1');
INSERT INTO `npcinfo` VALUES ('15', '244', '1185840', '1');
INSERT INTO `npcinfo` VALUES ('15', '245', '1195600', '1');
INSERT INTO `npcinfo` VALUES ('15', '246', '1205400', '1');
INSERT INTO `npcinfo` VALUES ('15', '247', '1215240', '1');
INSERT INTO `npcinfo` VALUES ('15', '248', '1225120', '1');
INSERT INTO `npcinfo` VALUES ('15', '249', '1235040', '1');
INSERT INTO `npcinfo` VALUES ('15', '250', '1245000', '1');
INSERT INTO `npcinfo` VALUES ('15', '251', '1255000', '1');
INSERT INTO `npcinfo` VALUES ('15', '252', '1265040', '1');
INSERT INTO `npcinfo` VALUES ('15', '253', '1275120', '1');
INSERT INTO `npcinfo` VALUES ('15', '254', '1285240', '1');
INSERT INTO `npcinfo` VALUES ('15', '255', '1295400', '1');
INSERT INTO `npcinfo` VALUES ('18', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('18', '2', '45', '1');
INSERT INTO `npcinfo` VALUES ('18', '3', '135', '1');
INSERT INTO `npcinfo` VALUES ('18', '4', '270', '1');
INSERT INTO `npcinfo` VALUES ('18', '5', '450', '1');
INSERT INTO `npcinfo` VALUES ('18', '6', '675', '1');
INSERT INTO `npcinfo` VALUES ('18', '7', '945', '1');
INSERT INTO `npcinfo` VALUES ('18', '8', '1260', '1');
INSERT INTO `npcinfo` VALUES ('18', '9', '1620', '1');
INSERT INTO `npcinfo` VALUES ('18', '10', '2025', '1');
INSERT INTO `npcinfo` VALUES ('18', '11', '2475', '1');
INSERT INTO `npcinfo` VALUES ('18', '12', '2970', '1');
INSERT INTO `npcinfo` VALUES ('18', '13', '3510', '1');
INSERT INTO `npcinfo` VALUES ('18', '14', '4095', '1');
INSERT INTO `npcinfo` VALUES ('18', '15', '4725', '1');
INSERT INTO `npcinfo` VALUES ('18', '16', '5400', '1');
INSERT INTO `npcinfo` VALUES ('18', '17', '6120', '1');
INSERT INTO `npcinfo` VALUES ('18', '18', '6885', '1');
INSERT INTO `npcinfo` VALUES ('18', '19', '7695', '1');
INSERT INTO `npcinfo` VALUES ('18', '20', '8550', '1');
INSERT INTO `npcinfo` VALUES ('18', '21', '9450', '1');
INSERT INTO `npcinfo` VALUES ('18', '22', '10395', '1');
INSERT INTO `npcinfo` VALUES ('18', '23', '11385', '1');
INSERT INTO `npcinfo` VALUES ('18', '24', '12420', '1');
INSERT INTO `npcinfo` VALUES ('18', '25', '13500', '1');
INSERT INTO `npcinfo` VALUES ('18', '26', '14625', '1');
INSERT INTO `npcinfo` VALUES ('18', '27', '15795', '1');
INSERT INTO `npcinfo` VALUES ('18', '28', '17010', '1');
INSERT INTO `npcinfo` VALUES ('18', '29', '18270', '1');
INSERT INTO `npcinfo` VALUES ('18', '30', '19575', '1');
INSERT INTO `npcinfo` VALUES ('18', '31', '20925', '1');
INSERT INTO `npcinfo` VALUES ('18', '32', '22320', '1');
INSERT INTO `npcinfo` VALUES ('18', '33', '23760', '1');
INSERT INTO `npcinfo` VALUES ('18', '34', '25245', '1');
INSERT INTO `npcinfo` VALUES ('18', '35', '26775', '1');
INSERT INTO `npcinfo` VALUES ('18', '36', '28350', '1');
INSERT INTO `npcinfo` VALUES ('18', '37', '29970', '1');
INSERT INTO `npcinfo` VALUES ('18', '38', '31635', '1');
INSERT INTO `npcinfo` VALUES ('18', '39', '33345', '1');
INSERT INTO `npcinfo` VALUES ('18', '40', '35100', '1');
INSERT INTO `npcinfo` VALUES ('18', '41', '36900', '1');
INSERT INTO `npcinfo` VALUES ('18', '42', '38745', '1');
INSERT INTO `npcinfo` VALUES ('18', '43', '40635', '1');
INSERT INTO `npcinfo` VALUES ('18', '44', '42570', '1');
INSERT INTO `npcinfo` VALUES ('18', '45', '44550', '1');
INSERT INTO `npcinfo` VALUES ('18', '46', '46575', '1');
INSERT INTO `npcinfo` VALUES ('18', '47', '48645', '1');
INSERT INTO `npcinfo` VALUES ('18', '48', '50760', '1');
INSERT INTO `npcinfo` VALUES ('18', '49', '52920', '1');
INSERT INTO `npcinfo` VALUES ('18', '50', '55125', '1');
INSERT INTO `npcinfo` VALUES ('18', '51', '57375', '1');
INSERT INTO `npcinfo` VALUES ('18', '52', '59670', '1');
INSERT INTO `npcinfo` VALUES ('18', '53', '62010', '1');
INSERT INTO `npcinfo` VALUES ('18', '54', '64395', '1');
INSERT INTO `npcinfo` VALUES ('18', '55', '66825', '1');
INSERT INTO `npcinfo` VALUES ('18', '56', '69300', '1');
INSERT INTO `npcinfo` VALUES ('18', '57', '71820', '1');
INSERT INTO `npcinfo` VALUES ('18', '58', '74385', '1');
INSERT INTO `npcinfo` VALUES ('18', '59', '76995', '1');
INSERT INTO `npcinfo` VALUES ('18', '60', '79650', '1');
INSERT INTO `npcinfo` VALUES ('18', '61', '82350', '1');
INSERT INTO `npcinfo` VALUES ('18', '62', '85095', '1');
INSERT INTO `npcinfo` VALUES ('18', '63', '87885', '1');
INSERT INTO `npcinfo` VALUES ('18', '64', '90720', '1');
INSERT INTO `npcinfo` VALUES ('18', '65', '93600', '1');
INSERT INTO `npcinfo` VALUES ('18', '66', '96525', '1');
INSERT INTO `npcinfo` VALUES ('18', '67', '99495', '1');
INSERT INTO `npcinfo` VALUES ('18', '68', '102510', '1');
INSERT INTO `npcinfo` VALUES ('18', '69', '105570', '1');
INSERT INTO `npcinfo` VALUES ('18', '70', '108675', '1');
INSERT INTO `npcinfo` VALUES ('18', '71', '111825', '1');
INSERT INTO `npcinfo` VALUES ('18', '72', '115020', '1');
INSERT INTO `npcinfo` VALUES ('18', '73', '118260', '1');
INSERT INTO `npcinfo` VALUES ('18', '74', '121545', '1');
INSERT INTO `npcinfo` VALUES ('18', '75', '124875', '1');
INSERT INTO `npcinfo` VALUES ('18', '76', '128250', '1');
INSERT INTO `npcinfo` VALUES ('18', '77', '131670', '1');
INSERT INTO `npcinfo` VALUES ('18', '78', '135135', '1');
INSERT INTO `npcinfo` VALUES ('18', '79', '138645', '1');
INSERT INTO `npcinfo` VALUES ('18', '80', '142200', '1');
INSERT INTO `npcinfo` VALUES ('18', '81', '145800', '1');
INSERT INTO `npcinfo` VALUES ('18', '82', '149445', '1');
INSERT INTO `npcinfo` VALUES ('18', '83', '153135', '1');
INSERT INTO `npcinfo` VALUES ('18', '84', '156870', '1');
INSERT INTO `npcinfo` VALUES ('18', '85', '160650', '1');
INSERT INTO `npcinfo` VALUES ('18', '86', '164475', '1');
INSERT INTO `npcinfo` VALUES ('18', '87', '168345', '1');
INSERT INTO `npcinfo` VALUES ('18', '88', '172260', '1');
INSERT INTO `npcinfo` VALUES ('18', '89', '176220', '1');
INSERT INTO `npcinfo` VALUES ('18', '90', '180225', '1');
INSERT INTO `npcinfo` VALUES ('18', '91', '184275', '1');
INSERT INTO `npcinfo` VALUES ('18', '92', '188370', '1');
INSERT INTO `npcinfo` VALUES ('18', '93', '192510', '1');
INSERT INTO `npcinfo` VALUES ('18', '94', '196695', '1');
INSERT INTO `npcinfo` VALUES ('18', '95', '200925', '1');
INSERT INTO `npcinfo` VALUES ('18', '96', '205200', '1');
INSERT INTO `npcinfo` VALUES ('18', '97', '209520', '1');
INSERT INTO `npcinfo` VALUES ('18', '98', '213885', '1');
INSERT INTO `npcinfo` VALUES ('18', '99', '218295', '1');
INSERT INTO `npcinfo` VALUES ('18', '100', '222750', '1');
INSERT INTO `npcinfo` VALUES ('18', '101', '227250', '1');
INSERT INTO `npcinfo` VALUES ('18', '102', '231795', '1');
INSERT INTO `npcinfo` VALUES ('18', '103', '236385', '1');
INSERT INTO `npcinfo` VALUES ('18', '104', '241020', '1');
INSERT INTO `npcinfo` VALUES ('18', '105', '245700', '1');
INSERT INTO `npcinfo` VALUES ('18', '106', '250425', '1');
INSERT INTO `npcinfo` VALUES ('18', '107', '255195', '1');
INSERT INTO `npcinfo` VALUES ('18', '108', '260010', '1');
INSERT INTO `npcinfo` VALUES ('18', '109', '264870', '1');
INSERT INTO `npcinfo` VALUES ('18', '110', '269775', '1');
INSERT INTO `npcinfo` VALUES ('18', '111', '274725', '1');
INSERT INTO `npcinfo` VALUES ('18', '112', '279720', '1');
INSERT INTO `npcinfo` VALUES ('18', '113', '284760', '1');
INSERT INTO `npcinfo` VALUES ('18', '114', '289845', '1');
INSERT INTO `npcinfo` VALUES ('18', '115', '294975', '1');
INSERT INTO `npcinfo` VALUES ('18', '116', '300150', '1');
INSERT INTO `npcinfo` VALUES ('18', '117', '305370', '1');
INSERT INTO `npcinfo` VALUES ('18', '118', '310635', '1');
INSERT INTO `npcinfo` VALUES ('18', '119', '315945', '1');
INSERT INTO `npcinfo` VALUES ('18', '120', '321300', '1');
INSERT INTO `npcinfo` VALUES ('18', '121', '326700', '1');
INSERT INTO `npcinfo` VALUES ('18', '122', '332145', '1');
INSERT INTO `npcinfo` VALUES ('18', '123', '337635', '1');
INSERT INTO `npcinfo` VALUES ('18', '124', '343170', '1');
INSERT INTO `npcinfo` VALUES ('18', '125', '348750', '1');
INSERT INTO `npcinfo` VALUES ('18', '126', '354375', '1');
INSERT INTO `npcinfo` VALUES ('18', '127', '360045', '1');
INSERT INTO `npcinfo` VALUES ('18', '128', '365760', '1');
INSERT INTO `npcinfo` VALUES ('18', '129', '371520', '1');
INSERT INTO `npcinfo` VALUES ('18', '130', '377325', '1');
INSERT INTO `npcinfo` VALUES ('18', '131', '383175', '1');
INSERT INTO `npcinfo` VALUES ('18', '132', '389070', '1');
INSERT INTO `npcinfo` VALUES ('18', '133', '395010', '1');
INSERT INTO `npcinfo` VALUES ('18', '134', '400995', '1');
INSERT INTO `npcinfo` VALUES ('18', '135', '407025', '1');
INSERT INTO `npcinfo` VALUES ('18', '136', '413100', '1');
INSERT INTO `npcinfo` VALUES ('18', '137', '419220', '1');
INSERT INTO `npcinfo` VALUES ('18', '138', '425385', '1');
INSERT INTO `npcinfo` VALUES ('18', '139', '431595', '1');
INSERT INTO `npcinfo` VALUES ('18', '140', '437850', '1');
INSERT INTO `npcinfo` VALUES ('18', '141', '444150', '1');
INSERT INTO `npcinfo` VALUES ('18', '142', '450495', '1');
INSERT INTO `npcinfo` VALUES ('18', '143', '456885', '1');
INSERT INTO `npcinfo` VALUES ('18', '144', '463320', '1');
INSERT INTO `npcinfo` VALUES ('18', '145', '469800', '1');
INSERT INTO `npcinfo` VALUES ('18', '146', '476325', '1');
INSERT INTO `npcinfo` VALUES ('18', '147', '482895', '1');
INSERT INTO `npcinfo` VALUES ('18', '148', '489510', '1');
INSERT INTO `npcinfo` VALUES ('18', '149', '496170', '1');
INSERT INTO `npcinfo` VALUES ('18', '150', '502875', '1');
INSERT INTO `npcinfo` VALUES ('18', '151', '509625', '1');
INSERT INTO `npcinfo` VALUES ('18', '152', '516420', '1');
INSERT INTO `npcinfo` VALUES ('18', '153', '523260', '1');
INSERT INTO `npcinfo` VALUES ('18', '154', '530145', '1');
INSERT INTO `npcinfo` VALUES ('18', '155', '537075', '1');
INSERT INTO `npcinfo` VALUES ('18', '156', '544050', '1');
INSERT INTO `npcinfo` VALUES ('18', '157', '551070', '1');
INSERT INTO `npcinfo` VALUES ('18', '158', '558135', '1');
INSERT INTO `npcinfo` VALUES ('18', '159', '565245', '1');
INSERT INTO `npcinfo` VALUES ('18', '160', '572400', '1');
INSERT INTO `npcinfo` VALUES ('18', '161', '579600', '1');
INSERT INTO `npcinfo` VALUES ('18', '162', '586845', '1');
INSERT INTO `npcinfo` VALUES ('18', '163', '594135', '1');
INSERT INTO `npcinfo` VALUES ('18', '164', '601470', '1');
INSERT INTO `npcinfo` VALUES ('18', '165', '608850', '1');
INSERT INTO `npcinfo` VALUES ('18', '166', '616275', '1');
INSERT INTO `npcinfo` VALUES ('18', '167', '623745', '1');
INSERT INTO `npcinfo` VALUES ('18', '168', '631260', '1');
INSERT INTO `npcinfo` VALUES ('18', '169', '638820', '1');
INSERT INTO `npcinfo` VALUES ('18', '170', '646425', '1');
INSERT INTO `npcinfo` VALUES ('18', '171', '654075', '1');
INSERT INTO `npcinfo` VALUES ('18', '172', '661770', '1');
INSERT INTO `npcinfo` VALUES ('18', '173', '669510', '1');
INSERT INTO `npcinfo` VALUES ('18', '174', '677295', '1');
INSERT INTO `npcinfo` VALUES ('18', '175', '685125', '1');
INSERT INTO `npcinfo` VALUES ('18', '176', '693000', '1');
INSERT INTO `npcinfo` VALUES ('18', '177', '700920', '1');
INSERT INTO `npcinfo` VALUES ('18', '178', '708885', '1');
INSERT INTO `npcinfo` VALUES ('18', '179', '716895', '1');
INSERT INTO `npcinfo` VALUES ('18', '180', '724950', '1');
INSERT INTO `npcinfo` VALUES ('18', '181', '733050', '1');
INSERT INTO `npcinfo` VALUES ('18', '182', '741195', '1');
INSERT INTO `npcinfo` VALUES ('18', '183', '749385', '1');
INSERT INTO `npcinfo` VALUES ('18', '184', '757620', '1');
INSERT INTO `npcinfo` VALUES ('18', '185', '765900', '1');
INSERT INTO `npcinfo` VALUES ('18', '186', '774225', '1');
INSERT INTO `npcinfo` VALUES ('18', '187', '782595', '1');
INSERT INTO `npcinfo` VALUES ('18', '188', '791010', '1');
INSERT INTO `npcinfo` VALUES ('18', '189', '799470', '1');
INSERT INTO `npcinfo` VALUES ('18', '190', '807975', '1');
INSERT INTO `npcinfo` VALUES ('18', '191', '816525', '1');
INSERT INTO `npcinfo` VALUES ('18', '192', '825120', '1');
INSERT INTO `npcinfo` VALUES ('18', '193', '833760', '1');
INSERT INTO `npcinfo` VALUES ('18', '194', '842445', '1');
INSERT INTO `npcinfo` VALUES ('18', '195', '851175', '1');
INSERT INTO `npcinfo` VALUES ('18', '196', '859950', '1');
INSERT INTO `npcinfo` VALUES ('18', '197', '868770', '1');
INSERT INTO `npcinfo` VALUES ('18', '198', '877635', '1');
INSERT INTO `npcinfo` VALUES ('18', '199', '886545', '1');
INSERT INTO `npcinfo` VALUES ('18', '200', '895500', '1');
INSERT INTO `npcinfo` VALUES ('18', '201', '904500', '1');
INSERT INTO `npcinfo` VALUES ('18', '202', '913545', '1');
INSERT INTO `npcinfo` VALUES ('18', '203', '922635', '1');
INSERT INTO `npcinfo` VALUES ('18', '204', '931770', '1');
INSERT INTO `npcinfo` VALUES ('18', '205', '940950', '1');
INSERT INTO `npcinfo` VALUES ('18', '206', '950175', '1');
INSERT INTO `npcinfo` VALUES ('18', '207', '959445', '1');
INSERT INTO `npcinfo` VALUES ('18', '208', '968760', '1');
INSERT INTO `npcinfo` VALUES ('18', '209', '978120', '1');
INSERT INTO `npcinfo` VALUES ('18', '210', '987525', '1');
INSERT INTO `npcinfo` VALUES ('18', '211', '996975', '1');
INSERT INTO `npcinfo` VALUES ('18', '212', '1006470', '1');
INSERT INTO `npcinfo` VALUES ('18', '213', '1016010', '1');
INSERT INTO `npcinfo` VALUES ('18', '214', '1025595', '1');
INSERT INTO `npcinfo` VALUES ('18', '215', '1035225', '1');
INSERT INTO `npcinfo` VALUES ('18', '216', '1044900', '1');
INSERT INTO `npcinfo` VALUES ('18', '217', '1054620', '1');
INSERT INTO `npcinfo` VALUES ('18', '218', '1064385', '1');
INSERT INTO `npcinfo` VALUES ('18', '219', '1074195', '1');
INSERT INTO `npcinfo` VALUES ('18', '220', '1084050', '1');
INSERT INTO `npcinfo` VALUES ('18', '221', '1093950', '1');
INSERT INTO `npcinfo` VALUES ('18', '222', '1103895', '1');
INSERT INTO `npcinfo` VALUES ('18', '223', '1113885', '1');
INSERT INTO `npcinfo` VALUES ('18', '224', '1123920', '1');
INSERT INTO `npcinfo` VALUES ('18', '225', '1134000', '1');
INSERT INTO `npcinfo` VALUES ('18', '226', '1144125', '1');
INSERT INTO `npcinfo` VALUES ('18', '227', '1154295', '1');
INSERT INTO `npcinfo` VALUES ('18', '228', '1164510', '1');
INSERT INTO `npcinfo` VALUES ('18', '229', '1174770', '1');
INSERT INTO `npcinfo` VALUES ('18', '230', '1185075', '1');
INSERT INTO `npcinfo` VALUES ('18', '231', '1195425', '1');
INSERT INTO `npcinfo` VALUES ('18', '232', '1205820', '1');
INSERT INTO `npcinfo` VALUES ('18', '233', '1216260', '1');
INSERT INTO `npcinfo` VALUES ('18', '234', '1226745', '1');
INSERT INTO `npcinfo` VALUES ('18', '235', '1237275', '1');
INSERT INTO `npcinfo` VALUES ('18', '236', '1247850', '1');
INSERT INTO `npcinfo` VALUES ('18', '237', '1258470', '1');
INSERT INTO `npcinfo` VALUES ('18', '238', '1269135', '1');
INSERT INTO `npcinfo` VALUES ('18', '239', '1279845', '1');
INSERT INTO `npcinfo` VALUES ('18', '240', '1290600', '1');
INSERT INTO `npcinfo` VALUES ('18', '241', '1301400', '1');
INSERT INTO `npcinfo` VALUES ('18', '242', '1312245', '1');
INSERT INTO `npcinfo` VALUES ('18', '243', '1323135', '1');
INSERT INTO `npcinfo` VALUES ('18', '244', '1334070', '1');
INSERT INTO `npcinfo` VALUES ('18', '245', '1345050', '1');
INSERT INTO `npcinfo` VALUES ('18', '246', '1356075', '1');
INSERT INTO `npcinfo` VALUES ('18', '247', '1367145', '1');
INSERT INTO `npcinfo` VALUES ('18', '248', '1378260', '1');
INSERT INTO `npcinfo` VALUES ('18', '249', '1389420', '1');
INSERT INTO `npcinfo` VALUES ('18', '250', '1400625', '1');
INSERT INTO `npcinfo` VALUES ('18', '251', '1411875', '1');
INSERT INTO `npcinfo` VALUES ('18', '252', '1423170', '1');
INSERT INTO `npcinfo` VALUES ('18', '253', '1434510', '1');
INSERT INTO `npcinfo` VALUES ('18', '254', '1445895', '1');
INSERT INTO `npcinfo` VALUES ('18', '255', '1457325', '1');
INSERT INTO `npcinfo` VALUES ('21', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('21', '2', '60', '1');
INSERT INTO `npcinfo` VALUES ('21', '3', '180', '1');
INSERT INTO `npcinfo` VALUES ('21', '4', '360', '1');
INSERT INTO `npcinfo` VALUES ('21', '5', '600', '1');
INSERT INTO `npcinfo` VALUES ('21', '6', '900', '1');
INSERT INTO `npcinfo` VALUES ('21', '7', '1260', '1');
INSERT INTO `npcinfo` VALUES ('21', '8', '1680', '1');
INSERT INTO `npcinfo` VALUES ('21', '9', '2160', '1');
INSERT INTO `npcinfo` VALUES ('21', '10', '2700', '1');
INSERT INTO `npcinfo` VALUES ('21', '11', '3300', '1');
INSERT INTO `npcinfo` VALUES ('21', '12', '3960', '1');
INSERT INTO `npcinfo` VALUES ('21', '13', '4680', '1');
INSERT INTO `npcinfo` VALUES ('21', '14', '5460', '1');
INSERT INTO `npcinfo` VALUES ('21', '15', '6300', '1');
INSERT INTO `npcinfo` VALUES ('21', '16', '7200', '1');
INSERT INTO `npcinfo` VALUES ('21', '17', '8160', '1');
INSERT INTO `npcinfo` VALUES ('21', '18', '9180', '1');
INSERT INTO `npcinfo` VALUES ('21', '19', '10260', '1');
INSERT INTO `npcinfo` VALUES ('21', '20', '11400', '1');
INSERT INTO `npcinfo` VALUES ('21', '21', '12600', '1');
INSERT INTO `npcinfo` VALUES ('21', '22', '13860', '1');
INSERT INTO `npcinfo` VALUES ('21', '23', '15180', '1');
INSERT INTO `npcinfo` VALUES ('21', '24', '16560', '1');
INSERT INTO `npcinfo` VALUES ('21', '25', '18000', '1');
INSERT INTO `npcinfo` VALUES ('21', '26', '19500', '1');
INSERT INTO `npcinfo` VALUES ('21', '27', '21060', '1');
INSERT INTO `npcinfo` VALUES ('21', '28', '22680', '1');
INSERT INTO `npcinfo` VALUES ('21', '29', '24360', '1');
INSERT INTO `npcinfo` VALUES ('21', '30', '26100', '1');
INSERT INTO `npcinfo` VALUES ('21', '31', '27900', '1');
INSERT INTO `npcinfo` VALUES ('21', '32', '29760', '1');
INSERT INTO `npcinfo` VALUES ('21', '33', '31680', '1');
INSERT INTO `npcinfo` VALUES ('21', '34', '33660', '1');
INSERT INTO `npcinfo` VALUES ('21', '35', '35700', '1');
INSERT INTO `npcinfo` VALUES ('21', '36', '37800', '1');
INSERT INTO `npcinfo` VALUES ('21', '37', '39960', '1');
INSERT INTO `npcinfo` VALUES ('21', '38', '42180', '1');
INSERT INTO `npcinfo` VALUES ('21', '39', '44460', '1');
INSERT INTO `npcinfo` VALUES ('21', '40', '46800', '1');
INSERT INTO `npcinfo` VALUES ('21', '41', '49200', '1');
INSERT INTO `npcinfo` VALUES ('21', '42', '51660', '1');
INSERT INTO `npcinfo` VALUES ('21', '43', '54180', '1');
INSERT INTO `npcinfo` VALUES ('21', '44', '56760', '1');
INSERT INTO `npcinfo` VALUES ('21', '45', '59400', '1');
INSERT INTO `npcinfo` VALUES ('21', '46', '62100', '1');
INSERT INTO `npcinfo` VALUES ('21', '47', '64860', '1');
INSERT INTO `npcinfo` VALUES ('21', '48', '67680', '1');
INSERT INTO `npcinfo` VALUES ('21', '49', '70560', '1');
INSERT INTO `npcinfo` VALUES ('21', '50', '73500', '1');
INSERT INTO `npcinfo` VALUES ('21', '51', '76500', '1');
INSERT INTO `npcinfo` VALUES ('21', '52', '79560', '1');
INSERT INTO `npcinfo` VALUES ('21', '53', '82680', '1');
INSERT INTO `npcinfo` VALUES ('21', '54', '85860', '1');
INSERT INTO `npcinfo` VALUES ('21', '55', '89100', '1');
INSERT INTO `npcinfo` VALUES ('21', '56', '92400', '1');
INSERT INTO `npcinfo` VALUES ('21', '57', '95760', '1');
INSERT INTO `npcinfo` VALUES ('21', '58', '99180', '1');
INSERT INTO `npcinfo` VALUES ('21', '59', '102660', '1');
INSERT INTO `npcinfo` VALUES ('21', '60', '106200', '1');
INSERT INTO `npcinfo` VALUES ('21', '61', '109800', '1');
INSERT INTO `npcinfo` VALUES ('21', '62', '113460', '1');
INSERT INTO `npcinfo` VALUES ('21', '63', '117180', '1');
INSERT INTO `npcinfo` VALUES ('21', '64', '120960', '1');
INSERT INTO `npcinfo` VALUES ('21', '65', '124800', '1');
INSERT INTO `npcinfo` VALUES ('21', '66', '128700', '1');
INSERT INTO `npcinfo` VALUES ('21', '67', '132660', '1');
INSERT INTO `npcinfo` VALUES ('21', '68', '136680', '1');
INSERT INTO `npcinfo` VALUES ('21', '69', '140760', '1');
INSERT INTO `npcinfo` VALUES ('21', '70', '144900', '1');
INSERT INTO `npcinfo` VALUES ('21', '71', '149100', '1');
INSERT INTO `npcinfo` VALUES ('21', '72', '153360', '1');
INSERT INTO `npcinfo` VALUES ('21', '73', '157680', '1');
INSERT INTO `npcinfo` VALUES ('21', '74', '162060', '1');
INSERT INTO `npcinfo` VALUES ('21', '75', '166500', '1');
INSERT INTO `npcinfo` VALUES ('21', '76', '171000', '1');
INSERT INTO `npcinfo` VALUES ('21', '77', '175560', '1');
INSERT INTO `npcinfo` VALUES ('21', '78', '180180', '1');
INSERT INTO `npcinfo` VALUES ('21', '79', '184860', '1');
INSERT INTO `npcinfo` VALUES ('21', '80', '189600', '1');
INSERT INTO `npcinfo` VALUES ('21', '81', '194400', '1');
INSERT INTO `npcinfo` VALUES ('21', '82', '199260', '1');
INSERT INTO `npcinfo` VALUES ('21', '83', '204180', '1');
INSERT INTO `npcinfo` VALUES ('21', '84', '209160', '1');
INSERT INTO `npcinfo` VALUES ('21', '85', '214200', '1');
INSERT INTO `npcinfo` VALUES ('21', '86', '219300', '1');
INSERT INTO `npcinfo` VALUES ('21', '87', '224460', '1');
INSERT INTO `npcinfo` VALUES ('21', '88', '229680', '1');
INSERT INTO `npcinfo` VALUES ('21', '89', '234960', '1');
INSERT INTO `npcinfo` VALUES ('21', '90', '240300', '1');
INSERT INTO `npcinfo` VALUES ('21', '91', '245700', '1');
INSERT INTO `npcinfo` VALUES ('21', '92', '251160', '1');
INSERT INTO `npcinfo` VALUES ('21', '93', '256680', '1');
INSERT INTO `npcinfo` VALUES ('21', '94', '262260', '1');
INSERT INTO `npcinfo` VALUES ('21', '95', '267900', '1');
INSERT INTO `npcinfo` VALUES ('21', '96', '273600', '1');
INSERT INTO `npcinfo` VALUES ('21', '97', '279360', '1');
INSERT INTO `npcinfo` VALUES ('21', '98', '285180', '1');
INSERT INTO `npcinfo` VALUES ('21', '99', '291060', '1');
INSERT INTO `npcinfo` VALUES ('21', '100', '297000', '1');
INSERT INTO `npcinfo` VALUES ('21', '101', '303000', '1');
INSERT INTO `npcinfo` VALUES ('21', '102', '309060', '1');
INSERT INTO `npcinfo` VALUES ('21', '103', '315180', '1');
INSERT INTO `npcinfo` VALUES ('21', '104', '321360', '1');
INSERT INTO `npcinfo` VALUES ('21', '105', '327600', '1');
INSERT INTO `npcinfo` VALUES ('21', '106', '333900', '1');
INSERT INTO `npcinfo` VALUES ('21', '107', '340260', '1');
INSERT INTO `npcinfo` VALUES ('21', '108', '346680', '1');
INSERT INTO `npcinfo` VALUES ('21', '109', '353160', '1');
INSERT INTO `npcinfo` VALUES ('21', '110', '359700', '1');
INSERT INTO `npcinfo` VALUES ('21', '111', '366300', '1');
INSERT INTO `npcinfo` VALUES ('21', '112', '372960', '1');
INSERT INTO `npcinfo` VALUES ('21', '113', '379680', '1');
INSERT INTO `npcinfo` VALUES ('21', '114', '386460', '1');
INSERT INTO `npcinfo` VALUES ('21', '115', '393300', '1');
INSERT INTO `npcinfo` VALUES ('21', '116', '400200', '1');
INSERT INTO `npcinfo` VALUES ('21', '117', '407160', '1');
INSERT INTO `npcinfo` VALUES ('21', '118', '414180', '1');
INSERT INTO `npcinfo` VALUES ('21', '119', '421260', '1');
INSERT INTO `npcinfo` VALUES ('21', '120', '428400', '1');
INSERT INTO `npcinfo` VALUES ('21', '121', '435600', '1');
INSERT INTO `npcinfo` VALUES ('21', '122', '442860', '1');
INSERT INTO `npcinfo` VALUES ('21', '123', '450180', '1');
INSERT INTO `npcinfo` VALUES ('21', '124', '457560', '1');
INSERT INTO `npcinfo` VALUES ('21', '125', '465000', '1');
INSERT INTO `npcinfo` VALUES ('21', '126', '472500', '1');
INSERT INTO `npcinfo` VALUES ('21', '127', '480060', '1');
INSERT INTO `npcinfo` VALUES ('21', '128', '487680', '1');
INSERT INTO `npcinfo` VALUES ('21', '129', '495360', '1');
INSERT INTO `npcinfo` VALUES ('21', '130', '503100', '1');
INSERT INTO `npcinfo` VALUES ('21', '131', '510900', '1');
INSERT INTO `npcinfo` VALUES ('21', '132', '518760', '1');
INSERT INTO `npcinfo` VALUES ('21', '133', '526680', '1');
INSERT INTO `npcinfo` VALUES ('21', '134', '534660', '1');
INSERT INTO `npcinfo` VALUES ('21', '135', '542700', '1');
INSERT INTO `npcinfo` VALUES ('21', '136', '550800', '1');
INSERT INTO `npcinfo` VALUES ('21', '137', '558960', '1');
INSERT INTO `npcinfo` VALUES ('21', '138', '567180', '1');
INSERT INTO `npcinfo` VALUES ('21', '139', '575460', '1');
INSERT INTO `npcinfo` VALUES ('21', '140', '583800', '1');
INSERT INTO `npcinfo` VALUES ('21', '141', '592200', '1');
INSERT INTO `npcinfo` VALUES ('21', '142', '600660', '1');
INSERT INTO `npcinfo` VALUES ('21', '143', '609180', '1');
INSERT INTO `npcinfo` VALUES ('21', '144', '617760', '1');
INSERT INTO `npcinfo` VALUES ('21', '145', '626400', '1');
INSERT INTO `npcinfo` VALUES ('21', '146', '635100', '1');
INSERT INTO `npcinfo` VALUES ('21', '147', '643860', '1');
INSERT INTO `npcinfo` VALUES ('21', '148', '652680', '1');
INSERT INTO `npcinfo` VALUES ('21', '149', '661560', '1');
INSERT INTO `npcinfo` VALUES ('21', '150', '670500', '1');
INSERT INTO `npcinfo` VALUES ('21', '151', '679500', '1');
INSERT INTO `npcinfo` VALUES ('21', '152', '688560', '1');
INSERT INTO `npcinfo` VALUES ('21', '153', '697680', '1');
INSERT INTO `npcinfo` VALUES ('21', '154', '706860', '1');
INSERT INTO `npcinfo` VALUES ('21', '155', '716100', '1');
INSERT INTO `npcinfo` VALUES ('21', '156', '725400', '1');
INSERT INTO `npcinfo` VALUES ('21', '157', '734760', '1');
INSERT INTO `npcinfo` VALUES ('21', '158', '744180', '1');
INSERT INTO `npcinfo` VALUES ('21', '159', '753660', '1');
INSERT INTO `npcinfo` VALUES ('21', '160', '763200', '1');
INSERT INTO `npcinfo` VALUES ('21', '161', '772800', '1');
INSERT INTO `npcinfo` VALUES ('21', '162', '782460', '1');
INSERT INTO `npcinfo` VALUES ('21', '163', '792180', '1');
INSERT INTO `npcinfo` VALUES ('21', '164', '801960', '1');
INSERT INTO `npcinfo` VALUES ('21', '165', '811800', '1');
INSERT INTO `npcinfo` VALUES ('21', '166', '821700', '1');
INSERT INTO `npcinfo` VALUES ('21', '167', '831660', '1');
INSERT INTO `npcinfo` VALUES ('21', '168', '841680', '1');
INSERT INTO `npcinfo` VALUES ('21', '169', '851760', '1');
INSERT INTO `npcinfo` VALUES ('21', '170', '861900', '1');
INSERT INTO `npcinfo` VALUES ('21', '171', '872100', '1');
INSERT INTO `npcinfo` VALUES ('21', '172', '882360', '1');
INSERT INTO `npcinfo` VALUES ('21', '173', '892680', '1');
INSERT INTO `npcinfo` VALUES ('21', '174', '903060', '1');
INSERT INTO `npcinfo` VALUES ('21', '175', '913500', '1');
INSERT INTO `npcinfo` VALUES ('21', '176', '924000', '1');
INSERT INTO `npcinfo` VALUES ('21', '177', '934560', '1');
INSERT INTO `npcinfo` VALUES ('21', '178', '945180', '1');
INSERT INTO `npcinfo` VALUES ('21', '179', '955860', '1');
INSERT INTO `npcinfo` VALUES ('21', '180', '966600', '1');
INSERT INTO `npcinfo` VALUES ('21', '181', '977400', '1');
INSERT INTO `npcinfo` VALUES ('21', '182', '988260', '1');
INSERT INTO `npcinfo` VALUES ('21', '183', '999180', '1');
INSERT INTO `npcinfo` VALUES ('21', '184', '1010160', '1');
INSERT INTO `npcinfo` VALUES ('21', '185', '1021200', '1');
INSERT INTO `npcinfo` VALUES ('21', '186', '1032300', '1');
INSERT INTO `npcinfo` VALUES ('21', '187', '1043460', '1');
INSERT INTO `npcinfo` VALUES ('21', '188', '1054680', '1');
INSERT INTO `npcinfo` VALUES ('21', '189', '1065960', '1');
INSERT INTO `npcinfo` VALUES ('21', '190', '1077300', '1');
INSERT INTO `npcinfo` VALUES ('21', '191', '1088700', '1');
INSERT INTO `npcinfo` VALUES ('21', '192', '1100160', '1');
INSERT INTO `npcinfo` VALUES ('21', '193', '1111680', '1');
INSERT INTO `npcinfo` VALUES ('21', '194', '1123260', '1');
INSERT INTO `npcinfo` VALUES ('21', '195', '1134900', '1');
INSERT INTO `npcinfo` VALUES ('21', '196', '1146600', '1');
INSERT INTO `npcinfo` VALUES ('21', '197', '1158360', '1');
INSERT INTO `npcinfo` VALUES ('21', '198', '1170180', '1');
INSERT INTO `npcinfo` VALUES ('21', '199', '1182060', '1');
INSERT INTO `npcinfo` VALUES ('21', '200', '1194000', '1');
INSERT INTO `npcinfo` VALUES ('21', '201', '1206000', '1');
INSERT INTO `npcinfo` VALUES ('21', '202', '1218060', '1');
INSERT INTO `npcinfo` VALUES ('21', '203', '1230180', '1');
INSERT INTO `npcinfo` VALUES ('21', '204', '1242360', '1');
INSERT INTO `npcinfo` VALUES ('21', '205', '1254600', '1');
INSERT INTO `npcinfo` VALUES ('21', '206', '1266900', '1');
INSERT INTO `npcinfo` VALUES ('21', '207', '1279260', '1');
INSERT INTO `npcinfo` VALUES ('21', '208', '1291680', '1');
INSERT INTO `npcinfo` VALUES ('21', '209', '1304160', '1');
INSERT INTO `npcinfo` VALUES ('21', '210', '1316700', '1');
INSERT INTO `npcinfo` VALUES ('21', '211', '1329300', '1');
INSERT INTO `npcinfo` VALUES ('21', '212', '1341960', '1');
INSERT INTO `npcinfo` VALUES ('21', '213', '1354680', '1');
INSERT INTO `npcinfo` VALUES ('21', '214', '1367460', '1');
INSERT INTO `npcinfo` VALUES ('21', '215', '1380300', '1');
INSERT INTO `npcinfo` VALUES ('21', '216', '1393200', '1');
INSERT INTO `npcinfo` VALUES ('21', '217', '1406160', '1');
INSERT INTO `npcinfo` VALUES ('21', '218', '1419180', '1');
INSERT INTO `npcinfo` VALUES ('21', '219', '1432260', '1');
INSERT INTO `npcinfo` VALUES ('21', '220', '1445400', '1');
INSERT INTO `npcinfo` VALUES ('21', '221', '1458600', '1');
INSERT INTO `npcinfo` VALUES ('21', '222', '1471860', '1');
INSERT INTO `npcinfo` VALUES ('21', '223', '1485180', '1');
INSERT INTO `npcinfo` VALUES ('21', '224', '1498560', '1');
INSERT INTO `npcinfo` VALUES ('21', '225', '1512000', '1');
INSERT INTO `npcinfo` VALUES ('21', '226', '1525500', '1');
INSERT INTO `npcinfo` VALUES ('21', '227', '1539060', '1');
INSERT INTO `npcinfo` VALUES ('21', '228', '1552680', '1');
INSERT INTO `npcinfo` VALUES ('21', '229', '1566360', '1');
INSERT INTO `npcinfo` VALUES ('21', '230', '1580100', '1');
INSERT INTO `npcinfo` VALUES ('21', '231', '1593900', '1');
INSERT INTO `npcinfo` VALUES ('21', '232', '1607760', '1');
INSERT INTO `npcinfo` VALUES ('21', '233', '1621680', '1');
INSERT INTO `npcinfo` VALUES ('21', '234', '1635660', '1');
INSERT INTO `npcinfo` VALUES ('21', '235', '1649700', '1');
INSERT INTO `npcinfo` VALUES ('21', '236', '1663800', '1');
INSERT INTO `npcinfo` VALUES ('21', '237', '1677960', '1');
INSERT INTO `npcinfo` VALUES ('21', '238', '1692180', '1');
INSERT INTO `npcinfo` VALUES ('21', '239', '1706460', '1');
INSERT INTO `npcinfo` VALUES ('21', '240', '1720800', '1');
INSERT INTO `npcinfo` VALUES ('21', '241', '1735200', '1');
INSERT INTO `npcinfo` VALUES ('21', '242', '1749660', '1');
INSERT INTO `npcinfo` VALUES ('21', '243', '1764180', '1');
INSERT INTO `npcinfo` VALUES ('21', '244', '1778760', '1');
INSERT INTO `npcinfo` VALUES ('21', '245', '1793400', '1');
INSERT INTO `npcinfo` VALUES ('21', '246', '1808100', '1');
INSERT INTO `npcinfo` VALUES ('21', '247', '1822860', '1');
INSERT INTO `npcinfo` VALUES ('21', '248', '1837680', '1');
INSERT INTO `npcinfo` VALUES ('21', '249', '1852560', '1');
INSERT INTO `npcinfo` VALUES ('21', '250', '1867500', '1');
INSERT INTO `npcinfo` VALUES ('21', '251', '1882500', '1');
INSERT INTO `npcinfo` VALUES ('21', '252', '1897560', '1');
INSERT INTO `npcinfo` VALUES ('21', '253', '1912680', '1');
INSERT INTO `npcinfo` VALUES ('21', '254', '1927860', '1');
INSERT INTO `npcinfo` VALUES ('21', '255', '1943100', '1');
INSERT INTO `npcinfo` VALUES ('33', '1', '0', '1');
INSERT INTO `npcinfo` VALUES ('33', '2', '80', '1');
INSERT INTO `npcinfo` VALUES ('33', '3', '240', '1');
INSERT INTO `npcinfo` VALUES ('33', '4', '480', '1');
INSERT INTO `npcinfo` VALUES ('33', '5', '800', '1');
INSERT INTO `npcinfo` VALUES ('33', '6', '1200', '1');
INSERT INTO `npcinfo` VALUES ('33', '7', '1680', '1');
INSERT INTO `npcinfo` VALUES ('33', '8', '2240', '1');
INSERT INTO `npcinfo` VALUES ('33', '9', '2880', '1');
INSERT INTO `npcinfo` VALUES ('33', '10', '3600', '1');
INSERT INTO `npcinfo` VALUES ('33', '11', '4400', '1');
INSERT INTO `npcinfo` VALUES ('33', '12', '5280', '1');
INSERT INTO `npcinfo` VALUES ('33', '13', '6240', '1');
INSERT INTO `npcinfo` VALUES ('33', '14', '7280', '1');
INSERT INTO `npcinfo` VALUES ('33', '15', '8400', '1');
INSERT INTO `npcinfo` VALUES ('33', '16', '9600', '1');
INSERT INTO `npcinfo` VALUES ('33', '17', '10880', '1');
INSERT INTO `npcinfo` VALUES ('33', '18', '12240', '1');
INSERT INTO `npcinfo` VALUES ('33', '19', '13680', '1');
INSERT INTO `npcinfo` VALUES ('33', '20', '15200', '1');
INSERT INTO `npcinfo` VALUES ('33', '21', '16800', '1');
INSERT INTO `npcinfo` VALUES ('33', '22', '18480', '1');
INSERT INTO `npcinfo` VALUES ('33', '23', '20240', '1');
INSERT INTO `npcinfo` VALUES ('33', '24', '22080', '1');
INSERT INTO `npcinfo` VALUES ('33', '25', '24000', '1');
INSERT INTO `npcinfo` VALUES ('33', '26', '26000', '1');
INSERT INTO `npcinfo` VALUES ('33', '27', '28080', '1');
INSERT INTO `npcinfo` VALUES ('33', '28', '30240', '1');
INSERT INTO `npcinfo` VALUES ('33', '29', '32480', '1');
INSERT INTO `npcinfo` VALUES ('33', '30', '34800', '1');
INSERT INTO `npcinfo` VALUES ('33', '31', '37200', '1');
INSERT INTO `npcinfo` VALUES ('33', '32', '39680', '1');
INSERT INTO `npcinfo` VALUES ('33', '33', '42240', '1');
INSERT INTO `npcinfo` VALUES ('33', '34', '44880', '1');
INSERT INTO `npcinfo` VALUES ('33', '35', '47600', '1');
INSERT INTO `npcinfo` VALUES ('33', '36', '50400', '1');
INSERT INTO `npcinfo` VALUES ('33', '37', '53280', '1');
INSERT INTO `npcinfo` VALUES ('33', '38', '56240', '1');
INSERT INTO `npcinfo` VALUES ('33', '39', '59280', '1');
INSERT INTO `npcinfo` VALUES ('33', '40', '62400', '1');
INSERT INTO `npcinfo` VALUES ('33', '41', '65600', '1');
INSERT INTO `npcinfo` VALUES ('33', '42', '68880', '1');
INSERT INTO `npcinfo` VALUES ('33', '43', '72240', '1');
INSERT INTO `npcinfo` VALUES ('33', '44', '75680', '1');
INSERT INTO `npcinfo` VALUES ('33', '45', '79200', '1');
INSERT INTO `npcinfo` VALUES ('33', '46', '82800', '1');
INSERT INTO `npcinfo` VALUES ('33', '47', '86480', '1');
INSERT INTO `npcinfo` VALUES ('33', '48', '90240', '1');
INSERT INTO `npcinfo` VALUES ('33', '49', '94080', '1');
INSERT INTO `npcinfo` VALUES ('33', '50', '98000', '1');
INSERT INTO `npcinfo` VALUES ('33', '51', '102000', '1');
INSERT INTO `npcinfo` VALUES ('33', '52', '106080', '1');
INSERT INTO `npcinfo` VALUES ('33', '53', '110240', '1');
INSERT INTO `npcinfo` VALUES ('33', '54', '114480', '1');
INSERT INTO `npcinfo` VALUES ('33', '55', '118800', '1');
INSERT INTO `npcinfo` VALUES ('33', '56', '123200', '1');
INSERT INTO `npcinfo` VALUES ('33', '57', '127680', '1');
INSERT INTO `npcinfo` VALUES ('33', '58', '132240', '1');
INSERT INTO `npcinfo` VALUES ('33', '59', '136880', '1');
INSERT INTO `npcinfo` VALUES ('33', '60', '141600', '1');
INSERT INTO `npcinfo` VALUES ('33', '61', '146400', '1');
INSERT INTO `npcinfo` VALUES ('33', '62', '151280', '1');
INSERT INTO `npcinfo` VALUES ('33', '63', '156240', '1');
INSERT INTO `npcinfo` VALUES ('33', '64', '161280', '1');
INSERT INTO `npcinfo` VALUES ('33', '65', '166400', '1');
INSERT INTO `npcinfo` VALUES ('33', '66', '171600', '1');
INSERT INTO `npcinfo` VALUES ('33', '67', '176880', '1');
INSERT INTO `npcinfo` VALUES ('33', '68', '182240', '1');
INSERT INTO `npcinfo` VALUES ('33', '69', '187680', '1');
INSERT INTO `npcinfo` VALUES ('33', '70', '193200', '1');
INSERT INTO `npcinfo` VALUES ('33', '71', '198800', '1');
INSERT INTO `npcinfo` VALUES ('33', '72', '204480', '1');
INSERT INTO `npcinfo` VALUES ('33', '73', '210240', '1');
INSERT INTO `npcinfo` VALUES ('33', '74', '216080', '1');
INSERT INTO `npcinfo` VALUES ('33', '75', '222000', '1');
INSERT INTO `npcinfo` VALUES ('33', '76', '228000', '1');
INSERT INTO `npcinfo` VALUES ('33', '77', '234080', '1');
INSERT INTO `npcinfo` VALUES ('33', '78', '240240', '1');
INSERT INTO `npcinfo` VALUES ('33', '79', '246480', '1');
INSERT INTO `npcinfo` VALUES ('33', '80', '252800', '1');
INSERT INTO `npcinfo` VALUES ('33', '81', '259200', '1');
INSERT INTO `npcinfo` VALUES ('33', '82', '265680', '1');
INSERT INTO `npcinfo` VALUES ('33', '83', '272240', '1');
INSERT INTO `npcinfo` VALUES ('33', '84', '278880', '1');
INSERT INTO `npcinfo` VALUES ('33', '85', '285600', '1');
INSERT INTO `npcinfo` VALUES ('33', '86', '292400', '1');
INSERT INTO `npcinfo` VALUES ('33', '87', '299280', '1');
INSERT INTO `npcinfo` VALUES ('33', '88', '306240', '1');
INSERT INTO `npcinfo` VALUES ('33', '89', '313280', '1');
INSERT INTO `npcinfo` VALUES ('33', '90', '320400', '1');
INSERT INTO `npcinfo` VALUES ('33', '91', '327600', '1');
INSERT INTO `npcinfo` VALUES ('33', '92', '334880', '1');
INSERT INTO `npcinfo` VALUES ('33', '93', '342240', '1');
INSERT INTO `npcinfo` VALUES ('33', '94', '349680', '1');
INSERT INTO `npcinfo` VALUES ('33', '95', '357200', '1');
INSERT INTO `npcinfo` VALUES ('33', '96', '364800', '1');
INSERT INTO `npcinfo` VALUES ('33', '97', '372480', '1');
INSERT INTO `npcinfo` VALUES ('33', '98', '380240', '1');
INSERT INTO `npcinfo` VALUES ('33', '99', '388080', '1');
INSERT INTO `npcinfo` VALUES ('33', '100', '396000', '1');
INSERT INTO `npcinfo` VALUES ('33', '101', '404000', '1');
INSERT INTO `npcinfo` VALUES ('33', '102', '412080', '1');
INSERT INTO `npcinfo` VALUES ('33', '103', '420240', '1');
INSERT INTO `npcinfo` VALUES ('33', '104', '428480', '1');
INSERT INTO `npcinfo` VALUES ('33', '105', '436800', '1');
INSERT INTO `npcinfo` VALUES ('33', '106', '445200', '1');
INSERT INTO `npcinfo` VALUES ('33', '107', '453680', '1');
INSERT INTO `npcinfo` VALUES ('33', '108', '462240', '1');
INSERT INTO `npcinfo` VALUES ('33', '109', '470880', '1');
INSERT INTO `npcinfo` VALUES ('33', '110', '479600', '1');
INSERT INTO `npcinfo` VALUES ('33', '111', '488400', '1');
INSERT INTO `npcinfo` VALUES ('33', '112', '497280', '1');
INSERT INTO `npcinfo` VALUES ('33', '113', '506240', '1');
INSERT INTO `npcinfo` VALUES ('33', '114', '515280', '1');
INSERT INTO `npcinfo` VALUES ('33', '115', '524400', '1');
INSERT INTO `npcinfo` VALUES ('33', '116', '533600', '1');
INSERT INTO `npcinfo` VALUES ('33', '117', '542880', '1');
INSERT INTO `npcinfo` VALUES ('33', '118', '552240', '1');
INSERT INTO `npcinfo` VALUES ('33', '119', '561680', '1');
INSERT INTO `npcinfo` VALUES ('33', '120', '571200', '1');
INSERT INTO `npcinfo` VALUES ('33', '121', '580800', '1');
INSERT INTO `npcinfo` VALUES ('33', '122', '590480', '1');
INSERT INTO `npcinfo` VALUES ('33', '123', '600240', '1');
INSERT INTO `npcinfo` VALUES ('33', '124', '610080', '1');
INSERT INTO `npcinfo` VALUES ('33', '125', '620000', '1');
INSERT INTO `npcinfo` VALUES ('33', '126', '630000', '1');
INSERT INTO `npcinfo` VALUES ('33', '127', '640080', '1');
INSERT INTO `npcinfo` VALUES ('33', '128', '650240', '1');
INSERT INTO `npcinfo` VALUES ('33', '129', '660480', '1');
INSERT INTO `npcinfo` VALUES ('33', '130', '670800', '1');
INSERT INTO `npcinfo` VALUES ('33', '131', '681200', '1');
INSERT INTO `npcinfo` VALUES ('33', '132', '691680', '1');
INSERT INTO `npcinfo` VALUES ('33', '133', '702240', '1');
INSERT INTO `npcinfo` VALUES ('33', '134', '712880', '1');
INSERT INTO `npcinfo` VALUES ('33', '135', '723600', '1');
INSERT INTO `npcinfo` VALUES ('33', '136', '734400', '1');
INSERT INTO `npcinfo` VALUES ('33', '137', '745280', '1');
INSERT INTO `npcinfo` VALUES ('33', '138', '756240', '1');
INSERT INTO `npcinfo` VALUES ('33', '139', '767280', '1');
INSERT INTO `npcinfo` VALUES ('33', '140', '778400', '1');
INSERT INTO `npcinfo` VALUES ('33', '141', '789600', '1');
INSERT INTO `npcinfo` VALUES ('33', '142', '800880', '1');
INSERT INTO `npcinfo` VALUES ('33', '143', '812240', '1');
INSERT INTO `npcinfo` VALUES ('33', '144', '823680', '1');
INSERT INTO `npcinfo` VALUES ('33', '145', '835200', '1');
INSERT INTO `npcinfo` VALUES ('33', '146', '846800', '1');
INSERT INTO `npcinfo` VALUES ('33', '147', '858480', '1');
INSERT INTO `npcinfo` VALUES ('33', '148', '870240', '1');
INSERT INTO `npcinfo` VALUES ('33', '149', '882080', '1');
INSERT INTO `npcinfo` VALUES ('33', '150', '894000', '1');
INSERT INTO `npcinfo` VALUES ('33', '151', '906000', '1');
INSERT INTO `npcinfo` VALUES ('33', '152', '918080', '1');
INSERT INTO `npcinfo` VALUES ('33', '153', '930240', '1');
INSERT INTO `npcinfo` VALUES ('33', '154', '942480', '1');
INSERT INTO `npcinfo` VALUES ('33', '155', '954800', '1');
INSERT INTO `npcinfo` VALUES ('33', '156', '967200', '1');
INSERT INTO `npcinfo` VALUES ('33', '157', '979680', '1');
INSERT INTO `npcinfo` VALUES ('33', '158', '992240', '1');
INSERT INTO `npcinfo` VALUES ('33', '159', '1004880', '1');
INSERT INTO `npcinfo` VALUES ('33', '160', '1017600', '1');
INSERT INTO `npcinfo` VALUES ('33', '161', '1030400', '1');
INSERT INTO `npcinfo` VALUES ('33', '162', '1043280', '1');
INSERT INTO `npcinfo` VALUES ('33', '163', '1056240', '1');
INSERT INTO `npcinfo` VALUES ('33', '164', '1069280', '1');
INSERT INTO `npcinfo` VALUES ('33', '165', '1082400', '1');
INSERT INTO `npcinfo` VALUES ('33', '166', '1095600', '1');
INSERT INTO `npcinfo` VALUES ('33', '167', '1108880', '1');
INSERT INTO `npcinfo` VALUES ('33', '168', '1122240', '1');
INSERT INTO `npcinfo` VALUES ('33', '169', '1135680', '1');
INSERT INTO `npcinfo` VALUES ('33', '170', '1149200', '1');
INSERT INTO `npcinfo` VALUES ('33', '171', '1162800', '1');
INSERT INTO `npcinfo` VALUES ('33', '172', '1176480', '1');
INSERT INTO `npcinfo` VALUES ('33', '173', '1190240', '1');
INSERT INTO `npcinfo` VALUES ('33', '174', '1204080', '1');
INSERT INTO `npcinfo` VALUES ('33', '175', '1218000', '1');
INSERT INTO `npcinfo` VALUES ('33', '176', '1232000', '1');
INSERT INTO `npcinfo` VALUES ('33', '177', '1246080', '1');
INSERT INTO `npcinfo` VALUES ('33', '178', '1260240', '1');
INSERT INTO `npcinfo` VALUES ('33', '179', '1274480', '1');
INSERT INTO `npcinfo` VALUES ('33', '180', '1288800', '1');
INSERT INTO `npcinfo` VALUES ('33', '181', '1303200', '1');
INSERT INTO `npcinfo` VALUES ('33', '182', '1317680', '1');
INSERT INTO `npcinfo` VALUES ('33', '183', '1332240', '1');
INSERT INTO `npcinfo` VALUES ('33', '184', '1346880', '1');
INSERT INTO `npcinfo` VALUES ('33', '185', '1361600', '1');
INSERT INTO `npcinfo` VALUES ('33', '186', '1376400', '1');
INSERT INTO `npcinfo` VALUES ('33', '187', '1391280', '1');
INSERT INTO `npcinfo` VALUES ('33', '188', '1406240', '1');
INSERT INTO `npcinfo` VALUES ('33', '189', '1421280', '1');
INSERT INTO `npcinfo` VALUES ('33', '190', '1436400', '1');
INSERT INTO `npcinfo` VALUES ('33', '191', '1451600', '1');
INSERT INTO `npcinfo` VALUES ('33', '192', '1466880', '1');
INSERT INTO `npcinfo` VALUES ('33', '193', '1482240', '1');
INSERT INTO `npcinfo` VALUES ('33', '194', '1497680', '1');
INSERT INTO `npcinfo` VALUES ('33', '195', '1513200', '1');
INSERT INTO `npcinfo` VALUES ('33', '196', '1528800', '1');
INSERT INTO `npcinfo` VALUES ('33', '197', '1544480', '1');
INSERT INTO `npcinfo` VALUES ('33', '198', '1560240', '1');
INSERT INTO `npcinfo` VALUES ('33', '199', '1576080', '1');
INSERT INTO `npcinfo` VALUES ('33', '200', '1592000', '1');
INSERT INTO `npcinfo` VALUES ('33', '201', '1608000', '1');
INSERT INTO `npcinfo` VALUES ('33', '202', '1624080', '1');
INSERT INTO `npcinfo` VALUES ('33', '203', '1640240', '1');
INSERT INTO `npcinfo` VALUES ('33', '204', '1656480', '1');
INSERT INTO `npcinfo` VALUES ('33', '205', '1672800', '1');
INSERT INTO `npcinfo` VALUES ('33', '206', '1689200', '1');
INSERT INTO `npcinfo` VALUES ('33', '207', '1705680', '1');
INSERT INTO `npcinfo` VALUES ('33', '208', '1722240', '1');
INSERT INTO `npcinfo` VALUES ('33', '209', '1738880', '1');
INSERT INTO `npcinfo` VALUES ('33', '210', '1755600', '1');
INSERT INTO `npcinfo` VALUES ('33', '211', '1772400', '1');
INSERT INTO `npcinfo` VALUES ('33', '212', '1789280', '1');
INSERT INTO `npcinfo` VALUES ('33', '213', '1806240', '1');
INSERT INTO `npcinfo` VALUES ('33', '214', '1823280', '1');
INSERT INTO `npcinfo` VALUES ('33', '215', '1840400', '1');
INSERT INTO `npcinfo` VALUES ('33', '216', '1857600', '1');
INSERT INTO `npcinfo` VALUES ('33', '217', '1874880', '1');
INSERT INTO `npcinfo` VALUES ('33', '218', '1892240', '1');
INSERT INTO `npcinfo` VALUES ('33', '219', '1909680', '1');
INSERT INTO `npcinfo` VALUES ('33', '220', '1927200', '1');
INSERT INTO `npcinfo` VALUES ('33', '221', '1944800', '1');
INSERT INTO `npcinfo` VALUES ('33', '222', '1962480', '1');
INSERT INTO `npcinfo` VALUES ('33', '223', '1980240', '1');
INSERT INTO `npcinfo` VALUES ('33', '224', '1998080', '1');
INSERT INTO `npcinfo` VALUES ('33', '225', '2016000', '1');
INSERT INTO `npcinfo` VALUES ('33', '226', '2034000', '1');
INSERT INTO `npcinfo` VALUES ('33', '227', '2052080', '1');
INSERT INTO `npcinfo` VALUES ('33', '228', '2070240', '1');
INSERT INTO `npcinfo` VALUES ('33', '229', '2088480', '1');
INSERT INTO `npcinfo` VALUES ('33', '230', '2106800', '1');
INSERT INTO `npcinfo` VALUES ('33', '231', '2125200', '1');
INSERT INTO `npcinfo` VALUES ('33', '232', '2143680', '1');
INSERT INTO `npcinfo` VALUES ('33', '233', '2162240', '1');
INSERT INTO `npcinfo` VALUES ('33', '234', '2180880', '1');
INSERT INTO `npcinfo` VALUES ('33', '235', '2199600', '1');
INSERT INTO `npcinfo` VALUES ('33', '236', '2218400', '1');
INSERT INTO `npcinfo` VALUES ('33', '237', '2237280', '1');
INSERT INTO `npcinfo` VALUES ('33', '238', '2256240', '1');
INSERT INTO `npcinfo` VALUES ('33', '239', '2275280', '1');
INSERT INTO `npcinfo` VALUES ('33', '240', '2294400', '1');
INSERT INTO `npcinfo` VALUES ('33', '241', '2313600', '1');
INSERT INTO `npcinfo` VALUES ('33', '242', '2332880', '1');
INSERT INTO `npcinfo` VALUES ('33', '243', '2352240', '1');
INSERT INTO `npcinfo` VALUES ('33', '244', '2371680', '1');
INSERT INTO `npcinfo` VALUES ('33', '245', '2391200', '1');
INSERT INTO `npcinfo` VALUES ('33', '246', '2410800', '1');
INSERT INTO `npcinfo` VALUES ('33', '247', '2430480', '1');
INSERT INTO `npcinfo` VALUES ('33', '248', '2450240', '1');
INSERT INTO `npcinfo` VALUES ('33', '249', '2470080', '1');
INSERT INTO `npcinfo` VALUES ('33', '250', '2490000', '1');
INSERT INTO `npcinfo` VALUES ('33', '251', '2510000', '1');
INSERT INTO `npcinfo` VALUES ('33', '252', '2530080', '1');
INSERT INTO `npcinfo` VALUES ('33', '253', '2550240', '1');
INSERT INTO `npcinfo` VALUES ('33', '254', '2570480', '1');
INSERT INTO `npcinfo` VALUES ('33', '255', '2590800', '1');

-- ----------------------------
-- Table structure for `packet`
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
-- Table structure for `pcbangiplist`
-- ----------------------------
DROP TABLE IF EXISTS `pcbangiplist`;
CREATE TABLE `pcbangiplist` (
  `ip` int(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcbangiplist
-- ----------------------------

-- ----------------------------
-- Table structure for `pendingpresents`
-- ----------------------------
DROP TABLE IF EXISTS `pendingpresents`;
CREATE TABLE `pendingpresents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `present_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `added_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pendingpresents
-- ----------------------------

-- ----------------------------
-- Table structure for `servicestatus`
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
-- Table structure for `stageinfo`
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
-- Table structure for `swordmanrankp`
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
-- Table structure for `totalrankp`
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
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(11) NOT NULL DEFAULT '',
  `e_mail` varchar(50) NOT NULL DEFAULT '',
  `country` smallint(6) NOT NULL DEFAULT '0',
  `NoCountryUpdate` tinyint(1) NOT NULL DEFAULT '0',
  `Authority` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `usercount`
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
-- Table structure for `usergameinfo`
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
  `BanReason` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergameinfo
-- ----------------------------
-- ----------------------------
-- Table structure for `useriteminfo`
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
  `limittime` int(11) NOT NULL,
  `slot` tinyint(1) NOT NULL DEFAULT '1',
  `exp` bigint(60) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useriteminfo
-- ----------------------------

-- ----------------------------
-- Table structure for `userstageinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userstageinfo`;
CREATE TABLE `userstageinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `stage` tinyint(3) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userstageinfo
-- ----------------------------
