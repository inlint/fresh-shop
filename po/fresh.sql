/*
Navicat MySQL Data Transfer

Source Server         : reol
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : fresh

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2020-07-04 10:14:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `ad_id` int(11) NOT NULL,
  `ad_name` varchar(40) DEFAULT NULL,
  `ad_password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `applicable_amount` float(8,2) NOT NULL,
  `deduction_amount` float(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------

-- ----------------------------
-- Table structure for deaddr
-- ----------------------------
DROP TABLE IF EXISTS `deaddr`;
CREATE TABLE `deaddr` (
  `add_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `province` varchar(20) NOT NULL,
  `town` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `linkman` varchar(10) NOT NULL,
  `phone` varchar(40) NOT NULL,
  PRIMARY KEY (`add_id`),
  KEY `FK_Relationship_4` (`user_id`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deaddr
-- ----------------------------

-- ----------------------------
-- Table structure for discommodity
-- ----------------------------
DROP TABLE IF EXISTS `discommodity`;
CREATE TABLE `discommodity` (
  `product_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`product_id`,`discount_id`),
  KEY `FK_discommodity2` (`discount_id`),
  CONSTRAINT `FK_discommodity2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`discount_id`),
  CONSTRAINT `FK_discommodity` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discommodity
-- ----------------------------

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `applicable_quantity` int(11) NOT NULL,
  `deduce` float NOT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discount
-- ----------------------------

-- ----------------------------
-- Table structure for dorder
-- ----------------------------
DROP TABLE IF EXISTS `dorder`;
CREATE TABLE `dorder` (
  `order_id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `add_id` int(11) DEFAULT NULL,
  `pri_money` float(8,2) NOT NULL,
  `real_money` float(8,2) NOT NULL,
  `req_time` time NOT NULL,
  `state` int(11) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `comment` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_Relationship_1` (`user_id`),
  KEY `FK_Relationship_5` (`add_id`),
  KEY `FK_Relationship_7` (`coupon_id`),
  CONSTRAINT `FK_Relationship_7` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`coupon_id`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_Relationship_5` FOREIGN KEY (`add_id`) REFERENCES `deaddr` (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorder
-- ----------------------------

-- ----------------------------
-- Table structure for fresh_category
-- ----------------------------
DROP TABLE IF EXISTS `fresh_category`;
CREATE TABLE `fresh_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `category_describe` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fresh_category
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(40) NOT NULL,
  `menu_make` varchar(200) NOT NULL,
  `menu_step` varchar(500) NOT NULL,
  `image` longblob,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for menu_recomment
-- ----------------------------
DROP TABLE IF EXISTS `menu_recomment`;
CREATE TABLE `menu_recomment` (
  `product_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `decribe` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`menu_id`),
  KEY `FK_menu_recomment2` (`menu_id`),
  CONSTRAINT `FK_menu_recomment2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`),
  CONSTRAINT `FK_menu_recomment` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_recomment
-- ----------------------------

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`order_id`),
  KEY `FK_order_details2` (`order_id`),
  CONSTRAINT `FK_order_details2` FOREIGN KEY (`order_id`) REFERENCES `dorder` (`order_id`),
  CONSTRAINT `FK_order_details` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_details
-- ----------------------------

-- ----------------------------
-- Table structure for procure
-- ----------------------------
DROP TABLE IF EXISTS `procure`;
CREATE TABLE `procure` (
  `produre` int(11) NOT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`produre`),
  KEY `FK_Relationship_6` (`product_id`),
  KEY `FK_Relationship_8` (`ad_id`),
  CONSTRAINT `FK_Relationship_8` FOREIGN KEY (`ad_id`) REFERENCES `administrator` (`ad_id`),
  CONSTRAINT `FK_Relationship_6` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of procure
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` varchar(40) NOT NULL,
  `price` float(8,2) NOT NULL,
  `m_price` float(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `specification` varchar(10) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK_Relationship_2` (`category_id`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`category_id`) REFERENCES `fresh_category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sales_price` float(8,2) NOT NULL,
  `sales_quantity` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`sales_id`),
  KEY `FK_Relationship_3` (`product_id`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `town` varchar(20) DEFAULT NULL,
  `create_time` date NOT NULL,
  `isVip` tinyint(1) NOT NULL,
  `vip_time` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
