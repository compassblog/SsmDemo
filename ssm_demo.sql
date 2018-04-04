/*
Navicat MySQL Data Transfer

Source Server         : Compasser_blog
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : ssm_demo

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2018-04-04 23:27:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '学习部');
INSERT INTO `department` VALUES ('2', '技术部');
INSERT INTO `department` VALUES ('3', '宣传部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(255) DEFAULT NULL,
  `e_gender` varchar(255) DEFAULT NULL,
  `e_email` varchar(255) DEFAULT NULL,
  `e_tel` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `department` (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '孔乙己', '男', 'kongyiji@gmail.com', '13562036925', '1');
INSERT INTO `employee` VALUES ('2', '朱小鱼', '女', 'zhuxiaoyu@163.com', '12563896436', '1');
INSERT INTO `employee` VALUES ('3', '指南者', '男', 'compassblog@163.com', '13569865375', '2');
INSERT INTO `employee` VALUES ('4', '张三', '男', 'zhangsan@163.com', '12653469867', '2');
INSERT INTO `employee` VALUES ('5', '李四', '女', 'lisi@gmail.com', '12543698765', '3');
INSERT INTO `employee` VALUES ('6', '王五', '男', 'wangwu@126.com', '13564036986', '3');
INSERT INTO `employee` VALUES ('7', '小二', '女', 'xiaoer@gmail.com', '10086696352', '1');
INSERT INTO `employee` VALUES ('8', 'lenard', '男', 'kwahi@gmail.com', '10010563989', '2');
INSERT INTO `employee` VALUES ('9', 'spurs', '女', 'surps@gmail.com', '13560136689', '3');
INSERT INTO `employee` VALUES ('10', 'tim', '女', 'tim@163.com', '10086100100', '3');
