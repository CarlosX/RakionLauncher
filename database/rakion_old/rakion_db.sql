/*
Navicat MySQL Data Transfer

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

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
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `gold` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of npcinfo
-- ----------------------------
INSERT INTO `npcinfo` VALUES ('1', '1', '1', '1');
INSERT INTO `npcinfo` VALUES ('2', '1', '1', '1');
INSERT INTO `npcinfo` VALUES ('3', '1', '1', '1');
INSERT INTO `npcinfo` VALUES ('4', '1', '1', '1');
INSERT INTO `npcinfo` VALUES ('5', '1', '1', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
  `limittime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slot` tinyint(1) NOT NULL DEFAULT '0',
  `exp` bigint(60) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userstageinfo
-- ----------------------------