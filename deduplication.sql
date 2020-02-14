/*
MySQL Data Transfer
Source Host: localhost
Source Database: deduplication
Target Host: localhost
Target Database: deduplication
Date: 3/8/2016 4:05:51 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for image_post_table
-- ----------------------------
DROP TABLE IF EXISTS `image_post_table`;
CREATE TABLE `image_post_table` (
  `image_post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `fileSize` int(10) DEFAULT NULL,
  PRIMARY KEY (`image_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for log_table
-- ----------------------------
DROP TABLE IF EXISTS `log_table`;
CREATE TABLE `log_table` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `TIME` varchar(255) DEFAULT NULL,
  `ACTION` varchar(255) DEFAULT NULL,
  `FILE_NAME` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `EMAIL_ID` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `PINCODE` int(11) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for map_table
-- ----------------------------
DROP TABLE IF EXISTS `map_table`;
CREATE TABLE `map_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_id` bigint(20) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for reg
-- ----------------------------
DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `cpass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for reg_copy
-- ----------------------------
DROP TABLE IF EXISTS `reg_copy`;
CREATE TABLE `reg_copy` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `cpass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for splitfiles
-- ----------------------------
DROP TABLE IF EXISTS `splitfiles`;
CREATE TABLE `splitfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_post_id` bigint(20) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `image_post_table` VALUES ('18', 'tejas', '2016-03-08 12:23:12', 'process.txt', '0');
INSERT INTO `image_post_table` VALUES ('19', 'tejas', '2016-03-08 12:23:45', 'process2.txt', '0');
INSERT INTO `login_info` VALUES ('3', 'tejas', 'tejas', 'namsdesai04@gmail.com', 'mumbai', '65646', 'maharashtra', 'mumbai', 'department', 'active');
INSERT INTO `login_info` VALUES ('4', 'admin', 'admin', 'admin@gmail.com', 'abc road', '412515', 'maharashtra', 'mumbai', 'admin', 'active');
INSERT INTO `login_info` VALUES ('5', 'james', 'james', 'james@gmail.com', 'mumbai', '40024', 'maharashtra', 'mumbai', 'department', 'blocked');
INSERT INTO `login_info` VALUES ('6', 'namrata', 'namrata', 'namrata@gmail.com', 'asfdadf', '2432', 'sdfdsf', 'sfdsdf', 'department', 'active');
INSERT INTO `login_info` VALUES ('7', 'varsha', 'varsha', 'varsha@gmail.com', 'ffg', '556654', 'fgfgd', 'dgd', 'department', 'blocked');
INSERT INTO `map_table` VALUES ('20', '18', 'department');
INSERT INTO `map_table` VALUES ('21', '18', 'admin');
INSERT INTO `map_table` VALUES ('22', '19', 'department');
INSERT INTO `map_table` VALUES ('23', '19', 'admin');
INSERT INTO `splitfiles` VALUES ('42', '18', 'tejas', '\\Folder2\\process0.txt');
INSERT INTO `splitfiles` VALUES ('43', '18', 'tejas', '\\Folder2\\process1.txt');
INSERT INTO `splitfiles` VALUES ('44', '18', 'tejas', '\\Folder2\\process2.txt');
INSERT INTO `splitfiles` VALUES ('45', '18', 'tejas', '\\Folder2\\process3.txt');
INSERT INTO `splitfiles` VALUES ('46', '18', 'tejas', '\\Folder2\\process4.txt');
INSERT INTO `splitfiles` VALUES ('47', '18', 'tejas', '\\Folder2\\process5.txt');
INSERT INTO `splitfiles` VALUES ('48', '19', 'tejas', 'Folder2\\process0.txt');
INSERT INTO `splitfiles` VALUES ('49', '19', 'tejas', 'Folder2\\process1.txt');
INSERT INTO `splitfiles` VALUES ('50', '19', 'tejas', 'Folder2\\process2.txt');
INSERT INTO `splitfiles` VALUES ('51', '19', 'tejas', '\\Folder2\\process20.txt');
INSERT INTO `splitfiles` VALUES ('52', '19', 'tejas', 'Folder2\\process4.txt');
INSERT INTO `splitfiles` VALUES ('53', '19', 'tejas', 'Folder2\\process5.txt');
