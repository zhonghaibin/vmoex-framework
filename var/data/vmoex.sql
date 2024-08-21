/*
 Navicat Premium Data Transfer

 Source Server         : ds418play
 Source Server Type    : MySQL
 Source Server Version : 101106 (10.11.6-MariaDB)
 Source Host           : 192.168.2.24:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 101106 (10.11.6-MariaDB)
 File Encoding         : 65001

 Date: 20/08/2024 17:25:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for active
-- ----------------------------
DROP TABLE IF EXISTS `active`;
CREATE TABLE `active`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `val` int NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_4B1EFC02A76ED395`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_4B1EFC02A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of active
-- ----------------------------
INSERT INTO `active` VALUES (1, 4, 258, '2018-05-27', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (2, 5, 95, '2018-05-27', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (3, 6, 46, '2018-05-27', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (4, 6, 29, '2018-05-28', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (5, 5, 117, '2018-05-28', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (6, 7, 87, '2018-05-28', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (7, 4, 23, '2018-05-28', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (8, 8, 106, '2018-05-28', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (9, 9, 7, '2018-05-28', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (10, 7, 12, '2018-05-29', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (11, 8, 58, '2018-05-29', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (12, 4, 259, '2018-05-29', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (13, 6, 105, '2018-05-29', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (14, 10, 15, '2018-05-29', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (15, 6, 105, '2018-05-30', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (16, 4, 168, '2018-05-30', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (17, 10, 32, '2018-05-30', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (18, 9, 78, '2018-05-30', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (19, 8, 12, '2018-05-30', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (20, 9, 186, '2018-05-31', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (21, 6, 78, '2018-05-31', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (22, 8, 85, '2018-05-31', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (23, 5, 67, '2018-05-31', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (24, 5, 59, '2018-06-01', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (25, 6, 89, '2018-06-01', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (26, 4, 46, '2018-06-01', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (27, 9, 58, '2018-06-01', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (28, 11, 19, '2018-06-01', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (29, 5, 78, '2018-06-02', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (30, 9, 156, '2018-06-02', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (31, 4, 87, '2018-06-02', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (32, 10, 49, '2018-06-02', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (33, 10, 250, '2018-06-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (34, 11, 176, '2018-06-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (35, 6, 147, '2018-06-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (36, 9, 63, '2018-06-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (37, 12, 115, '2018-06-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (38, 8, 19, '2018-06-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (39, 4, 212, '2018-06-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (40, 5, 13, '2018-06-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (41, 6, 56, '2018-06-04', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (42, 11, 109, '2018-06-04', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (43, 4, 165, '2018-06-04', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (44, 5, 88, '2018-06-04', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (45, 10, 55, '2018-06-04', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (46, 13, 3, '2018-06-04', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (47, 13, 32, '2018-06-05', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (48, 5, 179, '2018-06-05', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (49, 9, 49, '2018-06-05', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (50, 4, 51, '2018-06-05', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (51, 9, 115, '2018-06-06', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (52, 4, 174, '2018-06-06', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (53, 5, 51, '2018-06-06', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (54, 13, 103, '2018-06-06', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (55, 10, 10, '2018-06-06', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (56, 4, 205, '2018-06-07', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (57, 10, 24, '2018-06-07', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (58, 13, 14, '2018-06-07', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (59, 4, 260, '2018-06-08', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (60, 6, 143, '2018-06-08', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (61, 4, 59, '2018-06-09', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (62, 6, 377, '2018-06-09', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (63, 5, 116, '2018-06-09', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (64, 6, 100, '2018-06-10', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (65, 4, 114, '2018-06-10', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (66, 5, 59, '2018-06-10', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (67, 6, 55, '2018-06-11', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (68, 4, 187, '2018-06-11', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (69, 4, 183, '2018-06-12', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (70, 9, 67, '2018-06-12', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (71, 12, 40, '2018-06-12', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (72, 12, 72, '2018-06-13', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (73, 4, 89, '2018-06-13', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (74, 6, 107, '2018-06-13', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (75, 6, 89, '2018-06-14', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (76, 4, 84, '2018-06-14', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (77, 6, 30, '2018-06-15', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (78, 4, 25, '2018-06-15', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (79, 4, 163, '2018-06-16', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (80, 6, 90, '2018-06-16', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (81, 5, 17, '2018-06-16', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (82, 4, 43, '2018-06-17', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (83, 6, 46, '2018-06-17', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (84, 4, 310, '2018-06-18', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (85, 6, 2, '2018-06-18', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (86, 5, 43, '2018-06-18', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (87, 4, 105, '2018-06-19', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (88, 6, 133, '2018-06-19', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (89, 9, 151, '2018-06-19', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (90, 4, 37, '2018-06-20', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (91, 6, 103, '2018-06-20', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (92, 9, 138, '2018-06-20', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (93, 9, 55, '2018-06-21', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (94, 4, 4, '2018-06-21', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (95, 4, 55, '2018-06-22', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (96, 4, 10, '2018-06-23', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (97, 6, 57, '2018-06-23', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (98, 9, 25, '2018-06-23', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (99, 4, 184, '2018-06-24', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (100, 9, 8, '2018-06-24', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (101, 4, 14, '2018-06-25', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (102, 4, 66, '2018-07-14', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (103, 4, 12, '2018-07-16', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (105, 4, 54, '2018-07-19', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (108, 4, 6, '2018-07-20', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (109, 4, 4, '2018-07-22', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (110, 4, 12, '2018-07-23', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (111, 4, 4, '2018-07-25', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (112, 9, 11, '2018-07-28', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (113, 4, 41, '2018-07-31', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (114, 4, 6, '2018-08-01', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (115, 4, 22, '2018-08-02', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (116, 4, 33, '2018-08-03', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (117, 4, 93, '2018-08-12', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (118, 4, 2, '2018-08-30', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (119, 4, 9, '2018-08-31', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (120, 4, 1, '2018-09-05', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (121, 4, 8, '2018-09-14', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (122, 4, 15, '2018-09-15', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (123, 4, 2, '2018-09-16', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (124, 4, 3, '2018-09-18', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (125, 4, 1, '2018-09-19', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (126, 4, 6, '2018-09-20', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (127, 4, 5, '2018-09-22', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (128, 4, 33, '2018-10-02', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (129, 4, 62, '2018-10-05', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (130, 4, 5, '2018-10-07', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (131, 4, 2, '2018-10-09', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (132, 4, 6, '2018-10-13', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (133, 4, 1, '2018-10-15', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (134, 4, 8, '2018-10-16', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (135, 4, 14, '2018-10-18', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (136, 4, 13, '2018-10-21', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (137, 4, 13, '2018-11-06', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (138, 4, 20, '2018-11-11', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (139, 6, 32, '2018-11-11', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (140, 4, 47, '2018-12-08', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (141, 1, 79, '2018-12-12', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (142, 1, 88, '2018-12-13', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (143, 1, 2, '2018-12-15', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (144, 1, 3, '2018-12-16', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (145, 1, 62, '2018-12-18', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (146, 1, 2, '2018-12-20', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (147, 1, 5, '2018-12-28', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (148, 1, 599, '2019-03-10', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (149, 1, 71, '2019-03-11', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (150, 1, 64, '2019-03-12', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (151, 1, 206, '2019-03-13', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (152, 1, 54, '2019-03-18', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (153, 1, 3450, '2019-03-23', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (154, 1, 7274, '2019-03-24', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (155, 1, 52, '2019-03-31', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (156, 1, 979, '2024-08-19', '2024-08-19 08:36:01', '2024-08-19 08:36:01');
INSERT INTO `active` VALUES (157, 1, 958, '2024-08-20', '2024-08-19 08:36:01', '2024-08-20 08:34:08');
INSERT INTO `active` VALUES (158, 9, 177, '2024-08-20', '2024-08-20 03:40:41', '2024-08-20 08:40:17');

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO `advertisement` VALUES (1, '<p></p><p></p><p></p><p>欢迎投放广告</p><p></p><p><br></p><p></p><p><br></p>', 'html', 'footer1', 0, '页脚右边广告位');
INSERT INTO `advertisement` VALUES (2, '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p><img src=\"\" width=\"200\" heigth=\"200\" style=\"display: none !important;\"></p><p>欢迎投放广告</p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p>', 'html', 'sidebar2', 0, '帖子内容页右边广告位');
INSERT INTO `advertisement` VALUES (3, '<p></p><p></p><p></p><p></p><p>欢迎投放广告</p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p>', 'html', 'sidebar1', 0, '首页右边栏广告位');

-- ----------------------------
-- Table structure for announce
-- ----------------------------
DROP TABLE IF EXISTS `announce`;
CREATE TABLE `announce`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announce
-- ----------------------------
INSERT INTO `announce` VALUES (1, '   欢迎来到vmoex社区！😊', 1, '2019-03-23 12:55:46', '2019-03-23 12:55:46');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_659DF2AAA76ED395`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_659DF2AAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NULL DEFAULT NULL,
  `content` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted_at` datetime NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `reply_to` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_9474526C4B89032C`(`post_id` ASC) USING BTREE,
  INDEX `IDX_9474526CA76ED395`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (52, 12950, '<p><b><i><u><strike><font style=\"background-color: rgb(255, 204, 0)\" color=\"#800080\">暂无评论，快来抢沙发吧~~</font></strike></u></i></b></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (53, 12950, '<p>哈哈哈哈哈 <b><i><u><strike><font style=\"background-color: rgb(255, 0, 255)\" color=\"#880000\">发表有颜色的评论</font></strike></u></i></b>将消耗5金币哦~</p>添加<br /><p><br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (54, 12950, '<p>继续努力</p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (57, 12950, '<p><b><font color=\"#808000\">加油哈</font></b></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (58, 12950, '<p><b><font color=\"#008000\">Good Jobs!</font></b></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (65, 12951, '<p><font style=\"background-color: rgb(0, 0, 0)\" color=\"#ffcc00\">自己给自己顶一下~~</font></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (67, 12951, '<p>请问在哪里发布帖子？</p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (68, 12951, '<p>大小姐荚到，通通闪开！</p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (70, 12952, '<p>是的是的</p>', '2024-08-19 08:36:01', NULL, 8, 0);
INSERT INTO `comment` VALUES (71, 12953, '<p>嘻嘻(⁎⁍̴̛ᴗ⁍̴̛⁎)</p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (72, 12953, '<p>加油</p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (73, 12952, '<p>很棒棒哦</p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (74, 12952, '<p><span style=\"background-color: rgb(0, 128, 128)\"><font color=\"#880000\">现在</font>的我都不知道是不是因为我们都会有人肉</span></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (75, 12954, '<p>沙发</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (76, 12954, '<p>沙发</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (77, 12954, '<p>沙发</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (78, 12953, '<p><b>哈喽</b></p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (79, 12953, '<p>嗯嗯</p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (80, 12953, '<p>这是我的评论</p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (81, 12953, '<p><font style=\"background-color: rgb(0, 128, 128)\" color=\"#00ffff\">你问我资瓷不资瓷？</font></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 11, 0);
INSERT INTO `comment` VALUES (82, 12956, '<p>自己顶一下</p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (83, 12956, '<p>来一个测试吧</p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (84, 12955, '<p>还是喜欢看&nbsp;<b><font color=\"#008000\">夏目友人帐</font></b></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (85, 12955, '<p>发布时间有个bug</p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (86, 12955, '<p>橘里橘气的<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (87, 12955, '<p>发表有颜色的评论将消耗5金币哦~<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (88, 12955, '<p>(ฅ´ω`ฅ)表情测试一下啦<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (89, 12955, '<p>测试一下拉尔尔人</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (90, 12955, '<p>这样真的好吗？</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (91, 12955, '<p>试一下哦</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (92, 12955, '<p>2333</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (93, 12955, '<p>2233333</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (94, 12952, '<p>测试一下？</p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (95, 12952, '<p>越来越完善了呢(ฅ´ω`ฅ)</p><p><br /></p>', '2024-08-19 08:36:01', NULL, 10, 0);
INSERT INTO `comment` VALUES (97, 12958, '<p><span style=\"background-color: rgb(255, 0, 0)\"><font color=\"#ffffff\">求多多支持~~~~</font></span></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 10, 0);
INSERT INTO `comment` VALUES (98, 12958, '<p>＞﹏＜<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (99, 12958, '<p>→_→<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (101, 12956, '<p>⌇●﹏●⌇<span>→_→</span><br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (102, 12953, '<p><b>哈哈，水军真多</b></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 12, 0);
INSERT INTO `comment` VALUES (103, 12953, '<p>#7 天大的秘密被你发现啦！</p>', '2024-08-19 08:36:01', NULL, 8, 0);
INSERT INTO `comment` VALUES (104, 12956, '<p>|´・ω・)ノ<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 10, 0);
INSERT INTO `comment` VALUES (107, 12961, '<p>嗯嗯阿胶</p>', '2024-08-19 08:36:01', NULL, 10, 0);
INSERT INTO `comment` VALUES (108, 12952, '<p>顶一下</p>', '2024-08-19 08:36:01', NULL, 10, 0);
INSERT INTO `comment` VALUES (110, 12958, '<p>说好的福利呢？</p>', '2024-08-19 08:36:01', NULL, 10, 0);
INSERT INTO `comment` VALUES (111, 12950, '<p><font color=\"#00ff00\">嗯嗯</font></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 10, 0);
INSERT INTO `comment` VALUES (112, 12958, '<p>说好的福利呢？</p>', '2024-08-19 08:36:01', NULL, 11, 0);
INSERT INTO `comment` VALUES (113, 12958, '<p>Block为敬</p>', '2024-08-19 08:36:01', NULL, 11, 0);
INSERT INTO `comment` VALUES (114, 12958, '<p>OωO<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 11, 0);
INSERT INTO `comment` VALUES (115, 12958, '<p>￣へ￣<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (116, 12958, '<p><strike><font style=\"background-color: rgb(255, 0, 0)\" color=\"#ff0000\">嗯嗯哥哥哥哥哥哥哥哥</font></strike></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (118, 12962, '<p>⌇●﹏●⌇<br /></p><p>好可怕。。。</p>', '2024-08-19 08:36:01', NULL, 12, 0);
INSERT INTO `comment` VALUES (121, 12966, '<p>顶</p>', '2024-08-19 08:36:01', NULL, 11, 0);
INSERT INTO `comment` VALUES (122, 12965, '<p>期待ing</p>', '2024-08-19 08:36:01', NULL, 11, 0);
INSERT INTO `comment` VALUES (123, 12966, '<p>（づ￣３￣）づ多来水一水呀～<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (124, 12963, '<p>→_→<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (125, 12966, '<p>水水更健康</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (126, 12962, '<p>(ฅ´ω`ฅ)<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (127, 12966, '<p><strike><i><u><font color=\"#ff0000\">东方姑娘</font></u></i></strike></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (128, 12966, '<p><font style=\"background-color: rgb(0, 128, 0)\" color=\"#00ffff\">⌇●﹏●⌇嗯嗯着这饿的<br /></font></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (129, 12966, '<p>#4 哈喽</p>', '2024-08-19 08:36:01', NULL, 11, 0);
INSERT INTO `comment` VALUES (130, 12966, '<p>(ฅ´ω`ฅ)</p>', '2024-08-19 08:36:01', NULL, 11, 0);
INSERT INTO `comment` VALUES (131, 12955, '<p>睡觉啦</p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (132, 12955, '<p><b><font color=\"#008000\">晚安</font></b></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (133, 12952, '<p>（づ￣３￣）づ<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (134, 12953, '<p></p><p><font color=\"#00ff00\">这里有个老实人</font></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (135, 12962, '<p>已阅</p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (137, 12953, '<p>手动狗头</p>', '2024-08-19 08:36:01', NULL, 5, 0);
INSERT INTO `comment` VALUES (140, 12962, '<p>哦哦|´・ω・)ノ</p><p><br /></p>', '2024-08-19 08:36:01', NULL, 9, 0);
INSERT INTO `comment` VALUES (141, 12962, '<p>＞﹏＜<br /></p><p><br /></p>', '2024-08-19 08:36:01', NULL, 13, 0);
INSERT INTO `comment` VALUES (142, 12952, '<p>太棒了（づ￣３￣）づ</p><p><br /></p>', '2024-08-19 08:36:01', NULL, 13, 0);
INSERT INTO `comment` VALUES (143, 12958, '<p>福利呢</p>', '2024-08-19 08:36:01', NULL, 13, 0);
INSERT INTO `comment` VALUES (150, 12950, '<p>⌇●﹏●⌇<br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (154, 12976, '<p>OωO<br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (155, 12958, '<p>图片挂了。。</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (156, 12964, '<p>→_→<br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (165, 12976, '<p><span style=\"background-color: rgb(0, 128, 0)\">哈哈哈哈哈哈哈</span></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (173, 12955, '<p>⌇●﹏●⌇<br /></p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (175, 12964, '<p>￣へ￣</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (176, 12955, '<p>⌇●﹏●⌇</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (177, 12955, '<p><span><a data-pjax=\"1\" href=\"/member/tester\">@tester </a></span>&nbsp;测试一下回复功能</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (178, 12964, '<p>⌇●﹏●⌇</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (179, 12976, '<p>OωO</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (180, 12976, '<p><span><a data-pjax=\"1\" href=\"/member/HackerJax\">@HackerJax </a></span>&nbsp;（づ￣３￣）づ</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (181, 12976, '<span style=\"background-color: rgb(255, 0, 0)\">test</span>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (184, 12958, '<p><span><a data-pjax=\"1\" href=\"/member/vmoex\">@vmoex </a></span>&nbsp;<span><a data-pjax=\"1\" href=\"/member/admin\">@少女心的理世酱 </a></span>&nbsp;</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (185, 12958, '<span>@草莓🍓酱</span><p>‍ 测试一下at功能</p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (186, 12958, '<span>@admin2</span><p>‍为什么这个不行</p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (187, 12958, '<p><span>@HackerJax</span>‍ ？？</p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (188, 12965, '<span>@vmoex</span>‍&nbsp;', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (189, 12965, '<span>@少女心的理世酱</span><p>‍&nbsp;</p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (190, 12965, '<p><span>@少女心的理世酱</span>‍&nbsp;<span><a data-pjax=\"1\" href=\"/member/admin\">@少女心的理世酱 </a></span>&nbsp;<span><a data-pjax=\"1\" href=\"/member/admin\">@少女心的理世酱 </a></span>&nbsp;</p>', '2024-08-19 08:36:01', NULL, 6, 0);
INSERT INTO `comment` VALUES (194, 12964, '<p>⌇●﹏●⌇<br /></p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (195, 12964, '<p>⌇●﹏●⌇</p>', '2024-08-19 08:36:01', NULL, 4, 0);
INSERT INTO `comment` VALUES (198, 12962, '<p><a data-pjax href=\'/member/xiaozi\'>@xiaozi</a></p>\n', '2024-08-19 08:36:01', NULL, 1, 0);
INSERT INTO `comment` VALUES (206, 12954, '<p>ok</p>\n', '2024-08-19 08:36:01', NULL, 1, 0);

-- ----------------------------
-- Table structure for followers
-- ----------------------------
DROP TABLE IF EXISTS `followers`;
CREATE TABLE `followers`  (
  `user_id` int NOT NULL,
  `following_user_id` int NOT NULL,
  PRIMARY KEY (`user_id`, `following_user_id`) USING BTREE,
  INDEX `IDX_8408FDA7A76ED395`(`user_id` ASC) USING BTREE,
  INDEX `IDX_8408FDA71896F387`(`following_user_id` ASC) USING BTREE,
  CONSTRAINT `FK_8408FDA71896F387` FOREIGN KEY (`following_user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_8408FDA7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of followers
-- ----------------------------
INSERT INTO `followers` VALUES (1, 4);
INSERT INTO `followers` VALUES (4, 1);
INSERT INTO `followers` VALUES (4, 3);
INSERT INTO `followers` VALUES (4, 5);
INSERT INTO `followers` VALUES (4, 6);
INSERT INTO `followers` VALUES (4, 8);
INSERT INTO `followers` VALUES (4, 9);
INSERT INTO `followers` VALUES (4, 13);
INSERT INTO `followers` VALUES (5, 1);
INSERT INTO `followers` VALUES (5, 3);
INSERT INTO `followers` VALUES (5, 4);
INSERT INTO `followers` VALUES (5, 6);
INSERT INTO `followers` VALUES (5, 8);
INSERT INTO `followers` VALUES (5, 9);
INSERT INTO `followers` VALUES (5, 10);
INSERT INTO `followers` VALUES (5, 11);
INSERT INTO `followers` VALUES (5, 13);
INSERT INTO `followers` VALUES (6, 1);
INSERT INTO `followers` VALUES (6, 4);
INSERT INTO `followers` VALUES (6, 5);
INSERT INTO `followers` VALUES (6, 8);
INSERT INTO `followers` VALUES (6, 9);
INSERT INTO `followers` VALUES (6, 11);
INSERT INTO `followers` VALUES (7, 4);
INSERT INTO `followers` VALUES (8, 1);
INSERT INTO `followers` VALUES (8, 4);
INSERT INTO `followers` VALUES (9, 1);
INSERT INTO `followers` VALUES (9, 4);
INSERT INTO `followers` VALUES (9, 5);
INSERT INTO `followers` VALUES (9, 6);
INSERT INTO `followers` VALUES (9, 8);
INSERT INTO `followers` VALUES (10, 1);
INSERT INTO `followers` VALUES (10, 4);
INSERT INTO `followers` VALUES (11, 1);
INSERT INTO `followers` VALUES (11, 4);
INSERT INTO `followers` VALUES (11, 9);
INSERT INTO `followers` VALUES (11, 10);
INSERT INTO `followers` VALUES (12, 1);
INSERT INTO `followers` VALUES (12, 6);

-- ----------------------------
-- Table structure for footer_link
-- ----------------------------
DROP TABLE IF EXISTS `footer_link`;
CREATE TABLE `footer_link`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `priority` smallint NOT NULL DEFAULT 0,
  `is_pjax` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of footer_link
-- ----------------------------
INSERT INTO `footer_link` VALUES (1, '关于Vmoex', '/about', 1, 1);
INSERT INTO `footer_link` VALUES (3, '支持', '/contribute', 2, 1);
INSERT INTO `footer_link` VALUES (5, '服务条款', '/tos', 4, 1);
INSERT INTO `footer_link` VALUES (6, '历史公告', '/announce/history', 5, 1);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NULL DEFAULT NULL,
  `receiver_id` int NULL DEFAULT NULL,
  `content` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_B6BD307FF624B39D`(`sender_id` ASC) USING BTREE,
  INDEX `IDX_B6BD307FCD53EDB6`(`receiver_id` ASC) USING BTREE,
  CONSTRAINT `FK_B6BD307FCD53EDB6` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_B6BD307FF624B39D` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, 5, 4, '你好呀？？？', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (2, 1, 4, '呀呀呀', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (3, 1, 4, '测试一下啦', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (4, 6, 5, 'heoo, test', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (5, 5, 3, '你好呀，大佬', 0, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (6, 7, 4, '你好', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (7, 4, 5, '男男女女男男女女男男女女', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (8, 4, 3, '不好呀，我喜欢你呗', 0, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (9, 4, 1, '', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (10, 1, 4, '哈哈哈哈刚刚给', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (11, 9, 6, '请问你是管理员吗？', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (12, 6, 9, '是的，我是管理员~~~~', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (13, 1, 10, 'jjjjj', 0, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (14, 6, 12, '百度的员工？', 0, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (15, 6, 12, '？', 0, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (16, 13, 5, '你好呀', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (17, 5, 13, '大狗 Zi', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (18, 5, 13, '嗯嗯', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (19, 5, 13, '给刚刚沟沟壑壑', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (20, 5, 13, '嗯嗯', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (21, 5, 13, '这就是我老婆吧', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (22, 4, 10, 'stupid', 0, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (23, 4, 10, '你很不错哦', 0, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (24, 5, 13, '网站样式有点问题，请赶紧修复！', 0, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (25, 6, 4, '哈哈哈哈哈哈哈', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (26, 5, 4, 'Hello', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (27, 4, 5, 'Goods', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (28, 4, 6, '你好啊', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (29, 6, 4, '你啥吧', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (30, 6, 4, '有机酸……', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (31, 6, 4, '23333', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (32, 9, 4, '哈喽', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (33, 6, 4, '你很棒哦', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (34, 5, 4, 'H安喽', 1, '2024-08-19 08:36:01');
INSERT INTO `message` VALUES (35, 4, 9, 'mmm', 1, '2024-08-19 08:36:01');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int NULL DEFAULT NULL,
  `push_to` int NULL DEFAULT NULL,
  `object_id` int NULL DEFAULT NULL,
  `content_id` int NULL DEFAULT NULL,
  `type` smallint NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `row_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ_480D45C284A0A3ED`(`content_id` ASC) USING BTREE,
  INDEX `IDX_480D45C2DE12AB56`(`created_by` ASC) USING BTREE,
  INDEX `IDX_480D45C29BB57F62`(`push_to` ASC) USING BTREE,
  INDEX `IDX_480D45C2232D562B`(`object_id` ASC) USING BTREE,
  CONSTRAINT `FK_480D45C2232D562B` FOREIGN KEY (`object_id`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_480D45C284A0A3ED` FOREIGN KEY (`content_id`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_480D45C29BB57F62` FOREIGN KEY (`push_to`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_480D45C2DE12AB56` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, 6, 10, 12958, 98, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (2, 6, 10, 12958, 99, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (3, 9, 5, 12956, 101, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (4, 12, 8, 12953, 102, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (5, 10, 5, 12956, 104, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (6, 10, 9, 12952, 108, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (7, 10, 1, 12950, 111, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (8, 11, 10, 12958, 112, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (9, 11, 10, 12958, 113, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (10, 11, 10, 12958, 114, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (11, 6, 10, 12958, 115, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (12, 6, 10, 12958, 116, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (14, 12, 1, 12962, 118, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (17, 11, 6, 12965, 122, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (18, 4, 11, 12966, 123, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (19, 4, 11, 12966, 125, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (20, 6, 1, 12962, 126, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (21, 5, 11, 12966, 127, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (22, 5, 11, 12966, 128, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (23, 5, 9, 12952, 133, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (24, 9, 8, 12953, 134, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (25, 9, 1, 12962, 135, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (26, 5, 8, 12953, 137, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (27, 9, 1, 12962, 140, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (28, 13, 1, 12962, 141, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (29, 13, 9, 12952, 142, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (30, 13, 10, 12958, 143, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (36, 4, 1, 12950, 150, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (38, 4, 10, 12958, 155, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (39, 6, 9, 12964, 156, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (51, 6, 5, 12955, 173, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (53, 4, 9, 12964, 175, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (54, 4, 5, 12955, 176, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (55, 4, 5, 12955, 177, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (56, 4, 9, 12964, 178, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (58, 4, 10, 12958, 184, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (59, 6, 10, 12958, 185, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (60, 6, 10, 12958, 186, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (61, 6, 10, 12958, 187, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (65, 4, 9, 12964, 194, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (66, 4, 9, 12964, 195, 1, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (67, 1, 13, 12962, NULL, 8, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (68, 1, 9, 12962, NULL, 8, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (69, 1, 9, 12962, NULL, 8, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (70, 1, 9, 12962, NULL, 8, 1, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (71, 1, 6, 12954, 206, 1, 0, '2024-08-19 08:36:01', '');
INSERT INTO `notice` VALUES (72, 1, 13, 12962, NULL, 8, 0, '2024-08-19 08:36:01', '<p>@caihong</p>\n');
INSERT INTO `notice` VALUES (73, 1, 6, 12962, NULL, 8, 0, '2024-08-19 08:36:01', '<p>@jojo</p>\n');
INSERT INTO `notice` VALUES (74, 1, 12, 12962, NULL, 8, 0, '2024-08-19 08:36:01', '<p>@Koloy</p>\n');
INSERT INTO `notice` VALUES (75, 1, 6, 12962, NULL, 8, 0, '2024-08-19 08:36:01', '<p>@jojo</p>\n');
INSERT INTO `notice` VALUES (80, 1, 4, 12954, NULL, 8, 0, '2024-08-19 08:36:01', '<p>@jaggle 56456</p>\n');
INSERT INTO `notice` VALUES (83, 1, 4, 12963, NULL, 8, 0, '2024-08-19 08:36:01', '<p>@jaggle 323423</p>\n');

-- ----------------------------
-- Table structure for open_user
-- ----------------------------
DROP TABLE IF EXISTS `open_user`;
CREATE TABLE `open_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `github_node_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ_3467976CA76ED395`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_3467976CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of open_user
-- ----------------------------

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ_D035FA875E237E06`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES (1, 'siteLogo', '/assets/images/logo.png');
INSERT INTO `options` VALUES (2, 'siteSince', '2024-08-20');
INSERT INTO `options` VALUES (3, 'siteVersion', 'v1.0');
INSERT INTO `options` VALUES (4, 'siteAnnounce', '1');
INSERT INTO `options` VALUES (5, 'girl_enable', '1');
INSERT INTO `options` VALUES (9, 'githubClientId', NULL);
INSERT INTO `options` VALUES (10, 'githubClientSecret', NULL);
INSERT INTO `options` VALUES (11, 'githubRedirectUrl', NULL);
INSERT INTO `options` VALUES (12, 'baiduTransAppId', NULL);
INSERT INTO `options` VALUES (13, 'baiduTransKey', NULL);
INSERT INTO `options` VALUES (14, 'maintain_enable', '');
INSERT INTO `options` VALUES (15, 'maintain_time', '');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `summary` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES (1, 'Vmoex服务条款', '呀', '<p></p><p></p><p></p><p>欢迎您使用vmoex平台（以下简称“本平台”或“vmoex”）！为确保您在本平台的使用体验和合法权益，我们制定了以下服务条款。使用本平台即表示您同意并接受这些条款的约束。<br></p><h3>1. <strong>接受条款</strong></h3><p>使用本平台前，请您仔细阅读并同意本条款。如果您不同意本条款，请勿使用本平台的任何服务。</p><h3>2. <strong>用户注册</strong></h3><p>2.1 <strong>注册要求</strong>：您必须年满18岁并具备完全民事行为能力，才能注册成为本平台用户。</p><p>2.2 <strong>信息提供</strong>：您在注册时需提供准确、真实的个人信息，并及时更新相关信息。如因信息不实导致的任何问题，由您自行承担责任。</p><p>2.3 <strong>账号安全</strong>：您有责任保管好自己的账号信息，不得将账号出租、出借或转让。如发现任何未经授权的使用，请立即通知本平台。</p><h3>3. <strong>用户行为</strong></h3><p>3.1 <strong>合法使用</strong>：您承诺不在本平台发布、传播、存储任何违反法律法规、公序良俗的内容，包括但不限于淫秽、暴力、恐怖、侮辱性言论等。</p><p>3.2 <strong>尊重版权</strong>：您在本平台发布的所有内容（包括文字、图片、视频等），不得侵犯他人的知识产权。如因侵权行为导致的法律责任，由您自行承担。</p><p>3.3 <strong>互动行为</strong>：您应尊重其他用户的合法权益，在互动中不得进行人身攻击、骚扰、欺诈等行为。</p><h3>4. <strong>内容管理</strong></h3><p>4.1 <strong>内容审核</strong>：本平台有权但无义务对用户发布的内容进行审核。如发现违反本条款的内容，本平台有权予以删除或采取其他必要措施。</p><p>4.2 <strong>用户举报</strong>：如您发现其他用户的行为或内容涉嫌违反本条款，您可以通过平台提供的举报渠道进行举报。</p><h3>5. <strong>隐私保护</strong></h3><p>5.1 <strong>信息收集</strong>：本平台会收集、使用、存储您的个人信息，以便为您提供更好的服务。我们承诺不会将您的信息出售给第三方。</p><p>5.2 <strong>信息使用</strong>：本平台可能会使用您的信息进行数据分析、市场调查等，但不会公开披露您的个人信息，除非法律要求。</p><h3>6. <strong>免责声明</strong></h3><p>6.1 <strong>信息准确性</strong>：本平台不保证用户发布内容的准确性、完整性和时效性，用户需自行判断内容的真实性。</p><p>6.2 <strong>服务中断</strong>：由于不可抗力或其他原因导致的平台服务中断，本平台不承担任何责任。</p><h3>7. <strong>服务变更与终止</strong></h3><p>本平台保留随时变更、暂停或终止服务的权利。我们将在变更、暂停或终止服务前，提前通知您。</p><h3>8. <strong>法律适用与争议解决</strong></h3><p>8.1 <strong>法律适用</strong>：本条款受中华人民共和国法律管辖。</p><p>8.2 <strong>争议解决</strong>：因本条款引起的争议，双方应友好协商解决。如协商不成，任何一方可向本平台所在地的人民法院提起诉讼。</p><h3>9. <strong>其他</strong></h3><p>本条款的任何条款如被认定为无效或不可执行，不影响其他条款的效力。</p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p>', 1, '/tos', 'html', '0000-00-00 00:00:00', '2024-08-19 10:47:48');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NULL DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorId` int NULL DEFAULT NULL,
  `views` int NOT NULL,
  `isTop` tinyint(1) NOT NULL,
  `tab_id` int NULL DEFAULT NULL,
  `last_comment_at` datetime NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_5A8A6C8DA196F9FD`(`authorId` ASC) USING BTREE,
  INDEX `IDX_5A8A6C8D8D0C9323`(`tab_id` ASC) USING BTREE,
  CONSTRAINT `FK_5A8A6C8D8D0C9323` FOREIGN KEY (`tab_id`) REFERENCES `tab` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_5A8A6C8DA196F9FD` FOREIGN KEY (`authorId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13002 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (12950, '《请问您今天要来点兔子吗？》保登心爱旗袍手办', '深受众多观众喜爱的《请问您今天要来点兔子吗？》塑造了很多清纯可爱的萝莉形象，那么当她们穿上火辣的短旗袍时会是什么样子呢？下面这款手办为你揭晓答案。', '<p>深受众多观众喜爱的《请问您今天要来点兔子吗？》塑造了很多清纯可爱的萝莉形象，那么当她们穿上火辣的短旗袍时会是什么样子呢？下面这款手办为你揭晓答案。<br></p><p>本款由绘梦TOYS推出的手办以《点兔》中女主角之一的保登心爱为原型，并让她穿上火红色的短旗袍，突显出少女刚刚发育的身体线条和白嫩的玉腿。造型方面，心爱摆出了活泼的姿势，手中还托着有趣的“提比包子”，在展现凹凸有致的身材之余又不失甜美清纯，可以说是很赏心悦目了。</p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 1, 1061, 0, 2, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12951, '《约会大作战》第三季，有生之年系列，明年四月播出？', '最爱狂三！最爱狂三！最爱狂三！\r\n\r\n重要的事情说三遍！', '<p></p><p>最爱狂三！最爱狂三！最爱狂三！</p><p>重要的事情说三遍！</p><p>好了，抛开私人感情，让我们一起来说说《约会大作战》吧，约会大作战是由日本轻小说家橘公司创作的小说改编的动漫，其剧情设定和人物塑造都十分的吸引人，尤其是时崎狂三（哎呀~又绕回来了~）。</p><p><br></p><p>在某一天高中生日常中，五河士道遭遇了一个身穿盔甲的精灵，并为其取名“十香”，从此便展开与各种天使约会的让人羡慕的作战计划，作为后宫番的典范，约战的剧情可以说是让无数的宅男羡慕。</p><p><br></p><p>男主人公五河士道吸取了先驱者诚哥的教训，做到了我们只是牵牵手亲亲嘴，绝不越雷池一步，这也是男主人公令人钦佩的地方，毕竟剧中众多美女，各种造型，上到御姐，下到萝莉应有尽有，放到现实生活中，谁能把持的住？</p><p><br></p><p>不过约战这部番的命运可说是异常的坎坷，第一季播出时反响不错，人气挺高，不过没多久制作约战的公司AIC倒闭了，由新成立的公司IMS接手，由于是新的公司，由于技术不成熟，经费欠缺等原因导致约战的第二季画风剧情崩的比较严重，口碑和人气都有严重的下滑，直到剧场版播出时才有所回升。</p><p><br></p><p>不过约战已经积累了不少的粉丝，都等着出第三季，毕竟这也是一部有生之年系列。其实早在2017年十月，橘公司就已经发布了“动画新企划进行中”的宣传图，还有“新的战争即将开始”的字样，本来以为会是今年的四月番，可惜并没有如观众的意。</p><p>目前B站多位大佬已经制作了约会大作战的第三季先行视频，还有相关角色信息哦，官方似乎也发布了宣布声明和公告，这是否说明约会大作战第三季已经不远了呢？</p><p><br></p><p>前不久听到消息，约会大作战定为明年四月番，不知道具体细节，虽然又要等许久，不过依然让人十分的期待！又一有生之年系列续集，相信一定不会让大家失望。</p><p>感谢大家的阅读，您的支持将是我的动力~</p><p><br></p><p>ps：图片来源于网络，如有侵权请联系删除。原创文章未经允许请勿抄袭转载哟，谢谢~</p><p><br></p><p></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 4, 190, 0, 2, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12952, '可以发布帖子了？', '', '<p><font color=\"#800080\">好棒，哈哈</font></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 9, 256, 0, 11, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12953, '棒，越来越完善了', '', '<p>虽然如此，但是还只是完成了一些基础的功能，也是很简单的一些功能，希望还不要放弃，不断的优化，加油！</p><p><br></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 8, 245, 0, 2, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12954, '十大番剧神作推荐（个人向），不点进来看看吗？', '', '<p>十大番剧神作推荐（个人向），不点进来看看吗？</p><p>神作肯定是好看的作品，但是好看的作品不一定等于神作，而不同人对于神作的具体理解也不同。</p><p>剧情方面：完整的世界观和人设，剧情必须精彩，不烂尾，剧情具有一定思想深度&nbsp;细节精致而富有韵味。</p><p>音乐方面：好听的OPED，有水准的插入曲。</p><p>画面方面：极少有崩坏情况，画面在当时处于前茅。</p><p>人气：大众认同的神作，或者部分人气不是非常高的作品，其中的观众里好评度极高，并且神作的人气能够持续很久。</p><p>深意：具有一定思想深度，甚至对于同一个细节不同人的理解都不一样，可以引人共鸣，或是思考。</p><p>民工漫由于篇幅较长，知名度很广，所以这里不作推荐。如果您心中的神作没有出现在本帖中，说明小编还没看过哦，欢迎大家给小编推荐。（排名不分先后）</p><p>NO.1&nbsp;新世纪福音战士</p><p>别名：EVA</p><p>公元2000年有颗巨大的陨石坠落在南极冰山附近，高温造成部分冰块溶化，连带使得全球水位上涨，接下来的天灾人祸更是连绵不断。此后，不明巨大生物体使徒入侵，普通兵器对其毫无效果，NERV组织研究出了以驾驶员的神经直接控制的”泛用人形决战兵器”对抗使徒，但是控制此机器需要极高的条件，符合的人极少，而其中之一，就是NERV司令官的儿子碇真嗣。故事围绕着碇真嗣无奈被迫乘坐战机对抗使徒展开……</p><p>&nbsp;</p><p>画面在当时是顶尖的，人设、剧情无可挑剔，内涵也是非常的深奥，通过主角们乘坐EVA对抗入侵的不明生物展开，但是这却和美国的英雄拯救世界大片不一样，男主是一个普通人，对于人性、人物想法行为的描写非常真实，接近一个普通人，拥有那个年纪少年应该有的胆怯、迷茫、恐惧、冲动、叛逆。</p><p>NO.2&nbsp;魔法少女小圆</p><p>过着平凡幸福的生活的小圆的命运被神秘转学生晓美焰改变，一次机巧遇到了魔女和神秘生物丘比，丘比希望小圆与之签订契约成为魔法少女来保护世界。正当小圆犹豫烦恼之时，好友沙耶香先一步成为“魔法少女”，慢慢发现，事情好像并没有这么简单，魔法少女是什么，魔女又是什么，一切的背后又有什么谜团？</p><p>&nbsp;</p><p>画风：总体精致，人物画风方面，不走传统的尖脸路线，在魔女的结界里故意采用类型小孩涂鸦的魔幻画风，但是却一点也不突兀，反而有种二次元世界里的二次元的感觉。</p><p>故事：精彩绝伦，看《生化危机》的刺激，看《惊天魔盗团》的震撼，看《盗梦空间》思考，看《泰坦尼克号》的感动，这些感觉本片中应有尽有，说它是大片也并不为过。</p><p>剧情：意想不到的突变，剧情走向的迷幻，你完全猜不到剧情的同时又做到精彩，不拖，又富有深意。</p><p>魔法少女：传统带有魔法少女字样的动漫多为低龄向的少女战斗番，或者画风美丽的王子公主类型的女性向恋爱番，但是此番可以说是打着魔法少女的旗号讲着一个浮士德式的艺术故事，而且完全是面向成年人富有深意的作品。</p><p>NO.3&nbsp;命运石之门</p><p>别名：石头门</p><p>无法摆脱中二病的大学生冈部伦太郎，成立了“未来道具研究所”，每天都生产出用途不明的发明。但是，某日，偶然间发明出可以把电子讯息传送过去的时间机器。没想到，他发给过去的短信直接颠覆了很多应该已经发生的事情。刚刚邂逅女主角不久就见其被杀害，但是很快却又发现其安然无恙的出现在自己面前，与此同时，更多未知的改变正在悄然发生……</p><p>&nbsp;</p><p>前期节奏比较慢，铺垫做的很长，但是很出色，不过前期可能主题不明，偏软科幻，日常，累积到了某集以后，开始了小宇宙爆发，神展开精彩的不可收拾，根本停不下来，如果你因为男主中二，或者是前期节奏太慢而弃剧，实在太可惜啦。一开始看的不知所以然，到后面把所有细节贯穿一线，完美的展现出了剧情。</p><p>NO.4&nbsp;来自新世界</p><p>别名：from&nbsp;the&nbsp;new&nbsp;world</p><p>讲述了1000年以后的世界（日本），这是一个人们拥有咒力，可以做到各种奇怪的事情的社会，但是因为某些原因科学技术高度抑制，这是一个人类与高度智能生物化鼠共存的世界，化鼠作为人类的附属种族而存在。人们居住在特定范围内远离危险的“恶鬼”&nbsp;和“业魔”，乍看之下一切和平，但“新世界”的孩子们的行动被彻底地控制和管束着，不合适的记忆被消去，被认为有问题的孩子，如同不良产品般被分开处理。因为一些违反规则的小事而莫名地失去不少朋友的主人公渡边早季，卷进了人类与妖鼠之间的战争。</p><p>&nbsp;</p><p>反乌托邦巨作，世界观巨大，前期铺垫很多，但是每一个细节都是有意义的。一开始可能会有各种看不懂，此番不适合剧透，从一开始主角们在学校里的故事展开，再到主动去了解，探索这个世界，最后卷入了战争与灾难，从一开始的店铺到慢慢的神展开，后面全程神展开，连大结局的最后一刻都在神展开的番作。此番由于内涵深刻，同时画面落后，所以可能比较冷门，但是如果认真的去品味，绝对是一部很适合看N周目的神剧。剧组经费是硬伤，某几集画风崩坏让人很是遗憾。</p><p>NO.5&nbsp;空之境界</p><p>本条特指剧场版</p><p>整个故事围绕昏睡了两年时间才醒来的少女两仪式展开。她在昏睡期间，曾经一度接触到了死亡的边缘，并落入“直死之魔眼”的手中。由于这只眼睛的缘故，式用刀杀死了世间所有的生物。式的同年级的同学黒桐干也，既是人形师，又是魔术师的苍崎橙子。他们也被卷入到了这一事件中，有的爱收集浮游的幽灵，有的爱建筑人之死……总之，日常与非日常的时间，被时间融合，由式的刀映射出的怪异昏暗世界，由此开始。</p><p>&nbsp;</p><p>一部精彩的剧，每个细节都很精致，从台词&nbsp;到人物表情，再到一个个分镜。画面和特效我给满分，人物的塑造也是相当精致，完全没有拖泥带水。本剧由于篇章顺序打乱，节奏很快，各种细节和背后意味的背后的故事太多导致理解起来有难度。一句耐人意味的台词，你暂停倒回去看会思量出很多种意思，似乎作者故意这样，而大剧情走向和本片的主旨也是不同人理解起来区别很大，普通的片子往往重点在于“作者是怎么想的”，这一般很容易看出来，而本作呢，把这些问题推给了观众，让观众的内心来回答这样问题，自然由于看者的经历&nbsp;情感&nbsp;三观都不一样&nbsp;所以哪怕是同一句台词的理解都有差异。</p><p>NO.&nbsp;6&nbsp;Fate&nbsp;Zero</p><p>讲述了第四次圣杯战争的故事，魔法师们召唤历史上的英雄作为从者，互相厮杀，最后的胜者可以获得圣杯，那是一个可以实现任何愿望的神器，士郎的养父，凛的父亲，神父都将出现，这不仅仅是像上一场圣杯战争的魔法战斗，同时揭开了许多不为人知的隐情与秘密。而从者方面，除了saber以外均不一样。</p><p>&nbsp;</p><p>史上特效最凶猛的动画片之一，不知真相的我以为点开了好莱坞大片。特效和画面方面无可挑剔，角色塑造尤其精致，拥有悲惨的过去并且为了目的不择手段甚至残忍无情的切嗣，自命不凡的魔术名门之后，欲望兴趣扭曲的变态等等，每一个角色都很鲜明而真实让你忘记了他们是二次元人物，同时，每个人物背后都有各种各样的故事更加让他们显得逼真，生动。剧情方面节奏不错，剧情细节非常的无可挑剔。而老虚的风格，除了喜欢探讨人性以外，就是各种的虐人了，还好，这部番里主角并没有死，但也是被虐的死去活来的，老虚的作品总是阴暗的，不过其中还是可以找到零星点点的温暖的。如果说FSN是注重写士郎的理想和冒险经历的话，那么fate&nbsp;zero就是一部群像传，每一个角色都写的很细致。</p><p>NO.7&nbsp;浪客剑心追忆篇</p><p>动荡的幕末世代，不同势力之间的明争暗斗，这个英雄辈出的时代，有一位顶尖的刺客剑心为了任务毫不留情的斩杀着敌对势力，一次任务中，他邂逅了迷之美女巴……</p><p>&nbsp;</p><p>中式的武侠作品总是带着神功，修仙，神魔剧情的，而且带有各种龙傲天情节，此作表面如此其实并不是。本作无任何夸张的手法，主人公即使拥有傲世的剑术，在如此时代可能也终将埋没，在这个动乱的时代，不同势力间没有绝对的正义，只有杀人与被杀。优雅的配乐，令人深思的台词，还有唯美的爱情，各种人性的细节描写也是很优秀的，一部好的作品，每个细节都值得细细品味。</p><p>NO.8&nbsp;Code&nbsp;Geass&nbsp;反叛的鲁路修</p><p>别名：叛逆的鲁路修</p><p>神圣不列颠帝国凭借强大的军事兵器Knightmare征服了日本，将其改名为11区（11区梗的起源），同时霓虹国的人民们遭到了非常不公平的对待，貌似像下等人一样。本是帝国皇子的鲁路修在一次混乱中邂逅了迷之魔女C.C.&nbsp;并且得到了Geass的力量，于是开始了其伟大的革命计划……</p><p>&nbsp;</p><p>不管你们怎么评价，首先他是一部非常成功的商业巨作，吸引了巨量的粉丝和知名度。剧情在大多数人看来还是非常精彩的，战斗描写方面和画面也是还不错，人设方面可能确实有点逆天，然而一介学生即使再聪明，没有足够的力量作为基础的话也是不现实的，在本身就不可能出现的世界观里，世界变成了如此的格局，即使科学再先进也是人性的整体退步，在这种局势里，必然会有某个不安定的隐藏点慢慢萌芽，最后爆发，大概也是对于真实世界的一些嘲讽吧。</p><p>NO.9&nbsp;虫师</p><p>一种最接近生命本源，类似灵体的生物，叫做虫，他们并不是普通意义上的植物或者动物，拥有自己的形态和生活方式，普通人们是看不见它们的。但是当虫对人们生活造成负面影响的时候，虫师这个职业就诞生了，他们负责协调人与虫的关系，解决各种问题，银古就是其中一人。</p><p>&nbsp;</p><p>这是我看过最超凡脱俗的治愈片了，给人的感觉，宁静，简单，普通，祥和，温暖又不失感动。故事随着银古帮各种人家解决虫引起的问题展开，有点类似山海经的感觉，一集即为一个故事，画风走的是写实流，故事内容也并没有什么大起大落，没有惊天动地的爱情，没有九死一生的冒险，没有正义与邪恶的超大场面的战斗，甚至可以说故事情节很平凡而普通，但是在这里面看到了很多让人灵魂共鸣的东西，无数的感动。男主并没有多少华丽的打扮，没有少女漫男主的五官，而里面各种角色也都是普通的百姓脸，然而看着看着，你就会迷上男主，他拥有超凡的气质，这就是其魅力所在。</p><p>NO.10&nbsp;寒蝉鸣泣之时</p><p>昭和58年初夏，在远离都市的山中小村·雏见泽，搬进这个村里的前原圭一很快与新伙伴们打成一片。这个看似平静的小山村，每年到了6月举行的祭典“绵流祭”的那天，都会发生一人死亡，一人失踪的不明情况。圭一因为自己的好奇心踏入了村里黑暗的领域……究竟是诅咒，还是凶杀……</p><p>&nbsp;</p><p>看画风你以为是个少女小圆漫，看下去以后你会完全不明觉厉。一开始的轻松愉快的氛围被突如其来的异变击破，然后剧情开始了神展开，这是一部整篇动漫都在神展开的神剧，看完第一集的小伙伴们，相信我，看完4集以后你会对这个片子有新的看法。世界观在看完第二部以后才可以彻底明白，整个片子细节很精致，而且逻辑几乎没有漏洞，人设也是非常的不错。</p><p>特别声明：本文为网易自媒体平台“网易号”作者上传并发布，仅代表该作者观点。网易仅提供信息发布平台。</p><p>(责任编辑：刘悦_NBJS5395)</p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 6, 347, 0, 2, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12955, '动漫推荐！那些好看的经典番剧六！', '', '<p>①《灼眼的夏娜》</p><p>平时总爱发呆，有点弱气的男主角坂井悠二和往常一样过着平凡的日子，怪物的突然出现打破了他原有的生活。夕阳下，将人的“存在”化作灵火后吞噬的异界怪物突然袭击了悠二。这个时候，出现了一位自称“炎发灼眼的讨伐者”的少女从怪物口中救下悠二，坂井悠二根据她的大太刀名字她取名叫夏娜。她告诉悠二，他的生命马上就要结束了——原来在这个世界之外，还有另一个被称作“红世”的世界，那里的人们为了实现他们的野心，将人类身上的世界本源之力“存在之力”陆续夺走，悠二就是受害者之一。</p><p>红世使徒将“存在之力”夺走之后，为了缓和现实中产生的扭曲，还会留下“火炬”作为代替。然后随着时间的推移，“火炬”也终将从人们的记忆中淡去。悠二的命运究竟会怎样？</p><p>《灼眼的夏娜》</p><p>②《寒蝉鸣泣之时》</p><p>昭和58年夏。有一个远离都市的平静安宁的村庄雏见泽。前原圭一，最近刚刚搬到这个总人口不足2000的小村里。开朗善言的性格让他很快融入了新的班级里。其中关系最好的要数爱照顾人的礼奈，有领导能力的魅音，陷阱高手沙都子，以及身为古手神社巫女的梨花……每日的社团活动让圭一体会到了大城市中所不能体会到的快乐，安宁的村庄让圭一体会到了乡间的安逸和谐。每年6月举行的祭典，“绵流祭”是雏见泽这个村庄一年中最盛大，也是最有趣的祭典。但是，总觉得这个看似平和的村庄中隐藏着什么不可告人的事情。偶尔听到的传言，雏见泽每年绵流都会有一人死亡，而另一人被御社神大人鬼隐。昔日的伙伴是否将会成为明日的敌人？究竟还是否能回到以前的日常中去？该怎么样，在能在逐渐逼近的危险中保护自己？事件的真相是什么？凶手是谁？是村子中的黑幕？还是那名所谓的御社神大人？</p><p>《寒蝉鸣泣之时》</p><p>③《机巧魔神》</p><p>升上高中之后就开始独自生活的主人公夏目智春。他在3年前被自称为守护灵的美少女水无神操绪附身。智春搬到了兄长夏目直贵曾经生活过的住宅“鸣樱宅”的那天，那里来了两个美女。当中一个黑衣美女名为黑崎朱理，来樱宅邸的原因是受直贵所托送上银色的手提箱，而另一个巫女装束的美女名为嵩月奏，她是为抢夺手提箱而来的。以得到此手提箱为契机，智春得知了世界隐藏的真实－－神舍弃了人类，这个世界曾遭一次毁灭，借助“恶魔”之力再生为“第二度世界”。从这天开始，被众多美女包围着的夏目智春的波澜万丈的人生展开了。</p><p>《机巧魔神》</p><p>④《散华礼弥》</p><p>本作的故事主要讲的是男主角降谷千纮是个喜爱并崇拜僵尸的就读于县立紫阳高中1年级的学生，因为一次的实验成功以绣球花毒炼成复活药，而女主角散华礼弥在有一次喝下了千纮炼成的复活药，使得之后发生意外导致身亡的她复活变成了僵尸，以僵尸为主的青春爱情故事就此拉开了帷幕。</p><p>《散华礼弥》</p><p>⑤《狼与香辛料》</p><p>到处旅行靠贩卖一些小商品为生的商人罗伦斯，从因为收获祭而沸腾的帕斯罗村回来后却发现自己的运货马车中貌似有什么东西在里面，罗伦斯把麦束拨开一看，里面却睡着一个长有狼耳和狼尾巴的少女。这位少女自称是“掌控丰收的贤狼——赫萝”，靠麦子为生的她如果遗失了脖子上挂的帕斯罗当地麦子就会死。赫萝死赖着罗伦斯希望他能够带她回到遥远的北方故乡，见到少女的一只手变化成狼脚的罗伦斯，虽然一边怀疑赫萝的身份，但一边也答应让想回到出生的「遥远的北方」的少女一同旅行，于是，狼女与商人“完全没有剑与魔法的”旅行由此展开。</p><p>《狼与香辛料》</p><p>⑥《黑执事》</p><p>时值19世纪，在英国名门贵族凡多姆海伍家，有一位神秘、优雅、十全十美的执事，他就是“黑执事” 塞巴斯蒂安。虽然塞巴斯蒂安总是淡淡地说： “我只是一名执事罢了”，但举止、知识、品味、料理、武术等等没有任何事能难得倒他！塞巴斯蒂安的主人，是年仅12岁就位居凡多姆海伍家族的当主——夏尔。夏尔不仅只花了短短3年的时间，就让凡多姆公司成为英国最大的零食玩具制造商，更在台面下为女王执行秘密任务，因此又被称为“邪恶贵族”！塞巴斯蒂安除了负责照顾谢尔的日常生活起居之外，还得帮成事不足、败事有余的家仆们收拾善后。最重要的是，塞巴斯蒂安必须因应谢尔各种任性的要求，优雅达成不可能的任务！“身为 凡多姆海恩家的执事，怎能连这点小事也办不到？”为了主人夏尔，塞巴斯蒂安将尽心服侍、实现主人所有的愿望。</p><p>《黑执事》</p><p>⑦《犬夜叉》</p><p>大妖怪犬大将斗牙王与人类公主十六夜的儿子---犬夜叉，因为自己半妖的身份受到人类与妖怪的排斥，为了成为真正的妖怪而想得到四魂之玉；而巫女桔梗为了保护和净化四魂之玉，运用灵力不断与前来抢夺四魂之玉的妖怪战斗而犬夜叉也看到了渴望过平凡生活的巫女桔梗。在不断的相互了解中，两人相爱了，并最终约定利用四魂之玉的力量，把犬夜叉变成人类，守护使命结束的桔梗也可以回归到平凡生活。但是，在约定的日子里，发生了难以预料的变故。被假犬夜叉袭击而受到重伤的桔梗在背叛的愤怒中，用尽力气把犬夜叉封印在御神木上，然后带着四魂之玉在火焰中死去。故事就此拉开序幕……</p><p>《犬夜叉》<br></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 5, 688, 0, 2, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12956, '写给高考前的你们——所谓高考，究竟是什么', '', '<p>近日来看到高考加油话题热度渐涨，屈指一算才发现，原来距离高考试卷袋启封已不到十天了。考试的喧嚣躁动悲喜欢悦一如往昔，可聚光灯再也不会再打在我身上。想到此处，去年刚刚参加完高考的我顿觉心情有一丝微妙的复杂。</p><p>昨日台上戏中人，今日座下围观客。</p><p>从时间上看，高考离我似乎只有地球公转一圈的距离，并不那么遥远，可是，我的记忆竟然已经模糊到快忘记这曾经发生的一切。过去数年让我寝食难安的高考，到现在居然只残存些许碎片，所谓的那些知识点考点解题技巧幻化为泡沫弥散于阳光，那我还剩下什么呢？</p><p>如果说我什么都不记得，什么也没得到，似乎也太愧对自己之前的努力，以及看到这篇文字的你，所以我想谈一谈，关于高考的那点事情，有关青春，有关心态，有关高考本身。</p><p>我希望能这篇喃喃细语能面临高考的同学带来一些慰藉，若是能为低年级备考的同学解疑答惑，能让几天后踏入考场的同学不再慌张，就再好不过了。</p><p>&nbsp;</p><p>若欲知其事，必先明其义</p><p>你们即将要面对的高考，究竟是什么？</p><p>在踏上考场的你们眼中，它是一条吞噬天地的恶龙，你披坚执锐斩荆踏棘，在书山题海中出生入死，只为与它殊死一搏。可纵使你身经百战，面对它，也不禁手中微微沁出汗水。你希望能毕其功于一役，从此鲤鱼跃龙门，可又担心一旦失手便是万劫不复，于是你心慌意乱昼夜无眠，越是靠近它，心中就越发惴惴不安。</p><p>在走出考场的过来人眼中，它已经很难再形成什么具体的印象，如雾气般漂泊悬浮在记忆深处，朦朦胧胧却看不真切。若是有人提起，倒是会带出一串“我当年高考……”的故事，或是“如果我报考了……就……”的笑谈。其他的，似乎也没有更多了。</p><p>但是它究竟是什么？！</p><p>答案很简单：它的确就是一场考试，仅此而已，别无它解</p><p>可这种奇怪的反差的产生，是为什么呢?</p><p>&nbsp;</p><p>首先关于这个问题，容我问一下一年前的自己，那时我也是茫茫备战学生中的一员。</p><p>无尽的试卷纷纷扬扬飘落如雪，聚来又散循环不息；浓重的油墨色彩沁润空气，化为一体不分彼此；单调的铃声扬起落下交错不停，也无法赢过笔尖摩挲纸张的声音……这是我的日常，也是千千万高三学生的日常。考试订正改错查漏补缺，听课自习作业永无宁日，在夏日的炙烤下，似乎半条命都要融进白纸黑字的试卷里。</p><p>幸好时光还来不及给我的记忆打上美白磨皮各种青春滤镜，我必须趁着理智尚在下个判断：高三，真的很苦。苦的不止精神体力，还有视野心态。</p><p>那时候我的眼睛根本无暇放开手上的纸卷去畅想美好的未来，因为在尘埃落定之前一切都是空想，所以我们只能借助周遭的一切，去揣测，去臆断，去想象这一场考试——</p><p>老师说：只要学不死，就往死里学！到了大学一切轻松随便玩！！谈恋爱玩游戏没人管！！！</p><p>家长说：高考很重要，考不好我都没脸见人！考不上好大学你这辈子就完了！！</p><p>同学说：我这次6xx分没考好啊！我平时天天都在玩！！我要考清北人浙复！！！</p><p>我彷徨焦虑无助，乃至愤怒悲泣呐喊，所有人从各个方面无数次的强调：高考至关重要，人生成败在此一举。而自己的成绩似乎永远达不到预期，达到预期又不稳定，稳定下来有想着更高，从此陷入循环，惶惶不可终日。</p><p>我不知道自己能够做到如何，不知道自己的前程在何方，似乎一场考试就是终生大事，似乎一纸试卷便是绝命判书。十八年磨一剑，一剑刺出鹿死谁手犹未可知。</p><p>这种看法错了吗？</p><p>并不能说它错，因为对于大多数人而言，高考的确是一场极其重要的考试。</p><p>平心而论，高考是一次相对来说非常公平的竞争，考生们执笔而战，无关一切其他条件，只凭分数分配高校教育资源。而你能够达到的高校平台，将在未来极大程度上决定你的眼界，一个好的大学所能提供的机会机遇物质条件能对学生产生很大的帮助。而优秀的同行者，杰出的前辈，厉害的同学也可以让你结伴走得更远，这是不可否定的。</p><p>但是上述看法的不正确之处在于把可能当作必然，把机会当成财富，将金钥匙当作金饭碗，将大学的潜在价值瞬间变现从而创造出极大的视觉落差，进而将高考与人生决定等同。这种观念虽然阐述出了好处，却片面地降低了大学的难度。</p><p>&nbsp;</p><p>然后再问一问现在的我，这时的我正是初褪青稚的大学生。</p><p>大学不需要朝五晚九刷题刷卷子，课业自由无拘束，可是学的东西似乎一点都不少，一节课就能跑出以前一个月的进度；大牛众多，大家都是差不多的分进来的，想要脱颖而出更是艰难；有了更多的选择更多的出路，可又仿佛没有选择，没有高考这个风向标的指引，我连自己身在何处都不得而知……</p><p>段子说：高考只不过是决定你去哪个城市打游戏而已，不过还是要考好，因为大城市网速快</p><p>鸡汤说：高考是一个人知识的巅峰，到了大学就下滑（真）</p><p>毒鸡汤说：高考成功者是将来给高考落榜者打工的，你考到600分又怎么比得过富二代官二代手握600w？</p><p>于是乎越来越多的同学觉得自己“上当受骗”，似乎在拿到录取通知书的那一刻起，便与高考形同陌路再无瓜葛，似乎高考就只是一个欺骗自己努力的幌子，进而宣扬起了“读书无用，高考无用”的言论。</p><p>这种看法错了吗？</p><p>也不能说全错，因为许多人在高考之后的确就再也看不到它的意义。</p><p>我们必须承认，和之前相比，高考并没有想象中那么重要，学到的知识也不可能长久留存在记忆里。它没有夺天地造化之功，不能让你打个响指毁灭世界，因为它说到底也只是一场考试而已。</p><p>但是上述看法的不正确之处在于它仅仅只是狭隘地计算了高考的短期确定收益，而忽略了潜在价值：那一纸录取通知书不仅有让你入学的资格，更代表了你未来四年所在的平台，而你的目光能收揽多少风景更是无可估量；学到的知识早就忘得一干二净，但是你在备战高考的过程中找到了适合自己的学习方法，养成的好习惯可以获益终生；或许你以后不再是学霸，但是在高考之后的四年，你可以找寻到自己真正热爱的事情并为之拼搏……</p><p>&nbsp;</p><p>说了这么多也太絮絮叨叨了，就此打住吧。</p><p>或许可以武断地下个结论了：高考它就是一场考试，只是一场考试，也仅仅就是一场考试。</p><p>它不是一命通关的捷径，也不是毫无用处的废纸；它不是救命的仙丹，也不是梁山的军师；它好比人生路上的第一座险峰，你觉得它高不可攀危险奇峻，是因为你离它太近，当你翻过高考，才知它也不过如此，人生路上奇伟瑰怪非常之观又何止千万？但是无论走得多远，它仍旧会带给你不可磨灭的影响，至于影响有多深有多大，那就只有各自心中清楚了。</p><p>所以，希望面对高考的你们能够明白，高考真的只是一场考试，你可以赋予它意义但不要太多，因为它承受不起。你可以等闲视之但不要无视，它仍有自己的价值。</p><p>希望面对高考的你在看完本文后能够摆正心态，调整自己。</p><p>预祝大家取得理想的成绩！</p><p>等等好像打开方式不太对嗯嗯这样就对啦！</p><p>为了避免被当成不解饥不解渴的鸡汤，最后附上一点小tips吧！</p><p>1.&nbsp;最后这么几天了，刷题的进度可以放缓，只要每天刷少量题目保证手感就足够了</p><p>2.&nbsp;多看看错题本笔记本课本的效果比新刷题好得多</p><p>3.&nbsp;适当调整作息时间，保证上午和下午精力充沛，以完美的生物钟迎接高考</p><p>4.&nbsp;放轻松，高考是什么我上面已经说得很清楚了，无需过度紧张</p><p>5.&nbsp;有时可能会出现高考前一天睡不着的情况，但即使通宵不睡也不用整夜忧虑，考前你都睡不着考试时还会犯困吗？不可能的。躺着回忆一下知识点，兴许就还能猜到两个题目呢</p><p>6.&nbsp;尽量不要过度改变自己的生活环境，将自己置身于异常的环境中并不是明智之举</p><p>最后的最后附上一点私货</p><p>欢迎各位报考三本不知名技校——关山口男子职业技术学院QAQ</p><p>虽说学校不咋地（手动滑稽）但是我还是要尽自己所能宣传一下啦！</p><p>希望没有影响到大家的阅读体验QAQ</p><p><br /></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 5, 146, 0, 4, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12958, '给大家发点福利啦', '', '<div class=\"post__content js-content-img-wrap js-fullimg js-maincontent mb0 w650 l-clearfix\">\r\n<p class=\"mb20\">欢迎大家多来微博<a href=\"/u/32947\" class=\"username\" target=\"_self\" title=\"板医生\">@板医生</a> 或者FB<a href=\"/search/user/?k=banrcosplay\">@banrcosplay</a> 戳我<br>本里的图就只发这一套啦，有一张展开手臂跳舞的被芦苇挡太多没放进去很残念 本来很喜欢那张的[泪]<br><br>摄影kuma<br>尼禄 cn: 板医生<br>摄影：kuma</p>\r\n<div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img9.bcyimg.com/coser/9186/post/179ff/ad505ed049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img5.bcyimg.com/coser/9186/post/179ff/a982b50049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img9.bcyimg.com/coser/9186/post/179ff/aa18b37049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img5.bcyimg.com/coser/9186/post/179ff/aac6589049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img5.bcyimg.com/coser/9186/post/179ff/ac13c02049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img5.bcyimg.com/coser/9186/post/179ff/ac9a072049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img9.bcyimg.com/coser/9186/post/179ff/ae107a8049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img5.bcyimg.com/coser/9186/post/179ff/ae8c3a3049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img5.bcyimg.com/coser/9186/post/179ff/af19ad2049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img5.bcyimg.com/coser/9186/post/179ff/afa2170049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img9.bcyimg.com/coser/9186/post/179ff/b021321049f911e8b860bd80d2c4434b.jpg/w650\"></div></div><div class=\"content-img-wrap\"><div class=\"content-img-wrap-inner\"><img class=\"detail_std detail_clickable\" src=\"https://img9.bcyimg.com/coser/9186/post/179ff/b0a3f6a049f911e8b860bd80d2c4434b.jpg/w650\"></div></div> </div>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 10, 1563, 0, 1, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12961, '2018星幻动漫夏日祭', '', '<blockquote><p>开始时间：2018年7月07日 周六 10:00</p><p>结束时间：2018年7月08日 周日 17:00</p><p>地点：南坪万达广场1楼中庭</p></blockquote><p>2018星幻动漫夏日祭<br>主办单位：星幻文化传媒<br>时间：7月7-8日<br>地址：南坪万达广场1楼中庭<br>活动项目：星幻live招募，神之对决-西瓜太郎争霸赛等<br>活动福利：报名免费、门票免费、各种福利免费，LED大屏幕、空调开放、地铁3号线南坪站无缝连接<br>live、展位报名QQ3236960076，组队群219668457，<br>微信电话13368331101<br><br>星幻Live<br>1、 报名者性别、年龄、职业不限，单个剧目20人以下。<br>2 、表现剧目只要不违法国家法规均可。<br>3 、赛前Live不排名、不打分，属于自由表演时间。<br>4 、每个剧目不超过15分钟。<br>5 、报名请联系统一报名QQ领取表格用电脑填写。<br>西瓜小.jpg<br>神之对决——西瓜太郎争霸赛（人人都能参加的比赛）<br>1、参赛者性别、年龄、职业不限。每组参赛人数1-5人，每人只能参加一组比赛，网络报名。<br><br>2、比赛内容：在两分钟内限时吃西瓜，吃得人均平均数最多的一组获胜。<br><br>3、提示：如果你只有1个人，可以选择1人战5人，1人的这组也不吃亏，因为是算每组每人的平均数进行比较成绩；如果你觉得自己一个人不够强大，也可以召集小伙伴一起征战。<br></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 9, 1262, 0, 6, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12962, '关于修改头像和昵称次数限制的声明😃', '', '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p>怎么回事啊，老弟</p><p><br></p><p><br></p><p><br></p><p><br></p><p></p><p>🤣</p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 1, 530, 1, 5, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12963, '首届FANYU漫展圆满落幕 群星闪耀嗨翻天', '首届FANYU漫展圆满落幕 群星闪耀嗨翻天', '<p>首届FANYU漫展现已圆满落幕，淅淅沥沥的小雨也无法阻挡小可爱的如火热情！短短三天，边江大大、希小白、祈殿等近百位大大嘉宾带来的精彩表演，樱花美食街的吃货福利，琳琅满目的周边福利等等，精彩不止这么多，大家一起铭刻下的美好回忆，快来一起看一看！</p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add26c6094f7.jpg\" alt=\"图1.jpg\"></p><p>【上百位大大冒雨下凡 与粉丝亲切互动】</p><p>4月21日，毗邻帝都的廊坊下起了淅淅沥沥的小雨。但这又怎么能阻挡得了热情如火的粉丝们的脚步！早上八点便有粉丝排起了宛如长隆的队列等待入场，更有粉丝为了得到大大们的亲笔签名，忍痛放弃观看舞台表演的机会，排了8个小时队只为近距离一睹大大们，接过大大们亲手递过来的亲笔签名。而边江、希小白、祈Inory、WCS冠军雪雪、田田，傻白、狩人、竿竿、钟少、DK、弥里、澪绫、潋玉缘、深蓝、红领巾、土凸、十咒、提督、幽舞越山、呦猫uneko等等大大们不仅冒雨下凡，更是耐心为粉丝们签名合影，亲密互动。</p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add26d057024.jpg\" alt=\"图2.jpg\"></p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add26d785f5c.jpg\" alt=\"图3.jpg\"></p><p>【8小时舞台表演 祈殿献上耳朵福利】</p><p>整场漫展中，最受瞩目的主舞台迎来了上百位大大的精彩表演。边江大大帅气现身，与粉丝们一起零距离互动做游戏，祈殿更是为大家献上了宛如天籁的美妙歌喉，希小白化身周棋洛来到现场，还有WCS冠军雪雪、田田，傻白、狩人、竿竿、钟少、DK、弥里、澪绫、潋玉缘、深蓝、红领巾、土凸、十咒、提督、幽舞越山、呦猫uneko等等大大们也悉数到场，不仅用COS穿越在各种次元之间，还和现场的粉丝们亲切互动，对于合影签名等等要求来者不拒，可谓宠粉狂魔啦！美丽的小姐姐和帅气的小哥哥掀起全场尖叫不断，现场氛围持续嗨到爆炸！</p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add26f44cf02.jpg\" alt=\"图4.jpg\"></p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add27039e3b9.jpg\" alt=\"图5.jpg\"></p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add270f322d4.jpg\" alt=\"图6.jpg\"></p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add27221a8a2.jpg\" alt=\"图7.jpg\"></p><p>【穿越次元遇到你 拔刀吧诸君】</p><p>在漫展现场，不仅有下凡的大大们，还有来自各个次元的穿越者们哦！他们有的从星际穿越而来执行秘密任务，有的从王者峡谷组团来现场开黑，有的从魔法世界化身哈利波特拯救世界等等，美丽的王昭君，潇洒的李白，萌萌哒扛着巨炮的孙尚香，还有她身边的百里守约，戴着斗笠的超人，还有呆萌的熊本熊等等二次元形象穿越到现场，为大家带来了敲精彩的COS表演！</p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add2737edf46.jpg\" alt=\"图8.jpg\"></p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add2741704ff.jpg\" alt=\"图9.jpg\"></p><p>【琳琅满目周边打包带走】</p><p>除了主舞台，还有游戏区让各位小伙伴尽情嗨翻天！众多火爆游戏现身漫展，热血江湖、食之契约、桃花源记、画江湖等游戏吸引了无数小伙伴的目光！还有许许多多正版周边琳琅满目，让人眼花缭乱！大粉娃娃机打造浪漫粉红天地，尖椒鸡、跳跳虎等可爱的玩偶让人爱不释手，引来众多小伙伴前来挑战技术，漫能晴雨伞、不知火舞小姐姐手办、银魂正版授权周边、万事屋浮世绘雨伞，钱包、冰箱贴、钥匙扣、胸章等等、萌萌的小埋主题周边、《食戟之灵》主题周边、《初音未来》十周年纪念周边、扭蛋精灵等等好物更是让人挑到手软！</p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add275473627.jpg\" alt=\"图10.jpg\"></p><p>【嗨玩超级游乐园 美食街吃货福利】</p><p>FANYU漫展现场还有特装拍摄区、国风展示区、动漫游艺区、樱花美食街等扥精彩分区，精彩桌游体验、古色古香的汉服小姐姐，网红娃娃机挑战，当然也少不了吃货们的最爱，樱花美食街为嗨玩的小伙伴准备了各种各样的幸福美食！特色小吃应有尽有，还有女仆咖啡厅的温柔小姐姐，众多小伙伴在樱花美食街大饱口福，流连忘返！</p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add275bc2e7c.jpg\" alt=\"图11.jpg\"></p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add2761dd539.jpg\" alt=\"图12.jpg\"></p><p><img src=\"http://www.gametanzi.com/data/upload/ueditor/20180423/5add27682b0be.jpg\" alt=\"图13.jpg\"></p><p>首届FANYU漫展现已圆满落幕，短短三天留下了无数精彩的回忆。这一次二次元世界的狂欢盛会虽然已经结束，但是下届一样精彩，敬请期待！</p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 4, 766, 0, 6, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12964, '日本动漫歌曲音乐会animesia首次来到上海！', '', '<p>日本电子动漫歌音乐会——「animesia」将于2018年11月，在MAO&nbsp;livehouse shanghai开演。此次音乐会除了会有上海歌迷熟知的D-YAMA、Taku Inoue、DJ和，等这些在日本非常有代表性的DJ，还邀请到了分岛花音、kz（livetune）参与此次演出。</p><p align=\"center\" style=\"text-align: center;\"><img src=\"http://wx2.sinaimg.cn/mw690/006c1P57gy1fkohfpc9okj30f40liwgx.jpg\" class=\"\"></p><p>分岛花音：为「噬血狂袭」、「择破坏者WIXOSS」、「吸血鬼骑士」等动画片，「Fate/EXTRA CCC」等游戏制作了主题曲和片尾曲。以在live上表演大提琴为个人特色，在全球各地举办live，人气很高。</p><p>kz（livetune）：为初音未来制作了「Packaged」「闪光骑士」等歌曲。并且和SEKAI NO OWARI、中岛爱、三森铃子也有合作。</p><p>&nbsp;</p><p>「animesia」在日本可以说人气非常高了，在此可以体验到正宗的动漫文化，千万不要错过「animesia」首次亚洲公演哦！</p><p>&nbsp;</p><p>&nbsp;</p><p>「animesia」简介</p><p>「animesia」来自日本。在动漫音乐中融合了电子音乐，从而形成了新的音乐种类——电子动漫音乐。「animesia」的活动中可以听到很多这个风格的音乐所以人气很高。D-YAMA（电子动漫音乐的圣地「mogra」的店长）、Taku Inoue（为偶像大师制作歌曲的人气制作人），DJ和ら（将电子动漫音乐文化介绍给全世界）等DJ会参与此次活动。</p><p>&nbsp;</p><p>■animesia Shanghai</p><p>&nbsp;</p><p>日期：2017年11月18日（周六）</p><p>场地：MAO Livehouse Shanghai</p><p>入场：17:00</p><p>开演：18:00</p><p>表演嘉宾：</p><p>&lt;DJ&gt;</p><p>・D-YAMA</p><p>・Taku Inoue</p><p>・DJ和</p><p>&nbsp;</p><p>&lt;Special Guest Act&gt;</p><p>・kz（livetune）</p><p>・分岛花音</p><p>&nbsp;</p><p>ticket</p><p>VIP（特典）票：480元</p><p>普通票：180元</p><p>&nbsp;</p><p>※特典：优先入场、演出结束后可以参加握手会、签名卡片</p><p>&nbsp;</p><p>艺人介绍：</p><p>▽D-YAMA(MOGRA)</p><p>21岁登上秋叶原MOGRA店长这一宝座，至今任带动着MOGRA的独特文化的发展，是秋叶原的新世代关键人物。</p><p>他和他的盟友DJ WILDPARTY一起跑遍全球，让更多人知道了MOGRA的名字并且体验到了自由式DJ表演的乐趣。</p><p>2013年11月，他们在新木场的ageHa举办了一场大型音乐节「秋叶原网络音乐节」，动员了2000多人。许多著名的音乐人和MOGRA的粉丝参与了进来，秋叶原俱乐部活动圆满收官。</p><p>这之后，还担任演唱了《灼眼的夏娜》《军火女王》等动画主题曲的歌手川田麻美的幕后DJ的同时，还倡导动漫歌手举办club风格的演唱会等等，开展了一系列极具影响力的活动。</p><p>专辑发布之后举办了世界各地的全国巡演，并且作为川田麻美的专属DJ一起演出。</p><p>他作为动漫歌曲DJ和动漫歌曲歌手live风格的先驱者，给之后的live风格带来了重大的影响。之后也和川田麻美所属的音乐创作团体“I’ve”一起活动，在remix专辑和mixcd中担任DJ的职务。</p><p>之后，在2014年5月开始了“电波組.inc ”的“全球电波巡演2014&nbsp;”，在最后一站，日本武道馆演唱会上，面对1万人的观众，担任开场DJ一职，受到了各个观众群的好评。</p><p>2017年“电波組.inc ”&nbsp;「幕神体育场2017」最后一站的日本武道馆的演唱会上再次担任DJ，点燃了全场的氛围。</p><p>▽Taku Inoue</p><p>&nbsp;</p><p>音效设计师/作曲家/ DJ。除了制作游戏主题曲，也为音乐人制作乐曲的混录。2017年参与了“进击的巴哈姆特”的片尾曲「敬启再见/ DAOKO」的作曲和编曲。周末的时候，以DJ的身份参加国内外的演出，主要是以自己混合的音乐来进行表演</p><p>&nbsp;</p><p>▽DJ和</p><p>DJ Kazu作为索尼音乐第一个日系流行乐DJ，在2008年的时候制作了他的一个作品。他现在是索尼音乐唱片公司的DJ兼制作人。</p><p>他主要以日文歌DJ为主，DJ Kazu常驻NHK节目“涩谷音”（前身:音乐日本），这是以前被称为“日本音乐”，连续八年。最近几年，参加各种风格的音乐节，如“ROCK IN JAPAN”和“ANIMAX MUSIX”等等。他也积极参加国外的音乐演出，“亚洲动漫音乐节”首场在印度尼西亚举行，这之后他也参加了新加坡和泰国进行了表演。2016年，在洛杉矶举办的动漫展览会“动漫节”上，他作为唯一一个DJ和著名的音乐人共演，演的都是日文歌曲。</p><p>DJ Kazu的代表作是『J-pop传说』『A GIRL↑↑』『J-动漫神曲祭』。现在发行了23张mix cd，累计卖出了110多万张。</p><p>&nbsp;</p><p>▽kz（livetune）</p><p>livetune在网上公开过的原创歌曲「packaged」、「取景器」、「频闪飞天幽梦」、「光之曲」等等都是用初音未来的音源制作而成的，在网上获得了累积350万次的播放量，也在音乐界备受瞩目。</p><p>livetune因为其独特的音乐风格，在网上也成为了热议话题，获得了俱乐部音乐、流行乐、动漫乐爱好者的广泛支持。2008年8月，以「Re:package」一曲出道。在oricon音乐排行榜上初次上榜就获得第五的好成绩。</p><p>这之后，为动画主题曲、一些有名的偶像巡演的背景音乐等制作了各种风格的歌曲，负责作词、作曲、remix等，也因此人气急剧上升，开始了制作人的工作。现在他再次回到自己的主要领域，展开音乐活动！</p><p>&nbsp;</p><p>▽分岛花音</p><p>原创歌手、大提琴手、插画家、服装设计师</p><p>三岁开始学习大提琴，接受古典音乐的熏陶。她将自己想要表达的想法融入自己的词曲创作。除此以外积极开展自己的插画工作，会画一些时尚画和插图夹克。</p><p>作为一个作词作曲家、服装设计师、插画家等拥有许多才能的艺术家，她获得了广泛的支持。演出的时候一边演奏大提琴一遍唱歌，这样独特的演出方式受人瞩目。作为作家的工作也不少，经常会提供词曲创作。</p><p>2008年出道，获得了国外的广泛关注。参加了美国、欧洲、亚洲等国外日本文化会议的活动。</p><p>2011年举办了欧洲10个城市的巡演</p><p>2012年为动画『To love』制作了片尾曲、为PSP游戏『Fate/EXTRA CCC』主題歌制作了主题曲「犯规吹哨/樱花迷宫」，并且发行了单曲。</p><p>2014年2月发行了动画『嗜血狂魔』片尾曲「信号」、4月发行了「基力基力，小丑」、10月发行了「世界终结，少年的回旋曲」。</p><p>2015年发行了专辑「平凡」。四月，担任动画『在迷宫寻求相遇时错误的把』片尾曲制作人，发行了「右手升起的光芒」，同年11月发行了『嗜血狂魔 OVA瓦尔基里王国篇』的片尾曲「你是太阳」。</p><p>2016年2月担任『剧场版 选择感染者WIXOSS』主题曲制作人，发行了「爱上你的敌人」。同年11月30日，发布原创专辑「冷光 Q.E.D.」</p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 9, 875, 0, 8, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12965, '动画电影《驯龙高手3》首曝海报 无牙仔女友登场', '', '<p>梦工厂动画《驯龙高手3：隐秘的世界》终于在今天（6月1日）公开了首款海报，并且确定本片将于2019年3月上映。在本次的海报上一位新的角色出现了，是一只白色夜煞，两龙深情对视，小嗝嗝在海报中反倒成了陪衬的背景。从设定和动作上来看这是一条母龙，看来连时隔5年之后无牙仔都有女朋友了，不知道在新的影片中他们又会给我们带来什么惊喜。</p><p></p><p>　　《驯龙高手3：隐秘的世界》（How to Train Your Dragon 3: The Hidden World）是由梦工厂动画制作、环球影业发行的动画电影，由迪恩·德布洛斯编剧并执导，杰伊·巴鲁切尔、克里斯汀·韦格、T·J·米勒等参与配音。电影讲述了维京勇士小嗝嗝在实现建立龙族乌托邦家园的梦想时，无牙仔中途却被一只未驯化难以捉摸的夜煞同伴吸引走了。当危险降临家园，作为新首领的小嗝嗝面临巨大挑战。龙族和驯龙骑士们必须做出不可能的决定来保护各自的同类。</p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 6, 511, 0, 7, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12966, '我也来水一发', '', '<p></p><p></p><p>祝贺Vmoex发布了第一个小版本~~</p><p><br></p><p>come on~~</p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 11, 172, 0, 10, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12976, '20180608 晚安提醒', '', '<p></p><p>睡觉啦~~~</p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 4, 232, 0, 12, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12977, '域名增加https操作方法', '', '呀，真是的', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 1, 4, 0, 5, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12978, '工作也要加油鸭！', '', 'bs3也挺好的啊，我不想换成bs4啦！！！！！', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 1, 4, 0, 5, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12985, '新的一天，也要加油呀', '', '<p>祝你又是元气满满的一天哦~</p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 1, 10, 0, 12, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12994, '【夏目友人帐结局】你看哭了么', '', '<p></p><p></p><p>这并不是官方的结局，但是故事总会结束的，不是么？</p><p>斑是在夏目贵志二十岁的时候失去了变成‘形体’的能力。虽然还能变成招财猫的样子，但人类却是看不见了。当藤原夫妇问猫吉去哪里了的时候，夏目只是笑着说不知道，大概它回归森林去了吧。每次他这么说完，都会被猫先生狠狠地咬上一口。 那时候夏目总有一种担忧，他怕自己突然失去了能看见妖怪的能力，再也看不见猫先生，不能和它斗嘴，不能狠狠的将拳头砸在它的脑袋上。&nbsp;<br></p><p>猫先生似乎是猜想到了夏目心里在想些什么，蔑视的扫了夏目一眼，用着鼻音阴阳怪气的说看不见不是更好吗，我可以带走友人账，你也可以过着平凡人的生活。</p><p>夏目没有接话，而是看着那只坐在垫子上一副高傲样子的招财猫。浅色的双瞳里泛着温柔的色泽，嘴角微微上扬，夏目轻轻的笑了。</p><div><div><p>夏目贵志二十三岁的时候，友人账里的名字全都归还给了妖怪。扁扁的账簿放在手里很轻，除了封底和封面以外没有其他的纸张。不知道为何，心中突然浮现出了复杂的情绪。他放下友人账，对着那绿色的封面发愣，感叹的道一切可能就这么结束了。</p><p>当他叹气的时候，猫老师突然蹦出来狠狠的撞了下他的后脑勺。夏目转身回给了猫老师一拳吼道这样很痛啊，猫老师。而对方则破天荒的没有大叫，用着那张充满喜感的猫脸正经的说，笨蛋夏目，你还能看见妖怪，就不算结束。</p><p>夏目摸着自己的后脑勺，低头看着猫老师，轻轻的应了一句，啊，是啊。然后他无视对方的挣扎，将猫老师抱在了怀中。夏目说，虽然没了友人账，但猫老师还在身边啊。听到这句，斑停止了挣扎，乖乖的被夏目抱着。</p><p>笨蛋夏目。斑轻声的骂。</p></div><div><p>有一些事，你不想让它发生，而它偏偏会发生。 那年夏目贵志二十四岁，当他醒来的时候还没察觉到有什么变化，等他吃完早饭打算出门上班时却发现猫老师不见了猫影。他歪头想了想，可能是猫老师昨夜又出去喝酒导致今日没有回来吧。于是他便如往常一样的去上班，没有多想些什么。</p><p>等到了他回到了家，推开自己的房门，却没见到猫老师醉醺醺躺在地板上的样子。房内很安静，东西也都整整齐齐的放过，干净的让夏目有些发慌。</p><p>他走进房间合上门，唤了一句猫先生。良久，都无人回应。于是他提高了嗓子又叫了声，还是没有回应。夏目发觉，可能有些严重的事发生了。</p><p>而斑其实就在房内，老老实实的坐在他专用的垫子上。但夏目却像是看不见自己似的，东翻西找，嘴里还唤着自己的名字。斑轻轻的叹了口气，该来的始终还是来了。</p><p>夏目起身离开了房间，一路奔向森林，而他兜兜转转了好长段时间，直至太阳落了西山，也没看见一点妖怪的身影。</p><p>他突然明白了，是他自己能看见妖怪的能力消失了。</p><p>夏目并不知道猫老师是否还在家中，而他却依旧将猫老师用的饭碗放在了自己的房间内，每日晚上都会把好吃的东西放进去。到了双休日则将猫老师喜欢吃的那家甜点店的馒头放在饭碗里面。</p><p>斑呆在旁边看着夏目的所作所为，微微眯起了眼。明明已经失去了能力的夏目，为什么还要这么做？他记得夏目还是少年的时候希望自己失去能力，而现在，却为什么一脸孤单的样子。</p><p>想着想着，斑走进饭碗，低头啃起了馒头。夏目蹲在饭碗旁边，看着馒头神奇的慢慢变小直至没有。心中浮现出了雀跃，他伸出手，想抚摸猫先生，但却因为看不见显得这个动作十分古怪。</p><p>猫先生抬起头，看见夏目骨关节突出的手指，和那微微泛出了水色的浅色双瞳。它抬高了头，想蹭蹭夏目离自己还有段距离的手。却发现自己的身体像是灵体一般穿透了过去。夏目消失的不仅仅是看见妖怪的能力，就连触碰到妖怪的能力也失去了。所以他现在只是个普通人，再也不会和妖怪有何牵连。</p><p>夏目微微的张开嘴，声音有些颤抖，又唤了一声猫先生。</p><p>斑变回了原型，将头靠近夏目的身躯，轻轻的应道：“我在，夏目。”语调温柔得让人感到伤心。</p><p>而夏目却听不见那温柔的语调，连同斑的气息也感受不到。</p><p><br></p><div><p>夏目贵志二十五岁的时候认识了一个温柔的女子，两人也就顺其自然的相恋，然后商讨婚事。一年的时间不长不短，但却改变了很多。比如说当初因为看不见妖怪，夏目低迷了很长一段时间，而如今却恢复了，且他能和人类更加自然的交往。</p><p>唯一没改变的，是一些习惯。夏目还是习惯把猫先生用的饭碗放在自己的房内，早上会放简单的早餐进去，晚上则放猫老师喜欢的食物。每日等那些食物不见了以后，便仔仔细细的清洗一遍，如同往日一般。</p><p>而猫老师也不曾离去，一直都呆在夏目的家中。有时候会出去和妖怪们喝喝酒，隔日清晨带着满身的酒气回去。</p><p>有时候它习惯性的敲敲窗户，发出响声，夏目这时候便会过来打开窗户。猫老师也不清楚夏目是否知道是自己，心里还骂道万一是其他妖怪呢，但每当他看见夏目浅色的眸子望着自己坐着的垫子，那些牢骚就慢慢消失了。</p><p><br></p><p>不论是少年还是青年，夏目都是个理想化的笨蛋。猫老师心里想着，然后‘呼呼’的睡着了。</p><p>隔日中午猫老师才醒来，那时候夏目早已出门，它走到饭碗前，将鲷鱼烧吃完，用爪子擦了擦嘴巴。想着夏目应该去和那女子准备婚事了吧，没想到自己竟然能看到夏目结婚。</p><p>这时候窗子突然被打开，一泛着粉色银光的蝴蝶随着风翩然入内，渐渐化为一成熟女子的身影。猫老师抬起头，眯着眼，道：“呦，是红峰啊。”</p><p>红峰掩着嘴轻笑，说：“不论什么时候看见斑大人你这副样子都觉得好可怜，呵呵呵呵呵……”</p><p>“你特意过来难道就是来说废话的吗？”猫老师不以为然的继续舔爪子洗脸，心想着鲷鱼烧的味道真是不错。</p><p>“夏目看不见妖怪这件事大家都已经知道了哦，斑大人。”红峰席地而坐，含笑看着斑，继续道：“小狐狸啊其他的那些妖怪们都很伤心呢……”</p><p>猫老师放下爪子，看着红峰说：“别废话，直接说正题。”</p><p>“友人账上的名字已经全部归还，现在不过是个垃圾。夏目贵志也失去了能力……”红峰停顿了一下，缓缓说道：“斑大人你还打算陪着这个人类吗？”</p><p>猫老师没有出声，红峰也无法从那张古怪的招财猫脸上发觉什么，过了许久，红峰又道：“今日您就随我回去吧，斑大人。”</p><p>“不。”猫老师突然出声，答案让红峰惊讶的睁大了眼睛，她刚想张嘴说些什么，却听见猫老师说道：“我曾经就和你说过了，我在等那个时候的到来。人类的时间如此短暂，而妖怪的寿命很漫长，我全当是个消遣?</p><p>红峰听完猫老师的解释缓缓舒展了眉头，露出了无奈的表情，她说：“斑大人，你这可是在给自己找借口。其实你对人类动了感情了吧？”红峰这样问，却没听见猫老师回答些什么，也不像以前一样怒吼反驳。红峰轻叹一声，说：“等你结束了以后就回来吧，大家会等你的。”语音一落，她便化为蝴蝶飞去。</p><p><br></p><div><div><p>夏目贵志是在二十七岁的时候拥有了自己的孩子。</p><p>猫老师好奇的去看了看那在柔弱的生命，小小的孩子被毯子等东西包裹得紧紧的，像是害怕有一丝凉风会吹到孩子似的。</p><p>婴儿的眼睛只能睁开一点，瞳孔空荡荡的，应该还看不见什么东西。猫老师趴在婴儿旁边，摇着小圆尾巴，觉得这个婴儿非常好玩，瞧那淡色的头发和浅色的眼睛，简直就和夏目一个模子刻出来似的。</p><p>这时候夏目贵志推门而入，走到婴儿床边，伸出手摸了摸婴儿皱皱的额头，轻声说：“猫老师，他的名字叫做夏目森，森林的森，是个男孩子。”</p><p>猫老师抬头，发现少年的视线是落在婴儿的身上，没有望向自己。它从夏目那浅色的双瞳之中看见了温柔与幸福的光芒，衬得那双眸子特别漂亮。</p><p>猫老师眯起眼，突然觉得，这个孩子改变了很多。</p><p>不需要再因为看见妖怪的原因向着人们撒谎，可以自然的与人们交往融入人类的世界里，如今更是有着温柔的妻子和可爱的孩子。已经不再是那个浅色眸子中时常流露出寂寞和愧意的少年。</p><p>那些往日的画面如同流水一般在斑的脑海中淌过，每一个画面都是夏目的样子。刚见着时流露出坚强和寂寞的夏目；在温柔中渐渐柔和了的夏目；看见自己受伤惊慌的夏目；脸上洋溢着幸福微笑的夏目……</p><p>以及，看不见自己的夏目。</p><p>老师慢慢合上眼，轻叹一声，或许真如红峰所说，它该走了。</p></div><br>以下是版权信息：</div><div><br><blockquote>作者：Rizwan皓<br>链接：https://www.jianshu.com/p/2b27e597b556<br>来源：简书<br>简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。</blockquote></div></div></div></div><p></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 5, 38, 0, 2, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12995, '海贼王：卡塔库栗和布蕾害羞了！卡二：为了你，从此不再做我自己', '', '<p></p><p> 《海贼王》动画最新剧情更新（877），托特兰篇章终于快要迎来结局了，草帽海贼团众人在杰尔马和太阳海贼团的掩护下，终于离开了四皇大妈的海域，而就在伽治和甚平打算撤退的时候，四皇大妈强势归来；另一方面，布蕾来到镜中世界给重伤的卡塔库栗疗伤，在他们的回忆中，卡塔库栗的秘密终于被揭开！</p><p><br></p><p>布蕾拿着医疗包来到了卡塔库栗的身边，并且对卡塔库栗说何必故意背部着地倒下呢，后来卡塔库栗自己承认了，其实在生活中，自己并不是背部从来不着地的完美的超人，结果布蕾回答了一句“我知道，从镜子里偷偷看到了！”，卡塔库栗听后，两人便害羞得脸都红了，看来布蕾经常利用自己的能力偷偷看卡塔库栗啊！在回忆中，小时候的卡塔库栗其实根本就不在意自己的嘴巴，因为如果有人敢嘲笑自己，卡塔库栗就会把这些人揍飞，所以卡塔库栗一直做自己；但是后来被自己揍的仇人找到布蕾来报仇，并且把布蕾的脸给毁了，从此卡塔库栗便戴上了围脖，并且以后也不会露出一丝破绽，而卡塔库栗做的这一切都是为了保护自己的妹妹！如果说在之前的剧情中，我们还不能判断卡塔库栗放水严重，那么在本集剧情中，我们就可以确认了，卡塔库栗这不是“放水”，而是“放海”。</p><p><br></p><p>卡塔库栗醒来之后询问布蕾关于路飞的情况，结果布蕾早就看穿了卡塔库栗，因为布蕾知道，认真的卡塔库栗是无敌的，所以当布蕾告诉卡塔库栗路飞已经逃离了大妈的海域时，卡塔库栗露出了微笑！看来卡塔库栗和路飞的那场战斗，卡塔库栗并没有拿出自己的全部实力啊！你们认为呢？</p><p><br></p><p></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 11, 15, 0, 6, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12996, '怎么回事啊老弟', '', '<p> 我怎么知道啊，nice&nbsp;<img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/3c/pcmoren_wu_org.png\" alt=\"[污]\" data-w-e=\"1\"></p><p><br></p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 1, 1002, 0, 5, '2024-08-19 08:36:01');
INSERT INTO `post` VALUES (12997, '樱花开啦~', '', '<p></p><p>好想去看呀~~</p>', '2024-08-19 08:36:01', '2024-08-19 08:36:01', 0, 'published', 1, 1001, 0, 1, '2024-08-19 08:36:01');

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `date` date NOT NULL,
  `got_gold` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_9F7E91FEA76ED395`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_9F7E91FEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES (1, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (2, 5, '2024-08-19', 8);
INSERT INTO `sign` VALUES (3, 6, '2024-08-19', 8);
INSERT INTO `sign` VALUES (4, 6, '2024-08-19', 5);
INSERT INTO `sign` VALUES (5, 5, '2024-08-19', 6);
INSERT INTO `sign` VALUES (6, 7, '2024-08-19', 3);
INSERT INTO `sign` VALUES (7, 4, '2024-08-19', 7);
INSERT INTO `sign` VALUES (8, 8, '2024-08-19', 7);
INSERT INTO `sign` VALUES (9, 9, '2024-08-19', 6);
INSERT INTO `sign` VALUES (10, 7, '2024-08-19', 3);
INSERT INTO `sign` VALUES (11, 8, '2024-08-19', 5);
INSERT INTO `sign` VALUES (12, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (13, 6, '2024-08-19', 9);
INSERT INTO `sign` VALUES (14, 10, '2024-08-19', 3);
INSERT INTO `sign` VALUES (15, 6, '2024-08-19', 4);
INSERT INTO `sign` VALUES (16, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (17, 10, '2024-08-19', 7);
INSERT INTO `sign` VALUES (18, 9, '2024-08-19', 9);
INSERT INTO `sign` VALUES (19, 8, '2024-08-19', 5);
INSERT INTO `sign` VALUES (20, 9, '2024-08-19', 3);
INSERT INTO `sign` VALUES (21, 6, '2024-08-19', 3);
INSERT INTO `sign` VALUES (22, 8, '2024-08-19', 9);
INSERT INTO `sign` VALUES (23, 5, '2024-08-19', 9);
INSERT INTO `sign` VALUES (24, 6, '2024-08-19', 6);
INSERT INTO `sign` VALUES (25, 4, '2024-08-19', 6);
INSERT INTO `sign` VALUES (26, 5, '2024-08-19', 4);
INSERT INTO `sign` VALUES (27, 9, '2024-08-19', 4);
INSERT INTO `sign` VALUES (28, 11, '2024-08-19', 10);
INSERT INTO `sign` VALUES (29, 5, '2024-08-19', 9);
INSERT INTO `sign` VALUES (30, 9, '2024-08-19', 9);
INSERT INTO `sign` VALUES (31, 4, '2024-08-19', 7);
INSERT INTO `sign` VALUES (32, 10, '2024-08-19', 7);
INSERT INTO `sign` VALUES (33, 10, '2024-08-19', 10);
INSERT INTO `sign` VALUES (34, 11, '2024-08-19', 3);
INSERT INTO `sign` VALUES (35, 6, '2024-08-19', 3);
INSERT INTO `sign` VALUES (36, 9, '2024-08-19', 7);
INSERT INTO `sign` VALUES (37, 12, '2024-08-19', 3);
INSERT INTO `sign` VALUES (38, 4, '2024-08-19', 8);
INSERT INTO `sign` VALUES (39, 5, '2024-08-19', 7);
INSERT INTO `sign` VALUES (40, 6, '2024-08-19', 8);
INSERT INTO `sign` VALUES (41, 11, '2024-08-19', 4);
INSERT INTO `sign` VALUES (42, 4, '2024-08-19', 4);
INSERT INTO `sign` VALUES (43, 5, '2024-08-19', 10);
INSERT INTO `sign` VALUES (44, 10, '2024-08-19', 7);
INSERT INTO `sign` VALUES (45, 13, '2024-08-19', 9);
INSERT INTO `sign` VALUES (46, 5, '2024-08-19', 10);
INSERT INTO `sign` VALUES (47, 9, '2024-08-19', 8);
INSERT INTO `sign` VALUES (48, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (49, 9, '2024-08-19', 7);
INSERT INTO `sign` VALUES (50, 4, '2024-08-19', 5);
INSERT INTO `sign` VALUES (51, 5, '2024-08-19', 9);
INSERT INTO `sign` VALUES (52, 13, '2024-08-19', 4);
INSERT INTO `sign` VALUES (53, 4, '2024-08-19', 8);
INSERT INTO `sign` VALUES (54, 10, '2024-08-19', 5);
INSERT INTO `sign` VALUES (55, 13, '2024-08-19', 7);
INSERT INTO `sign` VALUES (56, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (57, 6, '2024-08-19', 8);
INSERT INTO `sign` VALUES (58, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (59, 6, '2024-08-19', 7);
INSERT INTO `sign` VALUES (60, 5, '2024-08-19', 5);
INSERT INTO `sign` VALUES (61, 6, '2024-08-19', 3);
INSERT INTO `sign` VALUES (62, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (63, 5, '2024-08-19', 10);
INSERT INTO `sign` VALUES (64, 6, '2024-08-19', 4);
INSERT INTO `sign` VALUES (65, 4, '2024-08-19', 7);
INSERT INTO `sign` VALUES (66, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (67, 9, '2024-08-19', 4);
INSERT INTO `sign` VALUES (68, 12, '2024-08-19', 6);
INSERT INTO `sign` VALUES (69, 12, '2024-08-19', 5);
INSERT INTO `sign` VALUES (70, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (71, 6, '2024-08-19', 9);
INSERT INTO `sign` VALUES (72, 6, '2024-08-19', 8);
INSERT INTO `sign` VALUES (73, 4, '2024-08-19', 6);
INSERT INTO `sign` VALUES (74, 6, '2024-08-19', 9);
INSERT INTO `sign` VALUES (75, 4, '2024-08-19', 8);
INSERT INTO `sign` VALUES (76, 4, '2024-08-19', 4);
INSERT INTO `sign` VALUES (77, 6, '2024-08-19', 7);
INSERT INTO `sign` VALUES (78, 5, '2024-08-19', 10);
INSERT INTO `sign` VALUES (79, 4, '2024-08-19', 7);
INSERT INTO `sign` VALUES (80, 6, '2024-08-19', 5);
INSERT INTO `sign` VALUES (81, 4, '2024-08-19', 6);
INSERT INTO `sign` VALUES (82, 5, '2024-08-19', 10);
INSERT INTO `sign` VALUES (83, 4, '2024-08-19', 7);
INSERT INTO `sign` VALUES (84, 6, '2024-08-19', 5);
INSERT INTO `sign` VALUES (85, 9, '2024-08-19', 4);
INSERT INTO `sign` VALUES (86, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (87, 6, '2024-08-19', 5);
INSERT INTO `sign` VALUES (88, 9, '2024-08-19', 10);
INSERT INTO `sign` VALUES (89, 9, '2024-08-19', 5);
INSERT INTO `sign` VALUES (90, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (91, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (92, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (93, 6, '2024-08-19', 10);
INSERT INTO `sign` VALUES (94, 9, '2024-08-19', 8);
INSERT INTO `sign` VALUES (95, 4, '2024-08-19', 8);
INSERT INTO `sign` VALUES (96, 9, '2024-08-19', 7);
INSERT INTO `sign` VALUES (97, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (98, 4, '2024-08-19', 4);
INSERT INTO `sign` VALUES (99, 4, '2024-08-19', 5);
INSERT INTO `sign` VALUES (100, 4, '2024-08-19', 9);
INSERT INTO `sign` VALUES (102, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (103, 4, '2024-08-19', 8);
INSERT INTO `sign` VALUES (104, 4, '2024-08-19', 5);
INSERT INTO `sign` VALUES (105, 4, '2024-08-19', 9);
INSERT INTO `sign` VALUES (106, 9, '2024-08-19', 5);
INSERT INTO `sign` VALUES (107, 4, '2024-08-19', 5);
INSERT INTO `sign` VALUES (108, 4, '2024-08-19', 9);
INSERT INTO `sign` VALUES (109, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (110, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (111, 4, '2024-08-19', 9);
INSERT INTO `sign` VALUES (112, 4, '2024-08-19', 6);
INSERT INTO `sign` VALUES (113, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (114, 4, '2024-08-19', 8);
INSERT INTO `sign` VALUES (115, 4, '2024-08-19', 8);
INSERT INTO `sign` VALUES (116, 4, '2024-08-19', 7);
INSERT INTO `sign` VALUES (117, 4, '2024-08-19', 5);
INSERT INTO `sign` VALUES (118, 4, '2024-08-19', 3);
INSERT INTO `sign` VALUES (119, 4, '2024-08-19', 6);
INSERT INTO `sign` VALUES (120, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (121, 4, '2024-08-19', 6);
INSERT INTO `sign` VALUES (122, 4, '2024-08-19', 9);
INSERT INTO `sign` VALUES (123, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (124, 6, '2024-08-19', 5);
INSERT INTO `sign` VALUES (125, 4, '2024-08-19', 10);
INSERT INTO `sign` VALUES (126, 1, '2024-08-19', 7);
INSERT INTO `sign` VALUES (127, 1, '2024-08-19', 10);
INSERT INTO `sign` VALUES (128, 1, '2024-08-19', 6);
INSERT INTO `sign` VALUES (129, 1, '2024-08-19', 4);
INSERT INTO `sign` VALUES (130, 1, '2024-08-19', 9);
INSERT INTO `sign` VALUES (131, 1, '2024-08-19', 4);
INSERT INTO `sign` VALUES (132, 1, '2024-08-19', 6);
INSERT INTO `sign` VALUES (133, 1, '2024-08-19', 8);
INSERT INTO `sign` VALUES (134, 1, '2024-08-19', 5);
INSERT INTO `sign` VALUES (135, 1, '2024-08-19', 8);
INSERT INTO `sign` VALUES (136, 1, '2024-08-19', 9);
INSERT INTO `sign` VALUES (137, 1, '2024-08-19', 9);
INSERT INTO `sign` VALUES (138, 1, '2024-08-20', 9);
INSERT INTO `sign` VALUES (139, 9, '2024-08-20', 6);

-- ----------------------------
-- Table structure for tab
-- ----------------------------
DROP TABLE IF EXISTS `tab`;
CREATE TABLE `tab`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `level` smallint NOT NULL DEFAULT 1,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_73E3430C727ACA70`(`parent_id` ASC) USING BTREE,
  CONSTRAINT `FK_73E3430C727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `tab` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tab
-- ----------------------------
INSERT INTO `tab` VALUES (1, '福利', 'fuli', NULL, 1, 'vmoex给大家谋福利啦');
INSERT INTO `tab` VALUES (2, '番剧', 'tv', 11, 2, '由日语的“番組”（节目）和中文的“连续剧”两个词糅合而成，作为连载动画的代称。');
INSERT INTO `tab` VALUES (3, '插画', 'pic', 8, 2, '');
INSERT INTO `tab` VALUES (4, '游戏', 'game', NULL, 1, '');
INSERT INTO `tab` VALUES (5, '站务公告', 'announce', 11, 2, '网站不定期发布的公告');
INSERT INTO `tab` VALUES (6, '漫展', 'manzhan', 1, 2, '');
INSERT INTO `tab` VALUES (7, '电影', 'movie', 4, 2, '');
INSERT INTO `tab` VALUES (8, '歌姬', 'music', NULL, 1, '');
INSERT INTO `tab` VALUES (10, '其他', 'other', 11, 2, '');
INSERT INTO `tab` VALUES (11, 'Vmoex', 'Vmoex', NULL, 1, '');
INSERT INTO `tab` VALUES (12, '灌水', 'water', 8, 2, '没有主题的帖子，请选择此节点');

-- ----------------------------
-- Table structure for translation
-- ----------------------------
DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `chinese` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `english` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `japanese` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `taiwanese` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `can_delete` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `message_unique`(`message_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of translation
-- ----------------------------
INSERT INTO `translation` VALUES (1, 'about_site', '关于 Vmoex', 'About Vmox', 'について Vmoex', '關於 Vmoex', 1);
INSERT INTO `translation` VALUES (2, 'chinese', '简体中文', 'Simplified Chinese', '中国語の簡体字', '簡體中文', 1);
INSERT INTO `translation` VALUES (3, 'english', '英文', 'English', '英語', '英語', 1);
INSERT INTO `translation` VALUES (4, 'chinese.tw', '繁体中文', 'Traditional Chinese', '繁体中国語', '繁體中文', 1);
INSERT INTO `translation` VALUES (5, 'japanese', '日语', 'Japanese', '日本語', '日語', 1);
INSERT INTO `translation` VALUES (6, 'ago', '前', 'ago', '前', '前', 1);
INSERT INTO `translation` VALUES (7, 'second', '秒', 'sec', '秒', '秒', 1);
INSERT INTO `translation` VALUES (8, 'day', '天', 'day', '日', '天', 1);
INSERT INTO `translation` VALUES (9, 'hours', '小时', 'h', '時間', '小時', 1);
INSERT INTO `translation` VALUES (10, 'minute', '分钟', 'min', '分', '分钟', 1);
INSERT INTO `translation` VALUES (11, 'login', '登录', 'Login', 'ログイン', '登入', 1);
INSERT INTO `translation` VALUES (12, 'logout', '登出', 'Logout', '出てくる', '登出', 1);
INSERT INTO `translation` VALUES (13, 'register', '注册', 'Register ', '登録', '注册', 1);
INSERT INTO `translation` VALUES (14, 'success', '操作成功', 'success', '操作が成功する', '操作成功', 1);
INSERT INTO `translation` VALUES (15, 'fail', '操作失败', 'fail', '操作に失敗する', '操作失敗', 1);
INSERT INTO `translation` VALUES (16, 'click', '点击', 'click', 'クリック', '点击', 1);
INSERT INTO `translation` VALUES (17, 'nav_messages', '查看所有私信', 'Check all private letters', 'すべての私信を調べる', '查看所有私信', 1);
INSERT INTO `translation` VALUES (18, 'nav_new_fans', '个新的粉丝', 'A new fan', '新しいファン', '個新的粉絲', 1);
INSERT INTO `translation` VALUES (19, 'nav_all_notifications', '查看所有通知', 'View all notices', 'すべての通知を調べる', '查看所有通知', 1);
INSERT INTO `translation` VALUES (20, 'nav_user_home', '个人中心', 'Personal Center', '個人の中心', '個人中心', 1);
INSERT INTO `translation` VALUES (21, 'nav_user_setting', '个人设置', 'Personal settings', '個人設定', '個人設置', 1);
INSERT INTO `translation` VALUES (22, 'footer_online_user_count', '当前在线count人', 'Current online count people', '現在のオンラインcount人', '當前線上count人', 1);
INSERT INTO `translation` VALUES (23, 'footer_oneline_user_most', '历史最高', 'The highest in history', '歴史が最も高い', '歷史最高', 1);
INSERT INTO `translation` VALUES (24, 'wpcast_slogan', '9秒助你打造自己的博客', '9 seconds to help you build your own blog.', '9秒で自分のブログを作ります', '9秒助你打造自己的部落格', 1);
INSERT INTO `translation` VALUES (25, 'trends', '动态', 'Trends', '傾向', '動態', 1);
INSERT INTO `translation` VALUES (26, 'blind.chat', '聊聊', 'ChatChat', '雑談', '瞎聊', 1);
INSERT INTO `translation` VALUES (27, 'search', '搜索', 'Search', '検索', '搜尋', 1);
INSERT INTO `translation` VALUES (28, 'about', '关于', 'About', 'について', '關於', 1);
INSERT INTO `translation` VALUES (29, 'messages', '私信', 'Msg', '私信', '私信', 1);
INSERT INTO `translation` VALUES (30, 'notifications', '通知', 'Notice', '通知する', '通知', 1);
INSERT INTO `translation` VALUES (31, 'comment', '评论', ' comment', '評論', '評論', 1);
INSERT INTO `translation` VALUES (32, 'hello_stranger', ' 您好，陌生人！', 'Hello, Stranger !', 'こんにちは、知らない人', '你好，陌生人', 1);
INSERT INTO `translation` VALUES (33, 'hello_stranger_detail', '如果你喜欢Vmoex，请记得注册或者保存网址哦~', 'If you like Vmoex, please remember to register or save the website.', 'もしあなたがVmoexが好きなら、登録や保存サイトを覚えてください。', '如果你喜歡Vmoex，請記得注册或者保存網址哦~', 1);
INSERT INTO `translation` VALUES (34, 'my.status', '我的状态', 'My Status', '私の状態', '我的狀態', 1);
INSERT INTO `translation` VALUES (35, 'hot.users', '活跃用户', 'Activist Users', '活躍するユーザー', '活躍用戶', 1);
INSERT INTO `translation` VALUES (36, 'today.hot.topics', '热门文档', 'Hot Topics Today', '本日の活躍', '今日熱門話題', 1);
INSERT INTO `translation` VALUES (37, 'newly.comments', '最新评论', 'Latest Comments ', '最新のコメント', '最新評論', 1);
INSERT INTO `translation` VALUES (38, 'today.activity', '今日活跃度', 'Today Activity', '今日活躍度', '今日活躍度', 1);
INSERT INTO `translation` VALUES (39, 'continuous_signed count day', '已连续签到count天', 'continuous signed count day', '已連續簽到count天', '已連續簽到count天', 1);
INSERT INTO `translation` VALUES (40, 'create_new_topic', '创建新主题', 'Create New Topic', '新しいテーマを作成', '創建新主題', 1);
INSERT INTO `translation` VALUES (41, 'activity', '活跃度', ' Activity', '活発度', '活躍度', 1);
INSERT INTO `translation` VALUES (42, 'wpcast_available_with', 'Wpcast 可用于: ', 'wpcast available with: ', 'Wpcast可用於：', 'Wpcast可用於：', 1);
INSERT INTO `translation` VALUES (43, '用户名', '用户名', 'Username', 'ユーザー名', '用戶名', 1);
INSERT INTO `translation` VALUES (44, '邮箱', '邮箱', 'Email', '郵便ポスト', '郵箱', 1);
INSERT INTO `translation` VALUES (45, '密码', '密码', 'Password', 'パスワード', '密碼', 1);
INSERT INTO `translation` VALUES (46, 'verify_email', '你的邮箱尚未激活，<a data-pjax href=\"/user/setting#emailSetting\" class=\"alert-link\">点此激活</a>', 'Your Email is not activated，<a href=\"javascript:\" class=\"alert-link\">Click to Activate</a>', 'あなたのメールはまだ活性化されていません。<a href=\"javascript:\" class=\"alert-link\">ここでアクティブにする</a>', '你的郵箱尚未啟動，<a href=\"javascript:\" class=\"alert-link\">點此啟動</a>', 1);
INSERT INTO `translation` VALUES (47, '在线可撩', '在线可撩', 'online', '線上可撩', '線上可撩', 1);
INSERT INTO `translation` VALUES (48, '加入于', '加入于', 'joined at ', 'に加える', '加入於', 1);
INSERT INTO `translation` VALUES (49, '第count位Vmoex用户', '第count位Vmoex用户', 'the count\'st Vmoex member', 'count位Vmoexユーザー', '第count比特Vmoex用戶', 1);
INSERT INTO `translation` VALUES (50, '最后在线时间：time', '最后在线时间：time', 'last online time：time', '最後のオンライン時間：time', '最後線上時間：time', 1);
INSERT INTO `translation` VALUES (51, 'name发布的帖子', 'name发布的帖子', 'name\'s topics', 'nameの招待状', 'name發佈的帖子', 1);
INSERT INTO `translation` VALUES (52, 'name的回复', 'name的回复', 'name\' comments', 'nameの返事', 'name的回復', 1);
INSERT INTO `translation` VALUES (53, 'time 发表在', 'time 发表在', 'time posted at', 'timeが発表している', 'time發表在', 1);
INSERT INTO `translation` VALUES (54, 'name的关注', 'name的关注', 'name\'s following', 'nameの注目', 'name的關注', 1);
INSERT INTO `translation` VALUES (55, 'name的粉丝', 'name的粉丝', 'name\' followers', 'nameのファン', 'name的粉絲', 1);
INSERT INTO `translation` VALUES (56, '发送成功', '发送成功', 'send success', '成功を送る', '發送成功', 1);
INSERT INTO `translation` VALUES (57, 'documents', '交流分享', 'Documents', '文档', '文档', 1);
INSERT INTO `translation` VALUES (58, 'support', '支持', 'Support', 'Support', 'Support', 1);
INSERT INTO `translation` VALUES (59, 'vmoex_slogan', NULL, 'Build the best two yuan community', '最も美しい2次元のコミュニティを作ります', '打造最美好的二次元社區', 1);
INSERT INTO `translation` VALUES (60, 'vmoex_description', NULL, 'Vmoex is inspired by the V2EX creative workers community, and most of the V2EX is the Internet/IT topic, so Vmoex hopes for anime, two, and Opera (and Meng\'s [w Omega]) enthusiasts to join, share, discover, and create more beauty in life.', NULL, NULL, 1);
INSERT INTO `translation` VALUES (61, '刷新', NULL, 'refresh', NULL, NULL, 1);
INSERT INTO `translation` VALUES (62, 'banner.copyright', NULL, 'The content of this site may be infringed on your rights, Vmoex use your articles (or pictures, etc.) only for testing the real line, if you do not allow, please mail: support@vmoex.com.', 'このウェブサイトの内容はあなたの権益を侵害した可能性がありますが、現在Vmoexがあなたの文章（または画像など）を使用して、真実の上線の状況をテストするために使用されます。', '本網站的內容可能侵犯了您的權益，當前Vmoex使用您的文章（或者圖片等）僅用於測試真實上線情况，如您不允許，請致郵：support@vmoex.com。', 1);
INSERT INTO `translation` VALUES (63, 'trends_description', NULL, 'This section is used to display the user, plate or theme you are interested in, and this function is being developed.', 'このプレートは、あなたが注目しているユーザー、プレート、またはテーマを展示するために使用されています。', NULL, 1);
INSERT INTO `translation` VALUES (64, '板块', NULL, 'Tabs', 'のプレート', '板塊', 1);
INSERT INTO `translation` VALUES (65, '当前在线count人', NULL, 'Current Online count Users', 'count人のオンラインオンライン', '當前線上count人', 1);
INSERT INTO `translation` VALUES (66, '历史最高', NULL, 'The highest in history', '歴史が最も高い', '歷史最高', 1);
INSERT INTO `translation` VALUES (67, '致谢', NULL, 'Thanks', 'お礼を言う', '致謝', 1);
INSERT INTO `translation` VALUES (68, 'buy_beer', NULL, 'Buy Me ', '虹の恋にビールを飲', '請彩虹之戀喝', 1);
INSERT INTO `translation` VALUES (69, '全部', NULL, 'All', 'すべて', '全部', 1);
INSERT INTO `translation` VALUES (70, '热门', '热力门', 'Hot', '人気', '熱門', 1);
INSERT INTO `translation` VALUES (71, '追剧', NULL, 'Tv', NULL, 'y', 1);
INSERT INTO `translation` VALUES (72, '福利', NULL, 'Wel', '福祉', '福利', 1);
INSERT INTO `translation` VALUES (73, '插画', NULL, 'Picture', 'イラスト', '插畫', 1);
INSERT INTO `translation` VALUES (74, '歌姬', NULL, 'Hawayi Music', '歌姫', '歌姬', 1);
INSERT INTO `translation` VALUES (75, '游戏', NULL, 'Game', 'ゲーム', '遊戲', 1);
INSERT INTO `translation` VALUES (76, '站务公告', NULL, 'Announce', '駅務公告', '站務公告', 1);
INSERT INTO `translation` VALUES (77, '漫展', NULL, 'ComicDis', '展示する', '漫展', 1);
INSERT INTO `translation` VALUES (78, '查看所有通知', NULL, 'All Notifications', 'すべての通知を調べる', '查看所有通知', 1);
INSERT INTO `translation` VALUES (79, '查看所有私信', NULL, 'All Messages', '查看所有私信', 'All Messages', 1);
INSERT INTO `translation` VALUES (80, '我的主页', NULL, 'My Homepage', '私のホームページ', '我的主頁', 1);
INSERT INTO `translation` VALUES (81, '个人设置', NULL, 'Setting', '個人設定', '個人設置', 1);
INSERT INTO `translation` VALUES (82, '添加新的评论', NULL, 'Add new Comment', '新しいコメントを追加', '添加新的評論', 1);
INSERT INTO `translation` VALUES (83, '发表有颜色的评论将消耗5金币哦', NULL, 'A color comment will consume 5 gold coins.', '色のコメントを発表すると5金貨が消費されますよ', '發表有顏色的評論將消耗5金幣哦', 1);
INSERT INTO `translation` VALUES (84, '好可怕，速度太快了', NULL, 'It\'s awful, the speed is too fast', '怖い、スピードが速い', '好可怕，速度太快了', 1);
INSERT INTO `translation` VALUES (85, '关于作者', NULL, 'the author', '作者', '關於作者', 1);
INSERT INTO `translation` VALUES (86, '拉黑', NULL, 'Block', 'ラブラック', '拉黑', 1);
INSERT INTO `translation` VALUES (87, '昵称', NULL, 'Nickname', 'ニックネーム', '昵稱', 1);
INSERT INTO `translation` VALUES (88, '状态', NULL, 'Status', '状態', '狀態', 1);
INSERT INTO `translation` VALUES (89, '头像', NULL, 'Avatar', '頭像', '頭像', 1);
INSERT INTO `translation` VALUES (90, '保存', NULL, 'Save', '保存', '保存', 1);
INSERT INTO `translation` VALUES (91, '修改', NULL, 'Modity', '修正', '修改', 1);
INSERT INTO `translation` VALUES (92, '修改密码', NULL, 'Modity Password', 'パスワードを修正', '修改密碼', 1);
INSERT INTO `translation` VALUES (93, '支持我们', NULL, 'Support Us', '私たちを応援する', '支持我們', 1);
INSERT INTO `translation` VALUES (94, '个新的粉丝', NULL, ' new follower', '新しいファン', '個新的粉絲', 1);
INSERT INTO `translation` VALUES (95, '赞', NULL, 'Like', '賛', '贊', 1);
INSERT INTO `translation` VALUES (96, '什么是瞎聊', NULL, 'What\'s Blind Chat ?', NULL, '什麼是瞎聊', 1);
INSERT INTO `translation` VALUES (97, 'blind_description', '“聊聊”是 Vmoex 社区提供的一个线上即时聊天功能，每发送一条“聊聊”消息将消耗一枚金币。', '\"Blind Chat\" is an online chat function provided by the Vmoex community. Each sending a \"chatting\" will consume a gold coin.', '「雑談」は、Vmoexコミュニティで提供されたオンライン即時チャットの機能であり、「雑談」を送るごとに金貨1枚が消費される。', '“瞎聊”是Vmoex社區提供的一個線上即時聊天的功能，每發送一條“瞎聊”將消耗一枚金幣', 1);
INSERT INTO `translation` VALUES (98, '社区运行状态', NULL, 'State of Vmoex', 'コミュニティの運行状態', '社區運行狀態', 1);
INSERT INTO `translation` VALUES (99, '社区成立时间', NULL, 'Foundation at', 'コミュニティの成立時間', '社區成立時間', 1);
INSERT INTO `translation` VALUES (100, '主题数量', NULL, 'Topic Count', 'テーマの数', '主題數量', 1);
INSERT INTO `translation` VALUES (101, '回复数量', NULL, 'Reply Count', '回答数', '回復數量', 1);
INSERT INTO `translation` VALUES (102, '注册用户数量', NULL, 'Memember Count', '登録ユーザーの数', '註冊用戶數量', 1);
INSERT INTO `translation` VALUES (103, '添加', NULL, NULL, '追加', NULL, 1);
INSERT INTO `translation` VALUES (104, '请先登录', NULL, NULL, '先に登録してください', NULL, 1);
INSERT INTO `translation` VALUES (105, 'Vmoex当前板块数量', NULL, 'Current Number of Sections on Vmoex', 'Vmoex現在のプレートの数', 'Vmoex當前板塊數量', 1);
INSERT INTO `translation` VALUES (106, 'vmoex_available_with', NULL, NULL, '', 'Vmoex 可用於: ', 1);
INSERT INTO `translation` VALUES (107, 'userhome_send_message', '发送私信', 'Send a private letter', '私信を送る', '發送私信', 1);
INSERT INTO `translation` VALUES (108, 'userhome_has_followed', '已经关注', 'has followed', 'すでに注目している', '已經關注', 1);
INSERT INTO `translation` VALUES (109, 'userhome_follow', '关注', 'follow', '関心を持つ', '關注', 1);
INSERT INTO `translation` VALUES (110, 'userhome_block', '屏蔽', 'block', 'シールド', '遮罩', 1);
INSERT INTO `translation` VALUES (111, 'userhome_no_recent_reply', '该用户最近没有回复', 'The user has not responded recently.', 'このユーザーは最近返事がない', '該用戶最近沒有回復', 1);
INSERT INTO `translation` VALUES (112, 'userhome_he_is_cold', '比较高冷?，目前没有关注任何人。', 'Relatively cold, there is no concern for anyone at present.', '比較的に寒いですか？今は誰にも注目していません。', '比較高冷？，現時沒有關注任何人。', 1);
INSERT INTO `translation` VALUES (113, 'userhome_he_has_no_follower', '名声不佳，没有任何粉丝╮(╯_╰)╭', 'No reputation, no fans.', '評判が悪くて、何のファンもいない', '名聲不佳，沒有任何粉絲╮（╯_╰）╭', 1);
INSERT INTO `translation` VALUES (114, 'post_add_comment', '添加评论', 'Add comments', 'コメントを追加', '添加評論', 1);
INSERT INTO `translation` VALUES (115, 'post_no_comment', '文章没有评论', 'The article did not comment.', '文章にはコメントがない', '文章沒有評論', 1);
INSERT INTO `translation` VALUES (116, 'chat_sorry_co_content', '抱歉，暂时没有聊天消息', 'Sorry, there is no chat message for the time being.', '申し訳ございませんが、しばらくチャットがありません。', '抱歉，暫時沒有聊天消息', 1);
INSERT INTO `translation` VALUES (117, 'chat_please_type', '请输入', 'Please enter', '入力してください', '請輸入', 1);
INSERT INTO `translation` VALUES (118, 'send', '发送', 'Send out', '送信する', '發送', 1);
INSERT INTO `translation` VALUES (119, 'please_login', '请登录', 'Please log in', 'ログインしてください', '請登入', 1);
INSERT INTO `translation` VALUES (120, 'why_this', '为什么会这样？', 'Why is that?', 'どうしてそうなるの？', '為什麼會這樣？', 1);
INSERT INTO `translation` VALUES (121, 'userhome_no_published_post', '用户目前没有发布文章', 'Users do not publish articles at present.', 'ユーザーは現在、文章を発表していません。', '用戶現時沒有發佈文章', 1);
INSERT INTO `translation` VALUES (122, 'reply', '回复', 'Reply', '返事をする', '回復', 1);
INSERT INTO `translation` VALUES (123, 'notice_my_notice', '我的通知', 'My Notice', '私の知らせ', '我的通知', 1);
INSERT INTO `translation` VALUES (124, 'notice_unread', '未读通知', 'Unread notifications', '未読の通知', '未讀通知', 1);
INSERT INTO `translation` VALUES (125, 'notice_read', '已读通知', 'red notice', '既読の通知', 'notice_read', 1);
INSERT INTO `translation` VALUES (126, 'notice_replied_you', '回复我的', 'Reply to me', '私に返事する', '回復我的', 1);
INSERT INTO `translation` VALUES (127, 'post_top', '置顶', 'Top', '棚を置く', '置頂', 1);
INSERT INTO `translation` VALUES (128, 'like', '赞', 'Fabulous', '称賛する', '贊', 1);
INSERT INTO `translation` VALUES (129, 'action_too_fast', '好可怕，速度太快了', 'Terrible. It\'s too fast.', '怖い、スピードが速い', '好可怕，速度太快了', 1);
INSERT INTO `translation` VALUES (130, 'banner_announce', '欢迎您来到Vmoex，这里是一个二次元交流社区，很期待你成为这里的一员！', 'Welcome to Vmoex, this is a secondary exchange community, I look forward to your becoming a member here!', 'Vmoexへようこそ、ここは二次元交流コミュニティで、あなたがここの一員になるのを楽しみにしています！', '歡迎您來到Vmoex，這裡是一個二次元交流社區，很期待你成為這裡的一員！', 1);
INSERT INTO `translation` VALUES (131, 'all', '全部', 'whole', 'すべて', '全部', 1);
INSERT INTO `translation` VALUES (132, 'hot', '热门', 'Hot', '人気', '熱門', 1);
INSERT INTO `translation` VALUES (133, 'site_state', '社区运行状态', 'Community Operational Status', 'コミュニティの運行状態', '社區運行狀態', 1);
INSERT INTO `translation` VALUES (134, 'site_since', '社区成立时间', 'Community establishment time', 'コミュニティの成立時間', '社區成立時間', 1);
INSERT INTO `translation` VALUES (135, 'site_post_count', '主题数量', 'Number of topics', 'テーマの数', '主題數量', 1);
INSERT INTO `translation` VALUES (136, 'site_comment_count', '回复数量', 'Reply quantity', '回答数', '回復數量', 1);
INSERT INTO `translation` VALUES (137, 'site_user_count', '注册用户数量', 'Number of registered users', '登録ユーザーの数', '注册用户数量', 1);
INSERT INTO `translation` VALUES (138, 'site_copyright', '@2024 Vmoex - 知识与兴趣聚集地', '@2024 Vmoex - Create the Best Secondary Community', '@2024 Vmoex -最高の二次元コミュニティを作る', '@2024 Vmoex -打造最美好的二次元社區', 1);
INSERT INTO `translation` VALUES (139, 'site_title', 'Vmoex - 知识与兴趣聚集地', 'Vmoex - Create the Best Secondary Community', 'Vmoex -最高の二次元コミュニティを作る', 'Vmoex -打造最美好的二次元社區', 1);
INSERT INTO `translation` VALUES (140, 'site_name', 'Vmoex', 'Vmoex', 'Vmoex', 'Vmoex', 1);
INSERT INTO `translation` VALUES (141, 'user_place_in_site', '第count位Vmoex用户', 'the count\'st Vmoex member', 'Cunt位Wpcrftユーザー', '第count比特Vmoex用戶', 1);
INSERT INTO `translation` VALUES (142, 'footer_available_with', '可用于: ', 'available with: ', '使用可能：', '可用於：', 1);
INSERT INTO `translation` VALUES (143, 'yingwe', 'sdsd', 'ds', 'sdsd', 'dsd', 1);
INSERT INTO `translation` VALUES (144, 'sds', 'dsd', 'dsd', 'dsd', 'ssdsdsd', 1);
INSERT INTO `translation` VALUES (145, 'kdssd', 'dsd', 'dsd', 'dsd', 'dsdsd', 1);
INSERT INTO `translation` VALUES (146, 'dsdsd', 'sdsdsdsd', 'sdsds', 'sdsdsdsd', 'sdsdsds', 1);
INSERT INTO `translation` VALUES (147, 'user_my_messages', '我的私信', 'My Messages', '私の私信', '我的私信', 1);
INSERT INTO `translation` VALUES (148, 'user_my_received_messages', '我接收的', 'Received', '私が受け取った', '我接收的', 1);
INSERT INTO `translation` VALUES (149, 'user_my_sent_messages', '我发出的', 'Send', '私が出したのは', '我發出的', 1);
INSERT INTO `translation` VALUES (150, 'sorry_no_content', '抱歉，暂时没有任何内容！', 'Sorry, there is no content yet!', '申し訳ありませんが、何の内容もありません。', '抱歉，暫時沒有任何內容！', 1);
INSERT INTO `translation` VALUES (151, 'user_you_send_message_to', '你对receiver说：', 'you said to receiver: ', 'あなたはレコードに対して', '你對receiver說：', 1);
INSERT INTO `translation` VALUES (152, 'user_send_message_to_you', '对你说：', 'said to you: ', 'あなたに言いました。', '對你說：', 1);
INSERT INTO `translation` VALUES (153, 'Title', '标题', 'Title', 'タイトル', '標題', 1);
INSERT INTO `translation` VALUES (154, 'Cover', '封面', 'cover', '表紙', '封面', 1);
INSERT INTO `translation` VALUES (155, 'Detail', '详情', 'details', '詳細', '詳情', 1);
INSERT INTO `translation` VALUES (156, 'latest_blogs', '最新创建', 'The latest creation', '最新作成', '最新創建', 1);
INSERT INTO `translation` VALUES (157, 'nav_create_blog', '创建博客', 'Create a blog', 'ブログを作成', '創建部落格', 1);
INSERT INTO `translation` VALUES (158, 'nav_create_post', '创建新主题', 'Create new theme', '新しいテーマを作成', '創建新主題', 1);
INSERT INTO `translation` VALUES (159, 'Old password', '老密码', 'Old code', '古いパスワード', '老密碼', 1);
INSERT INTO `translation` VALUES (160, 'New Password', '新密码', 'New password', '新しいパスワード', '新密碼', 1);
INSERT INTO `translation` VALUES (161, 'Repeat Password', '重复密码', 'Duplicate password', 'パスワードを繰り返す', '重複密碼', 1);
INSERT INTO `translation` VALUES (162, 'home_now_register', '立即注册！', 'register now！', 'すぐに登録します！', '立即注册！', 1);
INSERT INTO `translation` VALUES (163, 'user_my_posts', '我的帖子', 'My post', '私の招待状', '我的帖子', 1);
INSERT INTO `translation` VALUES (164, 'user_my_comments', '我的评论', 'My comments', '私のコメント', '我的評論', 1);
INSERT INTO `translation` VALUES (165, 'user_my_following', '我的关注', 'My attention', '私の関心', '我的關注', 1);
INSERT INTO `translation` VALUES (166, 'user_my_follower', '关注我的', 'Pay attention to me', '私のことに気をつけて', '關注我的', 1);
INSERT INTO `translation` VALUES (167, 'user_my_blog', '我创建的博客', 'The blog I created', '私が作ったブログ', '我創建的部落格', 1);
INSERT INTO `translation` VALUES (168, 'email', '邮箱', 'mailbox', '郵便ポスト', '郵箱', 1);
INSERT INTO `translation` VALUES (169, 'user_setting_email_verified', '邮箱已验证通过', 'The mailbox has been verified through.', 'メールアドレスの検証', '郵箱已驗證通過', 1);
INSERT INTO `translation` VALUES (170, 'community', '社区', 'Community', 'コミュニティ', '社區', 1);
INSERT INTO `translation` VALUES (171, 'notice_comment_mention_you', '在评论中提到你', 'Mention you in the commentary.', 'コメントで述べている', '在評論中提到你', 1);
INSERT INTO `translation` VALUES (172, 'post_add_comment_hint', '请尽量添加有意义的评论。', 'Please try to add meaningful comments.', 'できるだけ意味のあるコメントを追加してください。', '請儘量添加有意義的評論。', 1);
INSERT INTO `translation` VALUES (173, 'users.gold_rank', '用户金币排行榜', 'User Gold Coin List', 'ユーザーの金貨ランキング', '用戶金幣排行榜', 1);
INSERT INTO `translation` VALUES (174, 'users.rank', '排名', 'ranking', '順位', '排名', 1);
INSERT INTO `translation` VALUES (175, 'username', '用户名', 'User name', 'ユーザー名', '用戶名', 1);
INSERT INTO `translation` VALUES (176, 'gold', '金币', 'Gold coin', '金貨', '金幣', 1);
INSERT INTO `translation` VALUES (177, 'users.sign_rank', '用户签到排行榜', 'User Check-in List', 'ユーザーがランキングにサインする', '用戶簽到排行榜', 1);
INSERT INTO `translation` VALUES (178, 'global.sign', '签到', 'Sign in', '署名する', '簽到', 1);
INSERT INTO `translation` VALUES (179, 'post_not_exist', '文章不存在', 'The article does not exist', '文章は存在しない', '文章不存在', 1);
INSERT INTO `translation` VALUES (180, 'length_not_support', '内个啥...长度好像不合适哦！', 'What\'s inside? The length seems inappropriate.', '内の何か…長さが合わないみたいですよ！', '內個啥…長度好像不合適哦！', 1);
INSERT INTO `translation` VALUES (181, 'do_not_repeat_mention_others', '请勿重复@其他人！', 'Don\'t repeat @others!', '他の人を繰り返してはいけません！', '請勿重複@其他人！', 1);
INSERT INTO `translation` VALUES (182, 'no_enough_gold', '金币不足', 'Shortage of gold coins', '金貨が足りない', '金幣不足', 1);
INSERT INTO `translation` VALUES (183, 'comment_not_exist', '评论不存在', 'Comments do not exist', 'コメントは存在しません', '評論不存在', 1);
INSERT INTO `translation` VALUES (184, 'cant_modify_current_user_in_admin', '不能在管理端修改当前个人信息，请在用户端个人中心修改', 'cant modify current user in admin', NULL, NULL, 1);
INSERT INTO `translation` VALUES (185, 'hour', '小时', 'h', '時間', '小時', 1);
INSERT INTO `translation` VALUES (186, 'user_not_exist', '用户不存在', NULL, NULL, NULL, 1);
INSERT INTO `translation` VALUES (187, 'locale_invalid', '非法的语言', NULL, NULL, NULL, 1);
INSERT INTO `translation` VALUES (188, 'access_denied', '访问被拒绝', 'access denied', '访问被拒绝', '访问被拒绝', 1);
INSERT INTO `translation` VALUES (189, 'locale invalid', '未知的语言', 'locale invalid', NULL, NULL, 1);
INSERT INTO `translation` VALUES (190, '历史公告', '历史公告', 'Historical Announcements', '履歴のお知らせ', '歷史公告', 1);
INSERT INTO `translation` VALUES (191, '服务条款', '服务条款', 'Terms of Service', '利用規約', '服務條款', 1);
INSERT INTO `translation` VALUES (192, '支持', '支持', 'Support', 'サポート', NULL, 1);
INSERT INTO `translation` VALUES (193, '关于Vmoex', '关于Vmoex', 'About Vmoex', 'Vmoexについて', '關於Vmoex', 1);
INSERT INTO `translation` VALUES (194, 'member_oneline_count', '会员在线', 'Member Online', 'オンラインのメンバー', '會員在線', 1);
INSERT INTO `translation` VALUES (195, 'visitor', '游客', 'Visitor', '訪問者', '遊客', 1);
INSERT INTO `translation` VALUES (196, 'person', '人', 'person', '人', '人', 1);
INSERT INTO `translation` VALUES (197, '其他', '其他', 'other', 'その他', NULL, 1);
INSERT INTO `translation` VALUES (198, '电影', '电影', 'Movie', '映画', '電影', 1);
INSERT INTO `translation` VALUES (199, '番剧', '番剧', 'Anime Series', 'アニメシリーズ', '番劇', 1);
INSERT INTO `translation` VALUES (200, '灌水', '灌水', 'Spam', '雑談', '灌水', 1);
INSERT INTO `translation` VALUES (201, '更多', '更多', 'more', 'もっと or さらに', '更多', 1);
INSERT INTO `translation` VALUES (202, '最新发布', '最新发布', 'Latest Posts', '最新の投稿', '最新發佈', 1);
INSERT INTO `translation` VALUES (203, '最新评论', '最新评论', 'Latest Comments', '最新のコメント', '最新評論', 1);
INSERT INTO `translation` VALUES (204, '发表有颜色的评论', '发表有颜色的评论将消耗1金币哦', 'Posting a colored comment will cost 1 coin.', 'カラーコメントを投稿すると、1コインが消費されます。', '發表有顏色的評論將消耗1金幣哦', 1);
INSERT INTO `translation` VALUES (205, 'site_domain', 'http://vmoex.com', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_val` int NOT NULL DEFAULT 0,
  `gold` int NOT NULL DEFAULT 100,
  `sign_day` int NOT NULL DEFAULT 0,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_at` datetime NOT NULL,
  `login_at` datetime NOT NULL,
  `changed_nickname_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ_8D93D649F85E0677`(`username` ASC) USING BTREE,
  UNIQUE INDEX `UNIQ_8D93D649A188FE64`(`nickname` ASC) USING BTREE,
  UNIQUE INDEX `UNIQ_8D93D649E7927C74`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', '$2y$13$v8p38GOQIEuB2ES6jvTPKOJ2IdBUH6gCVCYE7q6A79Z4SRvOt7qbK', 'singviy@gmail.com', 'avatar/default.png', '管理员', 847, 135, 3, 1, 'ROLE_SUPER_ADMIN', 'df', '2024-08-18 20:36:01', '2024-08-20 05:15:38', '2022-08-20 02:58:51');
INSERT INTO `user` VALUES (3, 'dong', '鸣人', '', '360432567@qq.com', 'avatar/default.png', '', 0, 100, 0, 0, 'ROLE_USER', 'fdsa', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (4, 'jaggle', '橘真琴', '', 'singviy@qq.com', 'avatar/default.png', '', 47, 391, 1, 0, 'ROLE_USER', 'sfsf', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (5, 'tester', '櫻滿集', '$2y$13$x8ZLkmtSxFa2cJgAqiEQJux8xSuBK3rZj2q8GYxlwK0cFAEpndIdq', 'jkkk@qq.com', 'avatar/default.png', '', 43, 187, 1, 0, 'ROLE_USER', 'sfa', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (6, 'jojo', '卡艾利斯', '', 'aaaa.rr@qq.com', 'avatar/default.png', '', 32, 188, 1, 0, 'ROLE_USER', 'sfsd', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (7, 'superman', '野原新之助', '', 'ererr@aa.com', 'avatar/default.png', '', 12, 106, 2, 0, 'ROLE_USER', 'sf', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (8, 'qianye', '千叶', '', 'nahua@dd.com', 'avatar/default.png', '', 19, 120, 4, 0, 'ROLE_USER', 'a', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (9, 'xiaozi', '小智', '$2y$13$yT4LHw9n.pYZPKQ8LEHfJOQA55oE/CaL0qurXQpzYesVdkafgJLNC', 'jdjfjjxjjc@qq.com', 'avatar/default.png', '', 167, 168, 2, 0, 'ROLE_USER', '8c6b347e358185457481dc413ac78b68', '2024-08-18 20:36:01', '2024-08-20 08:34:25', NULL);
INSERT INTO `user` VALUES (10, 'kenan', '柯南', '$2y$13$QxEaIRQjybk2Us9q3ejsMuBLAsNSh3UTrQI1usVqKRqWKcEpHGJ6C', 'singvdiy@gmail.com', 'avatar/default.png', '', 24, 109, 1, 0, 'ROLE_USER', 'df', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (11, 'vmoex', '小唧', '', 'sing@gg.con', 'avatar/default.png', '', 109, 103, 2, 0, 'ROLE_USER', 'ad', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (12, 'Koloy', '赤夜萌香', '', 'sinbggg@gg.bh', 'avatar/default.png', '', 72, 200, 2, 0, 'ROLE_USER', 'fas', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);
INSERT INTO `user` VALUES (13, 'caihong', '草莓🍓酱', '', '2508078818@qq.com', 'avatar/default.png', '', 14, 110, 3, 0, 'ROLE_ADMIN', 'sa', '2024-08-18 20:36:01', '2024-08-18 20:36:01', NULL);

-- ----------------------------
-- Table structure for user_thumbup_comment
-- ----------------------------
DROP TABLE IF EXISTS `user_thumbup_comment`;
CREATE TABLE `user_thumbup_comment`  (
  `comment_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`comment_id`, `user_id`) USING BTREE,
  INDEX `IDX_8AE82D41F8697D13`(`comment_id` ASC) USING BTREE,
  INDEX `IDX_8AE82D41A76ED395`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_8AE82D41A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_8AE82D41F8697D13` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_thumbup_comment
-- ----------------------------
INSERT INTO `user_thumbup_comment` VALUES (52, 4);
INSERT INTO `user_thumbup_comment` VALUES (52, 5);
INSERT INTO `user_thumbup_comment` VALUES (53, 4);
INSERT INTO `user_thumbup_comment` VALUES (54, 4);
INSERT INTO `user_thumbup_comment` VALUES (57, 4);
INSERT INTO `user_thumbup_comment` VALUES (57, 10);
INSERT INTO `user_thumbup_comment` VALUES (58, 4);
INSERT INTO `user_thumbup_comment` VALUES (65, 11);
INSERT INTO `user_thumbup_comment` VALUES (67, 11);
INSERT INTO `user_thumbup_comment` VALUES (68, 6);
INSERT INTO `user_thumbup_comment` VALUES (68, 11);
INSERT INTO `user_thumbup_comment` VALUES (70, 5);
INSERT INTO `user_thumbup_comment` VALUES (71, 8);
INSERT INTO `user_thumbup_comment` VALUES (71, 9);
INSERT INTO `user_thumbup_comment` VALUES (72, 9);
INSERT INTO `user_thumbup_comment` VALUES (75, 5);
INSERT INTO `user_thumbup_comment` VALUES (75, 6);
INSERT INTO `user_thumbup_comment` VALUES (78, 9);
INSERT INTO `user_thumbup_comment` VALUES (79, 9);
INSERT INTO `user_thumbup_comment` VALUES (82, 4);
INSERT INTO `user_thumbup_comment` VALUES (82, 5);
INSERT INTO `user_thumbup_comment` VALUES (82, 6);
INSERT INTO `user_thumbup_comment` VALUES (82, 8);
INSERT INTO `user_thumbup_comment` VALUES (82, 9);
INSERT INTO `user_thumbup_comment` VALUES (82, 10);
INSERT INTO `user_thumbup_comment` VALUES (83, 6);
INSERT INTO `user_thumbup_comment` VALUES (89, 4);
INSERT INTO `user_thumbup_comment` VALUES (89, 6);
INSERT INTO `user_thumbup_comment` VALUES (92, 4);
INSERT INTO `user_thumbup_comment` VALUES (92, 6);
INSERT INTO `user_thumbup_comment` VALUES (97, 6);
INSERT INTO `user_thumbup_comment` VALUES (97, 10);
INSERT INTO `user_thumbup_comment` VALUES (98, 6);
INSERT INTO `user_thumbup_comment` VALUES (99, 6);
INSERT INTO `user_thumbup_comment` VALUES (102, 8);
INSERT INTO `user_thumbup_comment` VALUES (103, 6);
INSERT INTO `user_thumbup_comment` VALUES (103, 8);
INSERT INTO `user_thumbup_comment` VALUES (104, 6);
INSERT INTO `user_thumbup_comment` VALUES (107, 1);
INSERT INTO `user_thumbup_comment` VALUES (107, 4);
INSERT INTO `user_thumbup_comment` VALUES (107, 5);
INSERT INTO `user_thumbup_comment` VALUES (107, 10);
INSERT INTO `user_thumbup_comment` VALUES (107, 11);
INSERT INTO `user_thumbup_comment` VALUES (110, 11);
INSERT INTO `user_thumbup_comment` VALUES (111, 4);
INSERT INTO `user_thumbup_comment` VALUES (118, 5);
INSERT INTO `user_thumbup_comment` VALUES (118, 6);
INSERT INTO `user_thumbup_comment` VALUES (118, 9);
INSERT INTO `user_thumbup_comment` VALUES (118, 10);
INSERT INTO `user_thumbup_comment` VALUES (118, 12);
INSERT INTO `user_thumbup_comment` VALUES (124, 6);
INSERT INTO `user_thumbup_comment` VALUES (127, 4);
INSERT INTO `user_thumbup_comment` VALUES (127, 5);
INSERT INTO `user_thumbup_comment` VALUES (127, 11);
INSERT INTO `user_thumbup_comment` VALUES (129, 5);
INSERT INTO `user_thumbup_comment` VALUES (129, 13);
INSERT INTO `user_thumbup_comment` VALUES (132, 5);
INSERT INTO `user_thumbup_comment` VALUES (141, 1);
INSERT INTO `user_thumbup_comment` VALUES (141, 6);
INSERT INTO `user_thumbup_comment` VALUES (143, 4);
INSERT INTO `user_thumbup_comment` VALUES (143, 5);
INSERT INTO `user_thumbup_comment` VALUES (150, 4);
INSERT INTO `user_thumbup_comment` VALUES (150, 5);
INSERT INTO `user_thumbup_comment` VALUES (156, 6);
INSERT INTO `user_thumbup_comment` VALUES (165, 4);
INSERT INTO `user_thumbup_comment` VALUES (176, 4);
INSERT INTO `user_thumbup_comment` VALUES (194, 1);
INSERT INTO `user_thumbup_comment` VALUES (195, 1);
INSERT INTO `user_thumbup_comment` VALUES (198, 1);

-- ----------------------------
-- Table structure for visit
-- ----------------------------
DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_437EE939A76ED395`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_437EE939A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 872 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visit
-- ----------------------------
INSERT INTO `visit` VALUES (1, 1, '172.17.0.1', 'http://127.0.0.1:3110/about', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:50:42');
INSERT INTO `visit` VALUES (2, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:50:43');
INSERT INTO `visit` VALUES (3, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:50:53');
INSERT INTO `visit` VALUES (4, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:50:54');
INSERT INTO `visit` VALUES (5, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:51:00');
INSERT INTO `visit` VALUES (6, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:51:01');
INSERT INTO `visit` VALUES (7, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:51:04');
INSERT INTO `visit` VALUES (8, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:51:39');
INSERT INTO `visit` VALUES (9, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12950?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:51:51');
INSERT INTO `visit` VALUES (10, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:51:57');
INSERT INTO `visit` VALUES (11, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:51:59');
INSERT INTO `visit` VALUES (12, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:52:02');
INSERT INTO `visit` VALUES (13, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:52:10');
INSERT INTO `visit` VALUES (14, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12954?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:52:12');
INSERT INTO `visit` VALUES (15, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:52:22');
INSERT INTO `visit` VALUES (16, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:52:24');
INSERT INTO `visit` VALUES (17, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:52:26');
INSERT INTO `visit` VALUES (18, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:53:11');
INSERT INTO `visit` VALUES (19, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12950?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:53:13');
INSERT INTO `visit` VALUES (20, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:54:15');
INSERT INTO `visit` VALUES (21, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12950?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:54:16');
INSERT INTO `visit` VALUES (22, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:01');
INSERT INTO `visit` VALUES (23, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:02');
INSERT INTO `visit` VALUES (24, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:05');
INSERT INTO `visit` VALUES (25, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:27');
INSERT INTO `visit` VALUES (26, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:27');
INSERT INTO `visit` VALUES (27, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:28');
INSERT INTO `visit` VALUES (28, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:28');
INSERT INTO `visit` VALUES (29, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:31');
INSERT INTO `visit` VALUES (30, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:32');
INSERT INTO `visit` VALUES (31, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:32');
INSERT INTO `visit` VALUES (32, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:32');
INSERT INTO `visit` VALUES (33, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:33');
INSERT INTO `visit` VALUES (34, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:33');
INSERT INTO `visit` VALUES (35, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:37');
INSERT INTO `visit` VALUES (36, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:46');
INSERT INTO `visit` VALUES (37, 1, '172.17.0.1', 'http://127.0.0.1:3110/sign', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:48');
INSERT INTO `visit` VALUES (38, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:55:48');
INSERT INTO `visit` VALUES (39, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:56:54');
INSERT INTO `visit` VALUES (40, 1, '172.17.0.1', 'http://127.0.0.1:3110/users/rank/checkin?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:57:02');
INSERT INTO `visit` VALUES (41, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:57:11');
INSERT INTO `visit` VALUES (42, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&sortBy=pub&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:57:13');
INSERT INTO `visit` VALUES (43, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&sortBy=com&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:57:14');
INSERT INTO `visit` VALUES (44, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12951?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:57:15');
INSERT INTO `visit` VALUES (45, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:57:35');
INSERT INTO `visit` VALUES (46, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:57:36');
INSERT INTO `visit` VALUES (47, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:00');
INSERT INTO `visit` VALUES (48, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:17');
INSERT INTO `visit` VALUES (49, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/create?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:20');
INSERT INTO `visit` VALUES (50, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:22');
INSERT INTO `visit` VALUES (51, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:23');
INSERT INTO `visit` VALUES (52, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:24');
INSERT INTO `visit` VALUES (53, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:24');
INSERT INTO `visit` VALUES (54, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:34');
INSERT INTO `visit` VALUES (55, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:36');
INSERT INTO `visit` VALUES (56, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:39');
INSERT INTO `visit` VALUES (57, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:39');
INSERT INTO `visit` VALUES (58, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:40');
INSERT INTO `visit` VALUES (59, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:40');
INSERT INTO `visit` VALUES (60, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:41');
INSERT INTO `visit` VALUES (61, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:41');
INSERT INTO `visit` VALUES (62, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:42');
INSERT INTO `visit` VALUES (63, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:43');
INSERT INTO `visit` VALUES (64, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:43');
INSERT INTO `visit` VALUES (65, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:43');
INSERT INTO `visit` VALUES (66, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:43');
INSERT INTO `visit` VALUES (67, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:44');
INSERT INTO `visit` VALUES (68, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting/modify', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:47');
INSERT INTO `visit` VALUES (69, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:47');
INSERT INTO `visit` VALUES (70, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting/modify', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:48');
INSERT INTO `visit` VALUES (71, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:48');
INSERT INTO `visit` VALUES (72, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting/modify', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:51');
INSERT INTO `visit` VALUES (73, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:58:51');
INSERT INTO `visit` VALUES (74, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting/modify', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:59:06');
INSERT INTO `visit` VALUES (75, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:59:06');
INSERT INTO `visit` VALUES (76, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting/modify', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:59:11');
INSERT INTO `visit` VALUES (77, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 02:59:12');
INSERT INTO `visit` VALUES (78, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:00:11');
INSERT INTO `visit` VALUES (79, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/create?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:00:17');
INSERT INTO `visit` VALUES (80, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:00:19');
INSERT INTO `visit` VALUES (81, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting/modify', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:01:12');
INSERT INTO `visit` VALUES (82, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:01:12');
INSERT INTO `visit` VALUES (83, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:01:14');
INSERT INTO `visit` VALUES (84, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:01:26');
INSERT INTO `visit` VALUES (85, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting/modify', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:01:41');
INSERT INTO `visit` VALUES (86, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:01:42');
INSERT INTO `visit` VALUES (87, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting/modify', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:04:18');
INSERT INTO `visit` VALUES (88, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:04:18');
INSERT INTO `visit` VALUES (89, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:05:37');
INSERT INTO `visit` VALUES (90, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:05:38');
INSERT INTO `visit` VALUES (91, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:05:40');
INSERT INTO `visit` VALUES (92, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:05:41');
INSERT INTO `visit` VALUES (93, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:05:42');
INSERT INTO `visit` VALUES (94, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:07:40');
INSERT INTO `visit` VALUES (95, 1, '172.17.0.1', 'http://127.0.0.1:3110/member/admin?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:07:45');
INSERT INTO `visit` VALUES (96, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:07:48');
INSERT INTO `visit` VALUES (97, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:07:52');
INSERT INTO `visit` VALUES (98, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:09:35');
INSERT INTO `visit` VALUES (99, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:09:53');
INSERT INTO `visit` VALUES (100, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:10:03');
INSERT INTO `visit` VALUES (101, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:11:07');
INSERT INTO `visit` VALUES (102, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:11:28');
INSERT INTO `visit` VALUES (103, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:11:47');
INSERT INTO `visit` VALUES (104, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:12:00');
INSERT INTO `visit` VALUES (105, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:12:39');
INSERT INTO `visit` VALUES (106, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:12:59');
INSERT INTO `visit` VALUES (107, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:10');
INSERT INTO `visit` VALUES (108, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:34');
INSERT INTO `visit` VALUES (109, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:34');
INSERT INTO `visit` VALUES (110, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:35');
INSERT INTO `visit` VALUES (111, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:35');
INSERT INTO `visit` VALUES (112, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:36');
INSERT INTO `visit` VALUES (113, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:37');
INSERT INTO `visit` VALUES (114, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:38');
INSERT INTO `visit` VALUES (115, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:40');
INSERT INTO `visit` VALUES (116, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:41');
INSERT INTO `visit` VALUES (117, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:42');
INSERT INTO `visit` VALUES (118, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:43');
INSERT INTO `visit` VALUES (119, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:45');
INSERT INTO `visit` VALUES (120, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:46');
INSERT INTO `visit` VALUES (121, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:47');
INSERT INTO `visit` VALUES (122, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:51');
INSERT INTO `visit` VALUES (123, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:51');
INSERT INTO `visit` VALUES (124, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:51');
INSERT INTO `visit` VALUES (125, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:51');
INSERT INTO `visit` VALUES (126, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:13:52');
INSERT INTO `visit` VALUES (127, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:14:01');
INSERT INTO `visit` VALUES (128, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:14:03');
INSERT INTO `visit` VALUES (129, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:14:04');
INSERT INTO `visit` VALUES (130, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:14:05');
INSERT INTO `visit` VALUES (131, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:15:15');
INSERT INTO `visit` VALUES (132, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:15:18');
INSERT INTO `visit` VALUES (133, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:15:20');
INSERT INTO `visit` VALUES (134, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:22:19');
INSERT INTO `visit` VALUES (135, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:33:21');
INSERT INTO `visit` VALUES (136, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:33:59');
INSERT INTO `visit` VALUES (137, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:34:12');
INSERT INTO `visit` VALUES (138, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:35:19');
INSERT INTO `visit` VALUES (139, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:37:31');
INSERT INTO `visit` VALUES (140, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:37:41');
INSERT INTO `visit` VALUES (141, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:37:51');
INSERT INTO `visit` VALUES (142, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:37:57');
INSERT INTO `visit` VALUES (143, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:38:04');
INSERT INTO `visit` VALUES (144, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:38:11');
INSERT INTO `visit` VALUES (145, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:39:03');
INSERT INTO `visit` VALUES (146, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:39:17');
INSERT INTO `visit` VALUES (147, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:39:24');
INSERT INTO `visit` VALUES (148, NULL, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:39:48');
INSERT INTO `visit` VALUES (149, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:40:32');
INSERT INTO `visit` VALUES (150, 9, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:40:41');
INSERT INTO `visit` VALUES (151, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:40:41');
INSERT INTO `visit` VALUES (152, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:40:48');
INSERT INTO `visit` VALUES (153, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:41:49');
INSERT INTO `visit` VALUES (154, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:44:28');
INSERT INTO `visit` VALUES (155, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:47:13');
INSERT INTO `visit` VALUES (156, 9, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:50:00');
INSERT INTO `visit` VALUES (157, 9, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:50:04');
INSERT INTO `visit` VALUES (158, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:50:14');
INSERT INTO `visit` VALUES (159, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/create?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:50:21');
INSERT INTO `visit` VALUES (160, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:50:25');
INSERT INTO `visit` VALUES (161, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:50:34');
INSERT INTO `visit` VALUES (162, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/create', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:53:31');
INSERT INTO `visit` VALUES (163, NULL, '172.17.0.1', 'http://127.0.0.1:3110/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:53:37');
INSERT INTO `visit` VALUES (164, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:53:37');
INSERT INTO `visit` VALUES (165, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:53:42');
INSERT INTO `visit` VALUES (166, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:53:52');
INSERT INTO `visit` VALUES (167, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:53:58');
INSERT INTO `visit` VALUES (168, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 03:54:18');
INSERT INTO `visit` VALUES (169, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:54:28');
INSERT INTO `visit` VALUES (170, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:54:30');
INSERT INTO `visit` VALUES (171, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:54:41');
INSERT INTO `visit` VALUES (172, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:55:29');
INSERT INTO `visit` VALUES (173, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:56:54');
INSERT INTO `visit` VALUES (174, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:56:55');
INSERT INTO `visit` VALUES (175, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:56:56');
INSERT INTO `visit` VALUES (176, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:56:59');
INSERT INTO `visit` VALUES (177, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:56:59');
INSERT INTO `visit` VALUES (178, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:57:04');
INSERT INTO `visit` VALUES (179, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:57:04');
INSERT INTO `visit` VALUES (180, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:57:09');
INSERT INTO `visit` VALUES (181, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:57:09');
INSERT INTO `visit` VALUES (182, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:57:16');
INSERT INTO `visit` VALUES (183, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:57:18');
INSERT INTO `visit` VALUES (184, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:57:20');
INSERT INTO `visit` VALUES (185, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 03:57:20');
INSERT INTO `visit` VALUES (186, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:00:53');
INSERT INTO `visit` VALUES (187, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:00:56');
INSERT INTO `visit` VALUES (188, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:00:57');
INSERT INTO `visit` VALUES (189, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:00:59');
INSERT INTO `visit` VALUES (190, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:01:00');
INSERT INTO `visit` VALUES (191, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:01:01');
INSERT INTO `visit` VALUES (192, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:01:03');
INSERT INTO `visit` VALUES (193, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12954?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:01:09');
INSERT INTO `visit` VALUES (194, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:08');
INSERT INTO `visit` VALUES (195, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:12');
INSERT INTO `visit` VALUES (196, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:23');
INSERT INTO `visit` VALUES (197, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:24');
INSERT INTO `visit` VALUES (198, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:25');
INSERT INTO `visit` VALUES (199, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:31');
INSERT INTO `visit` VALUES (200, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:38');
INSERT INTO `visit` VALUES (201, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:39');
INSERT INTO `visit` VALUES (202, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:39');
INSERT INTO `visit` VALUES (203, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:40');
INSERT INTO `visit` VALUES (204, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:40');
INSERT INTO `visit` VALUES (205, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:41');
INSERT INTO `visit` VALUES (206, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:41');
INSERT INTO `visit` VALUES (207, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:41');
INSERT INTO `visit` VALUES (208, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:42');
INSERT INTO `visit` VALUES (209, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:42');
INSERT INTO `visit` VALUES (210, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:43');
INSERT INTO `visit` VALUES (211, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:43');
INSERT INTO `visit` VALUES (212, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:46');
INSERT INTO `visit` VALUES (213, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:47');
INSERT INTO `visit` VALUES (214, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:47');
INSERT INTO `visit` VALUES (215, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:47');
INSERT INTO `visit` VALUES (216, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:48');
INSERT INTO `visit` VALUES (217, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:48');
INSERT INTO `visit` VALUES (218, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:49');
INSERT INTO `visit` VALUES (219, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:50');
INSERT INTO `visit` VALUES (220, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:50');
INSERT INTO `visit` VALUES (221, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:51');
INSERT INTO `visit` VALUES (222, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:51');
INSERT INTO `visit` VALUES (223, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:51');
INSERT INTO `visit` VALUES (224, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:53');
INSERT INTO `visit` VALUES (225, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:58');
INSERT INTO `visit` VALUES (226, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:02:59');
INSERT INTO `visit` VALUES (227, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:05');
INSERT INTO `visit` VALUES (228, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:07');
INSERT INTO `visit` VALUES (229, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:08');
INSERT INTO `visit` VALUES (230, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:09');
INSERT INTO `visit` VALUES (231, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:10');
INSERT INTO `visit` VALUES (232, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=hot', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:12');
INSERT INTO `visit` VALUES (233, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=all', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:13');
INSERT INTO `visit` VALUES (234, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:17');
INSERT INTO `visit` VALUES (235, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=movie', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:19');
INSERT INTO `visit` VALUES (236, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=music', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:21');
INSERT INTO `visit` VALUES (237, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=other', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:21');
INSERT INTO `visit` VALUES (238, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12966?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:03:25');
INSERT INTO `visit` VALUES (239, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12966', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:05:10');
INSERT INTO `visit` VALUES (240, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:05:26');
INSERT INTO `visit` VALUES (241, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:05:29');
INSERT INTO `visit` VALUES (242, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:05:31');
INSERT INTO `visit` VALUES (243, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:05:33');
INSERT INTO `visit` VALUES (244, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:05:34');
INSERT INTO `visit` VALUES (245, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=announce', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:05:37');
INSERT INTO `visit` VALUES (246, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:05:45');
INSERT INTO `visit` VALUES (247, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:06');
INSERT INTO `visit` VALUES (248, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:09');
INSERT INTO `visit` VALUES (249, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:10');
INSERT INTO `visit` VALUES (250, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:15');
INSERT INTO `visit` VALUES (251, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:17');
INSERT INTO `visit` VALUES (252, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:17');
INSERT INTO `visit` VALUES (253, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:18');
INSERT INTO `visit` VALUES (254, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:18');
INSERT INTO `visit` VALUES (255, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:18');
INSERT INTO `visit` VALUES (256, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:23');
INSERT INTO `visit` VALUES (257, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:23');
INSERT INTO `visit` VALUES (258, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:24');
INSERT INTO `visit` VALUES (259, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:06:47');
INSERT INTO `visit` VALUES (260, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:10:01');
INSERT INTO `visit` VALUES (261, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:10:12');
INSERT INTO `visit` VALUES (262, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:10:31');
INSERT INTO `visit` VALUES (263, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:10:50');
INSERT INTO `visit` VALUES (264, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:11:12');
INSERT INTO `visit` VALUES (265, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:12:01');
INSERT INTO `visit` VALUES (266, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:12:36');
INSERT INTO `visit` VALUES (267, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:12:59');
INSERT INTO `visit` VALUES (268, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:13:54');
INSERT INTO `visit` VALUES (269, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:14:28');
INSERT INTO `visit` VALUES (270, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:15:44');
INSERT INTO `visit` VALUES (271, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:16:01');
INSERT INTO `visit` VALUES (272, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:16:20');
INSERT INTO `visit` VALUES (273, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:16:34');
INSERT INTO `visit` VALUES (274, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:16:50');
INSERT INTO `visit` VALUES (275, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:17:24');
INSERT INTO `visit` VALUES (276, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:17:35');
INSERT INTO `visit` VALUES (277, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:17:42');
INSERT INTO `visit` VALUES (278, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:18:12');
INSERT INTO `visit` VALUES (279, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:20:18');
INSERT INTO `visit` VALUES (280, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:28:37');
INSERT INTO `visit` VALUES (281, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:28:47');
INSERT INTO `visit` VALUES (282, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:28:59');
INSERT INTO `visit` VALUES (283, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:29:31');
INSERT INTO `visit` VALUES (284, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:29:59');
INSERT INTO `visit` VALUES (285, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:30:09');
INSERT INTO `visit` VALUES (286, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:30:17');
INSERT INTO `visit` VALUES (287, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:30:19');
INSERT INTO `visit` VALUES (288, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:30:47');
INSERT INTO `visit` VALUES (289, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:30:48');
INSERT INTO `visit` VALUES (290, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:31:05');
INSERT INTO `visit` VALUES (291, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12950?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:31:09');
INSERT INTO `visit` VALUES (292, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:31:54');
INSERT INTO `visit` VALUES (293, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:31:56');
INSERT INTO `visit` VALUES (294, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:33:09');
INSERT INTO `visit` VALUES (295, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:35:31');
INSERT INTO `visit` VALUES (296, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:36:21');
INSERT INTO `visit` VALUES (297, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:36:48');
INSERT INTO `visit` VALUES (298, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:37:00');
INSERT INTO `visit` VALUES (299, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:37:11');
INSERT INTO `visit` VALUES (300, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:37:34');
INSERT INTO `visit` VALUES (301, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:37:58');
INSERT INTO `visit` VALUES (302, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:38:00');
INSERT INTO `visit` VALUES (303, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:38:01');
INSERT INTO `visit` VALUES (304, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:38:07');
INSERT INTO `visit` VALUES (305, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:38:08');
INSERT INTO `visit` VALUES (306, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=hot', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:38:13');
INSERT INTO `visit` VALUES (307, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=all', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:38:25');
INSERT INTO `visit` VALUES (308, 1, '172.17.0.1', 'http://127.0.0.1:3110/?tab=all', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:38:34');
INSERT INTO `visit` VALUES (309, 1, '172.17.0.1', 'http://127.0.0.1:3110/?tab=all', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:38:39');
INSERT INTO `visit` VALUES (310, 1, '172.17.0.1', 'http://127.0.0.1:3110/?tab=all', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:38:43');
INSERT INTO `visit` VALUES (311, 1, '172.17.0.1', 'http://127.0.0.1:3110/?tab=all', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:39:23');
INSERT INTO `visit` VALUES (312, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&page=2&tab=all', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:39:27');
INSERT INTO `visit` VALUES (313, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&page=4&tab=all', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:39:28');
INSERT INTO `visit` VALUES (314, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&page=5&tab=all', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:39:30');
INSERT INTO `visit` VALUES (315, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?page=5&tab=all', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:39:36');
INSERT INTO `visit` VALUES (316, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-08-20 04:39:38');
INSERT INTO `visit` VALUES (317, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:39:48');
INSERT INTO `visit` VALUES (318, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:39:55');
INSERT INTO `visit` VALUES (319, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:39:57');
INSERT INTO `visit` VALUES (320, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=announce', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:40:11');
INSERT INTO `visit` VALUES (321, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:40:13');
INSERT INTO `visit` VALUES (322, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:40:15');
INSERT INTO `visit` VALUES (323, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:40:28');
INSERT INTO `visit` VALUES (324, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:40:46');
INSERT INTO `visit` VALUES (325, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:40:48');
INSERT INTO `visit` VALUES (326, 9, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:41:01');
INSERT INTO `visit` VALUES (327, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:41:01');
INSERT INTO `visit` VALUES (328, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:51:28');
INSERT INTO `visit` VALUES (329, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:51:41');
INSERT INTO `visit` VALUES (330, 9, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:51:41');
INSERT INTO `visit` VALUES (331, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:51:44');
INSERT INTO `visit` VALUES (332, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:51:47');
INSERT INTO `visit` VALUES (333, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:51:47');
INSERT INTO `visit` VALUES (334, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:51:50');
INSERT INTO `visit` VALUES (335, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:52:18');
INSERT INTO `visit` VALUES (336, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:52:19');
INSERT INTO `visit` VALUES (337, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:52:46');
INSERT INTO `visit` VALUES (338, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:53:21');
INSERT INTO `visit` VALUES (339, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:53:23');
INSERT INTO `visit` VALUES (340, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:53:25');
INSERT INTO `visit` VALUES (341, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 04:53:45');
INSERT INTO `visit` VALUES (342, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:53:48');
INSERT INTO `visit` VALUES (343, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12950?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:53:49');
INSERT INTO `visit` VALUES (344, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:53:51');
INSERT INTO `visit` VALUES (345, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:53:54');
INSERT INTO `visit` VALUES (346, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:54:47');
INSERT INTO `visit` VALUES (347, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:54:49');
INSERT INTO `visit` VALUES (348, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:58:06');
INSERT INTO `visit` VALUES (349, NULL, '172.17.0.1', 'http://127.0.0.1:3110/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:58:09');
INSERT INTO `visit` VALUES (350, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:58:10');
INSERT INTO `visit` VALUES (351, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:58:13');
INSERT INTO `visit` VALUES (352, 1, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:58:22');
INSERT INTO `visit` VALUES (353, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 04:58:22');
INSERT INTO `visit` VALUES (354, NULL, '172.17.0.1', 'http://127.0.0.1:3110/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:00:50');
INSERT INTO `visit` VALUES (355, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:00:51');
INSERT INTO `visit` VALUES (356, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:00:56');
INSERT INTO `visit` VALUES (357, 1, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:01:04');
INSERT INTO `visit` VALUES (358, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:01:04');
INSERT INTO `visit` VALUES (359, NULL, '172.17.0.1', 'http://127.0.0.1:3110/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:07:36');
INSERT INTO `visit` VALUES (360, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:07:36');
INSERT INTO `visit` VALUES (361, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:07:39');
INSERT INTO `visit` VALUES (362, 1, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:07:56');
INSERT INTO `visit` VALUES (363, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:07:56');
INSERT INTO `visit` VALUES (364, NULL, '172.17.0.1', 'http://127.0.0.1:3110/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:09:53');
INSERT INTO `visit` VALUES (365, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:09:53');
INSERT INTO `visit` VALUES (366, NULL, '172.17.0.1', 'http://127.0.0.1:3110/register?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:12:17');
INSERT INTO `visit` VALUES (367, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:12:18');
INSERT INTO `visit` VALUES (368, 1, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:12:24');
INSERT INTO `visit` VALUES (369, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:12:24');
INSERT INTO `visit` VALUES (370, NULL, '172.17.0.1', 'http://127.0.0.1:3110/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:14:07');
INSERT INTO `visit` VALUES (371, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:14:07');
INSERT INTO `visit` VALUES (372, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:14:09');
INSERT INTO `visit` VALUES (373, 1, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:14:15');
INSERT INTO `visit` VALUES (374, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:14:15');
INSERT INTO `visit` VALUES (375, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:21');
INSERT INTO `visit` VALUES (376, NULL, '172.17.0.1', 'http://127.0.0.1:3110/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:24');
INSERT INTO `visit` VALUES (377, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:24');
INSERT INTO `visit` VALUES (378, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:32');
INSERT INTO `visit` VALUES (379, 1, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:38');
INSERT INTO `visit` VALUES (380, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:39');
INSERT INTO `visit` VALUES (381, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:47');
INSERT INTO `visit` VALUES (382, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:48');
INSERT INTO `visit` VALUES (383, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:49');
INSERT INTO `visit` VALUES (384, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:50');
INSERT INTO `visit` VALUES (385, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:51');
INSERT INTO `visit` VALUES (386, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:51');
INSERT INTO `visit` VALUES (387, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:52');
INSERT INTO `visit` VALUES (388, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:15:54');
INSERT INTO `visit` VALUES (389, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:16:22');
INSERT INTO `visit` VALUES (390, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:16:42');
INSERT INTO `visit` VALUES (391, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:16:59');
INSERT INTO `visit` VALUES (392, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:17:05');
INSERT INTO `visit` VALUES (393, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/12995?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:17:13');
INSERT INTO `visit` VALUES (394, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:17:19');
INSERT INTO `visit` VALUES (395, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:17:53');
INSERT INTO `visit` VALUES (396, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:20:48');
INSERT INTO `visit` VALUES (397, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:20:50');
INSERT INTO `visit` VALUES (398, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:24:59');
INSERT INTO `visit` VALUES (399, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:25:01');
INSERT INTO `visit` VALUES (400, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:25:02');
INSERT INTO `visit` VALUES (401, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:25:13');
INSERT INTO `visit` VALUES (402, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:25:15');
INSERT INTO `visit` VALUES (403, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:25:43');
INSERT INTO `visit` VALUES (404, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:25:46');
INSERT INTO `visit` VALUES (405, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:25:50');
INSERT INTO `visit` VALUES (406, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:25:55');
INSERT INTO `visit` VALUES (407, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:26:39');
INSERT INTO `visit` VALUES (408, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:27:42');
INSERT INTO `visit` VALUES (409, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:28:10');
INSERT INTO `visit` VALUES (410, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:28:11');
INSERT INTO `visit` VALUES (411, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:30:48');
INSERT INTO `visit` VALUES (412, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:30:49');
INSERT INTO `visit` VALUES (413, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:30:51');
INSERT INTO `visit` VALUES (414, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:30:51');
INSERT INTO `visit` VALUES (415, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:30:53');
INSERT INTO `visit` VALUES (416, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:30:53');
INSERT INTO `visit` VALUES (417, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:30:59');
INSERT INTO `visit` VALUES (418, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:00');
INSERT INTO `visit` VALUES (419, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:00');
INSERT INTO `visit` VALUES (420, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:00');
INSERT INTO `visit` VALUES (421, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:00');
INSERT INTO `visit` VALUES (422, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:01');
INSERT INTO `visit` VALUES (423, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:02');
INSERT INTO `visit` VALUES (424, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:02');
INSERT INTO `visit` VALUES (425, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:03');
INSERT INTO `visit` VALUES (426, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:03');
INSERT INTO `visit` VALUES (427, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:03');
INSERT INTO `visit` VALUES (428, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:11');
INSERT INTO `visit` VALUES (429, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:22');
INSERT INTO `visit` VALUES (430, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:35');
INSERT INTO `visit` VALUES (431, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:36');
INSERT INTO `visit` VALUES (432, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:37');
INSERT INTO `visit` VALUES (433, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:37');
INSERT INTO `visit` VALUES (434, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:37');
INSERT INTO `visit` VALUES (435, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:39');
INSERT INTO `visit` VALUES (436, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:40');
INSERT INTO `visit` VALUES (437, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:40');
INSERT INTO `visit` VALUES (438, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:40');
INSERT INTO `visit` VALUES (439, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:40');
INSERT INTO `visit` VALUES (440, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:31:41');
INSERT INTO `visit` VALUES (441, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:32:53');
INSERT INTO `visit` VALUES (442, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:32:54');
INSERT INTO `visit` VALUES (443, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:32:58');
INSERT INTO `visit` VALUES (444, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:33:36');
INSERT INTO `visit` VALUES (445, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:58:18');
INSERT INTO `visit` VALUES (446, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:58:24');
INSERT INTO `visit` VALUES (447, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:59:15');
INSERT INTO `visit` VALUES (448, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 05:59:22');
INSERT INTO `visit` VALUES (449, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:59:30');
INSERT INTO `visit` VALUES (450, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:59:32');
INSERT INTO `visit` VALUES (451, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:59:34');
INSERT INTO `visit` VALUES (452, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 05:59:34');
INSERT INTO `visit` VALUES (453, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:01:17');
INSERT INTO `visit` VALUES (454, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:01:18');
INSERT INTO `visit` VALUES (455, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:01:23');
INSERT INTO `visit` VALUES (456, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:01:26');
INSERT INTO `visit` VALUES (457, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:01:32');
INSERT INTO `visit` VALUES (458, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:01:37');
INSERT INTO `visit` VALUES (459, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:01:37');
INSERT INTO `visit` VALUES (460, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:02:54');
INSERT INTO `visit` VALUES (461, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:03:20');
INSERT INTO `visit` VALUES (462, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:04:06');
INSERT INTO `visit` VALUES (463, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:11:37');
INSERT INTO `visit` VALUES (464, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:16:07');
INSERT INTO `visit` VALUES (465, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:16:14');
INSERT INTO `visit` VALUES (466, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:16:18');
INSERT INTO `visit` VALUES (467, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:16:18');
INSERT INTO `visit` VALUES (468, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:41:01');
INSERT INTO `visit` VALUES (469, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:41:13');
INSERT INTO `visit` VALUES (470, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 06:41:22');
INSERT INTO `visit` VALUES (471, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:41:54');
INSERT INTO `visit` VALUES (472, NULL, '172.17.0.1', 'http://127.0.0.1:3110/post/12985?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:42:56');
INSERT INTO `visit` VALUES (473, NULL, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:42:58');
INSERT INTO `visit` VALUES (474, NULL, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:43:02');
INSERT INTO `visit` VALUES (475, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:43:02');
INSERT INTO `visit` VALUES (476, NULL, '172.17.0.1', 'http://127.0.0.1:3110/announce/history?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:43:07');
INSERT INTO `visit` VALUES (477, NULL, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:43:12');
INSERT INTO `visit` VALUES (478, NULL, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:43:13');
INSERT INTO `visit` VALUES (479, NULL, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:43:14');
INSERT INTO `visit` VALUES (480, NULL, '172.17.0.1', 'http://127.0.0.1:3110/tos?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:43:17');
INSERT INTO `visit` VALUES (481, NULL, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', '2024-08-20 06:43:19');
INSERT INTO `visit` VALUES (482, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:44:10');
INSERT INTO `visit` VALUES (483, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:45:25');
INSERT INTO `visit` VALUES (484, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:45:29');
INSERT INTO `visit` VALUES (485, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:45:53');
INSERT INTO `visit` VALUES (486, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:45:56');
INSERT INTO `visit` VALUES (487, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:10');
INSERT INTO `visit` VALUES (488, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:10');
INSERT INTO `visit` VALUES (489, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:16');
INSERT INTO `visit` VALUES (490, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:17');
INSERT INTO `visit` VALUES (491, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:17');
INSERT INTO `visit` VALUES (492, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:18');
INSERT INTO `visit` VALUES (493, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:19');
INSERT INTO `visit` VALUES (494, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:19');
INSERT INTO `visit` VALUES (495, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:19');
INSERT INTO `visit` VALUES (496, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:20');
INSERT INTO `visit` VALUES (497, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:26');
INSERT INTO `visit` VALUES (498, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:26');
INSERT INTO `visit` VALUES (499, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:27');
INSERT INTO `visit` VALUES (500, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:27');
INSERT INTO `visit` VALUES (501, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:27');
INSERT INTO `visit` VALUES (502, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:27');
INSERT INTO `visit` VALUES (503, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:28');
INSERT INTO `visit` VALUES (504, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:30');
INSERT INTO `visit` VALUES (505, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=movie', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:33');
INSERT INTO `visit` VALUES (506, 1, '172.17.0.1', 'http://127.0.0.1:3110/?v=66c41bc1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:46:33');
INSERT INTO `visit` VALUES (507, 1, '172.17.0.1', 'http://127.0.0.1:3110/?tab=movie', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:07');
INSERT INTO `visit` VALUES (508, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:32');
INSERT INTO `visit` VALUES (509, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=manzhan', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:34');
INSERT INTO `visit` VALUES (510, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:36');
INSERT INTO `visit` VALUES (511, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=water', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:39');
INSERT INTO `visit` VALUES (512, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:46');
INSERT INTO `visit` VALUES (513, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=water', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:47');
INSERT INTO `visit` VALUES (514, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:50');
INSERT INTO `visit` VALUES (515, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:52');
INSERT INTO `visit` VALUES (516, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:53');
INSERT INTO `visit` VALUES (517, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:54');
INSERT INTO `visit` VALUES (518, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:56');
INSERT INTO `visit` VALUES (519, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=game', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:47:57');
INSERT INTO `visit` VALUES (520, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=pic', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:48:00');
INSERT INTO `visit` VALUES (521, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=tv', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:48:04');
INSERT INTO `visit` VALUES (522, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/?_pjax=.content-body&tab=movie', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:48:05');
INSERT INTO `visit` VALUES (523, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:48:09');
INSERT INTO `visit` VALUES (524, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=movie', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:48:12');
INSERT INTO `visit` VALUES (525, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12965?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:48:18');
INSERT INTO `visit` VALUES (526, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:48:26');
INSERT INTO `visit` VALUES (527, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:50:27');
INSERT INTO `visit` VALUES (528, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:50:27');
INSERT INTO `visit` VALUES (529, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:50:33');
INSERT INTO `visit` VALUES (530, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:50:47');
INSERT INTO `visit` VALUES (531, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:50:52');
INSERT INTO `visit` VALUES (532, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:50:53');
INSERT INTO `visit` VALUES (533, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:00');
INSERT INTO `visit` VALUES (534, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:00');
INSERT INTO `visit` VALUES (535, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:26');
INSERT INTO `visit` VALUES (536, 1, '172.17.0.1', 'http://127.0.0.1:3110/users/rank/checkin?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:29');
INSERT INTO `visit` VALUES (537, 1, '172.17.0.1', 'http://127.0.0.1:3110/users/rank/checkin?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:31');
INSERT INTO `visit` VALUES (538, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:41');
INSERT INTO `visit` VALUES (539, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:48');
INSERT INTO `visit` VALUES (540, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=hot', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:51');
INSERT INTO `visit` VALUES (541, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=all', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:52');
INSERT INTO `visit` VALUES (542, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=fuli', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:53');
INSERT INTO `visit` VALUES (543, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:53');
INSERT INTO `visit` VALUES (544, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:54');
INSERT INTO `visit` VALUES (545, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:51:58');
INSERT INTO `visit` VALUES (546, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:52:07');
INSERT INTO `visit` VALUES (547, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:52:07');
INSERT INTO `visit` VALUES (548, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:52:16');
INSERT INTO `visit` VALUES (549, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:52:17');
INSERT INTO `visit` VALUES (550, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:57:36');
INSERT INTO `visit` VALUES (551, 1, '172.17.0.1', 'http://127.0.0.1:3110/users/rank/checkin?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:57:38');
INSERT INTO `visit` VALUES (552, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/create?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:57:39');
INSERT INTO `visit` VALUES (553, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:57:54');
INSERT INTO `visit` VALUES (554, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:57:58');
INSERT INTO `visit` VALUES (555, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:58:05');
INSERT INTO `visit` VALUES (556, 1, '172.17.0.1', 'http://127.0.0.1:3110/users/rank/gold?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:58:08');
INSERT INTO `visit` VALUES (557, 1, '172.17.0.1', 'http://127.0.0.1:3110/member/jaggle?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:58:11');
INSERT INTO `visit` VALUES (558, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:58:29');
INSERT INTO `visit` VALUES (559, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:58:31');
INSERT INTO `visit` VALUES (560, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:58:34');
INSERT INTO `visit` VALUES (561, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:58:37');
INSERT INTO `visit` VALUES (562, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:59:32');
INSERT INTO `visit` VALUES (563, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12951?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 06:59:39');
INSERT INTO `visit` VALUES (564, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:00:37');
INSERT INTO `visit` VALUES (565, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:00:54');
INSERT INTO `visit` VALUES (566, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:00:54');
INSERT INTO `visit` VALUES (567, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:06:40');
INSERT INTO `visit` VALUES (568, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:06:44');
INSERT INTO `visit` VALUES (569, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:06:55');
INSERT INTO `visit` VALUES (570, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:06:55');
INSERT INTO `visit` VALUES (571, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:13:48');
INSERT INTO `visit` VALUES (572, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:13:51');
INSERT INTO `visit` VALUES (573, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:14:00');
INSERT INTO `visit` VALUES (574, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:14:00');
INSERT INTO `visit` VALUES (575, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:18:24');
INSERT INTO `visit` VALUES (576, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:18:27');
INSERT INTO `visit` VALUES (577, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:18:37');
INSERT INTO `visit` VALUES (578, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:18:45');
INSERT INTO `visit` VALUES (579, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:18:48');
INSERT INTO `visit` VALUES (580, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:18:48');
INSERT INTO `visit` VALUES (581, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:19:47');
INSERT INTO `visit` VALUES (582, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:19:49');
INSERT INTO `visit` VALUES (583, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:19:52');
INSERT INTO `visit` VALUES (584, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:19:52');
INSERT INTO `visit` VALUES (585, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:20:45');
INSERT INTO `visit` VALUES (586, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:20:48');
INSERT INTO `visit` VALUES (587, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:20:49');
INSERT INTO `visit` VALUES (588, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:21:07');
INSERT INTO `visit` VALUES (589, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:21:09');
INSERT INTO `visit` VALUES (590, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:21:18');
INSERT INTO `visit` VALUES (591, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:21:18');
INSERT INTO `visit` VALUES (592, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:21:57');
INSERT INTO `visit` VALUES (593, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:22:00');
INSERT INTO `visit` VALUES (594, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:22:00');
INSERT INTO `visit` VALUES (595, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:22:43');
INSERT INTO `visit` VALUES (596, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:22:46');
INSERT INTO `visit` VALUES (597, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:22:46');
INSERT INTO `visit` VALUES (598, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:23:42');
INSERT INTO `visit` VALUES (599, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:23:51');
INSERT INTO `visit` VALUES (600, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:23:51');
INSERT INTO `visit` VALUES (601, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:25:08');
INSERT INTO `visit` VALUES (602, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:25:09');
INSERT INTO `visit` VALUES (603, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:25:13');
INSERT INTO `visit` VALUES (604, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:25:14');
INSERT INTO `visit` VALUES (605, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:25:17');
INSERT INTO `visit` VALUES (606, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:25:17');
INSERT INTO `visit` VALUES (607, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:25:23');
INSERT INTO `visit` VALUES (608, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:25:57');
INSERT INTO `visit` VALUES (609, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:25:57');
INSERT INTO `visit` VALUES (610, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:27:40');
INSERT INTO `visit` VALUES (611, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:34:15');
INSERT INTO `visit` VALUES (612, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:34:20');
INSERT INTO `visit` VALUES (613, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:34:33');
INSERT INTO `visit` VALUES (614, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:35:00');
INSERT INTO `visit` VALUES (615, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:35:14');
INSERT INTO `visit` VALUES (616, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:35:18');
INSERT INTO `visit` VALUES (617, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:35:30');
INSERT INTO `visit` VALUES (618, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:35:30');
INSERT INTO `visit` VALUES (619, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:39:12');
INSERT INTO `visit` VALUES (620, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:16');
INSERT INTO `visit` VALUES (621, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:19');
INSERT INTO `visit` VALUES (622, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:19');
INSERT INTO `visit` VALUES (623, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:29');
INSERT INTO `visit` VALUES (624, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:34');
INSERT INTO `visit` VALUES (625, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:39');
INSERT INTO `visit` VALUES (626, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:40');
INSERT INTO `visit` VALUES (627, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:49');
INSERT INTO `visit` VALUES (628, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:52');
INSERT INTO `visit` VALUES (629, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:39:52');
INSERT INTO `visit` VALUES (630, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:40:58');
INSERT INTO `visit` VALUES (631, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:41:08');
INSERT INTO `visit` VALUES (632, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:41:10');
INSERT INTO `visit` VALUES (633, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:41:14');
INSERT INTO `visit` VALUES (634, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:41:15');
INSERT INTO `visit` VALUES (635, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:41:53');
INSERT INTO `visit` VALUES (636, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:41:55');
INSERT INTO `visit` VALUES (637, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:42:00');
INSERT INTO `visit` VALUES (638, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:42:00');
INSERT INTO `visit` VALUES (639, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:42:35');
INSERT INTO `visit` VALUES (640, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:42:38');
INSERT INTO `visit` VALUES (641, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:42:41');
INSERT INTO `visit` VALUES (642, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:42:41');
INSERT INTO `visit` VALUES (643, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:42:52');
INSERT INTO `visit` VALUES (644, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:42:52');
INSERT INTO `visit` VALUES (645, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:42:54');
INSERT INTO `visit` VALUES (646, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:43:41');
INSERT INTO `visit` VALUES (647, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:43:43');
INSERT INTO `visit` VALUES (648, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:44:16');
INSERT INTO `visit` VALUES (649, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:44:46');
INSERT INTO `visit` VALUES (650, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:44:49');
INSERT INTO `visit` VALUES (651, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:44:53');
INSERT INTO `visit` VALUES (652, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:44:54');
INSERT INTO `visit` VALUES (653, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:47:09');
INSERT INTO `visit` VALUES (654, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:47:09');
INSERT INTO `visit` VALUES (655, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:47:54');
INSERT INTO `visit` VALUES (656, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:48:23');
INSERT INTO `visit` VALUES (657, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:51:39');
INSERT INTO `visit` VALUES (658, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:51:44');
INSERT INTO `visit` VALUES (659, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:51:51');
INSERT INTO `visit` VALUES (660, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:51:51');
INSERT INTO `visit` VALUES (661, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:52:02');
INSERT INTO `visit` VALUES (662, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:52:03');
INSERT INTO `visit` VALUES (663, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:53:14');
INSERT INTO `visit` VALUES (664, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:53:16');
INSERT INTO `visit` VALUES (665, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:53:22');
INSERT INTO `visit` VALUES (666, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:53:43');
INSERT INTO `visit` VALUES (667, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:54:00');
INSERT INTO `visit` VALUES (668, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:54:46');
INSERT INTO `visit` VALUES (669, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:54:48');
INSERT INTO `visit` VALUES (670, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:54:56');
INSERT INTO `visit` VALUES (671, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:55:01');
INSERT INTO `visit` VALUES (672, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:55:05');
INSERT INTO `visit` VALUES (673, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 07:55:11');
INSERT INTO `visit` VALUES (674, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:55:17');
INSERT INTO `visit` VALUES (675, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:55:35');
INSERT INTO `visit` VALUES (676, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:56:54');
INSERT INTO `visit` VALUES (677, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:57:11');
INSERT INTO `visit` VALUES (678, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:57:16');
INSERT INTO `visit` VALUES (679, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:57:25');
INSERT INTO `visit` VALUES (680, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:57:59');
INSERT INTO `visit` VALUES (681, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:58:01');
INSERT INTO `visit` VALUES (682, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:58:41');
INSERT INTO `visit` VALUES (683, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:59:03');
INSERT INTO `visit` VALUES (684, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 07:59:19');
INSERT INTO `visit` VALUES (685, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:00:17');
INSERT INTO `visit` VALUES (686, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:00:41');
INSERT INTO `visit` VALUES (687, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:01:09');
INSERT INTO `visit` VALUES (688, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:02');
INSERT INTO `visit` VALUES (689, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:06');
INSERT INTO `visit` VALUES (690, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:09');
INSERT INTO `visit` VALUES (691, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:11');
INSERT INTO `visit` VALUES (692, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:16');
INSERT INTO `visit` VALUES (693, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:19');
INSERT INTO `visit` VALUES (694, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:20');
INSERT INTO `visit` VALUES (695, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:22');
INSERT INTO `visit` VALUES (696, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:23');
INSERT INTO `visit` VALUES (697, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:06:23');
INSERT INTO `visit` VALUES (698, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:07:10');
INSERT INTO `visit` VALUES (699, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:07:11');
INSERT INTO `visit` VALUES (700, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:07:11');
INSERT INTO `visit` VALUES (701, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:07:13');
INSERT INTO `visit` VALUES (702, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:07:14');
INSERT INTO `visit` VALUES (703, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:07:20');
INSERT INTO `visit` VALUES (704, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:07:20');
INSERT INTO `visit` VALUES (705, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:07:30');
INSERT INTO `visit` VALUES (706, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:07:30');
INSERT INTO `visit` VALUES (707, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:08:04');
INSERT INTO `visit` VALUES (708, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:08:04');
INSERT INTO `visit` VALUES (709, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:09:07');
INSERT INTO `visit` VALUES (710, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:09:07');
INSERT INTO `visit` VALUES (711, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:09:21');
INSERT INTO `visit` VALUES (712, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:09:22');
INSERT INTO `visit` VALUES (713, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:09:23');
INSERT INTO `visit` VALUES (714, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:09:25');
INSERT INTO `visit` VALUES (715, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:09:27');
INSERT INTO `visit` VALUES (716, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:09:28');
INSERT INTO `visit` VALUES (717, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:09:29');
INSERT INTO `visit` VALUES (718, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:11:29');
INSERT INTO `visit` VALUES (719, 9, '172.17.0.1', 'http://127.0.0.1:3110/about', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:11:32');
INSERT INTO `visit` VALUES (720, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:11:33');
INSERT INTO `visit` VALUES (721, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:11:35');
INSERT INTO `visit` VALUES (722, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:11:37');
INSERT INTO `visit` VALUES (723, 9, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:11:40');
INSERT INTO `visit` VALUES (724, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '2024-08-20 08:11:41');
INSERT INTO `visit` VALUES (725, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:11:43');
INSERT INTO `visit` VALUES (726, 1, '172.17.0.1', 'http://127.0.0.1:3110/bind-chat/send', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:11:46');
INSERT INTO `visit` VALUES (727, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:11:46');
INSERT INTO `visit` VALUES (728, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:11:57');
INSERT INTO `visit` VALUES (729, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&sortBy=pub&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:12:00');
INSERT INTO `visit` VALUES (730, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&sortBy=com&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:12:01');
INSERT INTO `visit` VALUES (731, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:12:02');
INSERT INTO `visit` VALUES (732, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:14:52');
INSERT INTO `visit` VALUES (733, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:14:53');
INSERT INTO `visit` VALUES (734, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:14:56');
INSERT INTO `visit` VALUES (735, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:14:56');
INSERT INTO `visit` VALUES (736, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:14:57');
INSERT INTO `visit` VALUES (737, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:00');
INSERT INTO `visit` VALUES (738, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:04');
INSERT INTO `visit` VALUES (739, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:05');
INSERT INTO `visit` VALUES (740, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:06');
INSERT INTO `visit` VALUES (741, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:07');
INSERT INTO `visit` VALUES (742, 1, '172.17.0.1', 'http://127.0.0.1:3110/contribute?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:10');
INSERT INTO `visit` VALUES (743, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:12');
INSERT INTO `visit` VALUES (744, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:13');
INSERT INTO `visit` VALUES (745, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:15:15');
INSERT INTO `visit` VALUES (746, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:21:10');
INSERT INTO `visit` VALUES (747, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:21:11');
INSERT INTO `visit` VALUES (748, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:21:12');
INSERT INTO `visit` VALUES (749, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:21:14');
INSERT INTO `visit` VALUES (750, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12977?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:21:16');
INSERT INTO `visit` VALUES (751, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:21:43');
INSERT INTO `visit` VALUES (752, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:21:54');
INSERT INTO `visit` VALUES (753, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:08');
INSERT INTO `visit` VALUES (754, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/create?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:10');
INSERT INTO `visit` VALUES (755, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:15');
INSERT INTO `visit` VALUES (756, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:16');
INSERT INTO `visit` VALUES (757, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:17');
INSERT INTO `visit` VALUES (758, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:18');
INSERT INTO `visit` VALUES (759, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:18');
INSERT INTO `visit` VALUES (760, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:19');
INSERT INTO `visit` VALUES (761, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:19');
INSERT INTO `visit` VALUES (762, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:20');
INSERT INTO `visit` VALUES (763, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:23');
INSERT INTO `visit` VALUES (764, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:23');
INSERT INTO `visit` VALUES (765, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:24');
INSERT INTO `visit` VALUES (766, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:30');
INSERT INTO `visit` VALUES (767, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:30');
INSERT INTO `visit` VALUES (768, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:31');
INSERT INTO `visit` VALUES (769, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:31');
INSERT INTO `visit` VALUES (770, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/message?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:32');
INSERT INTO `visit` VALUES (771, 1, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:32');
INSERT INTO `visit` VALUES (772, 1, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:33');
INSERT INTO `visit` VALUES (773, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:37');
INSERT INTO `visit` VALUES (774, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:38');
INSERT INTO `visit` VALUES (775, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:39');
INSERT INTO `visit` VALUES (776, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:39');
INSERT INTO `visit` VALUES (777, 1, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:22:59');
INSERT INTO `visit` VALUES (778, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:03');
INSERT INTO `visit` VALUES (779, 1, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:04');
INSERT INTO `visit` VALUES (780, 1, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:05');
INSERT INTO `visit` VALUES (781, 1, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:05');
INSERT INTO `visit` VALUES (782, 1, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:06');
INSERT INTO `visit` VALUES (783, 1, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:07');
INSERT INTO `visit` VALUES (784, NULL, '172.17.0.1', 'http://127.0.0.1:3110/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:14');
INSERT INTO `visit` VALUES (785, NULL, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:14');
INSERT INTO `visit` VALUES (786, NULL, '172.17.0.1', 'http://127.0.0.1:3110/register?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:17');
INSERT INTO `visit` VALUES (787, NULL, '172.17.0.1', 'http://127.0.0.1:3110/login?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:19');
INSERT INTO `visit` VALUES (788, 9, '172.17.0.1', 'http://127.0.0.1:3110/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:25');
INSERT INTO `visit` VALUES (789, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:26');
INSERT INTO `visit` VALUES (790, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/12950?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:30');
INSERT INTO `visit` VALUES (791, 9, '172.17.0.1', 'http://127.0.0.1:3110/sign', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:35');
INSERT INTO `visit` VALUES (792, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/12950?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:36');
INSERT INTO `visit` VALUES (793, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:37');
INSERT INTO `visit` VALUES (794, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:39');
INSERT INTO `visit` VALUES (795, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:40');
INSERT INTO `visit` VALUES (796, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:41');
INSERT INTO `visit` VALUES (797, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:44');
INSERT INTO `visit` VALUES (798, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/message', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:44');
INSERT INTO `visit` VALUES (799, 9, '172.17.0.1', 'http://127.0.0.1:3110/set-message-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:45');
INSERT INTO `visit` VALUES (800, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:54');
INSERT INTO `visit` VALUES (801, 9, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:54');
INSERT INTO `visit` VALUES (802, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/notice?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:55');
INSERT INTO `visit` VALUES (803, 9, '172.17.0.1', 'http://127.0.0.1:3110/set-notice-red', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:55');
INSERT INTO `visit` VALUES (804, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:34:56');
INSERT INTO `visit` VALUES (805, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:35:05');
INSERT INTO `visit` VALUES (806, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:35:11');
INSERT INTO `visit` VALUES (807, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:11');
INSERT INTO `visit` VALUES (808, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/create?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:15');
INSERT INTO `visit` VALUES (809, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:20');
INSERT INTO `visit` VALUES (810, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:21');
INSERT INTO `visit` VALUES (811, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:21');
INSERT INTO `visit` VALUES (812, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:50');
INSERT INTO `visit` VALUES (813, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:50');
INSERT INTO `visit` VALUES (814, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:51');
INSERT INTO `visit` VALUES (815, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:53');
INSERT INTO `visit` VALUES (816, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:36:55');
INSERT INTO `visit` VALUES (817, 9, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:03');
INSERT INTO `visit` VALUES (818, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:03');
INSERT INTO `visit` VALUES (819, 9, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:05');
INSERT INTO `visit` VALUES (820, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:05');
INSERT INTO `visit` VALUES (821, 9, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:07');
INSERT INTO `visit` VALUES (822, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:07');
INSERT INTO `visit` VALUES (823, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:14');
INSERT INTO `visit` VALUES (824, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:15');
INSERT INTO `visit` VALUES (825, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:15');
INSERT INTO `visit` VALUES (826, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/create?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:22');
INSERT INTO `visit` VALUES (827, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:24');
INSERT INTO `visit` VALUES (828, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:25');
INSERT INTO `visit` VALUES (829, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:27');
INSERT INTO `visit` VALUES (830, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:28');
INSERT INTO `visit` VALUES (831, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:30');
INSERT INTO `visit` VALUES (832, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body&sortBy=pub&tab=Vmoex', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:32');
INSERT INTO `visit` VALUES (833, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:35');
INSERT INTO `visit` VALUES (834, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:35');
INSERT INTO `visit` VALUES (835, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:36');
INSERT INTO `visit` VALUES (836, 9, '172.17.0.1', 'http://127.0.0.1:3110/set-locale', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:41');
INSERT INTO `visit` VALUES (837, 9, '172.17.0.1', 'http://127.0.0.1:3110/about', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:37:42');
INSERT INTO `visit` VALUES (838, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:38:24');
INSERT INTO `visit` VALUES (839, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:38:25');
INSERT INTO `visit` VALUES (840, 9, '172.17.0.1', 'http://127.0.0.1:3110/about', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:38:42');
INSERT INTO `visit` VALUES (841, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:38:44');
INSERT INTO `visit` VALUES (842, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:38:45');
INSERT INTO `visit` VALUES (843, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/home?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:38:46');
INSERT INTO `visit` VALUES (844, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:38:48');
INSERT INTO `visit` VALUES (845, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:38:59');
INSERT INTO `visit` VALUES (846, 9, '172.17.0.1', 'http://127.0.0.1:3110/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:02');
INSERT INTO `visit` VALUES (847, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:04');
INSERT INTO `visit` VALUES (848, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:05');
INSERT INTO `visit` VALUES (849, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:22');
INSERT INTO `visit` VALUES (850, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:23');
INSERT INTO `visit` VALUES (851, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:24');
INSERT INTO `visit` VALUES (852, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:26');
INSERT INTO `visit` VALUES (853, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/12962?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:27');
INSERT INTO `visit` VALUES (854, 9, '172.17.0.1', 'http://127.0.0.1:3110/member/Koloy?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:30');
INSERT INTO `visit` VALUES (855, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:32');
INSERT INTO `visit` VALUES (856, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:33');
INSERT INTO `visit` VALUES (857, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:34');
INSERT INTO `visit` VALUES (858, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:35');
INSERT INTO `visit` VALUES (859, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:35');
INSERT INTO `visit` VALUES (860, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:36');
INSERT INTO `visit` VALUES (861, 9, '172.17.0.1', 'http://127.0.0.1:3110/member/admin?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:38');
INSERT INTO `visit` VALUES (862, 9, '172.17.0.1', 'http://127.0.0.1:3110/member/xiaozi?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:41');
INSERT INTO `visit` VALUES (863, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/12956?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:47');
INSERT INTO `visit` VALUES (864, 9, '172.17.0.1', 'http://127.0.0.1:3110/post/12952?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:39:56');
INSERT INTO `visit` VALUES (865, 9, '172.17.0.1', 'http://127.0.0.1:3110/?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:40:04');
INSERT INTO `visit` VALUES (866, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:40:05');
INSERT INTO `visit` VALUES (867, 9, '172.17.0.1', 'http://127.0.0.1:3110/user/setting?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:40:08');
INSERT INTO `visit` VALUES (868, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:40:10');
INSERT INTO `visit` VALUES (869, 9, '172.17.0.1', 'http://127.0.0.1:3110/about?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:40:15');
INSERT INTO `visit` VALUES (870, 9, '172.17.0.1', 'http://127.0.0.1:3110/chat?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:40:16');
INSERT INTO `visit` VALUES (871, 9, '172.17.0.1', 'http://127.0.0.1:3110/tabs?_pjax=.content-body', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-20 08:40:17');

SET FOREIGN_KEY_CHECKS = 1;
