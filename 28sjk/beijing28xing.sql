/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : beijing28xing

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2018-10-20 15:22:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `think_admin`
-- ----------------------------
DROP TABLE IF EXISTS `think_admin`;
CREATE TABLE `think_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_ip` varchar(255) NOT NULL,
  `last_time` int(10) unsigned NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_login` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_admin
-- ----------------------------
INSERT INTO `think_admin` VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', '115.59.40.48', '1540015031', '', '1', '1');
INSERT INTO `think_admin` VALUES ('3', 'ceshi', 'e10adc3949ba59abbe56e057f20f883e', '113.61.45.91', '1539961662', '测试', '0', '0');

-- ----------------------------
-- Table structure for `think_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `think_admin_log`;
CREATE TABLE `think_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '操作内容',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '操作类型 1=上分 2=下分  3=修改上线  4=修改倍率  5=修改微信收款二维码 6=修改支付宝二维码  7修改客服二维码  ',
  `addtime` int(10) NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='管理员日志表';

-- ----------------------------
-- Records of think_admin_log
-- ----------------------------
INSERT INTO `think_admin_log` VALUES ('1', 'admin', '给玩家668yuanma上分，上分金额10000', '1', '1538894000');
INSERT INTO `think_admin_log` VALUES ('2', 'admin', '修改客服二维码', '7', '1538898815');
INSERT INTO `think_admin_log` VALUES ('3', 'admin', '修改微信收款二维码', '5', '1538898845');
INSERT INTO `think_admin_log` VALUES ('4', 'admin', '修改支付宝收款二维码', '6', '1538898851');
INSERT INTO `think_admin_log` VALUES ('5', 'admin', '修改微信收款二维码', '5', '1539744694');
INSERT INTO `think_admin_log` VALUES ('6', 'admin', '修改支付宝收款二维码', '6', '1539744702');
INSERT INTO `think_admin_log` VALUES ('7', 'admin', '修改支付宝收款二维码', '6', '1539744712');
INSERT INTO `think_admin_log` VALUES ('8', 'admin', '修改客服二维码', '7', '1539745450');
INSERT INTO `think_admin_log` VALUES ('9', 'ceshi', '给玩家ceshi666上分，上分金额80000', '1', '1539962469');
INSERT INTO `think_admin_log` VALUES ('10', 'admin', '修改微信收款二维码', '5', '1540008541');
INSERT INTO `think_admin_log` VALUES ('11', 'admin', '修改微信收款二维码', '5', '1540010145');
INSERT INTO `think_admin_log` VALUES ('12', 'admin', '修改微信收款二维码', '5', '1540010344');
INSERT INTO `think_admin_log` VALUES ('13', 'admin', '给玩家xsdaxa11上分，上分金额100', '1', '1540012993');
INSERT INTO `think_admin_log` VALUES ('14', 'admin', '修改支付宝收款二维码', '6', '1540013638');
INSERT INTO `think_admin_log` VALUES ('15', 'admin', '修改支付宝收款二维码', '6', '1540013645');
INSERT INTO `think_admin_log` VALUES ('16', 'admin', '修改支付宝收款二维码', '6', '1540013668');
INSERT INTO `think_admin_log` VALUES ('17', 'admin', '修改支付宝收款二维码', '6', '1540013672');
INSERT INTO `think_admin_log` VALUES ('18', 'admin', '修改支付宝收款二维码', '6', '1540013673');
INSERT INTO `think_admin_log` VALUES ('19', 'admin', '修改支付宝收款二维码', '6', '1540013673');
INSERT INTO `think_admin_log` VALUES ('20', 'admin', '修改支付宝收款二维码', '6', '1540013674');
INSERT INTO `think_admin_log` VALUES ('21', 'admin', '修改支付宝收款二维码', '6', '1540013706');
INSERT INTO `think_admin_log` VALUES ('22', 'admin', '给玩家xsdaxa11上分，上分金额100', '1', '1540013964');
INSERT INTO `think_admin_log` VALUES ('23', 'admin', '给玩家xsdaxa11上分，上分金额100', '1', '1540014372');
INSERT INTO `think_admin_log` VALUES ('24', 'admin', '给玩家ceshi666上分，上分金额100', '1', '1540015080');
INSERT INTO `think_admin_log` VALUES ('25', 'admin', '给玩家ceshi666下分，下分金额100', '2', '1540015089');
INSERT INTO `think_admin_log` VALUES ('26', 'admin', '手动开奖【加拿大28】，期号【2345279】,开奖号码【1,2,3】', '8', '1540015287');
INSERT INTO `think_admin_log` VALUES ('27', 'admin', '修改客服二维码', '7', '1540015505');
INSERT INTO `think_admin_log` VALUES ('28', 'admin', '修改客服二维码', '7', '1540015522');
INSERT INTO `think_admin_log` VALUES ('29', 'admin', '修改客服二维码', '7', '1540015528');
INSERT INTO `think_admin_log` VALUES ('30', 'admin', '手动开奖【北京赛车】，期号【710301】,开奖号码【08,07,03,09,01】', '8', '1540015776');
INSERT INTO `think_admin_log` VALUES ('31', 'admin', '手动开奖【北京赛车】，期号【710301】,开奖号码【08,07,03,09,01】', '8', '1540015781');
INSERT INTO `think_admin_log` VALUES ('32', 'admin', '手动开奖【六合彩】，期号【2018118】,开奖号码【45,07,11,19,46,32,37】', '8', '1540016610');
INSERT INTO `think_admin_log` VALUES ('33', 'admin', '手动开奖【六合彩】，期号【2018118】,开奖号码【45,07,11,19,46,32,37】', '8', '1540016611');

-- ----------------------------
-- Table structure for `think_caiji`
-- ----------------------------
DROP TABLE IF EXISTS `think_caiji`;
CREATE TABLE `think_caiji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `game` varchar(40) NOT NULL DEFAULT '' COMMENT '类型',
  `periodnumber` varchar(50) NOT NULL DEFAULT '0' COMMENT '期号',
  `awardnumbers` varchar(200) NOT NULL DEFAULT '' COMMENT '开奖号码',
  `awardtime` varchar(50) NOT NULL DEFAULT '' COMMENT '开奖时间',
  `addtime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `next_term` varchar(50) NOT NULL COMMENT '下一期',
  `next_time` varchar(200) NOT NULL COMMENT '下一期开奖时间',
  PRIMARY KEY (`id`),
  KEY `game` (`game`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='数据采集';

-- ----------------------------
-- Records of think_caiji
-- ----------------------------
INSERT INTO `think_caiji` VALUES ('1', 'pk10', '710261', '02,09,10,08,01,05,07,04,06,03', '2018-10-20 10:56:42', '1540004554', '710262', '285');
INSERT INTO `think_caiji` VALUES ('2', 'ssc', '20181020030', '7,9,1,6,2', '2018-10-20 11:00:45', '1540004555', '20181020031', '580');
INSERT INTO `think_caiji` VALUES ('3', 'bj28', '916240', '7,5,3', '2018-10-20 11:00:00', '1540004555', '916241', '285');
INSERT INTO `think_caiji` VALUES ('4', 'pk10', '710267', '07,03,01,05,06,02,08,04,09,10', '2018-10-20 11:27:45', '1540006220', '710268', '285');
INSERT INTO `think_caiji` VALUES ('5', 'ssc', '20181020032', '8,1,9,8,5', '2018-10-20 11:20:45', '1540006222', '20181020033', '580');
INSERT INTO `think_caiji` VALUES ('6', 'bj28', '916245', '4,0,0', '2018-10-20 11:25:00', '1540006223', '916246', '285');
INSERT INTO `think_caiji` VALUES ('7', 'jnd28', '2345235', '8,0,9', '2018-10-20 11:28:50', '1540006223', '2345236', '190');
INSERT INTO `think_caiji` VALUES ('8', 'pk10', '710268', '07,08,09,02,04,01,03,05,06,10', '2018-10-20 11:32:45', '1540006654', '710269', '285');
INSERT INTO `think_caiji` VALUES ('9', 'ssc', '20181020033', '8,8,0,5,8', '2018-10-20 11:30:45', '1540006656', '20181020034', '580');
INSERT INTO `think_caiji` VALUES ('10', 'bj28', '916247', '9,6,6', '2018-10-20 11:35:00', '1540006657', '916248', '285');
INSERT INTO `think_caiji` VALUES ('11', 'jnd28', '2345237', '4,6,8', '2018-10-20 11:35:47', '1540006657', '2345238', '190');
INSERT INTO `think_caiji` VALUES ('12', 'pk10', '710269', '08,06,03,01,10,02,09,07,04,05', '2018-10-20 11:37:45', '1540006672', '710270', '285');
INSERT INTO `think_caiji` VALUES ('13', 'jnd28', '2345238', '1,8,7', '2018-10-20 11:39:17', '1540006777', '2345239', '190');
INSERT INTO `think_caiji` VALUES ('14', 'bj28', '916248', '3,5,4', '2018-10-20 11:40:00', '1540006863', '916249', '285');
INSERT INTO `think_caiji` VALUES ('15', 'ssc', '20181020034', '8,8,0,0,2', '2018-10-20 11:40:45', '1540006965', '20181020035', '580');
INSERT INTO `think_caiji` VALUES ('16', 'pk10', '710270', '10,03,05,01,08,04,06,09,02,07', '2018-10-20 11:42:04', '1540006975', '710271', '285');
INSERT INTO `think_caiji` VALUES ('17', 'jnd28', '2345239', '8,8,5', '2018-10-20 11:42:55', '1540007116', '2345240', '190');
INSERT INTO `think_caiji` VALUES ('18', 'bj28', '916249', '5,7,6', '2018-10-20 11:45:00', '1540007164', '916250', '285');
INSERT INTO `think_caiji` VALUES ('19', 'jnd28', '2345240', '3,1,6', '2018-10-20 11:46:24', '1540007188', '2345241', '190');
INSERT INTO `think_caiji` VALUES ('20', 'pk10', '710271', '08,10,04,05,07,03,06,01,02,09', '2018-10-20 11:46:43', '1540007257', '710272', '285');
INSERT INTO `think_caiji` VALUES ('21', 'bj28', '916250', '3,0,2', '2018-10-20 11:50:00', '1540007458', '916251', '285');
INSERT INTO `think_caiji` VALUES ('22', 'ssc', '20181020035', '3,7,6,6,9', '2018-10-20 11:50:45', '1540007481', '20181020036', '580');
INSERT INTO `think_caiji` VALUES ('23', 'jnd28', '2345241', '1,5,6', '2018-10-20 11:49:52', '1540007488', '2345242', '190');
INSERT INTO `think_caiji` VALUES ('24', 'pk10', '710272', '02,03,01,04,07,08,09,10,05,06', '2018-10-20 11:52:45', '1540007571', '710273', '285');
INSERT INTO `think_caiji` VALUES ('25', 'jnd28', '2345242', '6,9,3', '2018-10-20 11:53:29', '1540007616', '2345243', '190');
INSERT INTO `think_caiji` VALUES ('26', 'bj28', '916251', '6,2,1', '2018-10-20 11:55:00', '1540007754', '916252', '285');
INSERT INTO `think_caiji` VALUES ('27', 'pk10', '710273', '09,07,04,05,06,03,02,10,01,08', '2018-10-20 11:56:44', '1540007853', '710274', '285');
INSERT INTO `think_caiji` VALUES ('28', 'jnd28', '2345243', '0,4,9', '2018-10-20 11:56:49', '1540008002', '2345244', '190');
INSERT INTO `think_caiji` VALUES ('29', 'jnd28', '2345244', '0,2,5', '2018-10-20 12:00:25', '1540008026', '2345245', '190');
INSERT INTO `think_caiji` VALUES ('30', 'bj28', '916252', '1,1,2', '2018-10-20 12:00:00', '1540008055', '916253', '285');
INSERT INTO `think_caiji` VALUES ('31', 'ssc', '20181020036', '4,6,4,9,8', '2018-10-20 12:00:45', '1540008103', '20181020037', '580');
INSERT INTO `think_caiji` VALUES ('32', 'pk10', '710274', '10,06,04,01,05,07,08,03,02,09', '2018-10-20 12:01:43', '1540008155', '710275', '285');
INSERT INTO `think_caiji` VALUES ('33', 'jnd28', '2345245', '3,6,2', '2018-10-20 12:03:52', '1540008267', '2345246', '190');
INSERT INTO `think_caiji` VALUES ('34', 'bj28', '916253', '8,0,6', '2018-10-20 12:05:00', '1540008368', '916254', '285');
INSERT INTO `think_caiji` VALUES ('35', 'pk10', '710275', '04,05,08,01,06,02,07,03,10,09', '2018-10-20 12:07:22', '1540008494', '710276', '285');
INSERT INTO `think_caiji` VALUES ('36', 'jnd28', '2345246', '1,8,5', '2018-10-20 12:07:30', '1540008533', '2345247', '190');
INSERT INTO `think_caiji` VALUES ('37', 'bj28', '916254', '2,2,9', '2018-10-20 12:10:00', '1540008644', '916255', '285');
INSERT INTO `think_caiji` VALUES ('38', 'jnd28', '2345247', '4,6,0', '2018-10-20 12:10:53', '1540008683', '2345248', '190');
INSERT INTO `think_caiji` VALUES ('39', 'ssc', '20181020037', '5,9,8,9,8', '2018-10-20 12:10:45', '1540008691', '20181020038', '580');
INSERT INTO `think_caiji` VALUES ('40', 'pk10', '710276', '09,02,05,07,08,01,04,10,03,06', '2018-10-20 12:12:45', '1540008779', '710277', '285');
INSERT INTO `think_caiji` VALUES ('41', 'jnd28', '2345248', '0,6,1', '2018-10-20 12:14:19', '1540008877', '2345249', '190');
INSERT INTO `think_caiji` VALUES ('42', 'bj28', '916255', '4,6,5', '2018-10-20 12:15:00', '1540008961', '916256', '285');
INSERT INTO `think_caiji` VALUES ('43', 'pk10', '710277', '07,03,01,09,08,02,04,06,05,10', '2018-10-20 12:17:45', '1540009071', '710278', '285');
INSERT INTO `think_caiji` VALUES ('44', 'jnd28', '2345249', '8,5,7', '2018-10-20 12:17:53', '1540009105', '2345250', '190');
INSERT INTO `think_caiji` VALUES ('45', 'bj28', '916256', '6,1,1', '2018-10-20 12:20:00', '1540009254', '916257', '285');
INSERT INTO `think_caiji` VALUES ('46', 'ssc', '20181020038', '0,7,2,2,8', '2018-10-20 12:20:45', '1540009289', '20181020039', '580');
INSERT INTO `think_caiji` VALUES ('47', 'jnd28', '2345250', '9,4,1', '2018-10-20 12:21:20', '1540009296', '2345251', '190');
INSERT INTO `think_caiji` VALUES ('48', 'pk10', '710278', '06,04,07,01,03,02,05,09,08,10', '2018-10-20 12:22:45', '1540009383', '710279', '285');
INSERT INTO `think_caiji` VALUES ('49', 'jnd28', '2345251', '9,9,1', '2018-10-20 12:24:45', '1540009548', '2345252', '190');
INSERT INTO `think_caiji` VALUES ('50', 'bj28', '916257', '6,2,4', '2018-10-20 12:25:00', '1540009577', '916258', '285');
INSERT INTO `think_caiji` VALUES ('51', 'pk10', '710279', '01,06,09,07,03,04,10,02,08,05', '2018-10-20 12:27:45', '1540009681', '710280', '285');
INSERT INTO `think_caiji` VALUES ('52', 'jnd28', '2345252', '4,2,2', '2018-10-20 12:28:14', '1540009725', '2345253', '190');
INSERT INTO `think_caiji` VALUES ('53', 'bj28', '916258', '4,9,1', '2018-10-20 12:30:00', '1540009854', '916259', '285');
INSERT INTO `think_caiji` VALUES ('54', 'ssc', '20181020039', '6,7,4,9,6', '2018-10-20 12:30:45', '1540009898', '20181020040', '580');
INSERT INTO `think_caiji` VALUES ('55', 'jnd28', '2345253', '1,8,4', '2018-10-20 12:31:46', '1540009956', '2345254', '190');
INSERT INTO `think_caiji` VALUES ('56', 'pk10', '710280', '09,03,02,10,05,06,01,07,04,08', '2018-10-20 12:32:45', '1540009970', '710281', '285');
INSERT INTO `think_caiji` VALUES ('57', 'bj28', '916259', '6,0,3', '2018-10-20 12:35:00', '1540010158', '916260', '285');
INSERT INTO `think_caiji` VALUES ('58', 'jnd28', '2345254', '3,9,3', '2018-10-20 12:35:13', '1540010165', '2345255', '190');
INSERT INTO `think_caiji` VALUES ('59', 'pk10', '710281', '09,07,06,05,08,02,01,10,04,03', '2018-10-20 12:36:44', '1540010256', '710282', '285');
INSERT INTO `think_caiji` VALUES ('60', 'bj28', '916260', '2,1,5', '2018-10-20 12:40:00', '1540010457', '916261', '285');
INSERT INTO `think_caiji` VALUES ('61', 'jnd28', '2345255', '8,2,0', '2018-10-20 12:38:44', '1540010475', '2345256', '190');
INSERT INTO `think_caiji` VALUES ('62', 'ssc', '20181020040', '8,2,3,1,9', '2018-10-20 12:40:45', '1540010480', '20181020041', '580');
INSERT INTO `think_caiji` VALUES ('63', 'pk10', '710282', '05,08,06,10,02,09,07,01,03,04', '2018-10-20 12:41:45', '1540010554', '710283', '285');
INSERT INTO `think_caiji` VALUES ('64', 'jnd28', '2345256', '2,2,0', '2018-10-20 12:42:21', '1540010685', '2345257', '190');
INSERT INTO `think_caiji` VALUES ('65', 'bj28', '916261', '2,0,4', '2018-10-20 12:45:00', '1540010745', '916262', '285');
INSERT INTO `think_caiji` VALUES ('66', 'jnd28', '2345257', '2,9,6', '2018-10-20 12:45:45', '1540010745', '2345258', '190');
INSERT INTO `think_caiji` VALUES ('67', 'pk10', '710283', '08,09,02,05,06,03,01,04,07,10', '2018-10-20 12:46:41', '1540010854', '710284', '285');
INSERT INTO `think_caiji` VALUES ('68', 'jnd28', '2345258', '8,0,1', '2018-10-20 12:49:26', '1540010974', '2345259', '190');
INSERT INTO `think_caiji` VALUES ('69', 'bj28', '916262', '7,9,1', '2018-10-20 12:50:00', '1540011055', '916263', '285');
INSERT INTO `think_caiji` VALUES ('70', 'ssc', '20181020041', '3,5,2,3,1', '2018-10-20 12:50:45', '1540011098', '20181020042', '580');
INSERT INTO `think_caiji` VALUES ('71', 'pk10', '710284', '06,08,04,02,01,03,05,07,10,09', '2018-10-20 12:52:45', '1540011181', '710285', '285');
INSERT INTO `think_caiji` VALUES ('72', 'jnd28', '2345259', '0,8,8', '2018-10-20 12:52:56', '1540011286', '2345260', '190');
INSERT INTO `think_caiji` VALUES ('73', 'bj28', '916263', '2,5,4', '2018-10-20 12:55:00', '1540011383', '916264', '285');
INSERT INTO `think_caiji` VALUES ('74', 'jnd28', '2345260', '9,7,7', '2018-10-20 12:56:22', '1540011414', '2345261', '190');
INSERT INTO `think_caiji` VALUES ('75', 'pk10', '710285', '10,09,08,03,01,07,05,02,04,06', '2018-10-20 12:57:45', '1540011472', '710286', '285');
INSERT INTO `think_caiji` VALUES ('76', 'jnd28', '2345261', '4,0,0', '2018-10-20 12:59:49', '1540011593', '2345262', '190');
INSERT INTO `think_caiji` VALUES ('77', 'bj28', '916264', '4,2,3', '2018-10-20 13:00:00', '1540011664', '916265', '285');
INSERT INTO `think_caiji` VALUES ('78', 'ssc', '20181020042', '0,4,9,4,9', '2018-10-20 13:00:45', '1540011702', '20181020043', '580');
INSERT INTO `think_caiji` VALUES ('79', 'pk10', '710286', '05,09,08,07,02,01,04,03,06,10', '2018-10-20 13:02:45', '1540011773', '710287', '285');
INSERT INTO `think_caiji` VALUES ('80', 'jnd28', '2345262', '6,5,4', '2018-10-20 13:03:23', '1540011815', '2345263', '190');
INSERT INTO `think_caiji` VALUES ('81', 'xyft', '20181019180', '05,02,10,07,09,04,01,08,06,03', '2018-10-20 04:04:36', '1540011900', '20181019181', '285');
INSERT INTO `think_caiji` VALUES ('82', 'bj28', '916265', '5,1,5', '2018-10-20 13:05:00', '1540011950', '916266', '285');
INSERT INTO `think_caiji` VALUES ('83', 'jnd28', '2345263', '1,3,3', '2018-10-20 13:06:48', '1540012011', '2345264', '190');
INSERT INTO `think_caiji` VALUES ('84', 'pk10', '710287', '04,02,08,09,10,03,06,01,05,07', '2018-10-20 13:06:42', '1540012055', '710288', '285');
INSERT INTO `think_caiji` VALUES ('85', 'xyft', '20181020001', '05,07,06,08,03,10,01,09,04,02', '2018-10-20 13:09:35', '1540012182', '20181020002', '285');
INSERT INTO `think_caiji` VALUES ('86', 'jnd28', '2345264', '4,9,0', '2018-10-20 13:10:19', '1540012235', '2345265', '190');
INSERT INTO `think_caiji` VALUES ('87', 'bj28', '916266', '1,2,8', '2018-10-20 13:10:00', '1540012258', '916267', '285');
INSERT INTO `think_caiji` VALUES ('88', 'ssc', '20181020043', '6,9,1,3,7', '2018-10-20 13:10:45', '1540012293', '20181020044', '580');
INSERT INTO `think_caiji` VALUES ('89', 'pk10', '710288', '09,04,05,01,02,08,03,06,10,07', '2018-10-20 13:12:45', '1540012376', '710289', '285');
INSERT INTO `think_caiji` VALUES ('90', 'xyft', '20181020002', '10,01,04,05,02,06,07,08,09,03', '2018-10-20 13:14:30', '1540012483', '20181020003', '285');
INSERT INTO `think_caiji` VALUES ('91', 'jnd28', '2345265', '9,2,4', '2018-10-20 13:13:51', '1540012503', '2345266', '190');
INSERT INTO `think_caiji` VALUES ('92', 'bj28', '916267', '6,2,4', '2018-10-20 13:15:00', '1540012554', '916268', '285');
INSERT INTO `think_caiji` VALUES ('93', 'pk10', '710289', '06,07,08,02,04,10,03,09,01,05', '2018-10-20 13:16:43', '1540012655', '710290', '285');
INSERT INTO `think_caiji` VALUES ('94', 'jnd28', '2345266', '1,0,7', '2018-10-20 13:17:16', '1540012665', '2345267', '190');
INSERT INTO `think_caiji` VALUES ('95', 'xyft', '20181020003', '06,03,08,05,10,07,02,09,04,01', '2018-10-20 13:19:25', '1540012773', '20181020004', '285');
INSERT INTO `think_caiji` VALUES ('96', 'bj28', '916268', '0,9,2', '2018-10-20 13:20:00', '1540012856', '916269', '285');
INSERT INTO `think_caiji` VALUES ('97', 'ssc', '20181020044', '6,4,1,8,5', '2018-10-20 13:20:45', '1540012888', '20181020045', '580');
INSERT INTO `think_caiji` VALUES ('98', 'jnd28', '2345267', '9,2,4', '2018-10-20 13:20:46', '1540012913', '2345268', '190');
INSERT INTO `think_caiji` VALUES ('99', 'pk10', '710290', '08,07,02,05,10,04,06,09,03,01', '2018-10-20 13:21:44', '1540012955', '710291', '285');
INSERT INTO `think_caiji` VALUES ('100', 'jnd28', '2345268', '1,5,9', '2018-10-20 13:24:20', '1540013076', '2345269', '190');
INSERT INTO `think_caiji` VALUES ('101', 'xyft', '20181020004', '02,05,01,10,03,08,09,06,07,04', '2018-10-20 13:24:33', '1540013083', '20181020005', '285');
INSERT INTO `think_caiji` VALUES ('102', 'bj28', '916269', '3,1,4', '2018-10-20 13:25:00', '1540013171', '916270', '285');
INSERT INTO `think_caiji` VALUES ('103', 'pk10', '710291', '08,07,05,09,04,01,10,06,02,03', '2018-10-20 13:26:43', '1540013252', '710292', '285');
INSERT INTO `think_caiji` VALUES ('104', 'jnd28', '2345269', '8,2,9', '2018-10-20 13:27:50', '1540013268', '2345270', '190');
INSERT INTO `think_caiji` VALUES ('105', 'xyft', '20181020005', '07,10,04,09,02,01,05,06,03,08', '2018-10-20 13:29:40', '1540013380', '20181020006', '285');
INSERT INTO `think_caiji` VALUES ('106', 'bj28', '916270', '8,9,1', '2018-10-20 13:30:00', '1540013453', '916271', '285');
INSERT INTO `think_caiji` VALUES ('107', 'jnd28', '2345270', '7,8,1', '2018-10-20 13:31:17', '1540013484', '2345271', '190');
INSERT INTO `think_caiji` VALUES ('108', 'ssc', '20181020045', '1,9,9,5,1', '2018-10-20 13:30:45', '1540013487', '20181020046', '580');
INSERT INTO `think_caiji` VALUES ('109', 'pk10', '710292', '06,01,02,10,03,09,08,07,05,04', '2018-10-20 13:32:45', '1540013576', '710293', '285');
INSERT INTO `think_caiji` VALUES ('110', 'xyft', '20181020006', '06,01,03,05,08,09,02,10,04,07', '2018-10-20 13:34:35', '1540013680', '20181020007', '285');
INSERT INTO `think_caiji` VALUES ('111', 'jnd28', '2345271', '8,2,3', '2018-10-20 13:34:52', '1540013706', '2345272', '190');
INSERT INTO `think_caiji` VALUES ('112', 'bj28', '916271', '4,5,4', '2018-10-20 13:35:00', '1540013759', '916272', '285');
INSERT INTO `think_caiji` VALUES ('113', 'pk10', '710293', '10,04,02,07,05,06,03,08,09,01', '2018-10-20 13:36:42', '1540013852', '710294', '285');
INSERT INTO `think_caiji` VALUES ('114', 'jnd28', '2345272', '1,4,6', '2018-10-20 13:38:12', '1540013929', '2345273', '190');
INSERT INTO `think_caiji` VALUES ('115', 'xyft', '20181020007', '01,06,10,09,07,04,02,03,05,08', '2018-10-20 13:39:36', '1540013982', '20181020008', '285');
INSERT INTO `think_caiji` VALUES ('116', 'bj28', '916272', '6,2,7', '2018-10-20 13:40:00', '1540014063', '916273', '285');
INSERT INTO `think_caiji` VALUES ('117', 'ssc', '20181020046', '9,5,0,2,2', '2018-10-20 13:40:45', '1540014081', '20181020047', '580');
INSERT INTO `think_caiji` VALUES ('118', 'jnd28', '2345273', '0,3,0', '2018-10-20 13:41:59', '1540014126', '2345274', '190');
INSERT INTO `think_caiji` VALUES ('119', 'pk10', '710294', '01,10,03,04,06,09,05,02,07,08', '2018-10-20 13:42:05', '1540014177', '710295', '285');
INSERT INTO `think_caiji` VALUES ('120', 'xyft', '20181020008', '06,09,01,02,08,03,07,10,04,05', '2018-10-20 13:44:25', '1540014276', '20181020009', '285');
INSERT INTO `think_caiji` VALUES ('121', 'jnd28', '2345274', '0,3,7', '2018-10-20 13:45:20', '1540014335', '2345275', '190');
INSERT INTO `think_caiji` VALUES ('122', 'bj28', '916273', '7,0,6', '2018-10-20 13:45:00', '1540014358', '916274', '285');
INSERT INTO `think_caiji` VALUES ('123', 'pk10', '710295', '09,01,07,10,03,02,04,08,05,06', '2018-10-20 13:47:22', '1540014494', '710296', '285');
INSERT INTO `think_caiji` VALUES ('124', 'jnd28', '2345275', '3,0,0', '2018-10-20 13:48:48', '1540014525', '2345276', '190');
INSERT INTO `think_caiji` VALUES ('125', 'xyft', '20181020009', '08,10,07,06,01,09,03,04,05,02', '2018-10-20 13:49:36', '1540014580', '20181020010', '285');
INSERT INTO `think_caiji` VALUES ('126', 'bj28', '916274', '8,6,2', '2018-10-20 13:50:00', '1540014653', '916275', '285');
INSERT INTO `think_caiji` VALUES ('127', 'ssc', '20181020047', '2,1,6,6,9', '2018-10-20 13:50:45', '1540014699', '20181020048', '580');
INSERT INTO `think_caiji` VALUES ('128', 'jnd28', '2345276', '4,1,1', '2018-10-20 13:52:23', '1540014755', '2345277', '190');
INSERT INTO `think_caiji` VALUES ('129', 'pk10', '710296', '02,05,10,04,06,09,07,01,08,03', '2018-10-20 13:51:44', '1540014755', '710297', '285');
INSERT INTO `think_caiji` VALUES ('130', 'xyft', '20181020010', '09,01,03,02,05,06,04,08,10,07', '2018-10-20 13:54:25', '1540014874', '20181020011', '285');
INSERT INTO `think_caiji` VALUES ('131', 'bj28', '916275', '0,1,8', '2018-10-20 13:55:00', '1540014947', '916276', '285');
INSERT INTO `think_caiji` VALUES ('132', 'jnd28', '2345277', '2,0,1', '2018-10-20 13:55:52', '1540014965', '2345278', '190');
INSERT INTO `think_caiji` VALUES ('133', 'pk10', '710297', '09,04,08,05,07,02,01,06,03,10', '2018-10-20 13:57:45', '1540015075', '710298', '285');
INSERT INTO `think_caiji` VALUES ('134', 'xyft', '20181020011', '08,01,02,05,03,09,06,10,07,04', '2018-10-20 13:59:37', '1540015180', '20181020012', '285');
INSERT INTO `think_caiji` VALUES ('135', 'jnd28', '2345278', '2,2,2', '2018-10-20 13:59:24', '1540015186', '2345279', '190');
INSERT INTO `think_caiji` VALUES ('136', 'bj28', '916276', '6,9,4', '2018-10-20 14:00:00', '1540015255', '916277', '285');
INSERT INTO `think_caiji` VALUES ('137', 'ssc', '20181020048', '5,6,2,0,0', '2018-10-20 14:00:45', '1540015290', '20181020049', '580');
INSERT INTO `think_caiji` VALUES ('138', 'pk10', '710298', '09,02,05,03,08,01,10,04,07,06', '2018-10-20 14:02:45', '1540015371', '710299', '285');
INSERT INTO `think_caiji` VALUES ('139', 'jnd28', '2345279', '6,2,7', '2018-10-20 14:02:51', '1540015394', '2345280', '190');
INSERT INTO `think_caiji` VALUES ('140', 'xyft', '20181020012', '05,01,04,03,08,06,02,10,09,07', '2018-10-20 14:04:39', '1540015485', '20181020013', '285');
INSERT INTO `think_caiji` VALUES ('141', 'bj28', '916277', '3,7,1', '2018-10-20 14:05:00', '1540015551', '916278', '285');
INSERT INTO `think_caiji` VALUES ('142', 'jnd28', '2345280', '8,8,8', '2018-10-20 14:06:18', '1540015622', '2345281', '190');
INSERT INTO `think_caiji` VALUES ('143', 'pk10', '710299', '10,04,01,03,08,06,09,07,02,05', '2018-10-20 14:07:04', '1540015675', '710300', '285');
INSERT INTO `think_caiji` VALUES ('144', 'xyft', '20181020013', '06,10,02,07,04,01,09,08,03,05', '2018-10-20 14:09:37', '1540015781', '20181020014', '285');
INSERT INTO `think_caiji` VALUES ('145', 'jnd28', '2345281', '7,0,4', '2018-10-20 14:09:53', '1540015834', '2345282', '190');
INSERT INTO `think_caiji` VALUES ('146', 'bj28', '916278', '8,8,6', '2018-10-20 14:10:00', '1540015876', '916279', '285');
INSERT INTO `think_caiji` VALUES ('147', 'ssc', '20181020049', '5,6,8,7,7', '2018-10-20 14:10:45', '1540015893', '20181020050', '580');
INSERT INTO `think_caiji` VALUES ('148', 'pk10', '710300', '05,01,07,09,08,06,04,03,02,10', '2018-10-20 14:12:45', '1540015968', '710301', '285');
INSERT INTO `think_caiji` VALUES ('149', 'jnd28', '2345282', '8,6,7', '2018-10-20 14:13:16', '1540015996', '2345283', '190');
INSERT INTO `think_caiji` VALUES ('150', 'xyft', '20181020014', '05,06,04,02,08,09,07,03,01,10', '2018-10-20 14:14:35', '1540016083', '20181020015', '285');
INSERT INTO `think_caiji` VALUES ('151', 'bj28', '916279', '3,0,5', '2018-10-20 14:15:00', '1540016151', '916280', '285');
INSERT INTO `think_caiji` VALUES ('152', 'jnd28', '2345283', '3,3,4', '2018-10-20 14:16:45', '1540016223', '2345284', '190');
INSERT INTO `think_caiji` VALUES ('153', 'pk10', '710301', '06,03,07,01,04,02,08,05,10,09', '2018-10-20 14:16:42', '1540016252', '710302', '285');
INSERT INTO `think_caiji` VALUES ('154', 'xyft', '20181020015', '07,09,03,05,06,04,08,01,10,02', '2018-10-20 14:19:38', '1540016380', '20181020016', '285');
INSERT INTO `think_caiji` VALUES ('155', 'jnd28', '2345284', '3,4,6', '2018-10-20 14:20:20', '1540016424', '2345285', '190');
INSERT INTO `think_caiji` VALUES ('156', 'bj28', '916280', '8,2,5', '2018-10-20 14:20:00', '1540016463', '916281', '285');
INSERT INTO `think_caiji` VALUES ('157', 'ssc', '20181020050', '6,9,4,9,2', '2018-10-20 14:20:45', '1540016483', '20181020051', '580');
INSERT INTO `think_caiji` VALUES ('158', 'pk10', '710302', '01,06,10,09,05,08,07,04,02,03', '2018-10-20 14:21:43', '1540016553', '710303', '285');
INSERT INTO `think_caiji` VALUES ('159', 'jnd28', '2345285', '9,6,3', '2018-10-20 14:23:55', '1540016645', '2345286', '190');
INSERT INTO `think_caiji` VALUES ('160', 'xyft', '20181020016', '06,10,07,03,02,05,01,04,08,09', '2018-10-20 14:24:25', '1540016674', '20181020017', '285');
INSERT INTO `think_caiji` VALUES ('161', 'bj28', '916281', '2,7,9', '2018-10-20 14:25:00', '1540016752', '916282', '285');
INSERT INTO `think_caiji` VALUES ('162', 'jnd28', '2345286', '3,4,8', '2018-10-20 14:27:17', '1540016865', '2345287', '190');
INSERT INTO `think_caiji` VALUES ('163', 'pk10', '710303', '08,02,09,10,05,06,04,03,07,01', '2018-10-20 14:27:45', '1540016875', '710304', '285');
INSERT INTO `think_caiji` VALUES ('164', 'lhc', '2018118', '45,7,11,19,46,32,37', '2018-10-16 21:46:24', '1540016903', '2018119', '0');
INSERT INTO `think_caiji` VALUES ('165', 'xyft', '20181020017', '10,07,03,06,05,04,09,08,02,01', '2018-10-20 14:29:37', '1540016980', '20181020018', '285');
INSERT INTO `think_caiji` VALUES ('166', 'bj28', '916282', '6,8,6', '2018-10-20 14:30:00', '1540017058', '916283', '285');
INSERT INTO `think_caiji` VALUES ('167', 'ssc', '20181020051', '3,5,7,1,4', '2018-10-20 14:30:45', '1540017081', '20181020052', '580');
INSERT INTO `think_caiji` VALUES ('168', 'jnd28', '2345287', '3,4,3', '2018-10-20 14:31:21', '1540017088', '2345288', '190');
INSERT INTO `think_caiji` VALUES ('169', 'pk10', '710304', '06,01,10,02,08,09,05,04,07,03', '2018-10-20 14:31:44', '1540017153', '710305', '285');
INSERT INTO `think_caiji` VALUES ('170', 'xyft', '20181020018', '02,04,06,01,05,08,03,07,09,10', '2018-10-20 14:34:25', '1540017275', '20181020019', '285');
INSERT INTO `think_caiji` VALUES ('171', 'jnd28', '2345288', '1,5,9', '2018-10-20 14:34:23', '1540017313', '2345289', '190');
INSERT INTO `think_caiji` VALUES ('172', 'bj28', '916283', '2,7,0', '2018-10-20 14:35:00', '1540017354', '916284', '285');
INSERT INTO `think_caiji` VALUES ('173', 'pk10', '710305', '01,04,10,05,03,07,02,09,08,06', '2018-10-20 14:37:45', '1540017473', '710306', '285');
INSERT INTO `think_caiji` VALUES ('174', 'jnd28', '2345289', '3,5,2', '2018-10-20 14:37:49', '1540017526', '2345290', '190');
INSERT INTO `think_caiji` VALUES ('175', 'xyft', '20181020019', '10,01,04,02,06,09,03,05,08,07', '2018-10-20 14:39:36', '1540017580', '20181020020', '285');
INSERT INTO `think_caiji` VALUES ('176', 'bj28', '916284', '9,4,3', '2018-10-20 14:40:00', '1540017655', '916285', '285');
INSERT INTO `think_caiji` VALUES ('177', 'ssc', '20181020052', '5,4,8,2,0', '2018-10-20 14:40:45', '1540017687', '20181020053', '580');
INSERT INTO `think_caiji` VALUES ('178', 'pk10', '710306', '07,06,05,02,03,08,04,10,09,01', '2018-10-20 14:41:43', '1540017752', '710307', '285');
INSERT INTO `think_caiji` VALUES ('179', 'jnd28', '2345290', '2,4,3', '2018-10-20 14:41:11', '1540017755', '2345291', '190');
INSERT INTO `think_caiji` VALUES ('180', 'xyft', '20181020020', '03,05,04,01,08,07,10,09,02,06', '2018-10-20 14:44:35', '1540017882', '20181020021', '285');
INSERT INTO `think_caiji` VALUES ('181', 'jnd28', '2345291', '3,5,9', '2018-10-20 14:44:40', '1540017926', '2345292', '190');
INSERT INTO `think_caiji` VALUES ('182', 'bj28', '916285', '7,8,7', '2018-10-20 14:45:00', '1540017952', '916286', '285');
INSERT INTO `think_caiji` VALUES ('183', 'pk10', '710310', '02,05,04,06,07,09,01,10,08,03', '2018-10-20 15:02:45', '1540018992', '710311', '285');
INSERT INTO `think_caiji` VALUES ('184', 'xyft', '20181020023', '07,06,10,01,03,09,08,05,04,02', '2018-10-20 14:59:36', '1540018993', '20181020024', '285');
INSERT INTO `think_caiji` VALUES ('185', 'ssc', '20181020054', '3,7,0,6,6', '2018-10-20 15:00:45', '1540018994', '20181020055', '580');
INSERT INTO `think_caiji` VALUES ('186', 'bj28', '916288', '9,4,1', '2018-10-20 15:00:00', '1540018994', '916289', '285');
INSERT INTO `think_caiji` VALUES ('187', 'jnd28', '2345296', '1,6,3', '2018-10-20 15:02:19', '1540018995', '2345297', '190');
INSERT INTO `think_caiji` VALUES ('188', 'xyft', '20181020024', '05,03,06,10,07,08,01,09,02,04', '2018-10-20 15:04:37', '1540019083', '20181020025', '285');
INSERT INTO `think_caiji` VALUES ('189', 'bj28', '916289', '4,2,8', '2018-10-20 15:05:00', '1540019138', '916290', '285');
INSERT INTO `think_caiji` VALUES ('190', 'jnd28', '2345297', '8,0,4', '2018-10-20 15:05:51', '1540019223', '2345298', '190');
INSERT INTO `think_caiji` VALUES ('191', 'pk10', '710311', '07,03,05,01,02,09,04,08,06,10', '2018-10-20 15:07:45', '1540019274', '710312', '285');
INSERT INTO `think_caiji` VALUES ('192', 'jnd28', '2345298', '9,7,1', '2018-10-20 15:09:17', '1540019367', '2345299', '190');
INSERT INTO `think_caiji` VALUES ('193', 'xyft', '20181020025', '04,10,03,06,01,07,08,02,09,05', '2018-10-20 15:09:25', '1540019377', '20181020026', '285');
INSERT INTO `think_caiji` VALUES ('194', 'bj28', '916290', '3,2,8', '2018-10-20 15:10:00', '1540019441', '916291', '285');
INSERT INTO `think_caiji` VALUES ('195', 'ssc', '20181020055', '3,0,2,6,8', '2018-10-20 15:10:45', '1540019491', '20181020056', '580');
INSERT INTO `think_caiji` VALUES ('196', 'pk10', '710312', '09,06,02,04,03,08,01,07,10,05', '2018-10-20 15:11:45', '1540019557', '710313', '285');
INSERT INTO `think_caiji` VALUES ('197', 'jnd28', '2345299', '9,3,2', '2018-10-20 15:12:55', '1540019597', '2345300', '190');
INSERT INTO `think_caiji` VALUES ('198', 'xyft', '20181020026', '02,08,01,09,10,05,07,04,06,03', '2018-10-20 15:14:25', '1540019678', '20181020027', '285');
INSERT INTO `think_caiji` VALUES ('199', 'bj28', '916291', '9,5,6', '2018-10-20 15:15:00', '1540019764', '916292', '285');
INSERT INTO `think_caiji` VALUES ('200', 'jnd28', '2345300', '4,3,8', '2018-10-20 15:16:16', '1540019813', '2345301', '190');
INSERT INTO `think_caiji` VALUES ('201', 'pk10', '710313', '09,06,04,03,01,05,07,02,08,10', '2018-10-20 15:17:45', '1540019866', '710314', '285');
INSERT INTO `think_caiji` VALUES ('202', 'xyft', '20181020027', '05,03,09,10,07,01,08,06,02,04', '2018-10-20 15:19:36', '1540019981', '20181020028', '285');
INSERT INTO `think_caiji` VALUES ('203', 'jnd28', '2345301', '1,1,0', '2018-10-20 15:19:50', '1540020002', '2345302', '190');
INSERT INTO `think_caiji` VALUES ('204', 'bj28', '916292', '1,8,5', '2018-10-20 15:20:00', '1540020049', '916293', '285');
INSERT INTO `think_caiji` VALUES ('205', 'ssc', '20181020056', '6,2,5,9,6', '2018-10-20 15:20:45', '1540020085', '20181020057', '580');
INSERT INTO `think_caiji` VALUES ('206', 'pk10', '710314', '07,02,03,01,04,10,06,05,09,08', '2018-10-20 15:21:44', '1540020157', '710315', '285');

-- ----------------------------
-- Table structure for `think_caiji2`
-- ----------------------------
DROP TABLE IF EXISTS `think_caiji2`;
CREATE TABLE `think_caiji2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game` varchar(255) DEFAULT NULL,
  `periodnumber` varchar(255) DEFAULT NULL,
  `awardnumbers` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of think_caiji2
-- ----------------------------
INSERT INTO `think_caiji2` VALUES ('4', 'jnd28', '2345279', '1,2,3');

-- ----------------------------
-- Table structure for `think_config`
-- ----------------------------
DROP TABLE IF EXISTS `think_config`;
CREATE TABLE `think_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kefu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_config
-- ----------------------------
INSERT INTO `think_config` VALUES ('3', '/carousel/kefu/2018-10-20/5bcabe8aca2dd.png');
INSERT INTO `think_config` VALUES ('2', '/carousel/kefu/2018-10-20/5bcab16880bef.png');

-- ----------------------------
-- Table structure for `think_config_one`
-- ----------------------------
DROP TABLE IF EXISTS `think_config_one`;
CREATE TABLE `think_config_one` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(70) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_config_one
-- ----------------------------
INSERT INTO `think_config_one` VALUES ('11', 'CAIJI_KEY', '1', '采集接口密钥', '1507538863', '1', 'tb86f8b1f34b151efk', '3');
INSERT INTO `think_config_one` VALUES ('20', 'WEIXIN_APPID', '1', 'WEIXIN_APPID', '1384418383', '1', 'wx5e1d4135a1ba5064', '4');
INSERT INTO `think_config_one` VALUES ('21', 'WEIXIN_APPSECRET', '1', 'WEIXIN_APPSECRET', '1379313407', '1', '0d944a76448c198988970371553f726c', '6');
INSERT INTO `think_config_one` VALUES ('35', 'SERVER_IP', '1', 'SERVER_IP', '1507535879', '1', '122.114.211.37', '0');
INSERT INTO `think_config_one` VALUES ('36', 'is_ctrl_xjp28', '0', '是否控制新加坡28输赢', '1507535879', '1', '0', '0');

-- ----------------------------
-- Table structure for `think_fenadd`
-- ----------------------------
DROP TABLE IF EXISTS `think_fenadd`;
CREATE TABLE `think_fenadd` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `t_id` int(10) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(255) NOT NULL,
  `headimgurl` varchar(255) NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `check` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '已充值',
  `addtime` int(10) NOT NULL DEFAULT '0' COMMENT '申请时间',
  `sftime` int(10) NOT NULL DEFAULT '0' COMMENT '上分时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='上下分';

-- ----------------------------
-- Records of think_fenadd
-- ----------------------------
INSERT INTO `think_fenadd` VALUES ('1', '10', '0', '分享', 'http://thirdwx.qlogo.cn/mmopen/vi_32/4mnnHwIibTsHyOXoRHRibkF4vp3wZf8DwYVrpIIHF9y5Y3yf8p8cYlcKdjus8wrQHFENaPAmicF3zOFZn9sdRT1Kw/132', '100.00', '100.00', '1', '1', '1525798168', '1525828022');
INSERT INTO `think_fenadd` VALUES ('2', '12', '0', '柠檬水', 'http://thirdwx.qlogo.cn/mmopen/vi_32/TjBP52vlCWSx8H63Kf7DoZjJFuPn9gPY6dehsJVGOuoETBwLibIsVX96e5FuNmGBB4SLVPyicjsztOjC6GKOaMAg/132', '1.00', '0.00', '2', '0', '1525841144', '0');
INSERT INTO `think_fenadd` VALUES ('3', '10', '0', '分享', 'http://thirdwx.qlogo.cn/mmopen/vi_32/4mnnHwIibTsHyOXoRHRibkF4vp3wZf8DwYVrpIIHF9y5Y3yf8p8cYlcKdjus8wrQHFENaPAmicF3zOFZn9sdRT1Kw/132', '10000.00', '70.00', '2', '0', '1525854097', '0');
INSERT INTO `think_fenadd` VALUES ('4', '9', '0', 'xsdaxa11', 'xsdaxa11', '100.00', '100.00', '1', '1', '1540012896', '1540012993');
INSERT INTO `think_fenadd` VALUES ('5', '9', '0', 'xsdaxa11', '/Public/Home/img/face/3.png', '100.00', '100.00', '1', '1', '1540013896', '1540013964');
INSERT INTO `think_fenadd` VALUES ('6', '9', '0', 'xsdaxa11', '/Public/Home/img/face/3.png', '100.00', '200.00', '1', '1', '1540014356', '1540014372');
INSERT INTO `think_fenadd` VALUES ('7', '4', '0', 'ceshi666', '/Public/Home/img/face/3.png', '100.00', '80100.00', '1', '1', '1540015041', '1540015081');

-- ----------------------------
-- Table structure for `think_fenxia`
-- ----------------------------
DROP TABLE IF EXISTS `think_fenxia`;
CREATE TABLE `think_fenxia` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `t_id` int(10) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `headimgurl` varchar(255) NOT NULL DEFAULT '',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '已下分',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '2 支付宝 1微信 3银行卡',
  `alipay_account` varchar(50) NOT NULL DEFAULT '' COMMENT '支付宝帐号',
  `wx_account` varchar(50) NOT NULL DEFAULT '' COMMENT '微信帐号',
  `bank_account` varchar(50) NOT NULL DEFAULT '',
  `back_address` varchar(50) NOT NULL DEFAULT '',
  `back_name` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `xftime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='上下分';

-- ----------------------------
-- Records of think_fenxia
-- ----------------------------
INSERT INTO `think_fenxia` VALUES ('1', '4', '0', 'ceshi666', '/Public/Home/img/face/3.png', '100.00', '80000.00', '1', '1', '', '', '', '', '', '1540015073', '1540015089');

-- ----------------------------
-- Table structure for `think_fh`
-- ----------------------------
DROP TABLE IF EXISTS `think_fh`;
CREATE TABLE `think_fh` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '代理id',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '代理昵称',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '代理用户号',
  `starttime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `water` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总流水',
  `fh_rate` int(10) NOT NULL DEFAULT '0' COMMENT '分红比例',
  `ying` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '总输赢',
  `fh_money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '应发分红',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='代理分红记录';

-- ----------------------------
-- Records of think_fh
-- ----------------------------

-- ----------------------------
-- Table structure for `think_fs_date`
-- ----------------------------
DROP TABLE IF EXISTS `think_fs_date`;
CREATE TABLE `think_fs_date` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fs_date` varchar(20) NOT NULL DEFAULT '' COMMENT '返水日期',
  `water` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '返水当天流水',
  `fs_money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '当天返水金额',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `fs_date` (`fs_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='返水记录表';

-- ----------------------------
-- Records of think_fs_date
-- ----------------------------
INSERT INTO `think_fs_date` VALUES ('1', '2018-04-12', '300.00', '4.50', '1523533984');

-- ----------------------------
-- Table structure for `think_fs_details`
-- ----------------------------
DROP TABLE IF EXISTS `think_fs_details`;
CREATE TABLE `think_fs_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fs_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '返水日期id',
  `date` varchar(20) NOT NULL DEFAULT '',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `headimgurl` varchar(200) NOT NULL DEFAULT '' COMMENT '头像',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '返水金额',
  `water` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '流水金额',
  PRIMARY KEY (`id`),
  KEY `fs_id` (`fs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='返水明细';

-- ----------------------------
-- Records of think_fs_details
-- ----------------------------
INSERT INTO `think_fs_details` VALUES ('1', '1', '2018-04-12', '1', 'bo0123', '', '3.00', '200.00');
INSERT INTO `think_fs_details` VALUES ('2', '1', '2018-04-12', '2', 'test1', '', '1.50', '100.00');

-- ----------------------------
-- Table structure for `think_integral`
-- ----------------------------
DROP TABLE IF EXISTS `think_integral`;
CREATE TABLE `think_integral` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `t_id` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `type` int(1) unsigned NOT NULL,
  `ip` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_integral
-- ----------------------------
INSERT INTO `think_integral` VALUES ('1', '1', '0', '1522727736', '444444', '3', '127.0.0.1', 'bo0123', 'bo0123', '444444.00');
INSERT INTO `think_integral` VALUES ('2', '2', '1', '1523533586', '5000', '1', '127.0.0.1', 'test1', 'test1', '5000.00');
INSERT INTO `think_integral` VALUES ('3', '3', '0', '1538894000', '10000', '1', '127.0.0.1', '668yuanma', '668yuanma', '10000.00');
INSERT INTO `think_integral` VALUES ('4', '4', '0', '1539962469', '80000', '1', '113.61.45.91', 'ceshi666', 'ceshi666', '80000.00');
INSERT INTO `think_integral` VALUES ('5', '9', '0', '1540012993', '100', '1', '183.226.53.60', 'xsdaxa11', 'xsdaxa11', '100.00');
INSERT INTO `think_integral` VALUES ('6', '9', '0', '1540013964', '100', '1', '183.226.53.60', 'xsdaxa11', 'xsdaxa11', '100.00');
INSERT INTO `think_integral` VALUES ('7', '9', '0', '1540014372', '100', '1', '183.226.53.60', 'xsdaxa11', 'xsdaxa11', '200.00');
INSERT INTO `think_integral` VALUES ('8', '4', '0', '1540015080', '100', '1', '183.226.53.60', 'ceshi666', 'ceshi666', '80100.00');
INSERT INTO `think_integral` VALUES ('9', '4', '0', '1540015089', '100', '0', '115.59.40.48', 'ceshi666', 'ceshi666', '80000.00');

-- ----------------------------
-- Table structure for `think_message`
-- ----------------------------
DROP TABLE IF EXISTS `think_message`;
CREATE TABLE `think_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `head_img_url` varchar(255) DEFAULT NULL,
  `from_client_name` varchar(255) DEFAULT NULL,
  `content` text,
  `time` varchar(255) DEFAULT NULL,
  `game` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=874 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_message
-- ----------------------------
INSERT INTO `think_message` VALUES ('1', '0', 'system', '1', '/Public/main/img/kefu.jpg', '客服', '玩家「668yuanma」上分已受理，请注意查看点数', '14:33:20', '');
INSERT INTO `think_message` VALUES ('2', '0', 'system', '1', '/Public/main/img/kefu.jpg', '客服', '玩家「ceshi666」上分已受理，请注意查看点数', '23:21:09', '');
INSERT INTO `think_message` VALUES ('3', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:1关闭，请耐心等待开奖', '12:03:13', 'lhc');
INSERT INTO `think_message` VALUES ('4', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020036期结算已完毕！<br/>\r\n							号码：4,6,4,9,8', '12:03:13', 'ssc');
INSERT INTO `think_message` VALUES ('5', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020037开放，祝各位中大奖', '12:03:13', 'ssc');
INSERT INTO `think_message` VALUES ('6', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916252期结算已完毕!号码：1+1+2=4', '12:03:14', 'bj28');
INSERT INTO `think_message` VALUES ('7', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916253开放，祝各位中大奖', '12:03:14', 'bj28');
INSERT INTO `think_message` VALUES ('8', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '1双1000', '12:03:44', 'pk10');
INSERT INTO `think_message` VALUES ('9', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '2大1500', '12:03:47', 'pk10');
INSERT INTO `think_message` VALUES ('10', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04a05ca92.jpg', '坚强的一面', '9双1500', '12:03:59', 'pk10');
INSERT INTO `think_message` VALUES ('11', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916253关闭，请耐心等待开奖', '12:04:00', 'bj28');
INSERT INTO `think_message` VALUES ('12', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb816b016d.jpg', '齐天大圣', '3小1000', '12:04:11', 'pk10');
INSERT INTO `think_message` VALUES ('13', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345245期结算已完毕!号码：3+6+2=11', '12:04:28', 'jnd28');
INSERT INTO `think_message` VALUES ('14', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345246开放，祝各位中大奖', '12:04:28', 'jnd28');
INSERT INTO `think_message` VALUES ('15', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '豹子300', '12:04:29', 'jnd28');
INSERT INTO `think_message` VALUES ('16', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '大100', '12:04:41', 'jnd28');
INSERT INTO `think_message` VALUES ('17', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a9de22567.png', '创想', '半顺200', '12:04:46', 'jnd28');
INSERT INTO `think_message` VALUES ('18', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '顺子200', '12:04:58', 'jnd28');
INSERT INTO `think_message` VALUES ('19', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710275关闭，请耐心等待开奖', '12:05:49', 'pk10');
INSERT INTO `think_message` VALUES ('20', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916253期结算已完毕!号码：8+0+6=14', '12:06:14', 'bj28');
INSERT INTO `think_message` VALUES ('21', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916254开放，祝各位中大奖', '12:06:14', 'bj28');
INSERT INTO `think_message` VALUES ('22', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345246关闭，请耐心等待开奖', '12:06:17', 'jnd28');
INSERT INTO `think_message` VALUES ('23', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345246期结算已完毕!号码：1+8+5=14', '12:08:58', 'jnd28');
INSERT INTO `think_message` VALUES ('24', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345247开放，祝各位中大奖', '12:08:58', 'jnd28');
INSERT INTO `think_message` VALUES ('25', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916254关闭，请耐心等待开奖', '12:09:00', 'bj28');
INSERT INTO `think_message` VALUES ('26', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '极大300', '12:09:08', 'jnd28');
INSERT INTO `think_message` VALUES ('27', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '1点100', '12:09:11', 'jnd28');
INSERT INTO `think_message` VALUES ('28', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '12点500', '12:09:19', 'jnd28');
INSERT INTO `think_message` VALUES ('29', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae8c9a73d.png', '峰回路转', '大单200', '12:09:22', 'jnd28');
INSERT INTO `think_message` VALUES ('30', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020037关闭，请耐心等待开奖', '12:09:25', 'ssc');
INSERT INTO `think_message` VALUES ('31', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '极大300', '12:09:30', 'jnd28');
INSERT INTO `think_message` VALUES ('32', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516a9749be.png', 'lid', '极大100', '12:09:39', 'jnd28');
INSERT INTO `think_message` VALUES ('33', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf9240fb4.png', '漫长の人生', '大300', '12:09:47', 'jnd28');
INSERT INTO `think_message` VALUES ('34', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '小双200', '12:09:54', 'jnd28');
INSERT INTO `think_message` VALUES ('35', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345247关闭，请耐心等待开奖', '12:09:55', 'jnd28');
INSERT INTO `think_message` VALUES ('36', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916254期结算已完毕!号码：2+2+9=13', '12:10:49', 'bj28');
INSERT INTO `think_message` VALUES ('37', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916255开放，祝各位中大奖', '12:10:49', 'bj28');
INSERT INTO `think_message` VALUES ('38', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345247期结算已完毕!号码：4+6+0=10', '12:11:28', 'jnd28');
INSERT INTO `think_message` VALUES ('39', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345248开放，祝各位中大奖', '12:11:28', 'jnd28');
INSERT INTO `think_message` VALUES ('40', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710276关闭，请耐心等待开奖', '12:11:28', 'pk10');
INSERT INTO `think_message` VALUES ('41', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020037期结算已完毕！<br/>\r\n							号码：5,9,8,9,8', '12:11:33', 'ssc');
INSERT INTO `think_message` VALUES ('42', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020038开放，祝各位中大奖', '12:11:33', 'ssc');
INSERT INTO `think_message` VALUES ('43', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '庄500', '12:11:36', 'jnd28');
INSERT INTO `think_message` VALUES ('44', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '小双200', '12:11:47', 'jnd28');
INSERT INTO `think_message` VALUES ('45', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad3b92429.png', '惊鴻【照】影', '极小500', '12:11:59', 'jnd28');
INSERT INTO `think_message` VALUES ('46', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '大100', '12:12:06', 'jnd28');
INSERT INTO `think_message` VALUES ('47', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '杂六200', '12:12:15', 'jnd28');
INSERT INTO `think_message` VALUES ('48', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '极小500', '12:12:19', 'jnd28');
INSERT INTO `think_message` VALUES ('49', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏', '6点100', '12:12:28', 'jnd28');
INSERT INTO `think_message` VALUES ('50', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '极大100', '12:12:34', 'jnd28');
INSERT INTO `think_message` VALUES ('51', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '大100', '12:12:45', 'jnd28');
INSERT INTO `think_message` VALUES ('52', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '极大100', '12:12:49', 'jnd28');
INSERT INTO `think_message` VALUES ('53', '0', 'say', '1', '/Uploads/carousel/2017-09-14/59ba3909224eb.png', '体温 ㎝ ╮', '小双500', '12:12:56', 'jnd28');
INSERT INTO `think_message` VALUES ('54', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '极小500', '12:13:00', 'jnd28');
INSERT INTO `think_message` VALUES ('55', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710276期结算已完毕！<br/>\r\n							号码：09,02,05,07,08,01,04,10,03,06', '12:13:03', 'pk10');
INSERT INTO `think_message` VALUES ('56', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710277开放，祝各位中大奖', '12:13:03', 'pk10');
INSERT INTO `think_message` VALUES ('57', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '大300', '12:13:07', 'jnd28');
INSERT INTO `think_message` VALUES ('58', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '极大300', '12:13:14', 'jnd28');
INSERT INTO `think_message` VALUES ('59', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345248关闭，请耐心等待开奖', '12:13:18', 'jnd28');
INSERT INTO `think_message` VALUES ('60', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916255关闭，请耐心等待开奖', '12:14:00', 'bj28');
INSERT INTO `think_message` VALUES ('61', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345248期结算已完毕!号码：0+6+1=7', '12:14:38', 'jnd28');
INSERT INTO `think_message` VALUES ('62', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345249开放，祝各位中大奖', '12:14:38', 'jnd28');
INSERT INTO `think_message` VALUES ('63', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad167ad28.png', '志平', '庄500', '12:14:40', 'jnd28');
INSERT INTO `think_message` VALUES ('64', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '庄500', '12:14:43', 'jnd28');
INSERT INTO `think_message` VALUES ('65', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad3b92429.png', '惊鴻【照】影', '豹子300', '12:14:55', 'jnd28');
INSERT INTO `think_message` VALUES ('66', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfcc8d433.png', '.....|还嬒继续|▍', '小500', '12:15:05', 'jnd28');
INSERT INTO `think_message` VALUES ('67', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad167ad28.png', '志平', '豹子300', '12:15:10', 'jnd28');
INSERT INTO `think_message` VALUES ('68', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '极大300', '12:15:21', 'jnd28');
INSERT INTO `think_message` VALUES ('69', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '半顺200', '12:15:28', 'jnd28');
INSERT INTO `think_message` VALUES ('70', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '大300', '12:15:37', 'jnd28');
INSERT INTO `think_message` VALUES ('71', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516fe05160.png', '别碰我', '小200', '12:15:42', 'jnd28');
INSERT INTO `think_message` VALUES ('72', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', '1点100', '12:15:45', 'jnd28');
INSERT INTO `think_message` VALUES ('73', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8aece2edcb.png', '白帆', '杂六200', '12:15:53', 'jnd28');
INSERT INTO `think_message` VALUES ('74', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516d8b0cf5.png', '小猪宝宝', '对子500', '12:16:02', 'jnd28');
INSERT INTO `think_message` VALUES ('75', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916255期结算已完毕!号码：4+6+5=15', '12:16:04', 'bj28');
INSERT INTO `think_message` VALUES ('76', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916256开放，祝各位中大奖', '12:16:04', 'bj28');
INSERT INTO `think_message` VALUES ('77', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b182929b8.png', '落叶知秋', '12点500', '12:16:10', 'jnd28');
INSERT INTO `think_message` VALUES ('78', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c5171c6c8fb.png', '念旧゜', '6点100', '12:16:22', 'jnd28');
INSERT INTO `think_message` VALUES ('79', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', '6点100', '12:16:34', 'jnd28');
INSERT INTO `think_message` VALUES ('80', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad865d131.png', '超越梦想', '豹子300', '12:16:38', 'jnd28');
INSERT INTO `think_message` VALUES ('81', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345249关闭，请耐心等待开奖', '12:16:44', 'jnd28');
INSERT INTO `think_message` VALUES ('82', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710277关闭，请耐心等待开奖', '12:16:51', 'pk10');
INSERT INTO `think_message` VALUES ('83', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710277期结算已完毕！<br/>\r\n							号码：07,03,01,09,08,02,04,06,05,10', '12:17:53', 'pk10');
INSERT INTO `think_message` VALUES ('84', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710278开放，祝各位中大奖', '12:17:53', 'pk10');
INSERT INTO `think_message` VALUES ('85', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345249期结算已完毕!号码：8+5+7=20', '12:18:28', 'jnd28');
INSERT INTO `think_message` VALUES ('86', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345250开放，祝各位中大奖', '12:18:28', 'jnd28');
INSERT INTO `think_message` VALUES ('87', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '12点500', '12:18:30', 'jnd28');
INSERT INTO `think_message` VALUES ('88', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '小双200', '12:18:40', 'jnd28');
INSERT INTO `think_message` VALUES ('89', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '半顺200', '12:18:46', 'jnd28');
INSERT INTO `think_message` VALUES ('90', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '12点500', '12:18:53', 'jnd28');
INSERT INTO `think_message` VALUES ('91', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916256关闭，请耐心等待开奖', '12:19:00', 'bj28');
INSERT INTO `think_message` VALUES ('92', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce052b1a45d.jpg', '人生', '小500', '12:19:05', 'jnd28');
INSERT INTO `think_message` VALUES ('93', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '12点500', '12:19:11', 'jnd28');
INSERT INTO `think_message` VALUES ('94', '0', 'say', '1', '/Uploads/carousel/2017-09-24/59c774afc0c57.png', '猴崽崽', '对子500', '12:19:21', 'jnd28');
INSERT INTO `think_message` VALUES ('95', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020038关闭，请耐心等待开奖', '12:19:25', 'ssc');
INSERT INTO `think_message` VALUES ('96', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad167ad28.png', '志平', '豹子300', '12:19:29', 'jnd28');
INSERT INTO `think_message` VALUES ('97', '0', 'say', '1', '/Uploads/carousel/2017-09-24/59c774afc0c57.png', '猴崽崽', '小500', '12:19:33', 'jnd28');
INSERT INTO `think_message` VALUES ('98', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '闲300', '12:19:39', 'jnd28');
INSERT INTO `think_message` VALUES ('99', '0', 'say', '1', '/Uploads/carousel/2017-09-27/59cb9d4642d45.png', '样哇', '12点500', '12:19:42', 'jnd28');
INSERT INTO `think_message` VALUES ('100', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8aece2edcb.png', '白帆', '12点500', '12:19:51', 'jnd28');
INSERT INTO `think_message` VALUES ('101', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '大300', '12:19:58', 'jnd28');
INSERT INTO `think_message` VALUES ('102', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '12点500', '12:20:01', 'jnd28');
INSERT INTO `think_message` VALUES ('103', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad865d131.png', '超越梦想', '极大100', '12:20:10', 'jnd28');
INSERT INTO `think_message` VALUES ('104', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '小双500', '12:20:17', 'jnd28');
INSERT INTO `think_message` VALUES ('105', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345250关闭，请耐心等待开奖', '12:20:18', 'jnd28');
INSERT INTO `think_message` VALUES ('106', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916256期结算已完毕!号码：6+1+1=8', '12:20:59', 'bj28');
INSERT INTO `think_message` VALUES ('107', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916257开放，祝各位中大奖', '12:20:59', 'bj28');
INSERT INTO `think_message` VALUES ('108', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020038期结算已完毕！<br/>\r\n							号码：0,7,2,2,8', '12:21:33', 'ssc');
INSERT INTO `think_message` VALUES ('109', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020039开放，祝各位中大奖', '12:21:33', 'ssc');
INSERT INTO `think_message` VALUES ('110', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345250期结算已完毕!号码：9+4+1=14', '12:21:38', 'jnd28');
INSERT INTO `think_message` VALUES ('111', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345251开放，祝各位中大奖', '12:21:38', 'jnd28');
INSERT INTO `think_message` VALUES ('112', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定', '小双500', '12:21:46', 'jnd28');
INSERT INTO `think_message` VALUES ('113', '0', 'say', '1', '/Uploads/carousel/2017-09-24/59c774afc0c57.png', '猴崽崽', '极大100', '12:21:50', 'jnd28');
INSERT INTO `think_message` VALUES ('114', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710278关闭，请耐心等待开奖', '12:21:51', 'pk10');
INSERT INTO `think_message` VALUES ('115', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516fe05160.png', '别碰我', '大单200', '12:21:59', 'jnd28');
INSERT INTO `think_message` VALUES ('116', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516fe05160.png', '别碰我', '闲300', '12:22:10', 'jnd28');
INSERT INTO `think_message` VALUES ('117', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516fe05160.png', '别碰我', '极小500', '12:22:21', 'jnd28');
INSERT INTO `think_message` VALUES ('118', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '大100', '12:22:26', 'jnd28');
INSERT INTO `think_message` VALUES ('119', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '6点100', '12:22:30', 'jnd28');
INSERT INTO `think_message` VALUES ('120', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c51645d8128.png', '感觉出了错', '大500', '12:22:40', 'jnd28');
INSERT INTO `think_message` VALUES ('121', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c5171c6c8fb.png', '念旧゜', '12点500', '12:22:45', 'jnd28');
INSERT INTO `think_message` VALUES ('122', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '半顺200', '12:22:55', 'jnd28');
INSERT INTO `think_message` VALUES ('123', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', '小双200', '12:23:04', 'jnd28');
INSERT INTO `think_message` VALUES ('124', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '半顺200', '12:23:07', 'jnd28');
INSERT INTO `think_message` VALUES ('125', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '小500', '12:23:10', 'jnd28');
INSERT INTO `think_message` VALUES ('126', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c51645d8128.png', '感觉出了错', '极大100', '12:23:20', 'jnd28');
INSERT INTO `think_message` VALUES ('127', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8aece2edcb.png', '白帆', '小双500', '12:23:23', 'jnd28');
INSERT INTO `think_message` VALUES ('128', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', '极小500', '12:23:29', 'jnd28');
INSERT INTO `think_message` VALUES ('129', '0', 'say', '1', '/Uploads/carousel/2017-09-27/59cb9d4642d45.png', '样哇', '顺子200', '12:23:41', 'jnd28');
INSERT INTO `think_message` VALUES ('130', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345251关闭，请耐心等待开奖', '12:23:45', 'jnd28');
INSERT INTO `think_message` VALUES ('131', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916257关闭，请耐心等待开奖', '12:24:00', 'bj28');
INSERT INTO `think_message` VALUES ('132', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345251期结算已完毕!号码：9+9+1=19', '12:25:53', 'jnd28');
INSERT INTO `think_message` VALUES ('133', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345252开放，祝各位中大奖', '12:25:53', 'jnd28');
INSERT INTO `think_message` VALUES ('134', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我', '闲300', '12:26:03', 'jnd28');
INSERT INTO `think_message` VALUES ('135', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '极大100', '12:26:14', 'jnd28');
INSERT INTO `think_message` VALUES ('136', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916257期结算已完毕!号码：6+2+4=12', '12:26:19', 'bj28');
INSERT INTO `think_message` VALUES ('137', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916258开放，祝各位中大奖', '12:26:19', 'bj28');
INSERT INTO `think_message` VALUES ('138', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b182929b8.png', '落叶知秋', '12点500', '12:26:19', 'jnd28');
INSERT INTO `think_message` VALUES ('139', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '庄500', '12:26:28', 'jnd28');
INSERT INTO `think_message` VALUES ('140', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫', '大单200', '12:26:37', 'jnd28');
INSERT INTO `think_message` VALUES ('141', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '极小500', '12:26:42', 'jnd28');
INSERT INTO `think_message` VALUES ('142', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710279关闭，请耐心等待开奖', '12:26:51', 'pk10');
INSERT INTO `think_message` VALUES ('143', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', '大500', '12:26:52', 'jnd28');
INSERT INTO `think_message` VALUES ('144', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '12点500', '12:27:03', 'jnd28');
INSERT INTO `think_message` VALUES ('145', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345252关闭，请耐心等待开奖', '12:27:10', 'jnd28');
INSERT INTO `think_message` VALUES ('146', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710279期结算已完毕！<br/>\r\n							号码：01,06,09,07,03,04,10,02,08,05', '12:28:03', 'pk10');
INSERT INTO `think_message` VALUES ('147', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710280开放，祝各位中大奖', '12:28:03', 'pk10');
INSERT INTO `think_message` VALUES ('148', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345252期结算已完毕!号码：4+2+2=8', '12:28:48', 'jnd28');
INSERT INTO `think_message` VALUES ('149', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345253开放，祝各位中大奖', '12:28:48', 'jnd28');
INSERT INTO `think_message` VALUES ('150', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b902fbca40a.jpg', '半仙', '大500', '12:28:59', 'jnd28');
INSERT INTO `think_message` VALUES ('151', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916258关闭，请耐心等待开奖', '12:29:00', 'bj28');
INSERT INTO `think_message` VALUES ('152', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad865d131.png', '超越梦想', '闲300', '12:29:10', 'jnd28');
INSERT INTO `think_message` VALUES ('153', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '小200', '12:29:21', 'jnd28');
INSERT INTO `think_message` VALUES ('154', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '大单200', '12:29:24', 'jnd28');
INSERT INTO `think_message` VALUES ('155', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020039关闭，请耐心等待开奖', '12:29:25', 'ssc');
INSERT INTO `think_message` VALUES ('156', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '1点100', '12:29:35', 'jnd28');
INSERT INTO `think_message` VALUES ('157', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac9312522.png', '无可置疑◆', '1点100', '12:29:46', 'jnd28');
INSERT INTO `think_message` VALUES ('158', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '极小500', '12:29:54', 'jnd28');
INSERT INTO `think_message` VALUES ('159', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '极小500', '12:30:05', 'jnd28');
INSERT INTO `think_message` VALUES ('160', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b902fbca40a.jpg', '半仙', '大100', '12:30:11', 'jnd28');
INSERT INTO `think_message` VALUES ('161', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我', '对子500', '12:30:17', 'jnd28');
INSERT INTO `think_message` VALUES ('162', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '大100', '12:30:20', 'jnd28');
INSERT INTO `think_message` VALUES ('163', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04a05ca92.jpg', '坚强的一面', '小双200', '12:30:25', 'jnd28');
INSERT INTO `think_message` VALUES ('164', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', '小双500', '12:30:32', 'jnd28');
INSERT INTO `think_message` VALUES ('165', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345253关闭，请耐心等待开奖', '12:30:39', 'jnd28');
INSERT INTO `think_message` VALUES ('166', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916258期结算已完毕!号码：4+9+1=14', '12:30:58', 'bj28');
INSERT INTO `think_message` VALUES ('167', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916259开放，祝各位中大奖', '12:30:58', 'bj28');
INSERT INTO `think_message` VALUES ('168', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020039期结算已完毕！<br/>\r\n							号码：6,7,4,9,6', '12:31:43', 'ssc');
INSERT INTO `think_message` VALUES ('169', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020040开放，祝各位中大奖', '12:31:43', 'ssc');
INSERT INTO `think_message` VALUES ('170', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710280关闭，请耐心等待开奖', '12:31:51', 'pk10');
INSERT INTO `think_message` VALUES ('171', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345253期结算已完毕!号码：1+8+4=13', '12:32:39', 'jnd28');
INSERT INTO `think_message` VALUES ('172', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345254开放，祝各位中大奖', '12:32:39', 'jnd28');
INSERT INTO `think_message` VALUES ('173', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '极大100', '12:32:50', 'jnd28');
INSERT INTO `think_message` VALUES ('174', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710280期结算已完毕！<br/>\r\n							号码：09,03,02,10,05,06,01,07,04,08', '12:32:53', 'pk10');
INSERT INTO `think_message` VALUES ('175', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710281开放，祝各位中大奖', '12:32:53', 'pk10');
INSERT INTO `think_message` VALUES ('176', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '6点100', '12:32:57', 'jnd28');
INSERT INTO `think_message` VALUES ('177', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a829bd2e2.png', '男人的味道', '极小500', '12:33:09', 'jnd28');
INSERT INTO `think_message` VALUES ('178', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '豹子300', '12:33:14', 'jnd28');
INSERT INTO `think_message` VALUES ('179', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我', '大500', '12:33:23', 'jnd28');
INSERT INTO `think_message` VALUES ('180', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb816b016d.jpg', '齐天大圣', '大300', '12:33:27', 'jnd28');
INSERT INTO `think_message` VALUES ('181', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abb76a801.png', '独自偷欢', '闲300', '12:33:32', 'jnd28');
INSERT INTO `think_message` VALUES ('182', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '顺子200', '12:33:44', 'jnd28');
INSERT INTO `think_message` VALUES ('183', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516d8b0cf5.png', '小猪宝宝', '小500', '12:33:55', 'jnd28');
INSERT INTO `think_message` VALUES ('184', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8aece2edcb.png', '白帆', '6点100', '12:33:59', 'jnd28');
INSERT INTO `think_message` VALUES ('185', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916259关闭，请耐心等待开奖', '12:34:00', 'bj28');
INSERT INTO `think_message` VALUES ('186', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '1点100', '12:34:06', 'jnd28');
INSERT INTO `think_message` VALUES ('187', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345254关闭，请耐心等待开奖', '12:34:11', 'jnd28');
INSERT INTO `think_message` VALUES ('188', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916259期结算已完毕!号码：6+0+3=9', '12:36:03', 'bj28');
INSERT INTO `think_message` VALUES ('189', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916260开放，祝各位中大奖', '12:36:03', 'bj28');
INSERT INTO `think_message` VALUES ('190', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345254期结算已完毕!号码：3+9+3=15', '12:36:08', 'jnd28');
INSERT INTO `think_message` VALUES ('191', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345255开放，祝各位中大奖', '12:36:08', 'jnd28');
INSERT INTO `think_message` VALUES ('192', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '庄500', '12:36:09', 'jnd28');
INSERT INTO `think_message` VALUES ('193', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏', '小双200', '12:36:18', 'jnd28');
INSERT INTO `think_message` VALUES ('194', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b182929b8.png', '落叶知秋', '极大300', '12:36:30', 'jnd28');
INSERT INTO `think_message` VALUES ('195', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '大单200', '12:36:35', 'jnd28');
INSERT INTO `think_message` VALUES ('196', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '极大300', '12:36:41', 'jnd28');
INSERT INTO `think_message` VALUES ('197', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad865d131.png', '超越梦想', '小500', '12:36:50', 'jnd28');
INSERT INTO `think_message` VALUES ('198', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710281关闭，请耐心等待开奖', '12:36:51', 'pk10');
INSERT INTO `think_message` VALUES ('199', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '小200', '12:36:55', 'jnd28');
INSERT INTO `think_message` VALUES ('200', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '杂六200', '12:37:00', 'jnd28');
INSERT INTO `think_message` VALUES ('201', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '极小500', '12:37:07', 'jnd28');
INSERT INTO `think_message` VALUES ('202', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '6点100', '12:37:12', 'jnd28');
INSERT INTO `think_message` VALUES ('203', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516fe05160.png', '别碰我', '12点500', '12:37:21', 'jnd28');
INSERT INTO `think_message` VALUES ('204', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '大100', '12:37:30', 'jnd28');
INSERT INTO `think_message` VALUES ('205', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345255关闭，请耐心等待开奖', '12:37:38', 'jnd28');
INSERT INTO `think_message` VALUES ('206', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916260关闭，请耐心等待开奖', '12:39:00', 'bj28');
INSERT INTO `think_message` VALUES ('207', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020040关闭，请耐心等待开奖', '12:39:25', 'ssc');
INSERT INTO `think_message` VALUES ('208', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710282关闭，请耐心等待开奖', '12:40:50', 'pk10');
INSERT INTO `think_message` VALUES ('209', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916260期结算已完毕!号码：2+1+5=8', '12:40:58', 'bj28');
INSERT INTO `think_message` VALUES ('210', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916261开放，祝各位中大奖', '12:40:58', 'bj28');
INSERT INTO `think_message` VALUES ('211', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020040期结算已完毕！<br/>\r\n							号码：8,2,3,1,9', '12:41:23', 'ssc');
INSERT INTO `think_message` VALUES ('212', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020041开放，祝各位中大奖', '12:41:23', 'ssc');
INSERT INTO `think_message` VALUES ('213', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916261关闭，请耐心等待开奖', '12:44:00', 'bj28');
INSERT INTO `think_message` VALUES ('214', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916261期结算已完毕!号码：2+0+4=6', '12:45:48', 'bj28');
INSERT INTO `think_message` VALUES ('215', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916262开放，祝各位中大奖', '12:45:48', 'bj28');
INSERT INTO `think_message` VALUES ('216', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345257期结算已完毕!号码：2+9+6=17', '12:45:49', 'jnd28');
INSERT INTO `think_message` VALUES ('217', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345258开放，祝各位中大奖', '12:45:49', 'jnd28');
INSERT INTO `think_message` VALUES ('218', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710283关闭，请耐心等待开奖', '12:45:51', 'pk10');
INSERT INTO `think_message` VALUES ('219', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345258关闭，请耐心等待开奖', '12:48:10', 'jnd28');
INSERT INTO `think_message` VALUES ('220', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916262关闭，请耐心等待开奖', '12:49:00', 'bj28');
INSERT INTO `think_message` VALUES ('221', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020041关闭，请耐心等待开奖', '12:49:25', 'ssc');
INSERT INTO `think_message` VALUES ('222', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345258期结算已完毕!号码：8+0+1=9', '12:49:39', 'jnd28');
INSERT INTO `think_message` VALUES ('223', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345259开放，祝各位中大奖', '12:49:39', 'jnd28');
INSERT INTO `think_message` VALUES ('224', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710284关闭，请耐心等待开奖', '12:50:47', 'pk10');
INSERT INTO `think_message` VALUES ('225', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916262期结算已完毕!号码：7+9+1=17', '12:50:58', 'bj28');
INSERT INTO `think_message` VALUES ('226', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916263开放，祝各位中大奖', '12:50:58', 'bj28');
INSERT INTO `think_message` VALUES ('227', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020041期结算已完毕！<br/>\r\n							号码：3,5,2,3,1', '12:51:43', 'ssc');
INSERT INTO `think_message` VALUES ('228', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020042开放，祝各位中大奖', '12:51:43', 'ssc');
INSERT INTO `think_message` VALUES ('229', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345259关闭，请耐心等待开奖', '12:51:51', 'jnd28');
INSERT INTO `think_message` VALUES ('230', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710284期结算已完毕！<br/>\r\n							号码：06,08,04,02,01,03,05,07,10,09', '12:53:04', 'pk10');
INSERT INTO `think_message` VALUES ('231', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710285开放，祝各位中大奖', '12:53:04', 'pk10');
INSERT INTO `think_message` VALUES ('232', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916263关闭，请耐心等待开奖', '12:54:00', 'bj28');
INSERT INTO `think_message` VALUES ('233', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345260关闭，请耐心等待开奖', '12:55:21', 'jnd28');
INSERT INTO `think_message` VALUES ('234', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916263期结算已完毕!号码：2+5+4=11', '12:56:24', 'bj28');
INSERT INTO `think_message` VALUES ('235', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916264开放，祝各位中大奖', '12:56:24', 'bj28');
INSERT INTO `think_message` VALUES ('236', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710285关闭，请耐心等待开奖', '12:56:51', 'pk10');
INSERT INTO `think_message` VALUES ('237', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345260期结算已完毕!号码：9+7+7=23', '12:56:59', 'jnd28');
INSERT INTO `think_message` VALUES ('238', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345261开放，祝各位中大奖', '12:56:59', 'jnd28');
INSERT INTO `think_message` VALUES ('239', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710285期结算已完毕！<br/>\r\n							号码：10,09,08,03,01,07,05,02,04,06', '12:57:54', 'pk10');
INSERT INTO `think_message` VALUES ('240', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710286开放，祝各位中大奖', '12:57:54', 'pk10');
INSERT INTO `think_message` VALUES ('241', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345261关闭，请耐心等待开奖', '12:58:47', 'jnd28');
INSERT INTO `think_message` VALUES ('242', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916264关闭，请耐心等待开奖', '12:59:00', 'bj28');
INSERT INTO `think_message` VALUES ('243', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020042关闭，请耐心等待开奖', '12:59:25', 'ssc');
INSERT INTO `think_message` VALUES ('244', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345261期结算已完毕!号码：4+0+0=4', '12:59:54', 'jnd28');
INSERT INTO `think_message` VALUES ('245', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345262开放，祝各位中大奖', '12:59:54', 'jnd28');
INSERT INTO `think_message` VALUES ('246', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916264期结算已完毕!号码：4+2+3=9', '13:01:09', 'bj28');
INSERT INTO `think_message` VALUES ('247', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916265开放，祝各位中大奖', '13:01:09', 'bj28');
INSERT INTO `think_message` VALUES ('248', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020042期结算已完毕！<br/>\r\n							号码：0,4,9,4,9', '13:01:44', 'ssc');
INSERT INTO `think_message` VALUES ('249', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020043开放，祝各位中大奖', '13:01:44', 'ssc');
INSERT INTO `think_message` VALUES ('250', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710286关闭，请耐心等待开奖', '13:01:51', 'pk10');
INSERT INTO `think_message` VALUES ('251', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345262关闭，请耐心等待开奖', '13:02:14', 'jnd28');
INSERT INTO `think_message` VALUES ('252', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710286期结算已完毕！<br/>\r\n							号码：05,09,08,07,02,01,04,03,06,10', '13:02:59', 'pk10');
INSERT INTO `think_message` VALUES ('253', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710287开放，祝各位中大奖', '13:02:59', 'pk10');
INSERT INTO `think_message` VALUES ('254', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345262期结算已完毕!号码：6+5+4=15', '13:03:39', 'jnd28');
INSERT INTO `think_message` VALUES ('255', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345263开放，祝各位中大奖', '13:03:39', 'jnd28');
INSERT INTO `think_message` VALUES ('256', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916265关闭，请耐心等待开奖', '13:04:00', 'bj28');
INSERT INTO `think_message` VALUES ('257', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345263关闭，请耐心等待开奖', '13:05:48', 'jnd28');
INSERT INTO `think_message` VALUES ('258', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916265期结算已完毕!号码：5+1+5=11', '13:05:53', 'bj28');
INSERT INTO `think_message` VALUES ('259', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916266开放，祝各位中大奖', '13:05:53', 'bj28');
INSERT INTO `think_message` VALUES ('260', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710287关闭，请耐心等待开奖', '13:06:51', 'pk10');
INSERT INTO `think_message` VALUES ('261', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345263期结算已完毕!号码：1+3+3=7', '13:06:54', 'jnd28');
INSERT INTO `think_message` VALUES ('262', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345264开放，祝各位中大奖', '13:06:54', 'jnd28');
INSERT INTO `think_message` VALUES ('263', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916266关闭，请耐心等待开奖', '13:09:00', 'bj28');
INSERT INTO `think_message` VALUES ('264', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345264关闭，请耐心等待开奖', '13:09:13', 'jnd28');
INSERT INTO `think_message` VALUES ('265', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020043关闭，请耐心等待开奖', '13:09:25', 'ssc');
INSERT INTO `think_message` VALUES ('266', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020001期结算已完毕！<br/>\r\n							号码：05,07,06,08,03,10,01,09,04,02', '13:09:51', 'xyft');
INSERT INTO `think_message` VALUES ('267', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020002开放，祝各位中大奖', '13:09:51', 'xyft');
INSERT INTO `think_message` VALUES ('268', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345264期结算已完毕!号码：4+9+0=13', '13:10:39', 'jnd28');
INSERT INTO `think_message` VALUES ('269', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345265开放，祝各位中大奖', '13:10:39', 'jnd28');
INSERT INTO `think_message` VALUES ('270', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710288关闭，请耐心等待开奖', '13:10:48', 'pk10');
INSERT INTO `think_message` VALUES ('271', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916266期结算已完毕!号码：1+2+8=11', '13:10:58', 'bj28');
INSERT INTO `think_message` VALUES ('272', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916267开放，祝各位中大奖', '13:10:58', 'bj28');
INSERT INTO `think_message` VALUES ('273', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020043期结算已完毕！<br/>\r\n							号码：6,9,1,3,7', '13:11:33', 'ssc');
INSERT INTO `think_message` VALUES ('274', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020044开放，祝各位中大奖', '13:11:33', 'ssc');
INSERT INTO `think_message` VALUES ('275', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345265关闭，请耐心等待开奖', '13:12:44', 'jnd28');
INSERT INTO `think_message` VALUES ('276', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710288期结算已完毕！<br/>\r\n							号码：09,04,05,01,02,08,03,06,10,07', '13:12:59', 'pk10');
INSERT INTO `think_message` VALUES ('277', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710289开放，祝各位中大奖', '13:12:59', 'pk10');
INSERT INTO `think_message` VALUES ('278', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020002关闭，请耐心等待开奖', '13:13:41', 'xyft');
INSERT INTO `think_message` VALUES ('279', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916267关闭，请耐心等待开奖', '13:14:00', 'bj28');
INSERT INTO `think_message` VALUES ('280', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020002期结算已完毕！<br/>\r\n							号码：10,01,04,05,02,06,07,08,09,03', '13:14:49', 'xyft');
INSERT INTO `think_message` VALUES ('281', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020003开放，祝各位中大奖', '13:14:49', 'xyft');
INSERT INTO `think_message` VALUES ('282', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345265期结算已完毕!号码：9+2+4=15', '13:15:04', 'jnd28');
INSERT INTO `think_message` VALUES ('283', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345266开放，祝各位中大奖', '13:15:04', 'jnd28');
INSERT INTO `think_message` VALUES ('284', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916267期结算已完毕!号码：6+2+4=12', '13:15:59', 'bj28');
INSERT INTO `think_message` VALUES ('285', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916268开放，祝各位中大奖', '13:15:59', 'bj28');
INSERT INTO `think_message` VALUES ('286', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345266关闭，请耐心等待开奖', '13:16:16', 'jnd28');
INSERT INTO `think_message` VALUES ('287', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710289关闭，请耐心等待开奖', '13:16:51', 'pk10');
INSERT INTO `think_message` VALUES ('288', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345266期结算已完毕!号码：1+0+7=8', '13:17:49', 'jnd28');
INSERT INTO `think_message` VALUES ('289', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345267开放，祝各位中大奖', '13:17:49', 'jnd28');
INSERT INTO `think_message` VALUES ('290', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020003关闭，请耐心等待开奖', '13:18:36', 'xyft');
INSERT INTO `think_message` VALUES ('291', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916268关闭，请耐心等待开奖', '13:19:00', 'bj28');
INSERT INTO `think_message` VALUES ('292', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020044关闭，请耐心等待开奖', '13:19:25', 'ssc');
INSERT INTO `think_message` VALUES ('293', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345267关闭，请耐心等待开奖', '13:19:41', 'jnd28');
INSERT INTO `think_message` VALUES ('294', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020003期结算已完毕！<br/>\r\n							号码：06,03,08,05,10,07,02,09,04,01', '13:19:41', 'xyft');
INSERT INTO `think_message` VALUES ('295', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020004开放，祝各位中大奖', '13:19:41', 'xyft');
INSERT INTO `think_message` VALUES ('296', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710290关闭，请耐心等待开奖', '13:20:49', 'pk10');
INSERT INTO `think_message` VALUES ('297', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916268期结算已完毕!号码：0+9+2=11', '13:20:59', 'bj28');
INSERT INTO `think_message` VALUES ('298', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916269开放，祝各位中大奖', '13:20:59', 'bj28');
INSERT INTO `think_message` VALUES ('299', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020044期结算已完毕！<br/>\r\n							号码：6,4,1,8,5', '13:21:29', 'ssc');
INSERT INTO `think_message` VALUES ('300', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020045开放，祝各位中大奖', '13:21:29', 'ssc');
INSERT INTO `think_message` VALUES ('301', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345267期结算已完毕!号码：9+2+4=15', '13:21:55', 'jnd28');
INSERT INTO `think_message` VALUES ('302', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345268开放，祝各位中大奖', '13:21:55', 'jnd28');
INSERT INTO `think_message` VALUES ('303', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345268关闭，请耐心等待开奖', '13:23:11', 'jnd28');
INSERT INTO `think_message` VALUES ('304', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a9de22567.png', '创想', '和单300', '13:23:11', 'pk10');
INSERT INTO `think_message` VALUES ('305', '0', 'system', '1', '/Public/main/img/kefu.jpg', '客服', '玩家「xsdaxa11」上分已受理，请注意查看点数', '13:23:13', '');
INSERT INTO `think_message` VALUES ('306', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '567/大单/200', '13:23:20', 'pk10');
INSERT INTO `think_message` VALUES ('307', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020004关闭，请耐心等待开奖', '13:23:31', 'xyft');
INSERT INTO `think_message` VALUES ('308', '9', 'say', '1', '/Public/Home/img/face/3.png', 'xsdaxa11', '1小100', '13:23:33', 'pk10');
INSERT INTO `think_message` VALUES ('309', '9', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「1小100」,竞猜成功', '13:23:33', 'pk10');
INSERT INTO `think_message` VALUES ('310', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏', '和6811/100', '13:23:34', 'pk10');
INSERT INTO `think_message` VALUES ('311', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a9de22567.png', '创想', '庄/250', '13:23:44', 'pk10');
INSERT INTO `think_message` VALUES ('312', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c51645d8128.png', '感觉出了错', '1/13579/500', '13:23:56', 'pk10');
INSERT INTO `think_message` VALUES ('313', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916269关闭，请耐心等待开奖', '13:24:00', 'bj28');
INSERT INTO `think_message` VALUES ('314', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac9312522.png', '无可置疑◆', 'A/500', '13:24:01', 'pk10');
INSERT INTO `think_message` VALUES ('315', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad167ad28.png', '志平', '567/大单/200', '13:24:07', 'pk10');
INSERT INTO `think_message` VALUES ('316', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '庄/250', '13:24:18', 'pk10');
INSERT INTO `think_message` VALUES ('317', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', 'AC/200', '13:24:30', 'pk10');
INSERT INTO `think_message` VALUES ('318', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516a9749be.png', 'lid', '1/24680/500', '13:24:33', 'pk10');
INSERT INTO `think_message` VALUES ('319', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce052b1a45d.jpg', '人生', '2双200', '13:24:37', 'pk10');
INSERT INTO `think_message` VALUES ('320', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345268期结算已完毕!号码：1+5+9=15', '13:24:39', 'jnd28');
INSERT INTO `think_message` VALUES ('321', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345269开放，祝各位中大奖', '13:24:39', 'jnd28');
INSERT INTO `think_message` VALUES ('322', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', '庄/200', '13:24:43', 'pk10');
INSERT INTO `think_message` VALUES ('323', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '和单300', '13:24:48', 'pk10');
INSERT INTO `think_message` VALUES ('324', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020004期结算已完毕！<br/>\r\n							号码：02,05,01,10,03,08,09,06,07,04', '13:24:49', 'xyft');
INSERT INTO `think_message` VALUES ('325', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020005开放，祝各位中大奖', '13:24:49', 'xyft');
INSERT INTO `think_message` VALUES ('326', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫', '特319/200', '13:24:58', 'pk10');
INSERT INTO `think_message` VALUES ('327', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '2大1500', '13:25:03', 'pk10');
INSERT INTO `think_message` VALUES ('328', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', '2双200', '13:25:14', 'pk10');
INSERT INTO `think_message` VALUES ('329', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', 'B/500', '13:25:17', 'pk10');
INSERT INTO `think_message` VALUES ('330', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '8双1000', '13:25:29', 'pk10');
INSERT INTO `think_message` VALUES ('331', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '569单150', '13:25:36', 'pk10');
INSERT INTO `think_message` VALUES ('332', '0', 'say', '1', '/Uploads/carousel/2017-09-24/59c774afc0c57.png', '猴崽崽', '和1015/100', '13:25:43', 'pk10');
INSERT INTO `think_message` VALUES ('333', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710291关闭，请耐心等待开奖', '13:25:50', 'pk10');
INSERT INTO `think_message` VALUES ('334', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916269期结算已完毕!号码：3+1+4=8', '13:26:14', 'bj28');
INSERT INTO `think_message` VALUES ('335', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916270开放，祝各位中大奖', '13:26:14', 'bj28');
INSERT INTO `think_message` VALUES ('336', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345269关闭，请耐心等待开奖', '13:26:45', 'jnd28');
INSERT INTO `think_message` VALUES ('337', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '2大1500', '13:27:36', 'pk10');
INSERT INTO `think_message` VALUES ('338', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '2/龙/300', '13:27:42', 'pk10');
INSERT INTO `think_message` VALUES ('339', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345269期结算已完毕!号码：8+2+9=19', '13:27:49', 'jnd28');
INSERT INTO `think_message` VALUES ('340', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345270开放，祝各位中大奖', '13:27:49', 'jnd28');
INSERT INTO `think_message` VALUES ('341', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', 'A/100', '13:27:50', 'pk10');
INSERT INTO `think_message` VALUES ('342', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae1266924.png', '蔡仁傑', '和单300', '13:27:56', 'pk10');
INSERT INTO `think_message` VALUES ('343', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad3b92429.png', '惊鴻【照】影', 'C/300', '13:28:03', 'pk10');
INSERT INTO `think_message` VALUES ('344', '0', 'say', '1', '/Uploads/carousel/2017-09-24/59c774afc0c57.png', '猴崽崽', '569单150', '13:28:11', 'pk10');
INSERT INTO `think_message` VALUES ('345', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '和1015/100', '13:28:16', 'pk10');
INSERT INTO `think_message` VALUES ('346', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', 'AB/300', '13:28:28', 'pk10');
INSERT INTO `think_message` VALUES ('347', '0', 'say', '1', '/Uploads/carousel/2017-09-27/59cb9d4642d45.png', '样哇', 'C/300', '13:28:39', 'pk10');
INSERT INTO `think_message` VALUES ('348', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020005关闭，请耐心等待开奖', '13:28:39', 'xyft');
INSERT INTO `think_message` VALUES ('349', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516a9749be.png', 'lid', '和双200', '13:28:49', 'pk10');
INSERT INTO `think_message` VALUES ('350', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '特3418.19/200', '13:28:59', 'pk10');
INSERT INTO `think_message` VALUES ('351', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916270关闭，请耐心等待开奖', '13:29:00', 'bj28');
INSERT INTO `think_message` VALUES ('352', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '1/157/500', '13:29:09', 'pk10');
INSERT INTO `think_message` VALUES ('353', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '和双200', '13:29:14', 'pk10');
INSERT INTO `think_message` VALUES ('354', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '1双1500', '13:29:23', 'pk10');
INSERT INTO `think_message` VALUES ('355', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020045关闭，请耐心等待开奖', '13:29:25', 'ssc');
INSERT INTO `think_message` VALUES ('356', '0', 'say', '1', '/Uploads/carousel/2017-09-14/59ba3909224eb.png', '体温 ㎝ ╮', '庄/250', '13:29:30', 'pk10');
INSERT INTO `think_message` VALUES ('357', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce052b1a45d.jpg', '人生', '3小1000', '13:29:38', 'pk10');
INSERT INTO `think_message` VALUES ('358', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我', '3双366', '13:29:49', 'pk10');
INSERT INTO `think_message` VALUES ('359', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020005期结算已完毕！<br/>\r\n							号码：07,10,04,09,02,01,05,06,03,08', '13:29:56', 'xyft');
INSERT INTO `think_message` VALUES ('360', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020006开放，祝各位中大奖', '13:29:56', 'xyft');
INSERT INTO `think_message` VALUES ('361', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a829bd2e2.png', '男人的味道', '245/龙/300', '13:29:59', 'pk10');
INSERT INTO `think_message` VALUES ('362', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '12345/大/200', '13:30:11', 'pk10');
INSERT INTO `think_message` VALUES ('363', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b182929b8.png', '落叶知秋', '庄/250', '13:30:15', 'pk10');
INSERT INTO `think_message` VALUES ('364', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345270关闭，请耐心等待开奖', '13:30:15', 'jnd28');
INSERT INTO `think_message` VALUES ('365', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定', '庄/1000', '13:30:25', 'pk10');
INSERT INTO `think_message` VALUES ('366', '0', 'say', '1', '/Uploads/carousel/2017-09-14/59ba3909224eb.png', '体温 ㎝ ╮', '3双366', '13:30:36', 'pk10');
INSERT INTO `think_message` VALUES ('367', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定', '庄/300', '13:30:40', 'pk10');
INSERT INTO `think_message` VALUES ('368', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', '245/龙/300', '13:30:46', 'pk10');
INSERT INTO `think_message` VALUES ('369', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710292关闭，请耐心等待开奖', '13:30:49', 'pk10');
INSERT INTO `think_message` VALUES ('370', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916270期结算已完毕!号码：8+9+1=18', '13:30:55', 'bj28');
INSERT INTO `think_message` VALUES ('371', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916271开放，祝各位中大奖', '13:30:55', 'bj28');
INSERT INTO `think_message` VALUES ('372', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020045期结算已完毕！<br/>\r\n							号码：1,9,9,5,1', '13:31:29', 'ssc');
INSERT INTO `think_message` VALUES ('373', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020046开放，祝各位中大奖', '13:31:29', 'ssc');
INSERT INTO `think_message` VALUES ('374', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345270期结算已完毕!号码：7+8+1=16', '13:31:30', 'jnd28');
INSERT INTO `think_message` VALUES ('375', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345271开放，祝各位中大奖', '13:31:30', 'jnd28');
INSERT INTO `think_message` VALUES ('376', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710292期结算已完毕！<br/>\r\n							号码：06,01,02,10,03,09,08,07,05,04', '13:33:00', 'pk10');
INSERT INTO `think_message` VALUES ('377', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710293开放，祝各位中大奖', '13:33:00', 'pk10');
INSERT INTO `think_message` VALUES ('378', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '5双200', '13:33:14', 'pk10');
INSERT INTO `think_message` VALUES ('379', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04a05ca92.jpg', '坚强的一面', '1/479/500', '13:33:24', 'pk10');
INSERT INTO `think_message` VALUES ('380', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏', '3大1500', '13:33:36', 'pk10');
INSERT INTO `think_message` VALUES ('381', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏', '1/479/500', '13:33:40', 'pk10');
INSERT INTO `think_message` VALUES ('382', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345271关闭，请耐心等待开奖', '13:33:42', 'jnd28');
INSERT INTO `think_message` VALUES ('383', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020006关闭，请耐心等待开奖', '13:33:46', 'xyft');
INSERT INTO `think_message` VALUES ('384', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b902fbca40a.jpg', '半仙', 'A/500', '13:33:51', 'pk10');
INSERT INTO `think_message` VALUES ('385', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916271关闭，请耐心等待开奖', '13:34:00', 'bj28');
INSERT INTO `think_message` VALUES ('386', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '6双700', '13:34:01', 'pk10');
INSERT INTO `think_message` VALUES ('387', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '12345/大/200', '13:34:07', 'pk10');
INSERT INTO `think_message` VALUES ('388', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf9240fb4.png', '漫长の人生', '1/13579/500', '13:34:17', 'pk10');
INSERT INTO `think_message` VALUES ('389', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '和双200', '13:34:26', 'pk10');
INSERT INTO `think_message` VALUES ('390', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '2大1500', '13:34:30', 'pk10');
INSERT INTO `think_message` VALUES ('391', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '5双200', '13:34:41', 'pk10');
INSERT INTO `think_message` VALUES ('392', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020006期结算已完毕！<br/>\r\n							号码：06,01,03,05,08,09,02,10,04,07', '13:34:51', 'xyft');
INSERT INTO `think_message` VALUES ('393', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020007开放，祝各位中大奖', '13:34:51', 'xyft');
INSERT INTO `think_message` VALUES ('394', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a9de22567.png', '创想', '5双1500', '13:34:52', 'pk10');
INSERT INTO `think_message` VALUES ('395', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏', '2大1500', '13:35:01', 'pk10');
INSERT INTO `think_message` VALUES ('396', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345271期结算已完毕!号码：8+2+3=13', '13:35:10', 'jnd28');
INSERT INTO `think_message` VALUES ('397', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345272开放，祝各位中大奖', '13:35:10', 'jnd28');
INSERT INTO `think_message` VALUES ('398', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '特341819/50', '13:35:12', 'pk10');
INSERT INTO `think_message` VALUES ('399', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8aece2edcb.png', '白帆', '12/龙/1500', '13:35:24', 'pk10');
INSERT INTO `think_message` VALUES ('400', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '2大1500', '13:35:31', 'pk10');
INSERT INTO `think_message` VALUES ('401', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', 'A/200', '13:35:42', 'pk10');
INSERT INTO `think_message` VALUES ('402', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '庄/200', '13:35:54', 'pk10');
INSERT INTO `think_message` VALUES ('403', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916271期结算已完毕!号码：4+5+4=13', '13:35:59', 'bj28');
INSERT INTO `think_message` VALUES ('404', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916272开放，祝各位中大奖', '13:35:59', 'bj28');
INSERT INTO `think_message` VALUES ('405', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abb76a801.png', '独自偷欢', '特1819/200', '13:36:05', 'pk10');
INSERT INTO `think_message` VALUES ('406', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04a05ca92.jpg', '坚强的一面', '345/虎/200', '13:36:12', 'pk10');
INSERT INTO `think_message` VALUES ('407', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '23456/小单/300', '13:36:23', 'pk10');
INSERT INTO `think_message` VALUES ('408', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', 'AB/300', '13:36:32', 'pk10');
INSERT INTO `think_message` VALUES ('409', '0', 'say', '1', '/Uploads/carousel/2017-09-27/59cb9d4642d45.png', '样哇', '和小1000', '13:36:43', 'pk10');
INSERT INTO `think_message` VALUES ('410', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710293关闭，请耐心等待开奖', '13:36:51', 'pk10');
INSERT INTO `think_message` VALUES ('411', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345272关闭，请耐心等待开奖', '13:37:17', 'jnd28');
INSERT INTO `think_message` VALUES ('412', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '1/13579/500', '13:37:37', 'pk10');
INSERT INTO `think_message` VALUES ('413', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '9双1500', '13:37:41', 'pk10');
INSERT INTO `think_message` VALUES ('414', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a829bd2e2.png', '男人的味道', '8双1000', '13:37:50', 'pk10');
INSERT INTO `think_message` VALUES ('415', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c51645d8128.png', '感觉出了错', '1大1500', '13:37:54', 'pk10');
INSERT INTO `think_message` VALUES ('416', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020007关闭，请耐心等待开奖', '13:38:41', 'xyft');
INSERT INTO `think_message` VALUES ('417', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345272期结算已完毕!号码：1+4+6=11', '13:38:50', 'jnd28');
INSERT INTO `think_message` VALUES ('418', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345273开放，祝各位中大奖', '13:38:50', 'jnd28');
INSERT INTO `think_message` VALUES ('419', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916272关闭，请耐心等待开奖', '13:39:00', 'bj28');
INSERT INTO `think_message` VALUES ('420', '0', 'system', '1', '/Public/main/img/kefu.jpg', '客服', '玩家「xsdaxa11」上分已受理，请注意查看点数', '13:39:24', '');
INSERT INTO `think_message` VALUES ('421', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020046关闭，请耐心等待开奖', '13:39:25', 'ssc');
INSERT INTO `think_message` VALUES ('422', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020007期结算已完毕！<br/>\r\n							号码：01,06,10,09,07,04,02,03,05,08', '13:39:52', 'xyft');
INSERT INTO `think_message` VALUES ('423', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020008开放，祝各位中大奖', '13:39:52', 'xyft');
INSERT INTO `think_message` VALUES ('424', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345273关闭，请耐心等待开奖', '13:40:37', 'jnd28');
INSERT INTO `think_message` VALUES ('425', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710294关闭，请耐心等待开奖', '13:40:48', 'pk10');
INSERT INTO `think_message` VALUES ('426', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916272期结算已完毕!号码：6+2+7=15', '13:41:04', 'bj28');
INSERT INTO `think_message` VALUES ('427', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916273开放，祝各位中大奖', '13:41:04', 'bj28');
INSERT INTO `think_message` VALUES ('428', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020046期结算已完毕！<br/>\r\n							号码：9,5,0,2,2', '13:41:24', 'ssc');
INSERT INTO `think_message` VALUES ('429', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020047开放，祝各位中大奖', '13:41:24', 'ssc');
INSERT INTO `think_message` VALUES ('430', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345273期结算已完毕!号码：0+3+0=3', '13:42:10', 'jnd28');
INSERT INTO `think_message` VALUES ('431', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345274开放，祝各位中大奖', '13:42:10', 'jnd28');
INSERT INTO `think_message` VALUES ('432', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020008关闭，请耐心等待开奖', '13:43:42', 'xyft');
INSERT INTO `think_message` VALUES ('433', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916273关闭，请耐心等待开奖', '13:44:00', 'bj28');
INSERT INTO `think_message` VALUES ('434', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345274关闭，请耐心等待开奖', '13:44:24', 'jnd28');
INSERT INTO `think_message` VALUES ('435', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020008期结算已完毕！<br/>\r\n							号码：06,09,01,02,08,03,07,10,04,05', '13:44:41', 'xyft');
INSERT INTO `think_message` VALUES ('436', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020009开放，祝各位中大奖', '13:44:41', 'xyft');
INSERT INTO `think_message` VALUES ('437', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345274期结算已完毕!号码：0+3+7=10', '13:45:40', 'jnd28');
INSERT INTO `think_message` VALUES ('438', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345275开放，祝各位中大奖', '13:45:40', 'jnd28');
INSERT INTO `think_message` VALUES ('439', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916273期结算已完毕!号码：7+0+6=13', '13:45:59', 'bj28');
INSERT INTO `think_message` VALUES ('440', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916274开放，祝各位中大奖', '13:45:59', 'bj28');
INSERT INTO `think_message` VALUES ('441', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710295关闭，请耐心等待开奖', '13:46:11', 'pk10');
INSERT INTO `think_message` VALUES ('442', '0', 'system', '1', '/Public/main/img/kefu.jpg', '客服', '玩家「xsdaxa11」上分已受理，请注意查看点数', '13:46:12', '');
INSERT INTO `think_message` VALUES ('443', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345275关闭，请耐心等待开奖', '13:47:45', 'jnd28');
INSERT INTO `think_message` VALUES ('444', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020009关闭，请耐心等待开奖', '13:48:31', 'xyft');
INSERT INTO `think_message` VALUES ('445', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345275期结算已完毕!号码：3+0+0=3', '13:48:50', 'jnd28');
INSERT INTO `think_message` VALUES ('446', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345276开放，祝各位中大奖', '13:48:50', 'jnd28');
INSERT INTO `think_message` VALUES ('447', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916274关闭，请耐心等待开奖', '13:49:00', 'bj28');
INSERT INTO `think_message` VALUES ('448', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020047关闭，请耐心等待开奖', '13:49:25', 'ssc');
INSERT INTO `think_message` VALUES ('449', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020009期结算已完毕！<br/>\r\n							号码：08,10,07,06,01,09,03,04,05,02', '13:49:52', 'xyft');
INSERT INTO `think_message` VALUES ('450', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020010开放，祝各位中大奖', '13:49:52', 'xyft');
INSERT INTO `think_message` VALUES ('451', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916274期结算已完毕!号码：8+6+2=16', '13:50:54', 'bj28');
INSERT INTO `think_message` VALUES ('452', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916275开放，祝各位中大奖', '13:50:54', 'bj28');
INSERT INTO `think_message` VALUES ('453', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345276关闭，请耐心等待开奖', '13:51:13', 'jnd28');
INSERT INTO `think_message` VALUES ('454', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '极小500', '13:51:14', 'bj28');
INSERT INTO `think_message` VALUES ('455', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', '小500', '13:51:21', 'bj28');
INSERT INTO `think_message` VALUES ('456', '9', 'say', '1', '/Public/Home/img/face/3.png', 'xsdaxa11', '小单100', '13:51:23', 'bj28');
INSERT INTO `think_message` VALUES ('457', '9', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「小单100」,竞猜成功', '13:51:23', 'bj28');
INSERT INTO `think_message` VALUES ('458', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '极大300', '13:51:24', 'bj28');
INSERT INTO `think_message` VALUES ('459', '9', 'say', '1', '/Public/Home/img/face/3.png', 'xsdaxa11', '小单100', '13:51:25', 'bj28');
INSERT INTO `think_message` VALUES ('460', '9', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「小单100」,竞猜成功', '13:51:25', 'bj28');
INSERT INTO `think_message` VALUES ('461', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710296关闭，请耐心等待开奖', '13:51:28', 'pk10');
INSERT INTO `think_message` VALUES ('462', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '对子500', '13:51:36', 'bj28');
INSERT INTO `think_message` VALUES ('463', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020047期结算已完毕！<br/>\r\n							号码：2,1,6,6,9', '13:51:44', 'ssc');
INSERT INTO `think_message` VALUES ('464', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020048开放，祝各位中大奖', '13:51:44', 'ssc');
INSERT INTO `think_message` VALUES ('465', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '极小500', '13:51:45', 'bj28');
INSERT INTO `think_message` VALUES ('466', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定', '顺子200', '13:51:53', 'bj28');
INSERT INTO `think_message` VALUES ('467', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '大单200', '13:51:54', 'bj28');
INSERT INTO `think_message` VALUES ('468', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定', '对子500', '13:52:07', 'bj28');
INSERT INTO `think_message` VALUES ('469', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', '12点500', '13:52:13', 'bj28');
INSERT INTO `think_message` VALUES ('470', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', '小双200', '13:52:20', 'bj28');
INSERT INTO `think_message` VALUES ('471', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf9240fb4.png', '漫长の人生', '12点500', '13:52:27', 'bj28');
INSERT INTO `think_message` VALUES ('472', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf9240fb4.png', '漫长の人生', '小双200', '13:52:30', 'bj28');
INSERT INTO `think_message` VALUES ('473', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', '大500', '13:52:33', 'bj28');
INSERT INTO `think_message` VALUES ('474', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345276期结算已完毕!号码：4+1+1=6', '13:52:40', 'jnd28');
INSERT INTO `think_message` VALUES ('475', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345277开放，祝各位中大奖', '13:52:40', 'jnd28');
INSERT INTO `think_message` VALUES ('476', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '小双200', '13:52:42', 'bj28');
INSERT INTO `think_message` VALUES ('477', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '闲300', '13:52:46', 'bj28');
INSERT INTO `think_message` VALUES ('478', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad865d131.png', '超越梦想', '大单200', '13:52:54', 'bj28');
INSERT INTO `think_message` VALUES ('479', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac9312522.png', '无可置疑◆', '小双200', '13:53:03', 'bj28');
INSERT INTO `think_message` VALUES ('480', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a829bd2e2.png', '男人的味道', '豹子300', '13:53:12', 'bj28');
INSERT INTO `think_message` VALUES ('481', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', '小200', '13:53:19', 'bj28');
INSERT INTO `think_message` VALUES ('482', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '6点100', '13:53:27', 'bj28');
INSERT INTO `think_message` VALUES ('483', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '1点100', '13:53:37', 'bj28');
INSERT INTO `think_message` VALUES ('484', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020010关闭，请耐心等待开奖', '13:53:42', 'xyft');
INSERT INTO `think_message` VALUES ('485', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '对子500', '13:53:44', 'bj28');
INSERT INTO `think_message` VALUES ('486', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '大单200', '13:53:47', 'bj28');
INSERT INTO `think_message` VALUES ('487', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c5171c6c8fb.png', '念旧゜', '极大100', '13:53:52', 'bj28');
INSERT INTO `think_message` VALUES ('488', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '大单200', '13:53:58', 'bj28');
INSERT INTO `think_message` VALUES ('489', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916275关闭，请耐心等待开奖', '13:54:00', 'bj28');
INSERT INTO `think_message` VALUES ('490', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020010期结算已完毕！<br/>\r\n							号码：09,01,03,02,05,06,04,08,10,07', '13:54:41', 'xyft');
INSERT INTO `think_message` VALUES ('491', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020011开放，祝各位中大奖', '13:54:41', 'xyft');
INSERT INTO `think_message` VALUES ('492', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345277关闭，请耐心等待开奖', '13:54:48', 'jnd28');
INSERT INTO `think_message` VALUES ('493', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916275期结算已完毕!号码：0+1+8=9', '13:55:49', 'bj28');
INSERT INTO `think_message` VALUES ('494', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916276开放，祝各位中大奖', '13:55:49', 'bj28');
INSERT INTO `think_message` VALUES ('495', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710297关闭，请耐心等待开奖', '13:55:50', 'pk10');
INSERT INTO `think_message` VALUES ('496', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c5171c6c8fb.png', '念旧゜', '极大100', '13:55:59', 'bj28');
INSERT INTO `think_message` VALUES ('497', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae8c9a73d.png', '峰回路转', '大100', '13:56:07', 'bj28');
INSERT INTO `think_message` VALUES ('498', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345277期结算已完毕!号码：2+0+1=3', '13:56:10', 'jnd28');
INSERT INTO `think_message` VALUES ('499', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345278开放，祝各位中大奖', '13:56:10', 'jnd28');
INSERT INTO `think_message` VALUES ('500', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8aece2edcb.png', '白帆', '6点100', '13:56:17', 'bj28');
INSERT INTO `think_message` VALUES ('501', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516a9749be.png', 'lid', '杂六200', '13:56:24', 'bj28');
INSERT INTO `think_message` VALUES ('502', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad167ad28.png', '志平', '庄500', '13:56:30', 'bj28');
INSERT INTO `think_message` VALUES ('503', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae1266924.png', '蔡仁傑', '对子500', '13:56:33', 'bj28');
INSERT INTO `think_message` VALUES ('504', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce052b1a45d.jpg', '人生', '大300', '13:56:38', 'bj28');
INSERT INTO `think_message` VALUES ('505', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae1266924.png', '蔡仁傑', '极小500', '13:56:49', 'bj28');
INSERT INTO `think_message` VALUES ('506', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '小200', '13:56:53', 'bj28');
INSERT INTO `think_message` VALUES ('507', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', '顺子200', '13:57:01', 'bj28');
INSERT INTO `think_message` VALUES ('508', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '小500', '13:57:11', 'bj28');
INSERT INTO `think_message` VALUES ('509', '0', 'say', '1', '/Uploads/carousel/2017-09-14/59ba3909224eb.png', '体温 ㎝ ╮', '小200', '13:57:23', 'bj28');
INSERT INTO `think_message` VALUES ('510', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '闲300', '13:57:31', 'bj28');
INSERT INTO `think_message` VALUES ('511', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac9312522.png', '无可置疑◆', '小500', '13:57:43', 'bj28');
INSERT INTO `think_message` VALUES ('512', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf9240fb4.png', '漫长の人生', '小200', '13:57:54', 'bj28');
INSERT INTO `think_message` VALUES ('513', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710297期结算已完毕！<br/>\r\n							号码：09,04,08,05,07,02,01,06,03,10', '13:58:00', 'pk10');
INSERT INTO `think_message` VALUES ('514', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710298开放，祝各位中大奖', '13:58:00', 'pk10');
INSERT INTO `think_message` VALUES ('515', '0', 'system', '1', '/Public/main/img/kefu.jpg', '客服', '玩家「ceshi666」上分已受理，请注意查看点数', '13:58:00', '');
INSERT INTO `think_message` VALUES ('516', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '极小500', '13:58:02', 'bj28');
INSERT INTO `think_message` VALUES ('517', '0', 'system', '1', '/Public/main/img/kefu.jpg', '客服', '玩家「ceshi666」回分已受理，请确认', '13:58:09', '');
INSERT INTO `think_message` VALUES ('518', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '12点500', '13:58:14', 'bj28');
INSERT INTO `think_message` VALUES ('519', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345278关闭，请耐心等待开奖', '13:58:17', 'jnd28');
INSERT INTO `think_message` VALUES ('520', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '1点100', '13:58:18', 'bj28');
INSERT INTO `think_message` VALUES ('521', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb816b016d.jpg', '齐天大圣', '小双200', '13:58:25', 'bj28');
INSERT INTO `think_message` VALUES ('522', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020011关闭，请耐心等待开奖', '13:58:31', 'xyft');
INSERT INTO `think_message` VALUES ('523', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '12点500', '13:58:33', 'bj28');
INSERT INTO `think_message` VALUES ('524', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '大300', '13:58:45', 'bj28');
INSERT INTO `think_message` VALUES ('525', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我', '豹子300', '13:58:54', 'bj28');
INSERT INTO `think_message` VALUES ('526', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '6点100', '13:58:57', 'bj28');
INSERT INTO `think_message` VALUES ('527', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916276关闭，请耐心等待开奖', '13:59:00', 'bj28');
INSERT INTO `think_message` VALUES ('528', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020048关闭，请耐心等待开奖', '13:59:25', 'ssc');
INSERT INTO `think_message` VALUES ('529', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345278期结算已完毕!号码：2+2+2=6', '13:59:50', 'jnd28');
INSERT INTO `think_message` VALUES ('530', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345279开放，祝各位中大奖', '13:59:50', 'jnd28');
INSERT INTO `think_message` VALUES ('531', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020011期结算已完毕！<br/>\r\n							号码：08,01,02,05,03,09,06,10,07,04', '13:59:53', 'xyft');
INSERT INTO `think_message` VALUES ('532', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020012开放，祝各位中大奖', '13:59:53', 'xyft');
INSERT INTO `think_message` VALUES ('533', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04a05ca92.jpg', '坚强的一面', '7双1500', '14:00:03', 'xyft');
INSERT INTO `think_message` VALUES ('534', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '小双500', '14:00:55', 'jnd28');
INSERT INTO `think_message` VALUES ('535', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abb76a801.png', '独自偷欢', '大500', '14:00:58', 'jnd28');
INSERT INTO `think_message` VALUES ('536', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916276期结算已完毕!号码：6+9+4=19', '14:01:00', 'bj28');
INSERT INTO `think_message` VALUES ('537', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916277开放，祝各位中大奖', '14:01:00', 'bj28');
INSERT INTO `think_message` VALUES ('538', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定', '大500', '14:01:03', 'bj28');
INSERT INTO `think_message` VALUES ('539', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce052b1a45d.jpg', '人生', '小双200', '14:01:03', 'jnd28');
INSERT INTO `think_message` VALUES ('540', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '极大100', '14:01:11', 'bj28');
INSERT INTO `think_message` VALUES ('541', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb816b016d.jpg', '齐天大圣', '大100', '14:01:12', 'jnd28');
INSERT INTO `think_message` VALUES ('542', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '大单200', '14:01:16', 'jnd28');
INSERT INTO `think_message` VALUES ('543', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', '小双500', '14:01:17', 'bj28');
INSERT INTO `think_message` VALUES ('544', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°', '小双200', '14:01:26', 'jnd28');
INSERT INTO `think_message` VALUES ('545', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', '大500', '14:01:29', 'bj28');
INSERT INTO `think_message` VALUES ('546', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020048期结算已完毕！<br/>\r\n							号码：5,6,2,0,0', '14:01:34', 'ssc');
INSERT INTO `think_message` VALUES ('547', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020049开放，祝各位中大奖', '14:01:34', 'ssc');
INSERT INTO `think_message` VALUES ('548', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我', '大单200', '14:01:36', 'bj28');
INSERT INTO `think_message` VALUES ('549', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', '1点100', '14:01:36', 'jnd28');
INSERT INTO `think_message` VALUES ('550', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '大500', '14:01:42', 'jnd28');
INSERT INTO `think_message` VALUES ('551', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '半顺200', '14:01:45', 'bj28');
INSERT INTO `think_message` VALUES ('552', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345279关闭，请耐心等待开奖', '14:01:49', 'jnd28');
INSERT INTO `think_message` VALUES ('553', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710298关闭，请耐心等待开奖', '14:01:51', 'pk10');
INSERT INTO `think_message` VALUES ('554', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c51645d8128.png', '感觉出了错', '杂六200', '14:01:51', 'bj28');
INSERT INTO `think_message` VALUES ('555', '4', 'say_error', '1', '/Public/Home/img/face/3.png', 'ceshi666', '大100', '14:01:54', 'jnd28');
INSERT INTO `think_message` VALUES ('556', '4', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「大100」非竞猜时间，竞猜失败', '14:01:54', 'jnd28');
INSERT INTO `think_message` VALUES ('557', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。', '6点100', '14:01:57', 'bj28');
INSERT INTO `think_message` VALUES ('558', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '极小500', '14:02:05', 'bj28');
INSERT INTO `think_message` VALUES ('559', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a9de22567.png', '创想', '大500', '14:02:17', 'bj28');
INSERT INTO `think_message` VALUES ('560', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516fe05160.png', '别碰我', '小双500', '14:02:23', 'bj28');
INSERT INTO `think_message` VALUES ('561', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '对子500', '14:02:28', 'bj28');
INSERT INTO `think_message` VALUES ('562', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '大单200', '14:02:34', 'bj28');
INSERT INTO `think_message` VALUES ('563', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '极小500', '14:02:37', 'bj28');
INSERT INTO `think_message` VALUES ('564', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '大单200', '14:02:47', 'bj28');
INSERT INTO `think_message` VALUES ('565', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710298期结算已完毕！<br/>\r\n							号码：09,02,05,03,08,01,10,04,07,06', '14:02:55', 'pk10');
INSERT INTO `think_message` VALUES ('566', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710299开放，祝各位中大奖', '14:02:55', 'pk10');
INSERT INTO `think_message` VALUES ('567', '0', 'say', '1', '/Uploads/carousel/2017-09-24/59c774afc0c57.png', '猴崽崽', '12点500', '14:02:55', 'bj28');
INSERT INTO `think_message` VALUES ('568', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '庄500', '14:03:06', 'bj28');
INSERT INTO `think_message` VALUES ('569', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a829bd2e2.png', '男人的味道', '杂六200', '14:03:14', 'bj28');
INSERT INTO `think_message` VALUES ('570', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345279期结算已完毕!号码：6+2+7=15', '14:03:15', 'jnd28');
INSERT INTO `think_message` VALUES ('571', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345280开放，祝各位中大奖', '14:03:15', 'jnd28');
INSERT INTO `think_message` VALUES ('572', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏', '闲300', '14:03:17', 'bj28');
INSERT INTO `think_message` VALUES ('573', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac9312522.png', '无可置疑◆', '小双500', '14:03:20', 'jnd28');
INSERT INTO `think_message` VALUES ('574', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '极小500', '14:03:22', 'bj28');
INSERT INTO `think_message` VALUES ('575', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '顺子200', '14:03:31', 'bj28');
INSERT INTO `think_message` VALUES ('576', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae1266924.png', '蔡仁傑', '6点100', '14:03:32', 'jnd28');
INSERT INTO `think_message` VALUES ('577', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。', '6点100', '14:03:36', 'jnd28');
INSERT INTO `think_message` VALUES ('578', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '小500', '14:03:39', 'bj28');
INSERT INTO `think_message` VALUES ('579', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb816b016d.jpg', '齐天大圣', '12点500', '14:03:41', 'jnd28');
INSERT INTO `think_message` VALUES ('580', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020012关闭，请耐心等待开奖', '14:03:43', 'xyft');
INSERT INTO `think_message` VALUES ('581', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '半顺200', '14:03:44', 'jnd28');
INSERT INTO `think_message` VALUES ('582', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad167ad28.png', '志平', '1点100', '14:03:48', 'bj28');
INSERT INTO `think_message` VALUES ('583', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '小500', '14:03:56', 'jnd28');
INSERT INTO `think_message` VALUES ('584', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916277关闭，请耐心等待开奖', '14:04:00', 'bj28');
INSERT INTO `think_message` VALUES ('585', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', '顺子200', '14:04:02', 'jnd28');
INSERT INTO `think_message` VALUES ('586', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '极大100', '14:04:12', 'jnd28');
INSERT INTO `think_message` VALUES ('587', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '小双500', '14:04:16', 'jnd28');
INSERT INTO `think_message` VALUES ('588', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c5171c6c8fb.png', '念旧゜', '小500', '14:04:25', 'jnd28');
INSERT INTO `think_message` VALUES ('589', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', '大100', '14:04:35', 'jnd28');
INSERT INTO `think_message` VALUES ('590', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '小双200', '14:04:45', 'jnd28');
INSERT INTO `think_message` VALUES ('591', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516d8b0cf5.png', '小猪宝宝', '极大100', '14:04:54', 'jnd28');
INSERT INTO `think_message` VALUES ('592', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020012期结算已完毕！<br/>\r\n							号码：05,01,04,03,08,06,02,10,09,07', '14:04:55', 'xyft');
INSERT INTO `think_message` VALUES ('593', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020013开放，祝各位中大奖', '14:04:55', 'xyft');
INSERT INTO `think_message` VALUES ('594', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce052b1a45d.jpg', '人生', '小200', '14:05:02', 'jnd28');
INSERT INTO `think_message` VALUES ('595', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '顺子200', '14:05:12', 'jnd28');
INSERT INTO `think_message` VALUES ('596', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345280关闭，请耐心等待开奖', '14:05:16', 'jnd28');
INSERT INTO `think_message` VALUES ('597', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916277期结算已完毕!号码：3+7+1=11', '14:05:54', 'bj28');
INSERT INTO `think_message` VALUES ('598', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916278开放，祝各位中大奖', '14:05:54', 'bj28');
INSERT INTO `think_message` VALUES ('599', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710299关闭，请耐心等待开奖', '14:06:51', 'pk10');
INSERT INTO `think_message` VALUES ('600', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345280期结算已完毕!号码：8+8+8=24', '14:07:05', 'jnd28');
INSERT INTO `think_message` VALUES ('601', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345281开放，祝各位中大奖', '14:07:05', 'jnd28');
INSERT INTO `think_message` VALUES ('602', '4', 'say', '1', '/Public/Home/img/face/3.png', 'ceshi666', '大1000', '14:07:14', 'bj28');
INSERT INTO `think_message` VALUES ('603', '4', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「大1000」,竞猜成功', '14:07:14', 'bj28');
INSERT INTO `think_message` VALUES ('604', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '顺子200', '14:07:14', 'bj28');
INSERT INTO `think_message` VALUES ('605', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae8c9a73d.png', '峰回路转', '大300', '14:07:20', 'bj28');
INSERT INTO `think_message` VALUES ('606', '4', 'say', '1', '/Public/Home/img/face/3.png', 'ceshi666', '单1000', '14:07:22', 'bj28');
INSERT INTO `think_message` VALUES ('607', '4', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「单1000」,竞猜成功', '14:07:22', 'bj28');
INSERT INTO `think_message` VALUES ('608', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '6点100', '14:07:24', 'bj28');
INSERT INTO `think_message` VALUES ('609', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫', '极大100', '14:07:34', 'bj28');
INSERT INTO `think_message` VALUES ('610', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c5171c6c8fb.png', '念旧゜', '庄500', '14:07:40', 'bj28');
INSERT INTO `think_message` VALUES ('611', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '小双200', '14:07:44', 'bj28');
INSERT INTO `think_message` VALUES ('612', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c516a9749be.png', 'lid', '小双200', '14:07:52', 'bj28');
INSERT INTO `think_message` VALUES ('613', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfcc8d433.png', '.....|还嬒继续|▍', '闲300', '14:07:59', 'bj28');
INSERT INTO `think_message` VALUES ('614', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '闲300', '14:08:08', 'bj28');
INSERT INTO `think_message` VALUES ('615', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '大100', '14:08:13', 'bj28');
INSERT INTO `think_message` VALUES ('616', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad167ad28.png', '志平', '6点100', '14:08:24', 'bj28');
INSERT INTO `think_message` VALUES ('617', '0', 'say', '1', '/Uploads/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦', '庄500', '14:08:34', 'bj28');
INSERT INTO `think_message` VALUES ('618', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345281关闭，请耐心等待开奖', '14:08:43', 'jnd28');
INSERT INTO `think_message` VALUES ('619', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020013关闭，请耐心等待开奖', '14:08:45', 'xyft');
INSERT INTO `think_message` VALUES ('620', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce052b1a45d.jpg', '人生', '顺子200', '14:08:45', 'bj28');
INSERT INTO `think_message` VALUES ('621', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '小双500', '14:08:54', 'bj28');
INSERT INTO `think_message` VALUES ('622', '4', 'say_error', '1', '/Public/Home/img/face/3.png', 'ceshi666', '双10', '14:09:00', 'bj28');
INSERT INTO `think_message` VALUES ('623', '4', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「双10」单笔点数最低50,竞猜失败', '14:09:00', 'bj28');
INSERT INTO `think_message` VALUES ('624', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916278关闭，请耐心等待开奖', '14:09:00', 'bj28');
INSERT INTO `think_message` VALUES ('625', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020049关闭，请耐心等待开奖', '14:09:25', 'ssc');
INSERT INTO `think_message` VALUES ('626', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020013期结算已完毕！<br/>\r\n							号码：06,10,02,07,04,01,09,08,03,05', '14:09:53', 'xyft');
INSERT INTO `think_message` VALUES ('627', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020014开放，祝各位中大奖', '14:09:53', 'xyft');
INSERT INTO `think_message` VALUES ('628', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345281期结算已完毕!号码：7+0+4=11', '14:10:34', 'jnd28');
INSERT INTO `think_message` VALUES ('629', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345282开放，祝各位中大奖', '14:10:34', 'jnd28');
INSERT INTO `think_message` VALUES ('630', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710300关闭，请耐心等待开奖', '14:11:10', 'pk10');
INSERT INTO `think_message` VALUES ('631', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916278期结算已完毕!号码：8+8+6=22', '14:11:19', 'bj28');
INSERT INTO `think_message` VALUES ('632', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916279开放，祝各位中大奖', '14:11:19', 'bj28');
INSERT INTO `think_message` VALUES ('633', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '小双200', '14:11:21', 'bj28');
INSERT INTO `think_message` VALUES ('634', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封', '对子500', '14:11:25', 'bj28');
INSERT INTO `think_message` VALUES ('635', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '极大300', '14:11:29', 'bj28');
INSERT INTO `think_message` VALUES ('636', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020049期结算已完毕！<br/>\r\n							号码：5,6,8,7,7', '14:11:35', 'ssc');
INSERT INTO `think_message` VALUES ('637', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020050开放，祝各位中大奖', '14:11:35', 'ssc');
INSERT INTO `think_message` VALUES ('638', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '杂六200', '14:11:39', 'bj28');
INSERT INTO `think_message` VALUES ('639', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b902fbca40a.jpg', '半仙', '极小500', '14:11:48', 'bj28');
INSERT INTO `think_message` VALUES ('640', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '极小500', '14:11:59', 'bj28');
INSERT INTO `think_message` VALUES ('641', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae1266924.png', '蔡仁傑', '豹子300', '14:12:15', 'jnd28');
INSERT INTO `think_message` VALUES ('642', '4', 'say', '1', '/Public/Home/img/face/3.png', 'ceshi666', '大100', '14:12:16', 'jnd28');
INSERT INTO `think_message` VALUES ('643', '4', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「大100」,竞猜成功', '14:12:16', 'jnd28');
INSERT INTO `think_message` VALUES ('644', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345282关闭，请耐心等待开奖', '14:12:18', 'jnd28');
INSERT INTO `think_message` VALUES ('645', '4', 'say_error', '1', '/Public/Home/img/face/3.png', 'ceshi666', '大1000', '14:12:22', 'jnd28');
INSERT INTO `think_message` VALUES ('646', '4', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「大1000」非竞猜时间，竞猜失败', '14:12:22', 'jnd28');
INSERT INTO `think_message` VALUES ('647', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710300期结算已完毕！<br/>\r\n							号码：05,01,07,09,08,06,04,03,02,10', '14:12:50', 'pk10');
INSERT INTO `think_message` VALUES ('648', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710301开放，祝各位中大奖', '14:12:50', 'pk10');
INSERT INTO `think_message` VALUES ('649', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345282期结算已完毕!号码：8+6+7=21', '14:13:19', 'jnd28');
INSERT INTO `think_message` VALUES ('650', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345283开放，祝各位中大奖', '14:13:19', 'jnd28');
INSERT INTO `think_message` VALUES ('651', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae1266924.png', '蔡仁傑', '小500', '14:13:30', 'jnd28');
INSERT INTO `think_message` VALUES ('652', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8a829bd2e2.png', '男人的味道', '庄500', '14:13:39', 'jnd28');
INSERT INTO `think_message` VALUES ('653', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020014关闭，请耐心等待开奖', '14:13:43', 'xyft');
INSERT INTO `think_message` VALUES ('654', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad865d131.png', '超越梦想', '半顺200', '14:13:50', 'jnd28');
INSERT INTO `think_message` VALUES ('655', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916279关闭，请耐心等待开奖', '14:14:00', 'bj28');
INSERT INTO `think_message` VALUES ('656', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '小500', '14:14:02', 'jnd28');
INSERT INTO `think_message` VALUES ('657', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '半顺200', '14:14:14', 'jnd28');
INSERT INTO `think_message` VALUES ('658', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abb76a801.png', '独自偷欢', '顺子200', '14:14:23', 'jnd28');
INSERT INTO `think_message` VALUES ('659', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '半顺200', '14:14:26', 'jnd28');
INSERT INTO `think_message` VALUES ('660', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04a05ca92.jpg', '坚强的一面', '顺子200', '14:14:32', 'jnd28');
INSERT INTO `think_message` VALUES ('661', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', '大300', '14:14:44', 'jnd28');
INSERT INTO `think_message` VALUES ('662', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020014期结算已完毕！<br/>\r\n							号码：05,06,04,02,08,09,07,03,01,10', '14:14:51', 'xyft');
INSERT INTO `think_message` VALUES ('663', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020015开放，祝各位中大奖', '14:14:51', 'xyft');
INSERT INTO `think_message` VALUES ('664', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定', '1点100', '14:14:56', 'jnd28');
INSERT INTO `think_message` VALUES ('665', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '大单200', '14:14:59', 'jnd28');
INSERT INTO `think_message` VALUES ('666', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我', '12点500', '14:15:02', 'jnd28');
INSERT INTO `think_message` VALUES ('667', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '顺子200', '14:15:09', 'jnd28');
INSERT INTO `think_message` VALUES ('668', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫', '大300', '14:15:19', 'jnd28');
INSERT INTO `think_message` VALUES ('669', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '小200', '14:15:25', 'jnd28');
INSERT INTO `think_message` VALUES ('670', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '极大100', '14:15:36', 'jnd28');
INSERT INTO `think_message` VALUES ('671', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345283关闭，请耐心等待开奖', '14:15:41', 'jnd28');
INSERT INTO `think_message` VALUES ('672', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916279期结算已完毕!号码：3+0+5=8', '14:15:54', 'bj28');
INSERT INTO `think_message` VALUES ('673', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916280开放，祝各位中大奖', '14:15:54', 'bj28');
INSERT INTO `think_message` VALUES ('674', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710301关闭，请耐心等待开奖', '14:16:51', 'pk10');
INSERT INTO `think_message` VALUES ('675', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345283期结算已完毕!号码：3+3+4=10', '14:17:05', 'jnd28');
INSERT INTO `think_message` VALUES ('676', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345284开放，祝各位中大奖', '14:17:05', 'jnd28');
INSERT INTO `think_message` VALUES ('677', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏', '小500', '14:17:12', 'jnd28');
INSERT INTO `think_message` VALUES ('678', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '豹子300', '14:17:21', 'jnd28');
INSERT INTO `think_message` VALUES ('679', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '半顺200', '14:17:33', 'jnd28');
INSERT INTO `think_message` VALUES ('680', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfcc8d433.png', '.....|还嬒继续|▍', '极大300', '14:17:42', 'jnd28');
INSERT INTO `think_message` VALUES ('681', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '小200', '14:17:52', 'jnd28');
INSERT INTO `think_message` VALUES ('682', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '极小500', '14:18:00', 'jnd28');
INSERT INTO `think_message` VALUES ('683', '0', 'say', '1', '/Uploads/carousel/2017-09-24/59c774afc0c57.png', '猴崽崽', '庄500', '14:18:06', 'jnd28');
INSERT INTO `think_message` VALUES ('684', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '对子500', '14:18:14', 'jnd28');
INSERT INTO `think_message` VALUES ('685', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '小双500', '14:18:21', 'jnd28');
INSERT INTO `think_message` VALUES ('686', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫', '大单200', '14:18:33', 'jnd28');
INSERT INTO `think_message` VALUES ('687', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '极小500', '14:18:38', 'jnd28');
INSERT INTO `think_message` VALUES ('688', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020015关闭，请耐心等待开奖', '14:18:41', 'xyft');
INSERT INTO `think_message` VALUES ('689', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程', '极小500', '14:18:50', 'jnd28');
INSERT INTO `think_message` VALUES ('690', '0', 'say', '1', '/Uploads/carousel/2017-09-27/59cb9d4642d45.png', '样哇', '极大100', '14:19:00', 'jnd28');
INSERT INTO `think_message` VALUES ('691', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916280关闭，请耐心等待开奖', '14:19:00', 'bj28');
INSERT INTO `think_message` VALUES ('692', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '豹子300', '14:19:07', 'jnd28');
INSERT INTO `think_message` VALUES ('693', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345284关闭，请耐心等待开奖', '14:19:10', 'jnd28');
INSERT INTO `think_message` VALUES ('694', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020050关闭，请耐心等待开奖', '14:19:25', 'ssc');
INSERT INTO `think_message` VALUES ('695', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020015期结算已完毕！<br/>\r\n							号码：07,09,03,05,06,04,08,01,10,02', '14:19:54', 'xyft');
INSERT INTO `think_message` VALUES ('696', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020016开放，祝各位中大奖', '14:19:54', 'xyft');
INSERT INTO `think_message` VALUES ('697', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345284期结算已完毕!号码：3+4+6=13', '14:20:25', 'jnd28');
INSERT INTO `think_message` VALUES ('698', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345285开放，祝各位中大奖', '14:20:25', 'jnd28');
INSERT INTO `think_message` VALUES ('699', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵', '小200', '14:20:36', 'jnd28');
INSERT INTO `think_message` VALUES ('700', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我', '小双500', '14:20:44', 'jnd28');
INSERT INTO `think_message` VALUES ('701', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710302关闭，请耐心等待开奖', '14:20:48', 'pk10');
INSERT INTO `think_message` VALUES ('702', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.', '顺子200', '14:20:52', 'jnd28');
INSERT INTO `think_message` VALUES ('703', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°', '顺子200', '14:21:01', 'jnd28');
INSERT INTO `think_message` VALUES ('704', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916280期结算已完毕!号码：8+2+5=15', '14:21:04', 'bj28');
INSERT INTO `think_message` VALUES ('705', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916281开放，祝各位中大奖', '14:21:04', 'bj28');
INSERT INTO `think_message` VALUES ('706', '0', 'say', '1', '/Uploads/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生', '极小500', '14:21:05', 'jnd28');
INSERT INTO `think_message` VALUES ('707', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫', '庄500', '14:21:08', 'jnd28');
INSERT INTO `think_message` VALUES ('708', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad3b92429.png', '惊鴻【照】影', '极小500', '14:21:12', 'jnd28');
INSERT INTO `think_message` VALUES ('709', '0', 'say', '1', '/Uploads/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日', '顺子200', '14:21:22', 'jnd28');
INSERT INTO `think_message` VALUES ('710', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020050期结算已完毕！<br/>\r\n							号码：6,9,4,9,2', '14:21:25', 'ssc');
INSERT INTO `think_message` VALUES ('711', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020051开放，祝各位中大奖', '14:21:25', 'ssc');
INSERT INTO `think_message` VALUES ('712', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '大500', '14:21:29', 'jnd28');
INSERT INTO `think_message` VALUES ('713', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bf9240fb4.png', '漫长の人生', '对子500', '14:21:33', 'jnd28');
INSERT INTO `think_message` VALUES ('714', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '极大100', '14:21:43', 'jnd28');
INSERT INTO `think_message` VALUES ('715', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '庄500', '14:21:48', 'jnd28');
INSERT INTO `think_message` VALUES ('716', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae8c9a73d.png', '峰回路转', '1点100', '14:21:54', 'jnd28');
INSERT INTO `think_message` VALUES ('717', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04a05ca92.jpg', '坚强的一面', '豹子300', '14:22:00', 'jnd28');
INSERT INTO `think_message` VALUES ('718', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae8c9a73d.png', '峰回路转', '大300', '14:22:05', 'jnd28');
INSERT INTO `think_message` VALUES ('719', '0', 'say', '1', '/Uploads/carousel/2017-09-27/59cb9d4642d45.png', '样哇', '豹子300', '14:22:15', 'jnd28');
INSERT INTO `think_message` VALUES ('720', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听', '对子500', '14:22:21', 'jnd28');
INSERT INTO `think_message` VALUES ('721', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bfcc8d433.png', '.....|还嬒继续|▍', '对子500', '14:22:26', 'jnd28');
INSERT INTO `think_message` VALUES ('722', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '大300', '14:22:35', 'jnd28');
INSERT INTO `think_message` VALUES ('723', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345285关闭，请耐心等待开奖', '14:22:45', 'jnd28');
INSERT INTO `think_message` VALUES ('724', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020016关闭，请耐心等待开奖', '14:23:44', 'xyft');
INSERT INTO `think_message` VALUES ('725', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916281关闭，请耐心等待开奖', '14:24:00', 'bj28');
INSERT INTO `think_message` VALUES ('726', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345285期结算已完毕!号码：9+6+3=18', '14:24:06', 'jnd28');
INSERT INTO `think_message` VALUES ('727', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345286开放，祝各位中大奖', '14:24:06', 'jnd28');
INSERT INTO `think_message` VALUES ('728', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ae1266924.png', '蔡仁傑', '豹子300', '14:24:17', 'jnd28');
INSERT INTO `think_message` VALUES ('729', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '大300', '14:24:29', 'jnd28');
INSERT INTO `think_message` VALUES ('730', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫', '大500', '14:24:37', 'jnd28');
INSERT INTO `think_message` VALUES ('731', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020016期结算已完毕！<br/>\r\n							号码：06,10,07,03,02,05,01,04,08,09', '14:24:41', 'xyft');
INSERT INTO `think_message` VALUES ('732', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020017开放，祝各位中大奖', '14:24:41', 'xyft');
INSERT INTO `think_message` VALUES ('733', '0', 'say', '1', '/Uploads/carousel/2017-09-27/59cb9d4642d45.png', '样哇', '1点100', '14:24:42', 'jnd28');
INSERT INTO `think_message` VALUES ('734', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ab9437421.png', '一个人', '小500', '14:24:45', 'jnd28');
INSERT INTO `think_message` VALUES ('735', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺', '顺子200', '14:24:49', 'jnd28');
INSERT INTO `think_message` VALUES ('736', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '6点100', '14:24:58', 'jnd28');
INSERT INTO `think_message` VALUES ('737', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad865d131.png', '超越梦想', '1点100', '14:25:01', 'jnd28');
INSERT INTO `think_message` VALUES ('738', '0', 'say', '1', '/Uploads/carousel/2017-09-22/59c51645d8128.png', '感觉出了错', '极小500', '14:25:08', 'jnd28');
INSERT INTO `think_message` VALUES ('739', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫', '小500', '14:25:18', 'jnd28');
INSERT INTO `think_message` VALUES ('740', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持', '顺子200', '14:25:21', 'jnd28');
INSERT INTO `think_message` VALUES ('741', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8aece2edcb.png', '白帆', '庄500', '14:25:33', 'jnd28');
INSERT INTO `think_message` VALUES ('742', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8b161575fc.png', '6月', '小双200', '14:25:45', 'jnd28');
INSERT INTO `think_message` VALUES ('743', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN', '庄500', '14:25:49', 'jnd28');
INSERT INTO `think_message` VALUES ('744', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710303关闭，请耐心等待开奖', '14:25:49', 'pk10');
INSERT INTO `think_message` VALUES ('745', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916281期结算已完毕!号码：2+7+9=18', '14:25:55', 'bj28');
INSERT INTO `think_message` VALUES ('746', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916282开放，祝各位中大奖', '14:25:55', 'bj28');
INSERT INTO `think_message` VALUES ('747', '0', 'say', '1', '/Uploads/carousel/2017-09-14/59ba3909224eb.png', '体温 ㎝ ╮', '6点100', '14:25:55', 'jnd28');
INSERT INTO `think_message` VALUES ('748', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ad167ad28.png', '志平', '极大300', '14:25:59', 'jnd28');
INSERT INTO `think_message` VALUES ('749', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定', '极小500', '14:26:02', 'jnd28');
INSERT INTO `think_message` VALUES ('750', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '6点100', '14:26:06', 'jnd28');
INSERT INTO `think_message` VALUES ('751', '0', 'say', '1', '/Uploads/carousel/2017-09-13/59b8adaa77f29.png', '平凡', '大100', '14:26:10', 'jnd28');
INSERT INTO `think_message` VALUES ('752', '0', 'say', '1', '/Uploads/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔', '杂六200', '14:26:18', 'jnd28');
INSERT INTO `think_message` VALUES ('753', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345286关闭，请耐心等待开奖', '14:26:20', 'jnd28');
INSERT INTO `think_message` VALUES ('754', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345286期结算已完毕!号码：3+4+8=15', '14:27:50', 'jnd28');
INSERT INTO `think_message` VALUES ('755', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345287开放，祝各位中大奖', '14:27:50', 'jnd28');
INSERT INTO `think_message` VALUES ('756', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710303期结算已完毕！<br/>\r\n							号码：08,02,09,10,05,06,04,03,07,01', '14:28:00', 'pk10');
INSERT INTO `think_message` VALUES ('757', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710304开放，祝各位中大奖', '14:28:00', 'pk10');
INSERT INTO `think_message` VALUES ('758', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2018119关闭，请耐心等待开奖', '14:28:30', 'lhc');
INSERT INTO `think_message` VALUES ('759', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020017关闭，请耐心等待开奖', '14:28:31', 'xyft');
INSERT INTO `think_message` VALUES ('760', '9', 'say_error', '1', '/Public/Home/img/face/3.png', 'xsdaxa11', '大/10', '14:28:50', 'lhc');
INSERT INTO `think_message` VALUES ('761', '9', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「大/10」非竞猜时间，竞猜失败', '14:28:50', 'lhc');
INSERT INTO `think_message` VALUES ('762', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916282关闭，请耐心等待开奖', '14:29:00', 'bj28');
INSERT INTO `think_message` VALUES ('763', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020051关闭，请耐心等待开奖', '14:29:25', 'ssc');
INSERT INTO `think_message` VALUES ('764', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345287关闭，请耐心等待开奖', '14:29:42', 'jnd28');
INSERT INTO `think_message` VALUES ('765', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020017期结算已完毕！<br/>\r\n							号码：10,07,03,06,05,04,09,08,02,01', '14:29:53', 'xyft');
INSERT INTO `think_message` VALUES ('766', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020018开放，祝各位中大奖', '14:29:53', 'xyft');
INSERT INTO `think_message` VALUES ('767', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916282期结算已完毕!号码：6+8+6=20', '14:31:00', 'bj28');
INSERT INTO `think_message` VALUES ('768', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916283开放，祝各位中大奖', '14:31:00', 'bj28');
INSERT INTO `think_message` VALUES ('769', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020051期结算已完毕！<br/>\r\n							号码：3,5,7,1,4', '14:31:24', 'ssc');
INSERT INTO `think_message` VALUES ('770', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020052开放，祝各位中大奖', '14:31:24', 'ssc');
INSERT INTO `think_message` VALUES ('771', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345287期结算已完毕!号码：3+4+3=10', '14:31:30', 'jnd28');
INSERT INTO `think_message` VALUES ('772', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345288开放，祝各位中大奖', '14:31:30', 'jnd28');
INSERT INTO `think_message` VALUES ('773', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710304关闭，请耐心等待开奖', '14:31:51', 'pk10');
INSERT INTO `think_message` VALUES ('774', '9', 'say_error', '1', '/Public/Home/img/face/3.png', 'xsdaxa11', '小/1', '14:33:00', 'lhc');
INSERT INTO `think_message` VALUES ('775', '9', 'error', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '「小/1」非竞猜时间，竞猜失败', '14:33:00', 'lhc');
INSERT INTO `think_message` VALUES ('776', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020018关闭，请耐心等待开奖', '14:33:43', 'xyft');
INSERT INTO `think_message` VALUES ('777', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345288关闭，请耐心等待开奖', '14:33:46', 'jnd28');
INSERT INTO `think_message` VALUES ('778', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916283关闭，请耐心等待开奖', '14:34:00', 'bj28');
INSERT INTO `think_message` VALUES ('779', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020018期结算已完毕！<br/>\r\n							号码：02,04,06,01,05,08,03,07,09,10', '14:34:41', 'xyft');
INSERT INTO `think_message` VALUES ('780', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020019开放，祝各位中大奖', '14:34:41', 'xyft');
INSERT INTO `think_message` VALUES ('781', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345288期结算已完毕!号码：1+5+9=15', '14:35:15', 'jnd28');
INSERT INTO `think_message` VALUES ('782', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345289开放，祝各位中大奖', '14:35:15', 'jnd28');
INSERT INTO `think_message` VALUES ('783', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710305关闭，请耐心等待开奖', '14:35:50', 'pk10');
INSERT INTO `think_message` VALUES ('784', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916283期结算已完毕!号码：2+7+0=9', '14:35:55', 'bj28');
INSERT INTO `think_message` VALUES ('785', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916284开放，祝各位中大奖', '14:35:55', 'bj28');
INSERT INTO `think_message` VALUES ('786', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345289关闭，请耐心等待开奖', '14:36:48', 'jnd28');
INSERT INTO `think_message` VALUES ('787', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710305期结算已完毕！<br/>\r\n							号码：01,04,10,05,03,07,02,09,08,06', '14:37:55', 'pk10');
INSERT INTO `think_message` VALUES ('788', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710306开放，祝各位中大奖', '14:37:55', 'pk10');
INSERT INTO `think_message` VALUES ('789', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020019关闭，请耐心等待开奖', '14:38:31', 'xyft');
INSERT INTO `think_message` VALUES ('790', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345289期结算已完毕!号码：3+5+2=10', '14:38:50', 'jnd28');
INSERT INTO `think_message` VALUES ('791', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345290开放，祝各位中大奖', '14:38:50', 'jnd28');
INSERT INTO `think_message` VALUES ('792', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916284关闭，请耐心等待开奖', '14:39:00', 'bj28');
INSERT INTO `think_message` VALUES ('793', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020052关闭，请耐心等待开奖', '14:39:25', 'ssc');
INSERT INTO `think_message` VALUES ('794', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020019期结算已完毕！<br/>\r\n							号码：10,01,04,02,06,09,03,05,08,07', '14:39:52', 'xyft');
INSERT INTO `think_message` VALUES ('795', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020020开放，祝各位中大奖', '14:39:52', 'xyft');
INSERT INTO `think_message` VALUES ('796', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345290关闭，请耐心等待开奖', '14:40:14', 'jnd28');
INSERT INTO `think_message` VALUES ('797', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916284期结算已完毕!号码：9+4+3=16', '14:41:00', 'bj28');
INSERT INTO `think_message` VALUES ('798', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916285开放，祝各位中大奖', '14:41:00', 'bj28');
INSERT INTO `think_message` VALUES ('799', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020052期结算已完毕！<br/>\r\n							号码：5,4,8,2,0', '14:41:29', 'ssc');
INSERT INTO `think_message` VALUES ('800', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020053开放，祝各位中大奖', '14:41:29', 'ssc');
INSERT INTO `think_message` VALUES ('801', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710306关闭，请耐心等待开奖', '14:41:51', 'pk10');
INSERT INTO `think_message` VALUES ('802', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345290期结算已完毕!号码：2+4+3=9', '14:42:40', 'jnd28');
INSERT INTO `think_message` VALUES ('803', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345291开放，祝各位中大奖', '14:42:40', 'jnd28');
INSERT INTO `think_message` VALUES ('804', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345291关闭，请耐心等待开奖', '14:43:36', 'jnd28');
INSERT INTO `think_message` VALUES ('805', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020020关闭，请耐心等待开奖', '14:43:42', 'xyft');
INSERT INTO `think_message` VALUES ('806', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916285关闭，请耐心等待开奖', '14:44:00', 'bj28');
INSERT INTO `think_message` VALUES ('807', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020020期结算已完毕！<br/>\r\n							号码：03,05,04,01,08,07,10,09,02,06', '14:44:51', 'xyft');
INSERT INTO `think_message` VALUES ('808', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020021开放，祝各位中大奖', '14:44:51', 'xyft');
INSERT INTO `think_message` VALUES ('809', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345291期结算已完毕!号码：3+5+9=17', '14:45:30', 'jnd28');
INSERT INTO `think_message` VALUES ('810', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345292开放，祝各位中大奖', '14:45:30', 'jnd28');
INSERT INTO `think_message` VALUES ('811', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710307关闭，请耐心等待开奖', '14:45:49', 'pk10');
INSERT INTO `think_message` VALUES ('812', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916285期结算已完毕!号码：7+8+7=22', '14:45:55', 'bj28');
INSERT INTO `think_message` VALUES ('813', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916286开放，祝各位中大奖', '14:45:55', 'bj28');
INSERT INTO `think_message` VALUES ('814', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916288期结算已完毕!号码：9+4+1=14', '15:03:16', 'bj28');
INSERT INTO `think_message` VALUES ('815', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916289开放，祝各位中大奖', '15:03:16', 'bj28');
INSERT INTO `think_message` VALUES ('816', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020054期结算已完毕！<br/>\r\n							号码：3,7,0,6,6', '15:03:16', 'ssc');
INSERT INTO `think_message` VALUES ('817', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020055开放，祝各位中大奖', '15:03:16', 'ssc');
INSERT INTO `think_message` VALUES ('818', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345296期结算已完毕!号码：1+6+3=10', '15:03:21', 'jnd28');
INSERT INTO `think_message` VALUES ('819', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345297开放，祝各位中大奖', '15:03:21', 'jnd28');
INSERT INTO `think_message` VALUES ('820', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020024关闭，请耐心等待开奖', '15:03:42', 'xyft');
INSERT INTO `think_message` VALUES ('821', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916289关闭，请耐心等待开奖', '15:04:00', 'bj28');
INSERT INTO `think_message` VALUES ('822', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345297关闭，请耐心等待开奖', '15:04:44', 'jnd28');
INSERT INTO `think_message` VALUES ('823', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020024期结算已完毕！<br/>\r\n							号码：05,03,06,10,07,08,01,09,02,04', '15:04:53', 'xyft');
INSERT INTO `think_message` VALUES ('824', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020025开放，祝各位中大奖', '15:04:53', 'xyft');
INSERT INTO `think_message` VALUES ('825', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916289期结算已完毕!号码：4+2+8=14', '15:05:41', 'bj28');
INSERT INTO `think_message` VALUES ('826', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916290开放，祝各位中大奖', '15:05:41', 'bj28');
INSERT INTO `think_message` VALUES ('827', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710311关闭，请耐心等待开奖', '15:06:51', 'pk10');
INSERT INTO `think_message` VALUES ('828', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345297期结算已完毕!号码：8+0+4=12', '15:07:06', 'jnd28');
INSERT INTO `think_message` VALUES ('829', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345298开放，祝各位中大奖', '15:07:06', 'jnd28');
INSERT INTO `think_message` VALUES ('830', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710311期结算已完毕！<br/>\r\n							号码：07,03,05,01,02,09,04,08,06,10', '15:07:55', 'pk10');
INSERT INTO `think_message` VALUES ('831', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710312开放，祝各位中大奖', '15:07:55', 'pk10');
INSERT INTO `think_message` VALUES ('832', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345298关闭，请耐心等待开奖', '15:08:16', 'jnd28');
INSERT INTO `think_message` VALUES ('833', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020025关闭，请耐心等待开奖', '15:08:43', 'xyft');
INSERT INTO `think_message` VALUES ('834', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916290关闭，请耐心等待开奖', '15:09:00', 'bj28');
INSERT INTO `think_message` VALUES ('835', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020055关闭，请耐心等待开奖', '15:09:25', 'ssc');
INSERT INTO `think_message` VALUES ('836', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345298期结算已完毕!号码：9+7+1=17', '15:09:30', 'jnd28');
INSERT INTO `think_message` VALUES ('837', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345299开放，祝各位中大奖', '15:09:30', 'jnd28');
INSERT INTO `think_message` VALUES ('838', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020025期结算已完毕！<br/>\r\n							号码：04,10,03,06,01,07,08,02,09,05', '15:09:41', 'xyft');
INSERT INTO `think_message` VALUES ('839', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020026开放，祝各位中大奖', '15:09:41', 'xyft');
INSERT INTO `think_message` VALUES ('840', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916290期结算已完毕!号码：3+2+8=13', '15:10:45', 'bj28');
INSERT INTO `think_message` VALUES ('841', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916291开放，祝各位中大奖', '15:10:45', 'bj28');
INSERT INTO `think_message` VALUES ('842', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020055期结算已完毕！<br/>\r\n							号码：3,0,2,6,8', '15:11:35', 'ssc');
INSERT INTO `think_message` VALUES ('843', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020056开放，祝各位中大奖', '15:11:35', 'ssc');
INSERT INTO `think_message` VALUES ('844', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345299关闭，请耐心等待开奖', '15:11:42', 'jnd28');
INSERT INTO `think_message` VALUES ('845', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710312关闭，请耐心等待开奖', '15:11:51', 'pk10');
INSERT INTO `think_message` VALUES ('846', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345299期结算已完毕!号码：9+3+2=14', '15:13:20', 'jnd28');
INSERT INTO `think_message` VALUES ('847', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345300开放，祝各位中大奖', '15:13:20', 'jnd28');
INSERT INTO `think_message` VALUES ('848', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020026关闭，请耐心等待开奖', '15:13:31', 'xyft');
INSERT INTO `think_message` VALUES ('849', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916291关闭，请耐心等待开奖', '15:14:00', 'bj28');
INSERT INTO `think_message` VALUES ('850', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020026期结算已完毕！<br/>\r\n							号码：02,08,01,09,10,05,07,04,06,03', '15:14:41', 'xyft');
INSERT INTO `think_message` VALUES ('851', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020027开放，祝各位中大奖', '15:14:41', 'xyft');
INSERT INTO `think_message` VALUES ('852', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345300关闭，请耐心等待开奖', '15:15:20', 'jnd28');
INSERT INTO `think_message` VALUES ('853', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710313关闭，请耐心等待开奖', '15:15:51', 'pk10');
INSERT INTO `think_message` VALUES ('854', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916291期结算已完毕!号码：9+5+6=20', '15:16:05', 'bj28');
INSERT INTO `think_message` VALUES ('855', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916292开放，祝各位中大奖', '15:16:05', 'bj28');
INSERT INTO `think_message` VALUES ('856', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345300期结算已完毕!号码：4+3+8=15', '15:16:55', 'jnd28');
INSERT INTO `think_message` VALUES ('857', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345301开放，祝各位中大奖', '15:16:55', 'jnd28');
INSERT INTO `think_message` VALUES ('858', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '710313期结算已完毕！<br/>\r\n							号码：09,06,04,03,01,05,07,02,08,10', '15:17:50', 'pk10');
INSERT INTO `think_message` VALUES ('859', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710314开放，祝各位中大奖', '15:17:50', 'pk10');
INSERT INTO `think_message` VALUES ('860', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020027关闭，请耐心等待开奖', '15:18:31', 'xyft');
INSERT INTO `think_message` VALUES ('861', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345301关闭，请耐心等待开奖', '15:18:41', 'jnd28');
INSERT INTO `think_message` VALUES ('862', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916292关闭，请耐心等待开奖', '15:19:00', 'bj28');
INSERT INTO `think_message` VALUES ('863', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020056关闭，请耐心等待开奖', '15:19:25', 'ssc');
INSERT INTO `think_message` VALUES ('864', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '181020027期结算已完毕！<br/>\r\n							号码：05,03,09,10,07,01,08,06,02,04', '15:19:52', 'xyft');
INSERT INTO `think_message` VALUES ('865', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:181020028开放，祝各位中大奖', '15:19:52', 'xyft');
INSERT INTO `think_message` VALUES ('866', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '2345301期结算已完毕!号码：1+1+0=2', '15:20:05', 'jnd28');
INSERT INTO `think_message` VALUES ('867', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345302开放，祝各位中大奖', '15:20:05', 'jnd28');
INSERT INTO `think_message` VALUES ('868', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '916292期结算已完毕!号码：1+8+5=14', '15:20:50', 'bj28');
INSERT INTO `think_message` VALUES ('869', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:916293开放，祝各位中大奖', '15:20:50', 'bj28');
INSERT INTO `think_message` VALUES ('870', '0', 'system', '1', '/Public/main/img/system.jpg', '客服', '20181020056期结算已完毕！<br/>\r\n							号码：6,2,5,9,6', '15:21:25', 'ssc');
INSERT INTO `think_message` VALUES ('871', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:20181020057开放，祝各位中大奖', '15:21:25', 'ssc');
INSERT INTO `think_message` VALUES ('872', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:710314关闭，请耐心等待开奖', '15:21:51', 'pk10');
INSERT INTO `think_message` VALUES ('873', '0', 'admin', '1', '/Public/main/img/kefu.jpg', 'GM管理员', '期号:2345302关闭，请耐心等待开奖', '15:22:15', 'jnd28');

-- ----------------------------
-- Table structure for `think_number`
-- ----------------------------
DROP TABLE IF EXISTS `think_number`;
CREATE TABLE `think_number` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `periodnumber` varchar(50) NOT NULL,
  `awardtime` varchar(255) NOT NULL,
  `awardnumbers` varchar(255) NOT NULL,
  `lh` varchar(255) NOT NULL COMMENT '龙虎',
  `tema` int(10) unsigned NOT NULL COMMENT '特码',
  `tema_dx` varchar(255) NOT NULL COMMENT '特码大小',
  `tema_ds` varchar(255) NOT NULL COMMENT '特码单双',
  `zx` varchar(255) NOT NULL COMMENT '庄闲',
  `q3` varchar(255) NOT NULL,
  `z3` varchar(255) NOT NULL,
  `h3` varchar(255) NOT NULL,
  `tema_dw` varchar(255) NOT NULL COMMENT '特码段位',
  `number` varchar(255) NOT NULL COMMENT '号码',
  `time` int(10) unsigned NOT NULL,
  `game` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_number
-- ----------------------------
INSERT INTO `think_number` VALUES ('1', '710274', '2018-10-20 12:01:43', '10,06,04,01,05,07,08,03,02,09', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '16', '大', '双', '庄', '', '', '', 'C', 'a:10:{i:0;s:2:\"10\";i:1;s:1:\"6\";i:2;s:1:\"4\";i:3;s:1:\"1\";i:4;s:1:\"5\";i:5;s:1:\"7\";i:6;s:1:\"8\";i:7;s:1:\"3\";i:8;s:1:\"2\";i:9;s:1:\"9\";}', '1540008103', 'pk10');
INSERT INTO `think_number` VALUES ('2', '20181020036', '2018-10-20 12:00:45', '4,6,4,9,8', '虎', '31', '大', '单', '', '对子', '杂六', '半顺', 'C', 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"6\";i:2;s:1:\"4\";i:3;s:1:\"9\";i:4;s:1:\"8\";}', '1540008045', 'ssc');
INSERT INTO `think_number` VALUES ('3', '916252', '2018-10-20 12:00:00', '1,1,2', '', '4', '小', '双', '和', '对子', '', '', '', '1,1,2', '1540008000', 'bj28');
INSERT INTO `think_number` VALUES ('4', '2345244', '2018-10-20 12:00:25', '0,2,5', '', '7', '小', '单', '和', '杂六', '', '', '', '0,2,5', '1540008025', 'jnd28');
INSERT INTO `think_number` VALUES ('5', '2345245', '2018-10-20 12:03:52', '3,6,2', '', '11', '小', '单', '和', '半顺', '', '', '', '3,6,2', '1540008232', 'jnd28');
INSERT INTO `think_number` VALUES ('6', '916253', '2018-10-20 12:05:00', '8,0,6', '', '14', '大', '双', '庄', '杂六', '', '', '', '8,0,6', '1540008300', 'bj28');
INSERT INTO `think_number` VALUES ('7', '710275', '2018-10-20 12:07:22', '04,05,08,01,06,02,07,03,10,09', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '9', '小', '单', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:1:\"8\";i:3;s:1:\"1\";i:4;s:1:\"6\";i:5;s:1:\"2\";i:6;s:1:\"7\";i:7;s:1:\"3\";i:8;s:2:\"10\";i:9;s:1:\"9\";}', '1540008442', 'pk10');
INSERT INTO `think_number` VALUES ('8', '2345246', '2018-10-20 12:07:30', '1,8,5', '', '14', '大', '双', '和', '杂六', '', '', '', '1,8,5', '1540008450', 'jnd28');
INSERT INTO `think_number` VALUES ('9', '916254', '2018-10-20 12:10:00', '2,2,9', '', '13', '小', '单', '和', '对子', '', '', '', '2,2,9', '1540008600', 'bj28');
INSERT INTO `think_number` VALUES ('10', '2345247', '2018-10-20 12:10:53', '4,6,0', '', '10', '小', '双', '和', '杂六', '', '', '', '4,6,0', '1540008653', 'jnd28');
INSERT INTO `think_number` VALUES ('11', '20181020037', '2018-10-20 12:10:45', '5,9,8,9,8', '虎', '39', '大', '单', '', '半顺', '对子', '对子', 'C', 'a:5:{i:0;s:1:\"5\";i:1;s:1:\"9\";i:2;s:1:\"8\";i:3;s:1:\"9\";i:4;s:1:\"8\";}', '1540008645', 'ssc');
INSERT INTO `think_number` VALUES ('12', '710276', '2018-10-20 12:12:45', '09,02,05,07,08,01,04,10,03,06', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '11', '小', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"2\";i:2;s:1:\"5\";i:3;s:1:\"7\";i:4;s:1:\"8\";i:5;s:1:\"1\";i:6;s:1:\"4\";i:7;s:2:\"10\";i:8;s:1:\"3\";i:9;s:1:\"6\";}', '1540008765', 'pk10');
INSERT INTO `think_number` VALUES ('13', '2345248', '2018-10-20 12:14:19', '0,6,1', '', '7', '小', '单', '和', '半顺', '', '', '', '0,6,1', '1540008859', 'jnd28');
INSERT INTO `think_number` VALUES ('14', '916255', '2018-10-20 12:15:00', '4,6,5', '', '15', '大', '单', '闲', '顺子', '', '', '', '4,6,5', '1540008900', 'bj28');
INSERT INTO `think_number` VALUES ('15', '710277', '2018-10-20 12:17:45', '07,03,01,09,08,02,04,06,05,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '10', '小', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"7\";i:1;s:1:\"3\";i:2;s:1:\"1\";i:3;s:1:\"9\";i:4;s:1:\"8\";i:5;s:1:\"2\";i:6;s:1:\"4\";i:7;s:1:\"6\";i:8;s:1:\"5\";i:9;s:2:\"10\";}', '1540009065', 'pk10');
INSERT INTO `think_number` VALUES ('16', '2345249', '2018-10-20 12:17:53', '8,5,7', '', '20', '大', '双', '庄', '半顺', '', '', '', '8,5,7', '1540009073', 'jnd28');
INSERT INTO `think_number` VALUES ('17', '916256', '2018-10-20 12:20:00', '6,1,1', '', '8', '小', '双', '庄', '对子', '', '', '', '6,1,1', '1540009200', 'bj28');
INSERT INTO `think_number` VALUES ('18', '20181020038', '2018-10-20 12:20:45', '0,7,2,2,8', '虎', '19', '小', '单', '', '杂六', '对子', '对子', 'B', 'a:5:{i:0;s:1:\"0\";i:1;s:1:\"7\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"8\";}', '1540009245', 'ssc');
INSERT INTO `think_number` VALUES ('19', '2345250', '2018-10-20 12:21:20', '9,4,1', '', '14', '大', '双', '庄', '杂六', '', '', '', '9,4,1', '1540009280', 'jnd28');
INSERT INTO `think_number` VALUES ('20', '710278', '2018-10-20 12:22:45', '06,04,07,01,03,02,05,09,08,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '10', '小', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"4\";i:2;s:1:\"7\";i:3;s:1:\"1\";i:4;s:1:\"3\";i:5;s:1:\"2\";i:6;s:1:\"5\";i:7;s:1:\"9\";i:8;s:1:\"8\";i:9;s:2:\"10\";}', '1540009365', 'pk10');
INSERT INTO `think_number` VALUES ('21', '2345251', '2018-10-20 12:24:45', '9,9,1', '', '19', '大', '单', '和', '对子', '', '', '', '9,9,1', '1540009485', 'jnd28');
INSERT INTO `think_number` VALUES ('22', '916257', '2018-10-20 12:25:00', '6,2,4', '', '12', '小', '双', '庄', '杂六', '', '', '', '6,2,4', '1540009500', 'bj28');
INSERT INTO `think_number` VALUES ('23', '710279', '2018-10-20 12:27:45', '01,06,09,07,03,04,10,02,08,05', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '7', '小', '单', '闲', '', '', '', 'A', 'a:10:{i:0;s:1:\"1\";i:1;s:1:\"6\";i:2;s:1:\"9\";i:3;s:1:\"7\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:2:\"10\";i:7;s:1:\"2\";i:8;s:1:\"8\";i:9;s:1:\"5\";}', '1540009665', 'pk10');
INSERT INTO `think_number` VALUES ('24', '2345252', '2018-10-20 12:28:14', '4,2,2', '', '8', '小', '双', '庄', '对子', '', '', '', '4,2,2', '1540009694', 'jnd28');
INSERT INTO `think_number` VALUES ('25', '916258', '2018-10-20 12:30:00', '4,9,1', '', '14', '大', '双', '闲', '杂六', '', '', '', '4,9,1', '1540009800', 'bj28');
INSERT INTO `think_number` VALUES ('26', '20181020039', '2018-10-20 12:30:45', '6,7,4,9,6', '合', '32', '大', '双', '', '半顺', '杂六', '杂六', 'C', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"7\";i:2;s:1:\"4\";i:3;s:1:\"9\";i:4;s:1:\"6\";}', '1540009845', 'ssc');
INSERT INTO `think_number` VALUES ('27', '2345253', '2018-10-20 12:31:46', '1,8,4', '', '13', '小', '单', '和', '杂六', '', '', '', '1,8,4', '1540009906', 'jnd28');
INSERT INTO `think_number` VALUES ('28', '710280', '2018-10-20 12:32:45', '09,03,02,10,05,06,01,07,04,08', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '12', '大', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"3\";i:2;s:1:\"2\";i:3;s:2:\"10\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"1\";i:7;s:1:\"7\";i:8;s:1:\"4\";i:9;s:1:\"8\";}', '1540009965', 'pk10');
INSERT INTO `think_number` VALUES ('29', '916259', '2018-10-20 12:35:00', '6,0,3', '', '9', '小', '单', '庄', '杂六', '', '', '', '6,0,3', '1540010100', 'bj28');
INSERT INTO `think_number` VALUES ('30', '2345254', '2018-10-20 12:35:13', '3,9,3', '', '15', '大', '单', '和', '对子', '', '', '', '3,9,3', '1540010113', 'jnd28');
INSERT INTO `think_number` VALUES ('31', '710281', '2018-10-20 12:36:44', '09,07,06,05,08,02,01,10,04,03', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '16', '大', '双', '庄', '', '', '', 'C', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"7\";i:2;s:1:\"6\";i:3;s:1:\"5\";i:4;s:1:\"8\";i:5;s:1:\"2\";i:6;s:1:\"1\";i:7;s:2:\"10\";i:8;s:1:\"4\";i:9;s:1:\"3\";}', '1540010204', 'pk10');
INSERT INTO `think_number` VALUES ('32', '916260', '2018-10-20 12:40:00', '2,1,5', '', '8', '小', '双', '庄', '半顺', '', '', '', '2,1,5', '1540010400', 'bj28');
INSERT INTO `think_number` VALUES ('33', '2345255', '2018-10-20 12:38:44', '8,2,0', '', '10', '小', '双', '庄', '杂六', '', '', '', '8,2,0', '1540010324', 'jnd28');
INSERT INTO `think_number` VALUES ('34', '20181020040', '2018-10-20 12:40:45', '8,2,3,1,9', '虎', '23', '大', '单', '', '半顺', '顺子', '杂六', 'B', 'a:5:{i:0;s:1:\"8\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:4;s:1:\"9\";}', '1540010445', 'ssc');
INSERT INTO `think_number` VALUES ('35', '710282', '2018-10-20 12:41:45', '05,08,06,10,02,09,07,01,03,04', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '13', '大', '单', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"8\";i:2;s:1:\"6\";i:3;s:2:\"10\";i:4;s:1:\"2\";i:5;s:1:\"9\";i:6;s:1:\"7\";i:7;s:1:\"1\";i:8;s:1:\"3\";i:9;s:1:\"4\";}', '1540010505', 'pk10');
INSERT INTO `think_number` VALUES ('36', '2345256', '2018-10-20 12:42:21', '2,2,0', '', '4', '小', '双', '和', '对子', '', '', '', '2,2,0', '1540010541', 'jnd28');
INSERT INTO `think_number` VALUES ('37', '916261', '2018-10-20 12:45:00', '2,0,4', '', '6', '小', '双', '庄', '杂六', '', '', '', '2,0,4', '1540010700', 'bj28');
INSERT INTO `think_number` VALUES ('38', '2345257', '2018-10-20 12:45:45', '2,9,6', '', '17', '大', '单', '和', '杂六', '', '', '', '2,9,6', '1540010745', 'jnd28');
INSERT INTO `think_number` VALUES ('39', '710283', '2018-10-20 12:46:41', '08,09,02,05,06,03,01,04,07,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '17', '大', '单', '闲', '', '', '', 'C', 'a:10:{i:0;s:1:\"8\";i:1;s:1:\"9\";i:2;s:1:\"2\";i:3;s:1:\"5\";i:4;s:1:\"6\";i:5;s:1:\"3\";i:6;s:1:\"1\";i:7;s:1:\"4\";i:8;s:1:\"7\";i:9;s:2:\"10\";}', '1540010801', 'pk10');
INSERT INTO `think_number` VALUES ('40', '2345258', '2018-10-20 12:49:26', '8,0,1', '', '9', '小', '单', '庄', '半顺', '', '', '', '8,0,1', '1540010966', 'jnd28');
INSERT INTO `think_number` VALUES ('41', '916262', '2018-10-20 12:50:00', '7,9,1', '', '17', '大', '单', '闲', '杂六', '', '', '', '7,9,1', '1540011000', 'bj28');
INSERT INTO `think_number` VALUES ('42', '20181020041', '2018-10-20 12:50:45', '3,5,2,3,1', '龙', '14', '小', '双', '', '半顺', '半顺', '顺子', 'A', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"5\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"1\";}', '1540011045', 'ssc');
INSERT INTO `think_number` VALUES ('43', '710284', '2018-10-20 12:52:45', '06,08,04,02,01,03,05,07,10,09', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '14', '大', '双', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"8\";i:2;s:1:\"4\";i:3;s:1:\"2\";i:4;s:1:\"1\";i:5;s:1:\"3\";i:6;s:1:\"5\";i:7;s:1:\"7\";i:8;s:2:\"10\";i:9;s:1:\"9\";}', '1540011165', 'pk10');
INSERT INTO `think_number` VALUES ('44', '2345259', '2018-10-20 12:52:56', '0,8,8', '', '16', '大', '双', '和', '对子', '', '', '', '0,8,8', '1540011176', 'jnd28');
INSERT INTO `think_number` VALUES ('45', '916263', '2018-10-20 12:55:00', '2,5,4', '', '11', '小', '单', '闲', '半顺', '', '', '', '2,5,4', '1540011300', 'bj28');
INSERT INTO `think_number` VALUES ('46', '2345260', '2018-10-20 12:56:22', '9,7,7', '', '23', '大', '单', '庄', '对子', '', '', '', '9,7,7', '1540011382', 'jnd28');
INSERT INTO `think_number` VALUES ('47', '710285', '2018-10-20 12:57:45', '10,09,08,03,01,07,05,02,04,06', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '19', '大', '单', '庄', '', '', '', 'C', 'a:10:{i:0;s:2:\"10\";i:1;s:1:\"9\";i:2;s:1:\"8\";i:3;s:1:\"3\";i:4;s:1:\"1\";i:5;s:1:\"7\";i:6;s:1:\"5\";i:7;s:1:\"2\";i:8;s:1:\"4\";i:9;s:1:\"6\";}', '1540011465', 'pk10');
INSERT INTO `think_number` VALUES ('48', '2345261', '2018-10-20 12:59:49', '4,0,0', '', '4', '小', '双', '庄', '对子', '', '', '', '4,0,0', '1540011589', 'jnd28');
INSERT INTO `think_number` VALUES ('49', '916264', '2018-10-20 13:00:00', '4,2,3', '', '9', '小', '单', '庄', '顺子', '', '', '', '4,2,3', '1540011600', 'bj28');
INSERT INTO `think_number` VALUES ('50', '20181020042', '2018-10-20 13:00:45', '0,4,9,4,9', '虎', '26', '大', '双', '', '半顺', '对子', '对子', 'B', 'a:5:{i:0;s:1:\"0\";i:1;s:1:\"4\";i:2;s:1:\"9\";i:3;s:1:\"4\";i:4;s:1:\"9\";}', '1540011645', 'ssc');
INSERT INTO `think_number` VALUES ('51', '710286', '2018-10-20 13:02:45', '05,09,08,07,02,01,04,03,06,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '14', '大', '双', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"9\";i:2;s:1:\"8\";i:3;s:1:\"7\";i:4;s:1:\"2\";i:5;s:1:\"1\";i:6;s:1:\"4\";i:7;s:1:\"3\";i:8;s:1:\"6\";i:9;s:2:\"10\";}', '1540011765', 'pk10');
INSERT INTO `think_number` VALUES ('52', '2345262', '2018-10-20 13:03:23', '6,5,4', '', '15', '大', '单', '庄', '顺子', '', '', '', '6,5,4', '1540011803', 'jnd28');
INSERT INTO `think_number` VALUES ('53', '181019180', '2018-10-20 04:04:36', '05,02,10,07,09,04,01,08,06,03', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '7', '小', '单', '庄', '', '', '', 'A', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"2\";i:2;s:2:\"10\";i:3;s:1:\"7\";i:4;s:1:\"9\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"8\";i:8;s:1:\"6\";i:9;s:1:\"3\";}', '1539979476', 'xyft');
INSERT INTO `think_number` VALUES ('54', '916265', '2018-10-20 13:05:00', '5,1,5', '', '11', '小', '单', '庄', '对子', '', '', '', '5,1,5', '1540011900', 'bj28');
INSERT INTO `think_number` VALUES ('55', '2345263', '2018-10-20 13:06:48', '1,3,3', '', '7', '小', '单', '和', '对子', '', '', '', '1,3,3', '1540012008', 'jnd28');
INSERT INTO `think_number` VALUES ('56', '710287', '2018-10-20 13:06:42', '04,02,08,09,10,03,06,01,05,07', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '6', '小', '双', '庄', '', '', '', 'A', 'a:10:{i:0;s:1:\"4\";i:1;s:1:\"2\";i:2;s:1:\"8\";i:3;s:1:\"9\";i:4;s:2:\"10\";i:5;s:1:\"3\";i:6;s:1:\"6\";i:7;s:1:\"1\";i:8;s:1:\"5\";i:9;s:1:\"7\";}', '1540012002', 'pk10');
INSERT INTO `think_number` VALUES ('57', '181020001', '2018-10-20 13:09:35', '05,07,06,08,03,10,01,09,04,02', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '12', '大', '双', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"7\";i:2;s:1:\"6\";i:3;s:1:\"8\";i:4;s:1:\"3\";i:5;s:2:\"10\";i:6;s:1:\"1\";i:7;s:1:\"9\";i:8;s:1:\"4\";i:9;s:1:\"2\";}', '1540012175', 'xyft');
INSERT INTO `think_number` VALUES ('58', '2345264', '2018-10-20 13:10:19', '4,9,0', '', '13', '小', '单', '和', '杂六', '', '', '', '4,9,0', '1540012219', 'jnd28');
INSERT INTO `think_number` VALUES ('59', '916266', '2018-10-20 13:10:00', '1,2,8', '', '11', '小', '单', '闲', '半顺', '', '', '', '1,2,8', '1540012200', 'bj28');
INSERT INTO `think_number` VALUES ('60', '20181020043', '2018-10-20 13:10:45', '6,9,1,3,7', '虎', '26', '大', '双', '', '杂六', '杂六', '杂六', 'B', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"9\";i:2;s:1:\"1\";i:3;s:1:\"3\";i:4;s:1:\"7\";}', '1540012245', 'ssc');
INSERT INTO `think_number` VALUES ('61', '710288', '2018-10-20 13:12:45', '09,04,05,01,02,08,03,06,10,07', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '13', '大', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"4\";i:2;s:1:\"5\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"8\";i:6;s:1:\"3\";i:7;s:1:\"6\";i:8;s:2:\"10\";i:9;s:1:\"7\";}', '1540012365', 'pk10');
INSERT INTO `think_number` VALUES ('62', '181020002', '2018-10-20 13:14:30', '10,01,04,05,02,06,07,08,09,03', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '11', '小', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:2:\"10\";i:1;s:1:\"1\";i:2;s:1:\"4\";i:3;s:1:\"5\";i:4;s:1:\"2\";i:5;s:1:\"6\";i:6;s:1:\"7\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:1:\"3\";}', '1540012470', 'xyft');
INSERT INTO `think_number` VALUES ('63', '2345265', '2018-10-20 13:13:51', '9,2,4', '', '15', '大', '单', '庄', '杂六', '', '', '', '9,2,4', '1540012431', 'jnd28');
INSERT INTO `think_number` VALUES ('64', '916267', '2018-10-20 13:15:00', '6,2,4', '', '12', '小', '双', '庄', '杂六', '', '', '', '6,2,4', '1540012500', 'bj28');
INSERT INTO `think_number` VALUES ('65', '710289', '2018-10-20 13:16:43', '06,07,08,02,04,10,03,09,01,05', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '13', '大', '单', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"7\";i:2;s:1:\"8\";i:3;s:1:\"2\";i:4;s:1:\"4\";i:5;s:2:\"10\";i:6;s:1:\"3\";i:7;s:1:\"9\";i:8;s:1:\"1\";i:9;s:1:\"5\";}', '1540012603', 'pk10');
INSERT INTO `think_number` VALUES ('66', '2345266', '2018-10-20 13:17:16', '1,0,7', '', '8', '小', '双', '庄', '半顺', '', '', '', '1,0,7', '1540012636', 'jnd28');
INSERT INTO `think_number` VALUES ('67', '181020003', '2018-10-20 13:19:25', '06,03,08,05,10,07,02,09,04,01', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '9', '小', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"3\";i:2;s:1:\"8\";i:3;s:1:\"5\";i:4;s:2:\"10\";i:5;s:1:\"7\";i:6;s:1:\"2\";i:7;s:1:\"9\";i:8;s:1:\"4\";i:9;s:1:\"1\";}', '1540012765', 'xyft');
INSERT INTO `think_number` VALUES ('68', '916268', '2018-10-20 13:20:00', '0,9,2', '', '11', '小', '单', '闲', '杂六', '', '', '', '0,9,2', '1540012800', 'bj28');
INSERT INTO `think_number` VALUES ('69', '20181020044', '2018-10-20 13:20:45', '6,4,1,8,5', '龙', '24', '大', '双', '', '杂六', '杂六', '杂六', 'B', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"4\";i:2;s:1:\"1\";i:3;s:1:\"8\";i:4;s:1:\"5\";}', '1540012845', 'ssc');
INSERT INTO `think_number` VALUES ('70', '2345267', '2018-10-20 13:20:46', '9,2,4', '', '15', '大', '单', '庄', '杂六', '', '', '', '9,2,4', '1540012846', 'jnd28');
INSERT INTO `think_number` VALUES ('71', '710290', '2018-10-20 13:21:44', '08,07,02,05,10,04,06,09,03,01', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '15', '大', '单', '庄', '', '', '', 'C', 'a:10:{i:0;s:1:\"8\";i:1;s:1:\"7\";i:2;s:1:\"2\";i:3;s:1:\"5\";i:4;s:2:\"10\";i:5;s:1:\"4\";i:6;s:1:\"6\";i:7;s:1:\"9\";i:8;s:1:\"3\";i:9;s:1:\"1\";}', '1540012904', 'pk10');
INSERT INTO `think_number` VALUES ('72', '2345268', '2018-10-20 13:24:20', '1,5,9', '', '15', '大', '单', '和', '杂六', '', '', '', '1,5,9', '1540013060', 'jnd28');
INSERT INTO `think_number` VALUES ('73', '181020004', '2018-10-20 13:24:33', '02,05,01,10,03,08,09,06,07,04', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '7', '小', '单', '闲', '', '', '', 'A', 'a:10:{i:0;s:1:\"2\";i:1;s:1:\"5\";i:2;s:1:\"1\";i:3;s:2:\"10\";i:4;s:1:\"3\";i:5;s:1:\"8\";i:6;s:1:\"9\";i:7;s:1:\"6\";i:8;s:1:\"7\";i:9;s:1:\"4\";}', '1540013073', 'xyft');
INSERT INTO `think_number` VALUES ('74', '916269', '2018-10-20 13:25:00', '3,1,4', '', '8', '小', '双', '庄', '半顺', '', '', '', '3,1,4', '1540013100', 'bj28');
INSERT INTO `think_number` VALUES ('75', '710291', '2018-10-20 13:26:43', '08,07,05,09,04,01,10,06,02,03', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '15', '大', '单', '庄', '', '', '', 'C', 'a:10:{i:0;s:1:\"8\";i:1;s:1:\"7\";i:2;s:1:\"5\";i:3;s:1:\"9\";i:4;s:1:\"4\";i:5;s:1:\"1\";i:6;s:2:\"10\";i:7;s:1:\"6\";i:8;s:1:\"2\";i:9;s:1:\"3\";}', '1540013203', 'pk10');
INSERT INTO `think_number` VALUES ('76', '2345269', '2018-10-20 13:27:50', '8,2,9', '', '19', '大', '单', '庄', '半顺', '', '', '', '8,2,9', '1540013270', 'jnd28');
INSERT INTO `think_number` VALUES ('77', '181020005', '2018-10-20 13:29:40', '07,10,04,09,02,01,05,06,03,08', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '17', '大', '单', '闲', '', '', '', 'C', 'a:10:{i:0;s:1:\"7\";i:1;s:2:\"10\";i:2;s:1:\"4\";i:3;s:1:\"9\";i:4;s:1:\"2\";i:5;s:1:\"1\";i:6;s:1:\"5\";i:7;s:1:\"6\";i:8;s:1:\"3\";i:9;s:1:\"8\";}', '1540013380', 'xyft');
INSERT INTO `think_number` VALUES ('78', '916270', '2018-10-20 13:30:00', '8,9,1', '', '18', '大', '双', '闲', '半顺', '', '', '', '8,9,1', '1540013400', 'bj28');
INSERT INTO `think_number` VALUES ('79', '20181020045', '2018-10-20 13:30:45', '1,9,9,5,1', '合', '25', '大', '单', '', '对子', '对子', '杂六', 'B', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"9\";i:2;s:1:\"9\";i:3;s:1:\"5\";i:4;s:1:\"1\";}', '1540013445', 'ssc');
INSERT INTO `think_number` VALUES ('80', '2345270', '2018-10-20 13:31:17', '7,8,1', '', '16', '大', '双', '和', '半顺', '', '', '', '7,8,1', '1540013477', 'jnd28');
INSERT INTO `think_number` VALUES ('81', '710292', '2018-10-20 13:32:45', '06,01,02,10,03,09,08,07,05,04', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '7', '小', '单', '庄', '', '', '', 'A', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:2:\"10\";i:4;s:1:\"3\";i:5;s:1:\"9\";i:6;s:1:\"8\";i:7;s:1:\"7\";i:8;s:1:\"5\";i:9;s:1:\"4\";}', '1540013565', 'pk10');
INSERT INTO `think_number` VALUES ('82', '181020006', '2018-10-20 13:34:35', '06,01,03,05,08,09,02,10,04,07', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '7', '小', '单', '庄', '', '', '', 'A', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"1\";i:2;s:1:\"3\";i:3;s:1:\"5\";i:4;s:1:\"8\";i:5;s:1:\"9\";i:6;s:1:\"2\";i:7;s:2:\"10\";i:8;s:1:\"4\";i:9;s:1:\"7\";}', '1540013675', 'xyft');
INSERT INTO `think_number` VALUES ('83', '2345271', '2018-10-20 13:34:52', '8,2,3', '', '13', '小', '单', '庄', '半顺', '', '', '', '8,2,3', '1540013692', 'jnd28');
INSERT INTO `think_number` VALUES ('84', '916271', '2018-10-20 13:35:00', '4,5,4', '', '13', '小', '单', '闲', '对子', '', '', '', '4,5,4', '1540013700', 'bj28');
INSERT INTO `think_number` VALUES ('85', '710293', '2018-10-20 13:36:42', '10,04,02,07,05,06,03,08,09,01', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '14', '大', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:2:\"10\";i:1;s:1:\"4\";i:2;s:1:\"2\";i:3;s:1:\"7\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"3\";i:7;s:1:\"8\";i:8;s:1:\"9\";i:9;s:1:\"1\";}', '1540013802', 'pk10');
INSERT INTO `think_number` VALUES ('86', '2345272', '2018-10-20 13:38:12', '1,4,6', '', '11', '小', '单', '和', '杂六', '', '', '', '1,4,6', '1540013892', 'jnd28');
INSERT INTO `think_number` VALUES ('87', '181020007', '2018-10-20 13:39:36', '01,06,10,09,07,04,02,03,05,08', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '7', '小', '单', '闲', '', '', '', 'A', 'a:10:{i:0;s:1:\"1\";i:1;s:1:\"6\";i:2;s:2:\"10\";i:3;s:1:\"9\";i:4;s:1:\"7\";i:5;s:1:\"4\";i:6;s:1:\"2\";i:7;s:1:\"3\";i:8;s:1:\"5\";i:9;s:1:\"8\";}', '1540013976', 'xyft');
INSERT INTO `think_number` VALUES ('88', '916272', '2018-10-20 13:40:00', '6,2,7', '', '15', '大', '单', '庄', '半顺', '', '', '', '6,2,7', '1540014000', 'bj28');
INSERT INTO `think_number` VALUES ('89', '20181020046', '2018-10-20 13:40:45', '9,5,0,2,2', '龙', '18', '小', '双', '', '半顺', '杂六', '对子', 'B', 'a:5:{i:0;s:1:\"9\";i:1;s:1:\"5\";i:2;s:1:\"0\";i:3;s:1:\"2\";i:4;s:1:\"2\";}', '1540014045', 'ssc');
INSERT INTO `think_number` VALUES ('90', '2345273', '2018-10-20 13:41:59', '0,3,0', '', '3', '小', '单', '和', '对子', '', '', '', '0,3,0', '1540014119', 'jnd28');
INSERT INTO `think_number` VALUES ('91', '710294', '2018-10-20 13:42:05', '01,10,03,04,06,09,05,02,07,08', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '11', '小', '单', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"1\";i:1;s:2:\"10\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"6\";i:5;s:1:\"9\";i:6;s:1:\"5\";i:7;s:1:\"2\";i:8;s:1:\"7\";i:9;s:1:\"8\";}', '1540014125', 'pk10');
INSERT INTO `think_number` VALUES ('92', '181020008', '2018-10-20 13:44:25', '06,09,01,02,08,03,07,10,04,05', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '15', '大', '单', '闲', '', '', '', 'C', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"9\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"8\";i:5;s:1:\"3\";i:6;s:1:\"7\";i:7;s:2:\"10\";i:8;s:1:\"4\";i:9;s:1:\"5\";}', '1540014265', 'xyft');
INSERT INTO `think_number` VALUES ('93', '2345274', '2018-10-20 13:45:20', '0,3,7', '', '10', '小', '双', '和', '杂六', '', '', '', '0,3,7', '1540014320', 'jnd28');
INSERT INTO `think_number` VALUES ('94', '916273', '2018-10-20 13:45:00', '7,0,6', '', '13', '小', '单', '庄', '半顺', '', '', '', '7,0,6', '1540014300', 'bj28');
INSERT INTO `think_number` VALUES ('95', '710295', '2018-10-20 13:47:22', '09,01,07,10,03,02,04,08,05,06', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '10', '小', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"1\";i:2;s:1:\"7\";i:3;s:2:\"10\";i:4;s:1:\"3\";i:5;s:1:\"2\";i:6;s:1:\"4\";i:7;s:1:\"8\";i:8;s:1:\"5\";i:9;s:1:\"6\";}', '1540014442', 'pk10');
INSERT INTO `think_number` VALUES ('96', '2345275', '2018-10-20 13:48:48', '3,0,0', '', '3', '小', '单', '庄', '对子', '', '', '', '3,0,0', '1540014528', 'jnd28');
INSERT INTO `think_number` VALUES ('97', '181020009', '2018-10-20 13:49:36', '08,10,07,06,01,09,03,04,05,02', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '18', '大', '双', '闲', '', '', '', 'C', 'a:10:{i:0;s:1:\"8\";i:1;s:2:\"10\";i:2;s:1:\"7\";i:3;s:1:\"6\";i:4;s:1:\"1\";i:5;s:1:\"9\";i:6;s:1:\"3\";i:7;s:1:\"4\";i:8;s:1:\"5\";i:9;s:1:\"2\";}', '1540014576', 'xyft');
INSERT INTO `think_number` VALUES ('98', '916274', '2018-10-20 13:50:00', '8,6,2', '', '16', '大', '双', '庄', '杂六', '', '', '', '8,6,2', '1540014600', 'bj28');
INSERT INTO `think_number` VALUES ('99', '20181020047', '2018-10-20 13:50:45', '2,1,6,6,9', '虎', '24', '大', '双', '', '半顺', '对子', '对子', 'B', 'a:5:{i:0;s:1:\"2\";i:1;s:1:\"1\";i:2;s:1:\"6\";i:3;s:1:\"6\";i:4;s:1:\"9\";}', '1540014645', 'ssc');
INSERT INTO `think_number` VALUES ('100', '710296', '2018-10-20 13:51:44', '02,05,10,04,06,09,07,01,08,03', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '7', '小', '单', '闲', '', '', '', 'A', 'a:10:{i:0;s:1:\"2\";i:1;s:1:\"5\";i:2;s:2:\"10\";i:3;s:1:\"4\";i:4;s:1:\"6\";i:5;s:1:\"9\";i:6;s:1:\"7\";i:7;s:1:\"1\";i:8;s:1:\"8\";i:9;s:1:\"3\";}', '1540014704', 'pk10');
INSERT INTO `think_number` VALUES ('101', '2345276', '2018-10-20 13:52:23', '4,1,1', '', '6', '小', '双', '庄', '对子', '', '', '', '4,1,1', '1540014743', 'jnd28');
INSERT INTO `think_number` VALUES ('102', '181020010', '2018-10-20 13:54:25', '09,01,03,02,05,06,04,08,10,07', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '10', '小', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"1\";i:2;s:1:\"3\";i:3;s:1:\"2\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"4\";i:7;s:1:\"8\";i:8;s:2:\"10\";i:9;s:1:\"7\";}', '1540014865', 'xyft');
INSERT INTO `think_number` VALUES ('103', '916275', '2018-10-20 13:55:00', '0,1,8', '', '9', '小', '单', '闲', '半顺', '', '', '', '0,1,8', '1540014900', 'bj28');
INSERT INTO `think_number` VALUES ('104', '2345277', '2018-10-20 13:55:52', '2,0,1', '', '3', '小', '单', '庄', '顺子', '', '', '', '2,0,1', '1540014952', 'jnd28');
INSERT INTO `think_number` VALUES ('105', '710297', '2018-10-20 13:57:45', '09,04,08,05,07,02,01,06,03,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '13', '大', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"4\";i:2;s:1:\"8\";i:3;s:1:\"5\";i:4;s:1:\"7\";i:5;s:1:\"2\";i:6;s:1:\"1\";i:7;s:1:\"6\";i:8;s:1:\"3\";i:9;s:2:\"10\";}', '1540015065', 'pk10');
INSERT INTO `think_number` VALUES ('106', '181020011', '2018-10-20 13:59:37', '08,01,02,05,03,09,06,10,07,04', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '9', '小', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"8\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"5\";i:4;s:1:\"3\";i:5;s:1:\"9\";i:6;s:1:\"6\";i:7;s:2:\"10\";i:8;s:1:\"7\";i:9;s:1:\"4\";}', '1540015177', 'xyft');
INSERT INTO `think_number` VALUES ('107', '2345278', '2018-10-20 13:59:24', '2,2,2', '', '6', '小', '双', '和', '豹子', '', '', '', '2,2,2', '1540015164', 'jnd28');
INSERT INTO `think_number` VALUES ('108', '916276', '2018-10-20 14:00:00', '6,9,4', '', '19', '大', '单', '闲', '杂六', '', '', '', '6,9,4', '1540015200', 'bj28');
INSERT INTO `think_number` VALUES ('109', '20181020048', '2018-10-20 14:00:45', '5,6,2,0,0', '龙', '13', '小', '单', '', '半顺', '杂六', '对子', 'A', 'a:5:{i:0;s:1:\"5\";i:1;s:1:\"6\";i:2;s:1:\"2\";i:3;s:1:\"0\";i:4;s:1:\"0\";}', '1540015245', 'ssc');
INSERT INTO `think_number` VALUES ('110', '710298', '2018-10-20 14:02:45', '09,02,05,03,08,01,10,04,07,06', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '11', '小', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"2\";i:2;s:1:\"5\";i:3;s:1:\"3\";i:4;s:1:\"8\";i:5;s:1:\"1\";i:6;s:2:\"10\";i:7;s:1:\"4\";i:8;s:1:\"7\";i:9;s:1:\"6\";}', '1540015365', 'pk10');
INSERT INTO `think_number` VALUES ('111', '2345279', '2018-10-20 14:02:51', '6,2,7', '', '15', '大', '单', '庄', '半顺', '', '', '', '6,2,7', '1540015371', 'jnd28');
INSERT INTO `think_number` VALUES ('112', '181020012', '2018-10-20 14:04:39', '05,01,04,03,08,06,02,10,09,07', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '6', '小', '双', '庄', '', '', '', 'A', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"1\";i:2;s:1:\"4\";i:3;s:1:\"3\";i:4;s:1:\"8\";i:5;s:1:\"6\";i:6;s:1:\"2\";i:7;s:2:\"10\";i:8;s:1:\"9\";i:9;s:1:\"7\";}', '1540015479', 'xyft');
INSERT INTO `think_number` VALUES ('113', '916277', '2018-10-20 14:05:00', '3,7,1', '', '11', '小', '单', '闲', '杂六', '', '', '', '3,7,1', '1540015500', 'bj28');
INSERT INTO `think_number` VALUES ('114', '2345280', '2018-10-20 14:06:18', '8,8,8', '', '24', '大', '双', '和', '豹子', '', '', '', '8,8,8', '1540015578', 'jnd28');
INSERT INTO `think_number` VALUES ('115', '710299', '2018-10-20 14:07:04', '10,04,01,03,08,06,09,07,02,05', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '14', '大', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:2:\"10\";i:1;s:1:\"4\";i:2;s:1:\"1\";i:3;s:1:\"3\";i:4;s:1:\"8\";i:5;s:1:\"6\";i:6;s:1:\"9\";i:7;s:1:\"7\";i:8;s:1:\"2\";i:9;s:1:\"5\";}', '1540015624', 'pk10');
INSERT INTO `think_number` VALUES ('116', '181020013', '2018-10-20 14:09:37', '06,10,02,07,04,01,09,08,03,05', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '16', '大', '双', '闲', '', '', '', 'C', 'a:10:{i:0;s:1:\"6\";i:1;s:2:\"10\";i:2;s:1:\"2\";i:3;s:1:\"7\";i:4;s:1:\"4\";i:5;s:1:\"1\";i:6;s:1:\"9\";i:7;s:1:\"8\";i:8;s:1:\"3\";i:9;s:1:\"5\";}', '1540015777', 'xyft');
INSERT INTO `think_number` VALUES ('117', '2345281', '2018-10-20 14:09:53', '7,0,4', '', '11', '小', '单', '庄', '杂六', '', '', '', '7,0,4', '1540015793', 'jnd28');
INSERT INTO `think_number` VALUES ('118', '916278', '2018-10-20 14:10:00', '8,8,6', '', '22', '大', '双', '和', '对子', '', '', '', '8,8,6', '1540015800', 'bj28');
INSERT INTO `think_number` VALUES ('119', '20181020049', '2018-10-20 14:10:45', '5,6,8,7,7', '虎', '33', '大', '单', '', '半顺', '顺子', '对子', 'C', 'a:5:{i:0;s:1:\"5\";i:1;s:1:\"6\";i:2;s:1:\"8\";i:3;s:1:\"7\";i:4;s:1:\"7\";}', '1540015845', 'ssc');
INSERT INTO `think_number` VALUES ('120', '710300', '2018-10-20 14:12:45', '05,01,07,09,08,06,04,03,02,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '6', '小', '双', '庄', '', '', '', 'A', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"1\";i:2;s:1:\"7\";i:3;s:1:\"9\";i:4;s:1:\"8\";i:5;s:1:\"6\";i:6;s:1:\"4\";i:7;s:1:\"3\";i:8;s:1:\"2\";i:9;s:2:\"10\";}', '1540015965', 'pk10');
INSERT INTO `think_number` VALUES ('121', '2345282', '2018-10-20 14:13:16', '8,6,7', '', '21', '大', '单', '庄', '顺子', '', '', '', '8,6,7', '1540015996', 'jnd28');
INSERT INTO `think_number` VALUES ('122', '181020014', '2018-10-20 14:14:35', '05,06,04,02,08,09,07,03,01,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '11', '小', '单', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"6\";i:2;s:1:\"4\";i:3;s:1:\"2\";i:4;s:1:\"8\";i:5;s:1:\"9\";i:6;s:1:\"7\";i:7;s:1:\"3\";i:8;s:1:\"1\";i:9;s:2:\"10\";}', '1540016075', 'xyft');
INSERT INTO `think_number` VALUES ('123', '916279', '2018-10-20 14:15:00', '3,0,5', '', '8', '小', '双', '庄', '杂六', '', '', '', '3,0,5', '1540016100', 'bj28');
INSERT INTO `think_number` VALUES ('124', '2345283', '2018-10-20 14:16:45', '3,3,4', '', '10', '小', '双', '和', '对子', '', '', '', '3,3,4', '1540016205', 'jnd28');
INSERT INTO `think_number` VALUES ('125', '710301', '2018-10-20 14:16:42', '06,03,07,01,04,02,08,05,10,09', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '9', '小', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"3\";i:2;s:1:\"7\";i:3;s:1:\"1\";i:4;s:1:\"4\";i:5;s:1:\"2\";i:6;s:1:\"8\";i:7;s:1:\"5\";i:8;s:2:\"10\";i:9;s:1:\"9\";}', '1540016202', 'pk10');
INSERT INTO `think_number` VALUES ('126', '181020015', '2018-10-20 14:19:38', '07,09,03,05,06,04,08,01,10,02', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '16', '大', '双', '闲', '', '', '', 'C', 'a:10:{i:0;s:1:\"7\";i:1;s:1:\"9\";i:2;s:1:\"3\";i:3;s:1:\"5\";i:4;s:1:\"6\";i:5;s:1:\"4\";i:6;s:1:\"8\";i:7;s:1:\"1\";i:8;s:2:\"10\";i:9;s:1:\"2\";}', '1540016378', 'xyft');
INSERT INTO `think_number` VALUES ('127', '2345284', '2018-10-20 14:20:20', '3,4,6', '', '13', '小', '单', '和', '半顺', '', '', '', '3,4,6', '1540016420', 'jnd28');
INSERT INTO `think_number` VALUES ('128', '916280', '2018-10-20 14:20:00', '8,2,5', '', '15', '大', '单', '庄', '杂六', '', '', '', '8,2,5', '1540016400', 'bj28');
INSERT INTO `think_number` VALUES ('129', '20181020050', '2018-10-20 14:20:45', '6,9,4,9,2', '龙', '30', '大', '双', '', '杂六', '对子', '杂六', 'C', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"9\";i:2;s:1:\"4\";i:3;s:1:\"9\";i:4;s:1:\"2\";}', '1540016445', 'ssc');
INSERT INTO `think_number` VALUES ('130', '710302', '2018-10-20 14:21:43', '01,06,10,09,05,08,07,04,02,03', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '7', '小', '单', '闲', '', '', '', 'A', 'a:10:{i:0;s:1:\"1\";i:1;s:1:\"6\";i:2;s:2:\"10\";i:3;s:1:\"9\";i:4;s:1:\"5\";i:5;s:1:\"8\";i:6;s:1:\"7\";i:7;s:1:\"4\";i:8;s:1:\"2\";i:9;s:1:\"3\";}', '1540016503', 'pk10');
INSERT INTO `think_number` VALUES ('131', '2345285', '2018-10-20 14:23:55', '9,6,3', '', '18', '大', '双', '庄', '杂六', '', '', '', '9,6,3', '1540016635', 'jnd28');
INSERT INTO `think_number` VALUES ('132', '181020016', '2018-10-20 14:24:25', '06,10,07,03,02,05,01,04,08,09', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '16', '大', '双', '闲', '', '', '', 'C', 'a:10:{i:0;s:1:\"6\";i:1;s:2:\"10\";i:2;s:1:\"7\";i:3;s:1:\"3\";i:4;s:1:\"2\";i:5;s:1:\"5\";i:6;s:1:\"1\";i:7;s:1:\"4\";i:8;s:1:\"8\";i:9;s:1:\"9\";}', '1540016665', 'xyft');
INSERT INTO `think_number` VALUES ('133', '916281', '2018-10-20 14:25:00', '2,7,9', '', '18', '大', '双', '闲', '杂六', '', '', '', '2,7,9', '1540016700', 'bj28');
INSERT INTO `think_number` VALUES ('134', '2345286', '2018-10-20 14:27:17', '3,4,8', '', '15', '大', '单', '和', '半顺', '', '', '', '3,4,8', '1540016837', 'jnd28');
INSERT INTO `think_number` VALUES ('135', '710303', '2018-10-20 14:27:45', '08,02,09,10,05,06,04,03,07,01', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '10', '小', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"8\";i:1;s:1:\"2\";i:2;s:1:\"9\";i:3;s:2:\"10\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"4\";i:7;s:1:\"3\";i:8;s:1:\"7\";i:9;s:1:\"1\";}', '1540016865', 'pk10');
INSERT INTO `think_number` VALUES ('136', '2018118', '2018-10-16 21:46:24', '45,7,11,19,46,32,37', '', '37', '大', '单', '', '', '', '', '', 'a:7:{i:0;s:2:\"45\";i:1;s:1:\"7\";i:2;s:2:\"11\";i:3;s:2:\"19\";i:4;s:2:\"46\";i:5;s:2:\"32\";i:6;s:2:\"37\";}', '1539697584', 'lhc');
INSERT INTO `think_number` VALUES ('137', '181020017', '2018-10-20 14:29:37', '10,07,03,06,05,04,09,08,02,01', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '17', '大', '单', '庄', '', '', '', 'C', 'a:10:{i:0;s:2:\"10\";i:1;s:1:\"7\";i:2;s:1:\"3\";i:3;s:1:\"6\";i:4;s:1:\"5\";i:5;s:1:\"4\";i:6;s:1:\"9\";i:7;s:1:\"8\";i:8;s:1:\"2\";i:9;s:1:\"1\";}', '1540016977', 'xyft');
INSERT INTO `think_number` VALUES ('138', '916282', '2018-10-20 14:30:00', '6,8,6', '', '20', '大', '双', '闲', '对子', '', '', '', '6,8,6', '1540017000', 'bj28');
INSERT INTO `think_number` VALUES ('139', '20181020051', '2018-10-20 14:30:45', '3,5,7,1,4', '虎', '20', '小', '双', '', '杂六', '杂六', '杂六', 'B', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"5\";i:2;s:1:\"7\";i:3;s:1:\"1\";i:4;s:1:\"4\";}', '1540017045', 'ssc');
INSERT INTO `think_number` VALUES ('140', '2345287', '2018-10-20 14:31:21', '3,4,3', '', '10', '小', '双', '和', '对子', '', '', '', '3,4,3', '1540017081', 'jnd28');
INSERT INTO `think_number` VALUES ('141', '710304', '2018-10-20 14:31:44', '06,01,10,02,08,09,05,04,07,03', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '7', '小', '单', '庄', '', '', '', 'A', 'a:10:{i:0;s:1:\"6\";i:1;s:1:\"1\";i:2;s:2:\"10\";i:3;s:1:\"2\";i:4;s:1:\"8\";i:5;s:1:\"9\";i:6;s:1:\"5\";i:7;s:1:\"4\";i:8;s:1:\"7\";i:9;s:1:\"3\";}', '1540017104', 'pk10');
INSERT INTO `think_number` VALUES ('142', '181020018', '2018-10-20 14:34:25', '02,04,06,01,05,08,03,07,09,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '6', '小', '双', '闲', '', '', '', 'A', 'a:10:{i:0;s:1:\"2\";i:1;s:1:\"4\";i:2;s:1:\"6\";i:3;s:1:\"1\";i:4;s:1:\"5\";i:5;s:1:\"8\";i:6;s:1:\"3\";i:7;s:1:\"7\";i:8;s:1:\"9\";i:9;s:2:\"10\";}', '1540017265', 'xyft');
INSERT INTO `think_number` VALUES ('143', '2345288', '2018-10-20 14:34:23', '1,5,9', '', '15', '大', '单', '和', '杂六', '', '', '', '1,5,9', '1540017263', 'jnd28');
INSERT INTO `think_number` VALUES ('144', '916283', '2018-10-20 14:35:00', '2,7,0', '', '9', '小', '单', '闲', '杂六', '', '', '', '2,7,0', '1540017300', 'bj28');
INSERT INTO `think_number` VALUES ('145', '710305', '2018-10-20 14:37:45', '01,04,10,05,03,07,02,09,08,06', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '5', '小', '单', '闲', '', '', '', 'A', 'a:10:{i:0;s:1:\"1\";i:1;s:1:\"4\";i:2;s:2:\"10\";i:3;s:1:\"5\";i:4;s:1:\"3\";i:5;s:1:\"7\";i:6;s:1:\"2\";i:7;s:1:\"9\";i:8;s:1:\"8\";i:9;s:1:\"6\";}', '1540017465', 'pk10');
INSERT INTO `think_number` VALUES ('146', '2345289', '2018-10-20 14:37:49', '3,5,2', '', '10', '小', '双', '和', '半顺', '', '', '', '3,5,2', '1540017469', 'jnd28');
INSERT INTO `think_number` VALUES ('147', '181020019', '2018-10-20 14:39:36', '10,01,04,02,06,09,03,05,08,07', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '11', '小', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:2:\"10\";i:1;s:1:\"1\";i:2;s:1:\"4\";i:3;s:1:\"2\";i:4;s:1:\"6\";i:5;s:1:\"9\";i:6;s:1:\"3\";i:7;s:1:\"5\";i:8;s:1:\"8\";i:9;s:1:\"7\";}', '1540017576', 'xyft');
INSERT INTO `think_number` VALUES ('148', '916284', '2018-10-20 14:40:00', '9,4,3', '', '16', '大', '双', '庄', '半顺', '', '', '', '9,4,3', '1540017600', 'bj28');
INSERT INTO `think_number` VALUES ('149', '20181020052', '2018-10-20 14:40:45', '5,4,8,2,0', '龙', '19', '小', '单', '', '半顺', '杂六', '杂六', 'B', 'a:5:{i:0;s:1:\"5\";i:1;s:1:\"4\";i:2;s:1:\"8\";i:3;s:1:\"2\";i:4;s:1:\"0\";}', '1540017645', 'ssc');
INSERT INTO `think_number` VALUES ('150', '710306', '2018-10-20 14:41:43', '07,06,05,02,03,08,04,10,09,01', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '13', '大', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"7\";i:1;s:1:\"6\";i:2;s:1:\"5\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"8\";i:6;s:1:\"4\";i:7;s:2:\"10\";i:8;s:1:\"9\";i:9;s:1:\"1\";}', '1540017703', 'pk10');
INSERT INTO `think_number` VALUES ('151', '2345290', '2018-10-20 14:41:11', '2,4,3', '', '9', '小', '单', '和', '顺子', '', '', '', '2,4,3', '1540017671', 'jnd28');
INSERT INTO `think_number` VALUES ('152', '181020020', '2018-10-20 14:44:35', '03,05,04,01,08,07,10,09,02,06', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"龙\";}', '8', '小', '双', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"3\";i:1;s:1:\"5\";i:2;s:1:\"4\";i:3;s:1:\"1\";i:4;s:1:\"8\";i:5;s:1:\"7\";i:6;s:2:\"10\";i:7;s:1:\"9\";i:8;s:1:\"2\";i:9;s:1:\"6\";}', '1540017875', 'xyft');
INSERT INTO `think_number` VALUES ('153', '2345291', '2018-10-20 14:44:40', '3,5,9', '', '17', '大', '单', '和', '杂六', '', '', '', '3,5,9', '1540017880', 'jnd28');
INSERT INTO `think_number` VALUES ('154', '916285', '2018-10-20 14:45:00', '7,8,7', '', '22', '大', '双', '闲', '对子', '', '', '', '7,8,7', '1540017900', 'bj28');
INSERT INTO `think_number` VALUES ('155', '181020023', '2018-10-20 14:59:36', '07,06,10,01,03,09,08,05,04,02', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '13', '大', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"7\";i:1;s:1:\"6\";i:2;s:2:\"10\";i:3;s:1:\"1\";i:4;s:1:\"3\";i:5;s:1:\"9\";i:6;s:1:\"8\";i:7;s:1:\"5\";i:8;s:1:\"4\";i:9;s:1:\"2\";}', '1540018776', 'xyft');
INSERT INTO `think_number` VALUES ('156', '916288', '2018-10-20 15:00:00', '9,4,1', '', '14', '大', '双', '庄', '杂六', '', '', '', '9,4,1', '1540018800', 'bj28');
INSERT INTO `think_number` VALUES ('157', '20181020054', '2018-10-20 15:00:45', '3,7,0,6,6', '虎', '22', '小', '双', '', '杂六', '半顺', '对子', 'B', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"7\";i:2;s:1:\"0\";i:3;s:1:\"6\";i:4;s:1:\"6\";}', '1540018845', 'ssc');
INSERT INTO `think_number` VALUES ('158', '710310', '2018-10-20 15:02:45', '02,05,04,06,07,09,01,10,08,03', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '7', '小', '单', '闲', '', '', '', 'A', 'a:10:{i:0;s:1:\"2\";i:1;s:1:\"5\";i:2;s:1:\"4\";i:3;s:1:\"6\";i:4;s:1:\"7\";i:5;s:1:\"9\";i:6;s:1:\"1\";i:7;s:2:\"10\";i:8;s:1:\"8\";i:9;s:1:\"3\";}', '1540018965', 'pk10');
INSERT INTO `think_number` VALUES ('159', '2345296', '2018-10-20 15:02:19', '1,6,3', '', '10', '小', '双', '和', '杂六', '', '', '', '1,6,3', '1540018939', 'jnd28');
INSERT INTO `think_number` VALUES ('160', '181020024', '2018-10-20 15:04:37', '05,03,06,10,07,08,01,09,02,04', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '8', '小', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"3\";i:2;s:1:\"6\";i:3;s:2:\"10\";i:4;s:1:\"7\";i:5;s:1:\"8\";i:6;s:1:\"1\";i:7;s:1:\"9\";i:8;s:1:\"2\";i:9;s:1:\"4\";}', '1540019077', 'xyft');
INSERT INTO `think_number` VALUES ('161', '916289', '2018-10-20 15:05:00', '4,2,8', '', '14', '大', '双', '庄', '杂六', '', '', '', '4,2,8', '1540019100', 'bj28');
INSERT INTO `think_number` VALUES ('162', '2345297', '2018-10-20 15:05:51', '8,0,4', '', '12', '小', '双', '庄', '杂六', '', '', '', '8,0,4', '1540019151', 'jnd28');
INSERT INTO `think_number` VALUES ('163', '710311', '2018-10-20 15:07:45', '07,03,05,01,02,09,04,08,06,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '10', '小', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"7\";i:1;s:1:\"3\";i:2;s:1:\"5\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"9\";i:6;s:1:\"4\";i:7;s:1:\"8\";i:8;s:1:\"6\";i:9;s:2:\"10\";}', '1540019265', 'pk10');
INSERT INTO `think_number` VALUES ('164', '2345298', '2018-10-20 15:09:17', '9,7,1', '', '17', '大', '单', '庄', '杂六', '', '', '', '9,7,1', '1540019357', 'jnd28');
INSERT INTO `think_number` VALUES ('165', '181020025', '2018-10-20 15:09:25', '04,10,03,06,01,07,08,02,09,05', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '14', '大', '双', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"4\";i:1;s:2:\"10\";i:2;s:1:\"3\";i:3;s:1:\"6\";i:4;s:1:\"1\";i:5;s:1:\"7\";i:6;s:1:\"8\";i:7;s:1:\"2\";i:8;s:1:\"9\";i:9;s:1:\"5\";}', '1540019365', 'xyft');
INSERT INTO `think_number` VALUES ('166', '916290', '2018-10-20 15:10:00', '3,2,8', '', '13', '小', '单', '庄', '半顺', '', '', '', '3,2,8', '1540019400', 'bj28');
INSERT INTO `think_number` VALUES ('167', '20181020055', '2018-10-20 15:10:45', '3,0,2,6,8', '虎', '19', '小', '单', '', '半顺', '杂六', '杂六', 'B', 'a:5:{i:0;s:1:\"3\";i:1;s:1:\"0\";i:2;s:1:\"2\";i:3;s:1:\"6\";i:4;s:1:\"8\";}', '1540019445', 'ssc');
INSERT INTO `think_number` VALUES ('168', '710312', '2018-10-20 15:11:45', '09,06,02,04,03,08,01,07,10,05', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"虎\";}', '15', '大', '单', '庄', '', '', '', 'C', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"6\";i:2;s:1:\"2\";i:3;s:1:\"4\";i:4;s:1:\"3\";i:5;s:1:\"8\";i:6;s:1:\"1\";i:7;s:1:\"7\";i:8;s:2:\"10\";i:9;s:1:\"5\";}', '1540019505', 'pk10');
INSERT INTO `think_number` VALUES ('169', '2345299', '2018-10-20 15:12:55', '9,3,2', '', '14', '大', '双', '庄', '半顺', '', '', '', '9,3,2', '1540019575', 'jnd28');
INSERT INTO `think_number` VALUES ('170', '181020026', '2018-10-20 15:14:25', '02,08,01,09,10,05,07,04,06,03', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"龙\";i:2;s:3:\"虎\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '10', '小', '双', '闲', '', '', '', 'B', 'a:10:{i:0;s:1:\"2\";i:1;s:1:\"8\";i:2;s:1:\"1\";i:3;s:1:\"9\";i:4;s:2:\"10\";i:5;s:1:\"5\";i:6;s:1:\"7\";i:7;s:1:\"4\";i:8;s:1:\"6\";i:9;s:1:\"3\";}', '1540019665', 'xyft');
INSERT INTO `think_number` VALUES ('171', '916291', '2018-10-20 15:15:00', '9,5,6', '', '20', '大', '双', '庄', '半顺', '', '', '', '9,5,6', '1540019700', 'bj28');
INSERT INTO `think_number` VALUES ('172', '2345300', '2018-10-20 15:16:16', '4,3,8', '', '15', '大', '单', '庄', '半顺', '', '', '', '4,3,8', '1540019776', 'jnd28');
INSERT INTO `think_number` VALUES ('173', '710313', '2018-10-20 15:17:45', '09,06,04,03,01,05,07,02,08,10', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"龙\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '15', '大', '单', '庄', '', '', '', 'C', 'a:10:{i:0;s:1:\"9\";i:1;s:1:\"6\";i:2;s:1:\"4\";i:3;s:1:\"3\";i:4;s:1:\"1\";i:5;s:1:\"5\";i:6;s:1:\"7\";i:7;s:1:\"2\";i:8;s:1:\"8\";i:9;s:2:\"10\";}', '1540019865', 'pk10');
INSERT INTO `think_number` VALUES ('174', '181020027', '2018-10-20 15:19:36', '05,03,09,10,07,01,08,06,02,04', 'a:5:{i:0;s:3:\"龙\";i:1;s:3:\"龙\";i:2;s:3:\"龙\";i:3;s:3:\"龙\";i:4;s:3:\"龙\";}', '8', '小', '双', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"5\";i:1;s:1:\"3\";i:2;s:1:\"9\";i:3;s:2:\"10\";i:4;s:1:\"7\";i:5;s:1:\"1\";i:6;s:1:\"8\";i:7;s:1:\"6\";i:8;s:1:\"2\";i:9;s:1:\"4\";}', '1540019976', 'xyft');
INSERT INTO `think_number` VALUES ('175', '2345301', '2018-10-20 15:19:50', '1,1,0', '', '2', '小', '双', '和', '对子', '', '', '', '1,1,0', '1540019990', 'jnd28');
INSERT INTO `think_number` VALUES ('176', '916292', '2018-10-20 15:20:00', '1,8,5', '', '14', '大', '双', '闲', '杂六', '', '', '', '1,8,5', '1540020000', 'bj28');
INSERT INTO `think_number` VALUES ('177', '20181020056', '2018-10-20 15:20:45', '6,2,5,9,6', '合', '28', '大', '双', '', '半顺', '杂六', '半顺', 'B', 'a:5:{i:0;s:1:\"6\";i:1;s:1:\"2\";i:2;s:1:\"5\";i:3;s:1:\"9\";i:4;s:1:\"6\";}', '1540020045', 'ssc');
INSERT INTO `think_number` VALUES ('178', '710314', '2018-10-20 15:21:44', '07,02,03,01,04,10,06,05,09,08', 'a:5:{i:0;s:3:\"虎\";i:1;s:3:\"虎\";i:2;s:3:\"虎\";i:3;s:3:\"虎\";i:4;s:3:\"虎\";}', '9', '小', '单', '庄', '', '', '', 'B', 'a:10:{i:0;s:1:\"7\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:4;s:1:\"4\";i:5;s:2:\"10\";i:6;s:1:\"6\";i:7;s:1:\"5\";i:8;s:1:\"9\";i:9;s:1:\"8\";}', '1540020104', 'pk10');

-- ----------------------------
-- Table structure for `think_order`
-- ----------------------------
DROP TABLE IF EXISTS `think_order`;
CREATE TABLE `think_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `t_id` int(10) unsigned NOT NULL,
  `number` varchar(255) NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `state` int(1) unsigned NOT NULL DEFAULT '1',
  `time` int(10) unsigned NOT NULL,
  `jincai` varchar(255) NOT NULL,
  `is_add` int(1) unsigned NOT NULL DEFAULT '0',
  `is_under` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_points` decimal(10,2) NOT NULL DEFAULT '0.00',
  `del_points` int(10) NOT NULL DEFAULT '0',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nickname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `game` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_order
-- ----------------------------
INSERT INTO `think_order` VALUES ('55', '9', '0', '710291', '1', '1', '1540013013', '1小100', '0', '1', '0.00', '100', '0.00', 'xsdaxa11', 'xsdaxa11', 'pk10');
INSERT INTO `think_order` VALUES ('56', '9', '0', '916275', '2', '1', '1540014683', '小单100', '1', '1', '400.00', '100', '100.00', 'xsdaxa11', 'xsdaxa11', 'bj28');
INSERT INTO `think_order` VALUES ('57', '9', '0', '916275', '2', '1', '1540014685', '小单100', '1', '1', '400.00', '100', '0.00', 'xsdaxa11', 'xsdaxa11', 'bj28');
INSERT INTO `think_order` VALUES ('58', '4', '0', '916278', '1', '1', '1540015634', '大1000', '1', '1', '1980.00', '1000', '79000.00', 'ceshi666', 'ceshi666', 'bj28');
INSERT INTO `think_order` VALUES ('59', '4', '0', '916278', '1', '1', '1540015642', '单1000', '1', '1', '0.00', '1000', '78000.00', 'ceshi666', 'ceshi666', 'bj28');
INSERT INTO `think_order` VALUES ('60', '4', '0', '2345282', '1', '1', '1540015936', '大100', '1', '1', '198.00', '100', '79880.00', 'ceshi666', 'ceshi666', 'jnd28');

-- ----------------------------
-- Table structure for `think_push_money`
-- ----------------------------
DROP TABLE IF EXISTS `think_push_money`;
CREATE TABLE `think_push_money` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `orderid` int(10) NOT NULL DEFAULT '0',
  `t_uid` int(10) NOT NULL DEFAULT '0' COMMENT '代理id',
  `push_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rate` varchar(10) NOT NULL DEFAULT '' COMMENT '比例',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '返利',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='返利明细';

-- ----------------------------
-- Records of think_push_money
-- ----------------------------
INSERT INTO `think_push_money` VALUES ('1', '2', '34', '1', '100.00', '0.005', '0.50', '1523533812');

-- ----------------------------
-- Table structure for `think_robot`
-- ----------------------------
DROP TABLE IF EXISTS `think_robot`;
CREATE TABLE `think_robot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `headimgurl` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_robot
-- ----------------------------
INSERT INTO `think_robot` VALUES ('24', '/carousel/2017-03-19/58ce04a05ca92.jpg', '坚强的一面');
INSERT INTO `think_robot` VALUES ('26', '/carousel/2017-03-19/58ce04d80a37d.jpg', '不后悔');
INSERT INTO `think_robot` VALUES ('28', '/carousel/2017-03-19/58ce0512e4405.jpg', '成功在坚持');
INSERT INTO `think_robot` VALUES ('29', '/carousel/2017-03-19/58ce052b1a45d.jpg', '人生');
INSERT INTO `think_robot` VALUES ('30', '/carousel/2017-04-01/58dfb7f642a82.jpg', '给的再多 不如懂我');
INSERT INTO `think_robot` VALUES ('31', '/carousel/2017-04-01/58dfb8048f64a.jpg', '生生生');
INSERT INTO `think_robot` VALUES ('32', '/carousel/2017-04-01/58dfb816b016d.jpg', '齐天大圣');
INSERT INTO `think_robot` VALUES ('33', '/carousel/2017-09-11/59b56b7c2ba58.JPG', '我日');
INSERT INTO `think_robot` VALUES ('34', '/carousel/2017-09-13/59b8a829bd2e2.png', '男人的味道');
INSERT INTO `think_robot` VALUES ('35', '/carousel/2017-09-13/59b8a9de22567.png', '创想');
INSERT INTO `think_robot` VALUES ('36', '/carousel/2017-09-13/59b8ab6d5dcbd.png', '狂封');
INSERT INTO `think_robot` VALUES ('37', '/carousel/2017-09-13/59b8ab9437421.png', '一个人');
INSERT INTO `think_robot` VALUES ('38', '/carousel/2017-09-13/59b8abb76a801.png', '独自偷欢');
INSERT INTO `think_robot` VALUES ('39', '/carousel/2017-09-13/59b8abf6c42ca.png', '你说我听');
INSERT INTO `think_robot` VALUES ('40', '/carousel/2017-09-13/59b8ac2dbf379.png', '不在犹豫');
INSERT INTO `think_robot` VALUES ('41', '/carousel/2017-09-13/59b8ac50758fd.png', '一生承诺');
INSERT INTO `think_robot` VALUES ('42', '/carousel/2017-09-13/59b8ac6abd64b.png', '只求一份安定');
INSERT INTO `think_robot` VALUES ('43', '/carousel/2017-09-13/59b8ac9312522.png', '无可置疑◆');
INSERT INTO `think_robot` VALUES ('44', '/carousel/2017-09-13/59b8acf8cf37a.png', '生命一旅程');
INSERT INTO `think_robot` VALUES ('45', '/carousel/2017-09-13/59b8ad167ad28.png', '志平');
INSERT INTO `think_robot` VALUES ('46', '/carousel/2017-09-13/59b8ad3b92429.png', '惊鴻【照】影');
INSERT INTO `think_robot` VALUES ('47', '/carousel/2017-09-13/59b8ad5cd9f71.png', '蛰伏');
INSERT INTO `think_robot` VALUES ('48', '/carousel/2017-09-13/59b8ad865d131.png', '超越梦想');
INSERT INTO `think_robot` VALUES ('49', '/carousel/2017-09-13/59b8adaa77f29.png', '平凡');
INSERT INTO `think_robot` VALUES ('50', '/carousel/2017-09-13/59b8ae1266924.png', '蔡仁傑');
INSERT INTO `think_robot` VALUES ('52', '/carousel/2017-09-13/59b8ae8c9a73d.png', '峰回路转');
INSERT INTO `think_robot` VALUES ('53', '/carousel/2017-09-13/59b8aece2edcb.png', '白帆');
INSERT INTO `think_robot` VALUES ('54', '/carousel/2017-09-13/59b8b161575fc.png', '6月');
INSERT INTO `think_robot` VALUES ('55', '/carousel/2017-09-13/59b8b182929b8.png', '落叶知秋');
INSERT INTO `think_robot` VALUES ('64', '/carousel/2017-09-13/59b8bee96ad81.png', 'MaRTiN');
INSERT INTO `think_robot` VALUES ('65', '/carousel/2017-09-13/59b8bf08d64b1.png', '沵算what°');
INSERT INTO `think_robot` VALUES ('66', '/carousel/2017-09-13/59b8bf27f3da7.png', 'ˋ.L.y.');
INSERT INTO `think_robot` VALUES ('67', '/carousel/2017-09-13/59b8bf413c68b.png', '稚_小_葵');
INSERT INTO `think_robot` VALUES ('69', '/carousel/2017-09-13/59b8bf9240fb4.png', '漫长の人生');
INSERT INTO `think_robot` VALUES ('70', '/carousel/2017-09-13/59b8bfb552caf.png', '不，完美。');
INSERT INTO `think_robot` VALUES ('71', '/carousel/2017-09-13/59b8bfcc8d433.png', '.....|还嬒继续|▍');
INSERT INTO `think_robot` VALUES ('72', '/carousel/2017-09-13/59b8bfe2b2b56.png', '- 物是人非。');
INSERT INTO `think_robot` VALUES ('73', '/carousel/2017-09-13/59b8bffa8a978.png', '冷了心，空了岛°');
INSERT INTO `think_robot` VALUES ('74', '/carousel/2017-09-13/59b902fbca40a.jpg', '半仙');
INSERT INTO `think_robot` VALUES ('75', '/carousel/2017-09-14/59ba3909224eb.png', '体温 ㎝ ╮');
INSERT INTO `think_robot` VALUES ('76', '/carousel/2017-09-17/59be4a274e5b1.JPG', '无所谓啦');
INSERT INTO `think_robot` VALUES ('77', '/carousel/2017-09-22/59c51645d8128.png', '感觉出了错');
INSERT INTO `think_robot` VALUES ('79', '/carousel/2017-09-22/59c516a9749be.png', 'lid');
INSERT INTO `think_robot` VALUES ('80', '/carousel/2017-09-22/59c516d8b0cf5.png', '小猪宝宝');
INSERT INTO `think_robot` VALUES ('81', '/carousel/2017-09-22/59c516fe05160.png', '别碰我');
INSERT INTO `think_robot` VALUES ('82', '/carousel/2017-09-22/59c5171c6c8fb.png', '念旧゜');
INSERT INTO `think_robot` VALUES ('83', '/carousel/2017-09-24/59c774afc0c57.png', '猴崽崽');
INSERT INTO `think_robot` VALUES ('85', '/carousel/2017-09-27/59cb9d4642d45.png', '样哇');

-- ----------------------------
-- Table structure for `think_robot_message`
-- ----------------------------
DROP TABLE IF EXISTS `think_robot_message`;
CREATE TABLE `think_robot_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `type` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_robot_message
-- ----------------------------
INSERT INTO `think_robot_message` VALUES ('1', '和双200', '1');
INSERT INTO `think_robot_message` VALUES ('2', '和3511/200', '1');
INSERT INTO `think_robot_message` VALUES ('3', '和1015/100', '1');
INSERT INTO `think_robot_message` VALUES ('4', 'AC/200', '1');
INSERT INTO `think_robot_message` VALUES ('5', 'A/100', '1');
INSERT INTO `think_robot_message` VALUES ('6', 'C/300', '1');
INSERT INTO `think_robot_message` VALUES ('7', '和双200', '1');
INSERT INTO `think_robot_message` VALUES ('8', '和小1000', '1');
INSERT INTO `think_robot_message` VALUES ('9', '组/8-10/200', '1');
INSERT INTO `think_robot_message` VALUES ('11', '庄/300', '1');
INSERT INTO `think_robot_message` VALUES ('12', '庄/150', '1');
INSERT INTO `think_robot_message` VALUES ('13', '345/虎/200', '1');
INSERT INTO `think_robot_message` VALUES ('14', '245/龙/300', '1');
INSERT INTO `think_robot_message` VALUES ('15', '156/大双/200', '1');
INSERT INTO `think_robot_message` VALUES ('16', '35/小双/300', '1');
INSERT INTO `think_robot_message` VALUES ('17', '2/龙/300', '1');
INSERT INTO `think_robot_message` VALUES ('18', '569单150', '1');
INSERT INTO `think_robot_message` VALUES ('19', '567/大单/200', '1');
INSERT INTO `think_robot_message` VALUES ('20', '678单200', '1');
INSERT INTO `think_robot_message` VALUES ('21', '12345/大/200', '1');
INSERT INTO `think_robot_message` VALUES ('22', '3大300', '1');
INSERT INTO `think_robot_message` VALUES ('23', '5/大单/100', '1');
INSERT INTO `think_robot_message` VALUES ('24', '6单400', '1');
INSERT INTO `think_robot_message` VALUES ('25', '3小1000', '1');
INSERT INTO `think_robot_message` VALUES ('26', '闲/266', '1');
INSERT INTO `think_robot_message` VALUES ('27', '庄/250', '1');
INSERT INTO `think_robot_message` VALUES ('28', '和单300', '1');
INSERT INTO `think_robot_message` VALUES ('29', '庄/200', '1');
INSERT INTO `think_robot_message` VALUES ('30', 'AB/300', '1');
INSERT INTO `think_robot_message` VALUES ('31', 'B/500', '1');
INSERT INTO `think_robot_message` VALUES ('32', 'A/200', '1');
INSERT INTO `think_robot_message` VALUES ('33', '和6811/100', '1');
INSERT INTO `think_robot_message` VALUES ('35', '和单500', '1');
INSERT INTO `think_robot_message` VALUES ('36', '和11/1000', '1');
INSERT INTO `think_robot_message` VALUES ('37', '庄/1000', '1');
INSERT INTO `think_robot_message` VALUES ('38', '和单300', '1');
INSERT INTO `think_robot_message` VALUES ('39', '和小200', '1');
INSERT INTO `think_robot_message` VALUES ('40', '和17/300', '1');
INSERT INTO `think_robot_message` VALUES ('41', 'A/500', '1');
INSERT INTO `think_robot_message` VALUES ('42', '12345大200', '1');
INSERT INTO `think_robot_message` VALUES ('43', '1大1000', '1');
INSERT INTO `think_robot_message` VALUES ('44', '23456/小单/300', '1');
INSERT INTO `think_robot_message` VALUES ('45', '1/13579/200', '1');
INSERT INTO `think_robot_message` VALUES ('46', '1/13579/500', '1');
INSERT INTO `think_robot_message` VALUES ('47', '1/24680/500', '1');
INSERT INTO `think_robot_message` VALUES ('48', '1/157/500', '1');
INSERT INTO `think_robot_message` VALUES ('49', '1/479/500', '1');
INSERT INTO `think_robot_message` VALUES ('50', '特3418.19/200', '1');
INSERT INTO `think_robot_message` VALUES ('51', '特34/200', '1');
INSERT INTO `think_robot_message` VALUES ('52', '特1819/200', '1');
INSERT INTO `think_robot_message` VALUES ('53', '特319/200', '1');
INSERT INTO `think_robot_message` VALUES ('54', '特341819/50', '1');
INSERT INTO `think_robot_message` VALUES ('55', '1双1500', '1');
INSERT INTO `think_robot_message` VALUES ('56', '2双200', '1');
INSERT INTO `think_robot_message` VALUES ('57', '3双366', '1');
INSERT INTO `think_robot_message` VALUES ('58', '4双366', '1');
INSERT INTO `think_robot_message` VALUES ('59', '5双200', '1');
INSERT INTO `think_robot_message` VALUES ('60', '6双700', '1');
INSERT INTO `think_robot_message` VALUES ('61', '7双1500', '1');
INSERT INTO `think_robot_message` VALUES ('62', '8双1000', '1');
INSERT INTO `think_robot_message` VALUES ('63', '1双1000', '1');
INSERT INTO `think_robot_message` VALUES ('64', '1大1500', '1');
INSERT INTO `think_robot_message` VALUES ('65', '2大1500', '1');
INSERT INTO `think_robot_message` VALUES ('66', '3大1500', '1');
INSERT INTO `think_robot_message` VALUES ('67', '4双1500', '1');
INSERT INTO `think_robot_message` VALUES ('68', '5双1500', '1');
INSERT INTO `think_robot_message` VALUES ('69', '6双1500', '1');
INSERT INTO `think_robot_message` VALUES ('70', '7双1500', '1');
INSERT INTO `think_robot_message` VALUES ('71', '8双1500', '1');
INSERT INTO `think_robot_message` VALUES ('72', '9双1500', '1');
INSERT INTO `think_robot_message` VALUES ('73', '123/虎/400', '1');
INSERT INTO `think_robot_message` VALUES ('74', '123/龙/1500', '1');
INSERT INTO `think_robot_message` VALUES ('75', '12/龙/1500', '1');
INSERT INTO `think_robot_message` VALUES ('76', '9双1500', '1');
INSERT INTO `think_robot_message` VALUES ('77', '1大300', '2');
INSERT INTO `think_robot_message` VALUES ('78', '1/357/200', '2');
INSERT INTO `think_robot_message` VALUES ('79', '1小600', '2');
INSERT INTO `think_robot_message` VALUES ('80', '前顺子300', '2');
INSERT INTO `think_robot_message` VALUES ('81', '前豹子100', '2');
INSERT INTO `think_robot_message` VALUES ('82', '中顺子300', '2');
INSERT INTO `think_robot_message` VALUES ('83', '中对子200', '2');
INSERT INTO `think_robot_message` VALUES ('84', '大100', '2');
INSERT INTO `think_robot_message` VALUES ('85', '小300', '2');
INSERT INTO `think_robot_message` VALUES ('86', '12大500', '2');
INSERT INTO `think_robot_message` VALUES ('87', '前顺子200', '2');
INSERT INTO `think_robot_message` VALUES ('88', '前豹子200', '2');
INSERT INTO `think_robot_message` VALUES ('89', '中顺子100', '2');
INSERT INTO `think_robot_message` VALUES ('90', '中对子600', '2');
INSERT INTO `think_robot_message` VALUES ('91', '大200', '2');
INSERT INTO `think_robot_message` VALUES ('92', '小700', '2');
INSERT INTO `think_robot_message` VALUES ('93', '12大500', '2');
INSERT INTO `think_robot_message` VALUES ('94', '1大300', '2');
INSERT INTO `think_robot_message` VALUES ('95', '2/357/200', '2');
INSERT INTO `think_robot_message` VALUES ('96', '3小600', '2');
INSERT INTO `think_robot_message` VALUES ('97', '前顺子700', '2');
INSERT INTO `think_robot_message` VALUES ('98', '前豹子300', '2');
INSERT INTO `think_robot_message` VALUES ('99', '中顺子200', '2');
INSERT INTO `think_robot_message` VALUES ('100', '中对子700', '2');
INSERT INTO `think_robot_message` VALUES ('101', '大1000', '2');
INSERT INTO `think_robot_message` VALUES ('102', '小600', '2');
INSERT INTO `think_robot_message` VALUES ('103', '123大500', '2');
INSERT INTO `think_robot_message` VALUES ('104', '前顺子800', '2');
INSERT INTO `think_robot_message` VALUES ('105', '前豹子300', '2');
INSERT INTO `think_robot_message` VALUES ('106', '中顺子600', '2');
INSERT INTO `think_robot_message` VALUES ('107', '中对子300', '2');
INSERT INTO `think_robot_message` VALUES ('108', '大2000', '2');
INSERT INTO `think_robot_message` VALUES ('109', '小1500', '2');
INSERT INTO `think_robot_message` VALUES ('110', '12大500', '2');
INSERT INTO `think_robot_message` VALUES ('111', '1/12345/200', '2');
INSERT INTO `think_robot_message` VALUES ('112', '大300', '3');
INSERT INTO `think_robot_message` VALUES ('113', '大100', '3');
INSERT INTO `think_robot_message` VALUES ('114', '大500', '3');
INSERT INTO `think_robot_message` VALUES ('115', '小500', '3');
INSERT INTO `think_robot_message` VALUES ('116', '小200', '3');
INSERT INTO `think_robot_message` VALUES ('117', '大单200', '3');
INSERT INTO `think_robot_message` VALUES ('118', '小双200', '3');
INSERT INTO `think_robot_message` VALUES ('119', '小双500', '3');
INSERT INTO `think_robot_message` VALUES ('120', '6点100', '3');
INSERT INTO `think_robot_message` VALUES ('121', '12点500', '3');
INSERT INTO `think_robot_message` VALUES ('122', '1点100', '3');
INSERT INTO `think_robot_message` VALUES ('123', '极大100', '3');
INSERT INTO `think_robot_message` VALUES ('124', '极大300', '3');
INSERT INTO `think_robot_message` VALUES ('125', '极小500', '3');
INSERT INTO `think_robot_message` VALUES ('126', '庄500', '3');
INSERT INTO `think_robot_message` VALUES ('127', '闲300', '3');
INSERT INTO `think_robot_message` VALUES ('128', '豹子300', '3');
INSERT INTO `think_robot_message` VALUES ('129', '顺子200', '3');
INSERT INTO `think_robot_message` VALUES ('130', '对子500', '3');
INSERT INTO `think_robot_message` VALUES ('131', '半顺200', '3');
INSERT INTO `think_robot_message` VALUES ('132', '杂六200', '3');
INSERT INTO `think_robot_message` VALUES ('133', '顺子200', '3');

-- ----------------------------
-- Table structure for `think_user`
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` int(1) unsigned NOT NULL,
  `country` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `headimgurl` varchar(255) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL,
  `last_time` int(10) unsigned NOT NULL,
  `reg_ip` varchar(255) NOT NULL,
  `last_ip` varchar(255) NOT NULL,
  `is_under` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_agent` varchar(255) NOT NULL,
  `logins` int(10) NOT NULL,
  `points` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '积分',
  `yong` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `fanshui` decimal(10,2) NOT NULL DEFAULT '0.00',
  `t_id` int(10) unsigned NOT NULL COMMENT '推荐人',
  `t_add` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '分销积分',
  `qrcode` varchar(255) NOT NULL,
  `status` int(1) unsigned NOT NULL DEFAULT '1',
  `is_robot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dl_rate` varchar(50) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `wx_paycode` varchar(255) NOT NULL DEFAULT '',
  `zfb_paycode` varchar(255) NOT NULL DEFAULT '',
  `pkft_fs` varchar(5) NOT NULL DEFAULT '',
  `pcdd_fs` varchar(5) NOT NULL DEFAULT '',
  `k3_fs` varchar(5) NOT NULL DEFAULT '',
  `ssc_fs` varchar(5) NOT NULL DEFAULT '',
  `is_agent` tinyint(1) NOT NULL DEFAULT '0',
  `agent_fen` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pk10_is_win` tinyint(1) NOT NULL DEFAULT '0',
  `xjp28_is_win` tinyint(1) NOT NULL DEFAULT '0',
  `xjp28_is_lost` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES ('6', 'ceshi001', 'ceshi001', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '', '', '/Public/Home/img/face/3.png', '1539744021', '1539787920', '182.124.100.241', '183.213.122.23', '1', '', '0', '0.00', '0.00', '0.00', '0', '0.00', '/Uploads/qrcode/2018-10-17/1539787920_579725655.png', '1', '0', '0', '', '', '', '', '', '', '', '0', '0.00', '0', '0', '0');
INSERT INTO `think_user` VALUES ('5', '13711349758', '13711349758', '6eea9b7ef19179a06954edd0f6c05ceb', '0', '', '', '', '/Public/Home/img/face/3.png', '1539700213', '0', '116.210.133.220', '', '1', '', '0', '0.00', '0.00', '0.00', '0', '0.00', '/Uploads/qrcode/2018-10-16/1539700213_708999533.png', '1', '0', '0', '', '', '', '', '', '', '', '0', '0.00', '0', '0', '0');
INSERT INTO `think_user` VALUES ('4', 'ceshi666', 'ceshi666', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '', '', '/Public/Home/img/face/3.png', '1539688623', '1540014973', '115.59.46.142', '115.59.40.48', '1', '', '0', '80078.00', '0.00', '0.00', '0', '0.00', '/Uploads/qrcode/2018-10-20/1540014973_1001117059.png', '1', '0', '0', '', '', '', '', '', '', '', '0', '0.00', '0', '0', '0');
INSERT INTO `think_user` VALUES ('7', 'wugf123', 'wugf123', '2af9b1ba42dc5eb01743e6b3759b6e4b', '0', '', '', '', '/Public/Home/img/face/3.png', '1539937755', '0', '113.61.45.91', '', '1', '', '0', '0.00', '0.00', '0.00', '0', '0.00', '/Uploads/qrcode/2018-10-19/1539937755_1123511530.png', '1', '0', '0', '', '', '', '', '', '', '', '0', '0.00', '0', '0', '0');
INSERT INTO `think_user` VALUES ('8', 'qqfc1314520', 'qqfc1314520', '2af9b1ba42dc5eb01743e6b3759b6e4b', '0', '', '', '', '/Public/Home/img/face/3.png', '1539938468', '0', '110.54.153.235', '', '1', '', '0', '0.00', '0.00', '0.00', '0', '0.00', '/Uploads/qrcode/2018-10-19/1539938468_1162413548.png', '1', '0', '0', '', '', '', '', '', '', '', '0', '0.00', '0', '0', '0');
INSERT INTO `think_user` VALUES ('9', 'xsdaxa11', 'xsdaxa11', '91835d12d1c0583b2d7b4eff43248e7e', '0', '', '', '', '/Public/Home/img/face/3.png', '1540003578', '0', '183.226.53.60', '', '1', '', '0', '800.00', '0.00', '0.00', '0', '0.00', '/Uploads/qrcode/2018-10-20/1540003578_896510862.png', '1', '0', '0', '', '', '', '', '', '', '', '0', '0.00', '0', '0', '0');

-- ----------------------------
-- Table structure for `think_wx`
-- ----------------------------
DROP TABLE IF EXISTS `think_wx`;
CREATE TABLE `think_wx` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `openid` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `expires_in` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_wx
-- ----------------------------
