/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : rakion

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2013-04-08 16:42:21
*/

-- ----------------------------
-- Procedure structure for `DeletePending`
-- ----------------------------
DROP PROCEDURE IF EXISTS `DeletePending`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeletePending`()
BEGIN
	DELETE FROM `pendingpresents`;
END
;;
DELIMITER ;
