/*
MySQL Data Transfer
Source Host: localhost
Source Database: login
Target Host: localhost
Target Database: login
Date: 10/15/2015 2:09:29 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for image_post_table
-- ----------------------------
DROP TABLE IF EXISTS `image_post_table`;
CREATE TABLE `image_post_table` (
  `image_post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`image_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for logindetails
-- ----------------------------
DROP TABLE IF EXISTS `logindetails`;
CREATE TABLE `logindetails` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `image_post_table` VALUES ('25', 'ashu', null, 'd.png');
INSERT INTO `image_post_table` VALUES ('28', 'ashu', null, 'c.png');
INSERT INTO `image_post_table` VALUES ('30', 'xyz', null, 'ACXX.jpg');
INSERT INTO `image_post_table` VALUES ('33', 'xyz', null, 'b.jpg');
INSERT INTO `image_post_table` VALUES ('35', 'ashu', null, 'coffee_stain.png');
INSERT INTO `image_post_table` VALUES ('37', 'xyz', null, 'foodpanda_theme.jpg');
INSERT INTO `image_post_table` VALUES ('38', 'ashu', null, 'coffee.jpg');
INSERT INTO `image_post_table` VALUES ('39', 'ashu', null, 'foopanda_logo.png');
INSERT INTO `image_post_table` VALUES ('41', 'ashu', null, 'Aerus LOGO.jpg');
INSERT INTO `image_post_table` VALUES ('42', 'ashu', null, 'cherry.jpg');
INSERT INTO `image_post_table` VALUES ('44', 'ashu', null, '7674236028_08e25bdf24_b.jpg');
INSERT INTO `image_post_table` VALUES ('51', 'ashu', null, 'a.png');
INSERT INTO `image_post_table` VALUES ('52', 'ashu', null, 'Chrysanthemum.jpg');
INSERT INTO `image_post_table` VALUES ('53', 'abc', null, 'Desert.jpg');
INSERT INTO `image_post_table` VALUES ('54', 'ashu', null, 'Koala.jpg');
INSERT INTO `image_post_table` VALUES ('55', 'ashu', null, 'bookstore3.jpg');
INSERT INTO `image_post_table` VALUES ('56', null, null, 'tablet_logo.png');
INSERT INTO `login_info` VALUES ('1', 'abc', 'abc', 'fsdf', null, '101', 'dgdsg', 'dsg');
INSERT INTO `login_info` VALUES ('2', 'abc', 'abc', 'fsdf', null, '101', 'dgdsg', 'dsg');
INSERT INTO `login_info` VALUES ('3', 'xyz', 'xyz', 'gf', 'hfhdh', '404', 'fhh', 'hdfh');
INSERT INTO `login_info` VALUES ('4', 'ashu', 'ashu', 'hgjfgj', 'shdrh', '4101', 'hfgj', 'eawqeqr');
INSERT INTO `reg` VALUES ('1', 'Popli', 'Khair', 'PopliKhair', 'qwerty', 'qwerty', 'Khairpopli');
INSERT INTO `reg` VALUES ('2', 'pratik', 'kadu', 'nerika', 'peru@13', 'peru@13', 'abc@gmail.com');
INSERT INTO `reg` VALUES ('3', '', '', '', '', '', '');
INSERT INTO `reg` VALUES ('4', '', '', '', '', '', '');
INSERT INTO `reg` VALUES ('5', '', '', '', '', '', '');
INSERT INTO `reg` VALUES ('6', '', '', '', '', '', '');
INSERT INTO `reg` VALUES ('7', 'bipasha', 'pednekar', 'kari', 'siddhesh', 'siddhesh', 'abc@gmail.com');
INSERT INTO `reg` VALUES ('8', 'www', 'qqq', 'ttttt', 'rrrr', 'rrrr', 'yyyyyy');
INSERT INTO `reg_copy` VALUES ('1', 'Popli', 'Khair', 'PopliKhair', 'qwerty', 'qwerty', 'Khairpopli');
INSERT INTO `reg_copy` VALUES ('2', 'pratik', 'kadu', 'nerika', 'peru@13', 'peru@13', 'abc@gmail.com');
INSERT INTO `reg_copy` VALUES ('3', '', '', '', '', '', '');
INSERT INTO `reg_copy` VALUES ('4', '', '', '', '', '', '');
INSERT INTO `reg_copy` VALUES ('5', '', '', '', '', '', '');
INSERT INTO `reg_copy` VALUES ('6', '', '', '', '', '', '');
INSERT INTO `reg_copy` VALUES ('7', 'bipasha', 'pednekar', 'kari', 'siddhesh', 'siddhesh', 'abc@gmail.com');
INSERT INTO `reg_copy` VALUES ('8', 'www', 'qqq', 'ttttt', 'rrrr', 'rrrr', 'yyyyyy');
