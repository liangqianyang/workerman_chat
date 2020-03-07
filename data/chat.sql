/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : chat

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 07/03/2020 22:48:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat_communication
-- ----------------------------
DROP TABLE IF EXISTS `chat_communication`;
CREATE TABLE `chat_communication`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_id` int(5) NOT NULL,
  `from_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_id` int(5) NOT NULL,
  `to_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(10) NOT NULL,
  `shopid` int(5) NULL DEFAULT NULL,
  `is_read` tinyint(2) NULL DEFAULT 0,
  `type` tinyint(2) NULL DEFAULT 1 COMMENT '1是普通文本，2是图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_communication
-- ----------------------------
INSERT INTO `chat_communication` VALUES (1, 85, 'Love violet life', 87, '大金', '你好', 1517888705, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (2, 87, '大金', 85, 'Love violet life', '你也好', 1517888712, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (3, 89, '雨薇', 87, '大金', '你在干嘛', 1517888760, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (4, 85, 'Love violet life', 87, '大金', '你还在吗', 1517888797, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (5, 85, 'Love violet life', 87, '大金', '订单', 1517888872, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (6, 89, '雨薇', 87, '大金', '订单', 1517888882, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (7, 85, 'Love violet life', 87, '大金', '订单', 1517892780, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (8, 85, 'Love violet life', 87, '大金', '订单', 1517892806, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (9, 87, '大金', 85, 'Love violet life', '你好', 1517892811, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (10, 85, 'Love violet life', 87, '大金', '的', 1517892817, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (11, 85, 'Love violet life', 87, '大金', '你好', 1517892912, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (12, 87, '大金', 85, 'Love violet life', '你也好', 1517892920, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (13, 85, 'Love violet life', 87, '大金', '订单', 1517892926, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (14, 87, '大金', 85, 'Love violet life', '鞍山市', 1517892929, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (15, 89, '雨薇', 87, '大金', '你们好', 1517892954, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (16, 87, '大金', 85, 'Love violet life', '你好', 1517893390, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (17, 85, 'Love violet life', 87, '大金', 'dd', 1517893399, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (18, 89, '雨薇', 87, '大金', '订单', 1517893413, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (19, 85, 'Love violet life', 87, '大金', '对对对', 1517893944, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (20, 85, 'Love violet life', 87, '大金', '出错', 1517893979, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (21, 85, 'Love violet life', 87, '大金', '订单', 1517893984, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (22, 87, '大金', 85, 'Love violet life', '实打实大', 1517893988, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (23, 85, 'Love violet life', 87, '大金', '发送', 1517894138, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (24, 87, '大金', 85, 'Love violet life', '订单', 1517894149, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (25, 85, 'Love violet life', 87, '大金', '你好', 1517894847, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (26, 87, '大金', 85, 'Love violet life', '你也好', 1517894860, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (27, 89, '雨薇', 87, '大金', '你们在干什么', 1517894879, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (28, 85, 'Love violet life', 87, '大金', '淡定', 1517895340, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (29, 85, 'Love violet life', 87, '大金', '你好', 1517895622, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (30, 85, 'Love violet life', 86, '大美如斯', '11', 1583335069, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (31, 86, '大美如斯', 85, 'Love violet life', '22', 1583335093, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (32, 86, '大美如斯', 85, 'Love violet life', '11', 1583420914, NULL, 0, 1);
INSERT INTO `chat_communication` VALUES (33, 85, 'Love violet life', 86, '大美如斯', '11', 1583420932, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (34, 86, '大美如斯', 85, 'Love violet life', '11', 1583421250, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (35, 85, 'Love violet life', 86, '大美如斯', '11', 1583421393, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (36, 85, 'Love violet life', 86, '大美如斯', '1', 1583421443, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (37, 85, 'Love violet life', 86, '大美如斯', '1', 1583421591, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (38, 85, 'Love violet life', 86, '大美如斯', '1', 1583421740, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (39, 85, 'Love violet life', 86, '大美如斯', '2', 1583421784, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (40, 86, '大美如斯', 85, 'Love violet life', '3', 1583421788, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (41, 85, 'Love violet life', 86, '大美如斯', '1', 1583421799, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (42, 86, '大美如斯', 85, 'Love violet life', '2', 1583421802, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (43, 86, '大美如斯', 85, 'Love violet life', '11', 1583480856, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (44, 86, '大美如斯', 85, 'Love violet life', '33', 1583481234, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (45, 86, '大美如斯', 85, 'Love violet life', '2323243242', 1583482991, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (46, 85, 'Love violet life', 86, '大美如斯', '1231', 1583482997, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (48, 85, 'Love violet life', 86, '大美如斯', 'chat_img5e626eff56755.jpg', 1583509247, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (49, 85, 'Love violet life', 86, '大美如斯', 'chat_img5e63116930351.jpg', 1583550825, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (50, 85, 'Love violet life', 86, '大美如斯', 'chat_img5e6313ce6e63b.jpg', 1583551438, NULL, 0, 2);
INSERT INTO `chat_communication` VALUES (51, 85, 'Love violet life', 86, '大美如斯', 'chat_img5e63142b9ef53.jpg', 1583551531, NULL, 0, 2);
INSERT INTO `chat_communication` VALUES (52, 85, 'Love violet life', 86, '大美如斯', 'chat_img5e63142b9ef53.jpg', 1583551531, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (53, 86, '大美如斯', 85, 'Love violet life', 'chat_img5e63198f563cf.jpg', 1583552911, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (54, 86, '大美如斯', 85, 'Love violet life', 'chat_img5e63198f563cf.jpg', 1583552911, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (55, 86, '大美如斯', 85, 'Love violet life', '2233', 1583555710, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (56, 85, 'Love violet life', 86, '大美如斯', 'chat_img5e632488a86c3.jpg', 1583555720, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (58, 85, 'Love violet life', 86, '大美如斯', '33', 1583560300, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (59, 85, 'Love violet life', 86, '大美如斯', '[em_7]', 1583560363, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (60, 85, 'Love violet life', 86, '大美如斯', '[em_3]', 1583560377, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (61, 86, '大美如斯', 85, 'Love violet life', '[em_52]', 1583560384, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (62, 86, '大美如斯', 85, 'Love violet life', '[em_38]', 1583560389, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (63, 86, '大美如斯', 85, 'Love violet life', '[em_2]', 1583560637, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (64, 85, 'Love violet life', 86, '大美如斯', '[em_9]', 1583561117, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (65, 86, '大美如斯', 85, 'Love violet life', 'chat_img5e6355e3b630d.jpg', 1583568355, NULL, 0, 2);
INSERT INTO `chat_communication` VALUES (66, 86, '大美如斯', 85, 'Love violet life', '[em_26]', 1583568475, NULL, 0, 1);
INSERT INTO `chat_communication` VALUES (67, 86, '大美如斯', 85, 'Love violet life', 'chat_img5e6356e26ce47.jpg', 1583568610, NULL, 0, 2);
INSERT INTO `chat_communication` VALUES (68, 86, '大美如斯', 85, 'Love violet life', '滴滴滴', 1583573614, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (69, 87, '大金', 85, 'Love violet life', '滴滴', 1583573702, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (70, 87, '大金', 85, 'Love violet life', '滴滴滴33', 1583573764, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (71, 87, '大金', 85, 'Love violet life', '[em_22]', 1583573796, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (72, 87, '大金', 85, 'Love violet life', '1122', 1583573947, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (75, 87, '大金', 85, 'Love violet life', '3366', 1583573964, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (76, 87, '大金', 85, 'Love violet life', '66', 1583574051, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (77, 87, '大金', 85, 'Love violet life', '66', 1583574051, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (78, 87, '大金', 85, 'Love violet life', '77', 1583574229, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (79, 87, '大金', 85, 'Love violet life', '88', 1583574248, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (80, 87, '大金', 85, 'Love violet life', '99', 1583574287, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (81, 85, 'Love violet life', 87, '大金', '100', 1583574475, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (82, 85, 'Love violet life', 87, '大金', '[em_4]', 1583574485, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (83, 85, 'Love violet life', 87, '大金', '[em_1]', 1583574518, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (84, 85, 'Love violet life', 87, '大金', '11', 1583574703, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (85, 85, 'Love violet life', 87, '大金', '22', 1583574717, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (86, 85, 'Love violet life', 87, '大金', '33', 1583574825, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (87, 85, 'Love violet life', 87, '大金', '44', 1583574846, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (88, 85, 'Love violet life', 87, '大金', '55', 1583574883, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (89, 85, 'Love violet life', 87, '大金', '[em_5]', 1583574917, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (90, 85, 'Love violet life', 87, '大金', '2222', 1583575419, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (91, 85, 'Love violet life', 87, '大金', '333', 1583575435, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (92, 85, 'Love violet life', 87, '大金', '444', 1583575499, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (93, 85, 'Love violet life', 87, '大金', '555', 1583575515, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (94, 85, 'Love violet life', 87, '大金', '还好吗', 1583575676, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (95, 85, 'Love violet life', 87, '大金', '[em_24]', 1583575696, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (96, 85, 'Love violet life', 87, '大金', '0.5', 1583575745, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (97, 85, 'Love violet life', 87, '大金', '1', 1583575761, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (98, 85, 'Love violet life', 87, '大金', '2', 1583576073, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (99, 87, '大金', 85, 'Love violet life', '333', 1583576076, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (100, 85, 'Love violet life', 87, '大金', '333222', 1583576107, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (101, 85, 'Love violet life', 87, '大金', '我更新了', 1583576188, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (102, 87, '大金', 85, 'Love violet life', '是吗', 1583579432, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (103, 85, 'Love violet life', 87, '大金', '是的', 1583579543, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (104, 87, '大金', 85, 'Love violet life', '字段', 1583579559, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (105, 85, 'Love violet life', 87, '大金', '不行', 1583579750, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (106, 87, '大金', 85, 'Love violet life', '想', 1583579758, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (107, 87, '大金', 85, 'Love violet life', '222', 1583579766, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (108, 85, 'Love violet life', 87, '大金', '333', 1583579777, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (109, 85, 'Love violet life', 87, '大金', '12345', 1583580185, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (110, 87, '大金', 85, 'Love violet life', '54342', 1583580207, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (111, 85, 'Love violet life', 87, '大金', '111', 1583580215, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (112, 85, 'Love violet life', 87, '大金', '222', 1583580242, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (113, 87, '大金', 85, 'Love violet life', '333', 1583580258, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (114, 85, 'Love violet life', 87, '大金', '5689', 1583580293, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (115, 87, '大金', 85, 'Love violet life', '563333', 1583580305, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (116, 87, '大金', 85, 'Love violet life', '1234532336464', 1583580330, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (117, 87, '大金', 85, 'Love violet life', 'chat_img5e6384bfc168d.jpg', 1583580351, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (118, 87, '大金', 85, 'Love violet life', '555', 1583580435, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (119, 87, '大金', 85, 'Love violet life', 'chat_img5e6385298b071.jpg', 1583580457, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (120, 85, 'Love violet life', 87, '大金', '222', 1583580512, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (121, 87, '大金', 85, 'Love violet life', '5656', 1583580518, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (122, 87, '大金', 85, 'Love violet life', '[em_5]', 1583580527, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (123, 87, '大金', 85, 'Love violet life', '[em_35]', 1583580561, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (124, 87, '大金', 85, 'Love violet life', '333', 1583580567, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (125, 85, 'Love violet life', 87, '大金', '555', 1583581588, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (126, 85, 'Love violet life', 87, '大金', '666', 1583581593, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (127, 85, 'Love violet life', 87, '大金', '1333313', 1583581615, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (128, 85, 'Love violet life', 87, '大金', '13133', 1583581621, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (129, 87, '大金', 85, 'Love violet life', '13', 1583581625, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (130, 85, 'Love violet life', 87, '大金', '15', 1583581634, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (131, 87, '大金', 85, 'Love violet life', '51', 1583581640, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (132, 87, '大金', 85, 'Love violet life', '25', 1583581670, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (133, 87, '大金', 85, 'Love violet life', '35', 1583581684, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (134, 87, '大金', 85, 'Love violet life', '45', 1583581696, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (135, 87, '大金', 85, 'Love violet life', '55', 1583581701, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (136, 87, '大金', 85, 'Love violet life', '65', 1583581706, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (137, 87, '大金', 85, 'Love violet life', '75', 1583581711, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (138, 87, '大金', 85, 'Love violet life', '测试', 1583581947, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (139, 87, '大金', 85, 'Love violet life', '测试1', 1583582089, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (140, 87, '大金', 85, 'Love violet life', '测试2', 1583582163, NULL, 1, 1);
INSERT INTO `chat_communication` VALUES (141, 87, '大金', 85, 'Love violet life', 'chat_img5e638bf492a09.jpg', 1583582196, NULL, 1, 2);
INSERT INTO `chat_communication` VALUES (142, 87, '大金', 85, 'Love violet life', '[em_23]', 1583582216, NULL, 1, 1);

-- ----------------------------
-- Table structure for chat_user
-- ----------------------------
DROP TABLE IF EXISTS `chat_user`;
CREATE TABLE `chat_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `mpid` int(10) NOT NULL COMMENT '公众号标识',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'openid',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别',
  `subscribe` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否关注',
  `subscribe_time` int(10) NULL DEFAULT NULL COMMENT '关注时间',
  `unsubscribe_time` int(10) NULL DEFAULT NULL COMMENT '取消关注时间',
  `relname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `signature` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '个性签名',
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `is_bind` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否绑定',
  `language` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用语言',
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `group_id` int(10) NULL DEFAULT 0 COMMENT '分组ID',
  `groupid` int(11) NOT NULL DEFAULT 0 COMMENT '公众号分组标识',
  `tagid_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `score` int(10) NULL DEFAULT 0 COMMENT '积分',
  `money` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '金钱',
  `latitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `longitude` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `location_precision` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '精度',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0:公众号粉丝1：注册会员',
  `unionid` varchar(160) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'unionid字段',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `last_time` int(10) NULL DEFAULT 586969200 COMMENT '最后交互时间',
  `parentid` int(10) NULL DEFAULT 1 COMMENT '非扫码用户默认都是1',
  `isfenxiao` int(8) NULL DEFAULT 0 COMMENT '是否为分销，默认为0，1,2,3，分别为1,2,3级分销',
  `totle_earn` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '挣钱总额',
  `balance` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '分销挣的剩余未提现额',
  `fenxiao_leavel` int(8) NULL DEFAULT 2 COMMENT '分销等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公众号粉丝表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_user
-- ----------------------------
INSERT INTO `chat_user` VALUES (85, 1, 'oYxpK0bPptICGQd3YP_1s7jfDTmE', 'Love violet life', 'http://cdn.u2.huluxia.com//g3//M03//36//6F//wKgBOVwPoL2AFamgAAMMDfq9_Xk002.png', 1, 1, 1517280919, 1517280912, NULL, NULL, NULL, 0, 'zh_CN', '中国', '江西', '赣州', '', 0, 0, '[]', 0, 0.00, NULL, NULL, NULL, 0, NULL, NULL, 1517478028, 1, 0, 26.00, 26.00, 2);
INSERT INTO `chat_user` VALUES (86, 1, 'oYxpK0W2u3Sbbp-wevdQtCuviDVM', '大美如斯', 'http://u1.huluxia.com//g3//M02//31//D3//wKgBOVwNbRaATrH0AAEpfRF5IzE69.jpeg', 2, 1, 1507261446, NULL, NULL, NULL, NULL, 0, 'zh_CN', '中国', '河南', '焦作', '', 0, 0, '[]', 0, 0.00, NULL, NULL, NULL, 0, NULL, NULL, 586969200, 1, 0, 0.00, 0.00, 2);
INSERT INTO `chat_user` VALUES (87, 1, 'oYxpK0RsvcwgS9DtmIOuyb_BgJbo', '大金', 'http://u1.huluxia.com//g3//M02//31//D3//wKgBOVwNbRaATrH0AAEpfRF5IzE69.jpeg', 1, 1, 1508920878, NULL, NULL, NULL, NULL, 0, 'zh_CN', '中国', '河南', '商丘', '', 0, 0, '[]', 0, 0.00, NULL, NULL, NULL, 0, NULL, NULL, 586969200, 1, 0, 0.00, 0.00, 2);
INSERT INTO `chat_user` VALUES (88, 1, 'oYxpK0VnHjESafUHzRpstS8mMwlE', '悦悦', 'http://cdn.u2.huluxia.com//g3//M01//31//D1//wKgBOVwNaKGAbXMCAASd59cTLoE98.jpeg', 2, 1, 1512281210, NULL, NULL, NULL, NULL, 0, 'zh_CN', '中国', '福建', '福州', '', 0, 0, '[]', 0, 0.00, NULL, NULL, NULL, 0, NULL, NULL, 586969200, 1, 0, 0.00, 0.00, 2);
INSERT INTO `chat_user` VALUES (89, 1, 'oYxpK0fJVYveWC_nAd7CBwcvYZ3Q', '雨薇', 'http://cdn.u2.huluxia.com//g3//M01//31//D1//wKgBOVwNaKGAbXMCAASd59cTLoE98.jpeg', 2, 1, 1506320564, NULL, NULL, NULL, NULL, 0, 'zh_CN', '', '', '', '', 0, 0, '[]', 0, 0.00, NULL, NULL, NULL, 0, NULL, NULL, 586969200, 1, 0, 0.00, 0.00, 2);

SET FOREIGN_KEY_CHECKS = 1;
