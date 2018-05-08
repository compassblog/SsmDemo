/*
 Navicat Premium Data Transfer

 Source Server         : databases
 Source Server Type    : MySQL
 Source Server Version : 50519
 Source Host           : localhost:3306
 Source Schema         : ssm_example

 Target Server Type    : MySQL
 Target Server Version : 50519
 File Encoding         : 65001

 Date: 08/05/2018 23:35:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cla` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '孔乙己', '男', 'kongyiji@163.com', '13509856897', '计算机1班');
INSERT INTO `student` VALUES (2, '阿强', '女', 'aqiang@126.com', '12345678909', '软件工程');
INSERT INTO `student` VALUES (3, '阿福', '男', 'afu@12345.com', '13657898762', '数学专业');
INSERT INTO `student` VALUES (4, '阿霞', '女', '12345@qq.com', '12378645987', '英语专业');
INSERT INTO `student` VALUES (5, '指南者', '男', 'compassblog@gmail.com', '13587690873', '打杂搬砖专业');

SET FOREIGN_KEY_CHECKS = 1;
