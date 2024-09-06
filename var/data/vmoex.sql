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

 Date: 06/09/2024 13:48:11
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of active
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of announce
-- ----------------------------
INSERT INTO `announce` VALUES (1, '   欢迎来到Vmoex社区！😊', 1, '2024-08-20 12:55:46', '2024-08-20 12:55:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------

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
INSERT INTO `followers` VALUES (2, 1);
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

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
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorId` int NULL DEFAULT NULL,
  `views` int NOT NULL,
  `isTop` tinyint(1) NOT NULL,
  `tab_id` int NULL DEFAULT NULL,
  `last_comment_at` datetime NOT NULL DEFAULT current_timestamp,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_5A8A6C8DA196F9FD`(`authorId` ASC) USING BTREE,
  INDEX `IDX_5A8A6C8D8D0C9323`(`tab_id` ASC) USING BTREE,
  CONSTRAINT `FK_5A8A6C8D8D0C9323` FOREIGN KEY (`tab_id`) REFERENCES `tab` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_5A8A6C8DA196F9FD` FOREIGN KEY (`authorId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for post_blocked
-- ----------------------------
DROP TABLE IF EXISTS `post_blocked`;
CREATE TABLE `post_blocked`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `created_at` datetime NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id` ASC, `post_id` ASC) USING BTREE,
  INDEX `post_id`(`post_id` ASC) USING BTREE,
  CONSTRAINT `post_blocked_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `post_blocked_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_blocked
-- ----------------------------

-- ----------------------------
-- Table structure for post_favorites
-- ----------------------------
DROP TABLE IF EXISTS `post_favorites`;
CREATE TABLE `post_favorites`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `created_at` datetime NULL DEFAULT current_timestamp,
  `updated_at` datetime NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `post_id`(`post_id` ASC) USING BTREE,
  CONSTRAINT `post_favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `post_favorites_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for post_thanks
-- ----------------------------
DROP TABLE IF EXISTS `post_thanks`;
CREATE TABLE `post_thanks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `post_id` int NOT NULL,
  `created_at` datetime NULL DEFAULT current_timestamp,
  `updated_at` datetime NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sender_id`(`sender_id` ASC) USING BTREE,
  INDEX `receiver_id`(`receiver_id` ASC) USING BTREE,
  INDEX `post_id`(`post_id` ASC) USING BTREE,
  CONSTRAINT `post_thanks_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `post_thanks_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `post_thanks_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_thanks
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sign
-- ----------------------------

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
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_73E3430C727ACA70`(`parent_id` ASC) USING BTREE,
  CONSTRAINT `FK_73E3430C727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `tab` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tab
-- ----------------------------
INSERT INTO `tab` VALUES (1, '日常', 'rc', NULL, 1, '');
INSERT INTO `tab` VALUES (2, '闲聊灌水', 'xlgs', 1, 2, '');
INSERT INTO `tab` VALUES (3, '职场吐槽', 'zctc', 1, 2, '');
INSERT INTO `tab` VALUES (4, '好玩', 'hw', NULL, 1, '');
INSERT INTO `tab` VALUES (5, '分享发现', 'fxfx', 4, 2, '');
INSERT INTO `tab` VALUES (6, '发起活动', 'fqhd', 4, 2, '');
INSERT INTO `tab` VALUES (7, '奇思妙想', 'qsmx', 4, 2, '');
INSERT INTO `tab` VALUES (8, '问答', 'wd', NULL, 1, '');
INSERT INTO `tab` VALUES (9, '问题求助', 'wdqz', 8, 2, '');
INSERT INTO `tab` VALUES (10, '技术', 'js', NULL, 1, '');
INSERT INTO `tab` VALUES (11, '编程', 'bc', 10, 2, '');
INSERT INTO `tab` VALUES (12, '分享创造', 'fxcz', 10, 2, '');
INSERT INTO `tab` VALUES (13, '交易', 'jy', NULL, 1, '');
INSERT INTO `tab` VALUES (14, '二手交易', 'esjy', 13, 2, '');
INSERT INTO `tab` VALUES (15, '免费赠送', 'mfzs', 13, 2, '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 232 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of translation
-- ----------------------------
INSERT INTO `translation` VALUES (1, 'about_site', '关于 Vmoex', 'About Vmoex', 'Vmoexについて', '關於 Vmoex', 1);
INSERT INTO `translation` VALUES (2, 'chinese', '简体中文', 'Simplified Chinese', '簡体字中国語', '簡體中文', 1);
INSERT INTO `translation` VALUES (3, 'english', '英文', 'English', '英語', '英文', 1);
INSERT INTO `translation` VALUES (4, 'chinese.tw', '繁体中文', 'Traditional Chinese', '繁体字中国語', '繁體中文', 1);
INSERT INTO `translation` VALUES (5, 'japanese', '日语', 'Japanese', '日本語', '日語', 1);
INSERT INTO `translation` VALUES (6, 'ago', '前', 'ago', '前', '前', 1);
INSERT INTO `translation` VALUES (7, 'second', '秒', 'seconds', '秒', '秒', 1);
INSERT INTO `translation` VALUES (8, 'day', '天', 'days', '日', '天', 1);
INSERT INTO `translation` VALUES (9, 'hour', '小时', 'hours', '時間', '小時', 1);
INSERT INTO `translation` VALUES (10, 'minute', '分钟', 'minutes', '分', '分鐘', 1);
INSERT INTO `translation` VALUES (11, 'login', '登录', 'Login', 'ログイン', '登錄', 1);
INSERT INTO `translation` VALUES (12, 'logout', '登出', 'Logout', 'ログアウト', '登出', 1);
INSERT INTO `translation` VALUES (13, 'register', '注册', 'Register', '登録', '註冊', 1);
INSERT INTO `translation` VALUES (14, 'success', '操作成功', 'Operation successful', '操作が成功しました', '操作成功', 1);
INSERT INTO `translation` VALUES (15, 'fail', '操作失败', 'Operation failed', '操作が失敗しました', '操作失敗', 1);
INSERT INTO `translation` VALUES (16, 'click', '点击', 'Click', 'クリック', '點擊', 1);
INSERT INTO `translation` VALUES (17, 'nav_messages', '查看所有私信', 'View all messages', 'すべてのメッセージを表示', '查看所有私信', 1);
INSERT INTO `translation` VALUES (18, 'nav_new_fans', '个新的粉丝', 'new followers', '新しいフォロワー', '個新的粉絲', 1);
INSERT INTO `translation` VALUES (19, 'nav_all_notifications', '查看所有通知', 'View all notifications', 'すべての通知を表示', '查看所有通知', 1);
INSERT INTO `translation` VALUES (20, 'nav_user_home', '个人中心', 'User Center', 'マイページ', '個人中心', 1);
INSERT INTO `translation` VALUES (21, 'nav_user_setting', '个人设置', 'Settings', '設定', '個人設置', 1);
INSERT INTO `translation` VALUES (22, 'footer_online_user_count', '当前在线count人', 'Currently count users online', '現在オンライン中のcount人', '當前在線count人', 1);
INSERT INTO `translation` VALUES (23, 'footer_oneline_user_most', '历史最高', 'Highest record', '最高記録', '歷史最高', 1);
INSERT INTO `translation` VALUES (24, 'trends', '动态', 'Trends', '動向', '動態', 1);
INSERT INTO `translation` VALUES (25, 'blind.chat', '聊聊', 'Chat', 'チャット', '聊聊', 1);
INSERT INTO `translation` VALUES (26, 'search', '搜索', 'Search', '検索', '搜索', 1);
INSERT INTO `translation` VALUES (27, 'about', '关于', 'About', 'について', '關於', 1);
INSERT INTO `translation` VALUES (28, 'messages', '私信', 'Messages', 'メッセージ', '私信', 1);
INSERT INTO `translation` VALUES (29, 'notifications', '通知', 'Notifications', '通知', '通知', 1);
INSERT INTO `translation` VALUES (30, 'comment', '评论', 'Comment', 'コメント', '評論', 1);
INSERT INTO `translation` VALUES (31, 'hello_stranger', ' 您好，陌生人！', 'Hello, Stranger!', 'こんにちは、初めまして！', ' 您好，陌生人！', 1);
INSERT INTO `translation` VALUES (32, 'hello_stranger_detail', '如果你喜欢Vmoex，请记得注册或者保存网址哦~', 'If you like Vmoex, remember to register or bookmark us~', 'Vmoexが気に入ったら、登録するかブックマークしてくださいね~', '如果你喜歡Vmoex，請記得註冊或者保存網址哦~', 1);
INSERT INTO `translation` VALUES (33, 'my.status', '我的状态', 'My Status', '自分の状態', '我的狀態', 1);
INSERT INTO `translation` VALUES (34, 'hot.users', '活跃用户', 'Active Users', '活発なユーザー', '活躍用戶', 1);
INSERT INTO `translation` VALUES (35, 'today.hot.topics', '热门文档', 'Hot Topics', '今日の人気トピック', '熱門文檔', 1);
INSERT INTO `translation` VALUES (36, 'newly.comments', '最新评论', 'Latest Comments', '最新コメント', '最新評論', 1);
INSERT INTO `translation` VALUES (37, 'today.activity', '今日活跃度', 'Today\'s Activity', '今日のアクティビティ', '今日活躍度', 1);
INSERT INTO `translation` VALUES (38, 'continuous_signed count day', '已连续签到count天', 'Continuous check-in count days', '連続サインインcount日目', '已連續簽到count天', 1);
INSERT INTO `translation` VALUES (39, 'create_new_topic', '创建新主题', 'Create New Topic', '新しいトピックを作成', '創建新主題', 1);
INSERT INTO `translation` VALUES (40, 'activity', '活跃度', 'Activity', 'アクティビティ', '活躍度', 1);
INSERT INTO `translation` VALUES (41, '用户名', '用户名', 'Username', 'ユーザー名', '用戶名', 1);
INSERT INTO `translation` VALUES (42, '邮箱', '邮箱', 'Email', 'メールアドレス', '郵箱', 1);
INSERT INTO `translation` VALUES (43, '密码', '密码', 'Password', 'パスワード', '密碼', 1);
INSERT INTO `translation` VALUES (44, 'verify_email', '你的邮箱尚未激活，<a data-pjax href=\"/user/setting#emailSetting\" class=\"alert-link\">点此激活</a>', 'Your email is not yet activated, <a data-pjax href=\"/user/setting#emailSetting\" class=\"alert-link\">click here to activate</a>', 'メールアドレスが未認証です、<a data-pjax href=\"/user/setting#emailSetting\" class=\"alert-link\">ここをクリックして認証</a>', '你的郵箱尚未激活，<a data-pjax href=\"/user/setting#emailSetting\" class=\"alert-link\">點此激活</a>', 1);
INSERT INTO `translation` VALUES (45, '在线可撩', '在线可撩', 'Available Online', 'オンライン中', '在線可撩', 1);
INSERT INTO `translation` VALUES (46, '加入于', '加入于', 'Joined on', '参加日', '加入於', 1);
INSERT INTO `translation` VALUES (47, '第count位Vmoex用户', '第count位Vmoex用户', 'The count-th Vmoex user', 'Vmoexの第count位のユーザー', '第count位Vmoex用戶', 1);
INSERT INTO `translation` VALUES (48, '最后在线时间：time', '最后在线时间：time', 'Last online time: time', '最終オンライン時間：time', '最後在線時間：time', 1);
INSERT INTO `translation` VALUES (49, 'name发布的帖子', 'name发布的帖子', 'name\'s posts', 'nameの投稿', 'name發布的帖子', 1);
INSERT INTO `translation` VALUES (50, 'name的回复', 'name的回复', 'name\'s replies', 'nameの返信', 'name的回覆', 1);
INSERT INTO `translation` VALUES (51, 'time 发表在', 'time 发表在', 'Posted on time', 'timeに投稿', 'time 發表在', 1);
INSERT INTO `translation` VALUES (52, 'name的关注', 'name的关注', 'name\'s following', 'nameのフォロー', 'name的關注', 1);
INSERT INTO `translation` VALUES (53, 'name的粉丝', 'name的粉丝', 'name\'s followers', 'nameのフォロワー', 'name的粉絲', 1);
INSERT INTO `translation` VALUES (54, '发送成功', '发送成功', 'Sent successfully', '送信に成功しました', '發送成功', 1);
INSERT INTO `translation` VALUES (55, 'documents', '交流分享', 'Documents', '文書', '交流分享', 1);
INSERT INTO `translation` VALUES (56, 'support', '支持', 'Support', 'サポート', '支持', 1);
INSERT INTO `translation` VALUES (57, '刷新', '刷新', 'Refresh', '更新', '刷新', 1);
INSERT INTO `translation` VALUES (58, '板块', '板块', 'Sections', 'セクション', '板塊', 1);
INSERT INTO `translation` VALUES (59, '当前在线count人', '当前在线count人', 'Currently count users online', '現在オンラインのcount人', '當前在線count人', 1);
INSERT INTO `translation` VALUES (60, '历史最高', '历史最高', 'Highest record', '最高記録', '歷史最高', 1);
INSERT INTO `translation` VALUES (61, '全部', '全部', 'All', '全て', '全部', 1);
INSERT INTO `translation` VALUES (62, '热门', '热门', 'Hot', '人気', '熱門', 1);
INSERT INTO `translation` VALUES (63, '查看所有通知', '查看所有通知', 'View all notifications', 'すべての通知を表示', '查看所有通知', 1);
INSERT INTO `translation` VALUES (64, '查看所有私信', '查看所有私信', 'View all messages', 'すべてのメッセージを表示', '查看所有私信', 1);
INSERT INTO `translation` VALUES (65, '个人设置', '个人设置', 'Personal Settings', '個人設定', '個人設置', 1);
INSERT INTO `translation` VALUES (66, '添加新的评论', '添加新的评论', 'Add new comment', '新しいコメントを追加', '添加新的評論', 1);
INSERT INTO `translation` VALUES (67, '发表评论', '发表评论将消耗1金币哦', 'Posting a comment will cost 1 coin.', 'コメントを投稿すると1ゴールドが消費されますよ。', '發表評論將消耗1金幣哦。', 1);
INSERT INTO `translation` VALUES (68, '好可怕，速度太快了', '好可怕，速度太快了', 'Scary, that\'s too fast', '速すぎて怖い！', '好可怕，速度太快了', 1);
INSERT INTO `translation` VALUES (69, '关于作者', '关于作者', 'About the Author', '著者について', '關於作者', 1);
INSERT INTO `translation` VALUES (70, '拉黑', '拉黑', 'Block', 'ブロック', '拉黑', 1);
INSERT INTO `translation` VALUES (71, '昵称', '昵称', 'Nickname', 'ニックネーム', '暱稱', 1);
INSERT INTO `translation` VALUES (72, '状态', '状态', 'Status', '状態', '狀態', 1);
INSERT INTO `translation` VALUES (73, '头像', '头像', 'Avatar', 'アイコン', '頭像', 1);
INSERT INTO `translation` VALUES (74, '保存', '保存', 'Save', '保存', '保存', 1);
INSERT INTO `translation` VALUES (75, '修改', '修改', 'Modify', '修正', '修改', 1);
INSERT INTO `translation` VALUES (76, '修改密码', '修改密码', 'Change Password', 'パスワードを変更', '修改密碼', 1);
INSERT INTO `translation` VALUES (77, '支持我们', '支持我们', 'Support Us', 'サポート', '支持我們', 1);
INSERT INTO `translation` VALUES (78, '个新的粉丝', '个新的粉丝', 'new followers', '新しいフォロワー', '個新的粉絲', 1);
INSERT INTO `translation` VALUES (79, '赞', '赞', 'Like', 'いいね', '贊', 1);
INSERT INTO `translation` VALUES (80, '什么是瞎聊', '什么是聊聊', 'What is Chat', 'チャット', '什麼是聊聊', 1);
INSERT INTO `translation` VALUES (81, 'blind_description', '“聊聊”是 Vmoex 社区提供的一个线上即时聊天功能，每发送一条“聊聊”消息将消耗一枚金币。', '\"Chat\" is an instant messaging feature provided by the Vmoex community. Each \"Chat\" message sent will cost one coin.', '「チャット」はVmoexコミュニティが提供するリアルタイムチャット機能で、メッセージを送信するたびに1ゴールドを消費します。', '“聊聊”是 Vmoex 社區提供的一個線上即時聊天功能，每發送一條“聊聊”消息將消耗一枚金幣。', 1);
INSERT INTO `translation` VALUES (82, '社区运行状态', '社区运行状态', 'Community Status', 'コミュニティの運営状態', '社區運行狀態', 1);
INSERT INTO `translation` VALUES (83, '社区成立时间', '社区成立时间', 'Community Established', 'コミュニティ設立日', '社區成立時間', 1);
INSERT INTO `translation` VALUES (84, '主题数量', '主题数量', 'Topic Count', 'トピック数', '主題數量', 1);
INSERT INTO `translation` VALUES (85, '回复数量', '回复数量', 'Reply Count', '返信数', '回覆數量', 1);
INSERT INTO `translation` VALUES (86, '注册用户数量', '注册用户数量', 'Registered Users', '登録ユーザー数', '註冊用戶數量', 1);
INSERT INTO `translation` VALUES (87, '添加', '添加', 'Add', '追加', '添加', 1);
INSERT INTO `translation` VALUES (88, '请先登录', '请先登录', 'Please log in first', '先にログインしてください', '請先登錄', 1);
INSERT INTO `translation` VALUES (89, 'Vmoex当前板块数量', 'Vmoex当前板块数量', 'Vmoex\'s current section count', 'Vmoex現在のセクション数', 'Vmoex當前板塊數量', 1);
INSERT INTO `translation` VALUES (90, 'userhome_send_message', '发送私信', 'Send Message', 'メッセージを送信', '發送私信', 1);
INSERT INTO `translation` VALUES (91, 'userhome_has_followed', '已经关注', 'Already Followed', 'フォロー済み', '已經關注', 1);
INSERT INTO `translation` VALUES (92, 'userhome_follow', '关注', 'Follow', 'フォロー', '關注', 1);
INSERT INTO `translation` VALUES (93, 'userhome_block', '屏蔽', 'Block', 'ブロック', '屏蔽', 1);
INSERT INTO `translation` VALUES (94, 'userhome_no_recent_reply', '该用户最近没有回复', 'This user has no recent replies', 'このユーザーには最近の返信がありません', '該用戶最近沒有回覆', 1);
INSERT INTO `translation` VALUES (95, 'userhome_he_is_cold', '比较高冷?，目前没有关注任何人。', 'A bit distant? Currently not following anyone.', 'クールですか？まだ誰もフォローしていません。', '比較高冷?，目前沒有關注任何人。', 1);
INSERT INTO `translation` VALUES (96, 'userhome_he_has_no_follower', '名声不佳，没有任何粉丝╮(╯_╰)╭', 'Not very popular, has no followers ╮(╯_╰)╭', '人気がないようです。フォロワーがいません╮(╯_╰)╭', '名聲不佳，沒有任何粉絲╮(╯_╰)╭', 1);
INSERT INTO `translation` VALUES (97, 'post_add_comment', '添加评论', 'Add Comment', 'コメントを追加', '添加評論', 1);
INSERT INTO `translation` VALUES (98, 'post_no_comment', '文章没有评论', 'No comments on this post', 'コメントはありません', '文章沒有評論', 1);
INSERT INTO `translation` VALUES (99, 'chat_sorry_co_content', '抱歉，暂时没有聊天消息', 'Sorry, no chat messages at the moment', '申し訳ありませんが、現在チャットメッセージはありません', '抱歉，暫時沒有聊天消息', 1);
INSERT INTO `translation` VALUES (100, 'chat_please_type', '请输入', 'Please type', '入力してください', '請輸入', 1);
INSERT INTO `translation` VALUES (101, 'send', '发送', 'Send', '送信', '發送', 1);
INSERT INTO `translation` VALUES (102, 'please_login', '请登录', 'Please login', 'ログインしてください', '請登錄', 1);
INSERT INTO `translation` VALUES (103, 'why_this', '为什么会这样？', 'Why is this happening?', 'なぜこうなったの？', '為什麼會這樣？', 1);
INSERT INTO `translation` VALUES (104, 'userhome_no_published_post', '用户目前没有发布文章', 'The user has not published any articles', 'ユーザーはまだ記事を投稿していません', '用戶目前沒有發布文章', 1);
INSERT INTO `translation` VALUES (105, 'reply', '回复', 'Reply', '返信', '回覆', 1);
INSERT INTO `translation` VALUES (106, 'notice_my_notice', '我的通知', 'My Notifications', 'マイ通知', '我的通知', 1);
INSERT INTO `translation` VALUES (107, 'notice_unread', '未读通知', 'Unread Notifications', '未読通知', '未讀通知', 1);
INSERT INTO `translation` VALUES (108, 'notice_read', '已读通知', 'Read Notifications', '読んだ通知', '已讀通知', 1);
INSERT INTO `translation` VALUES (109, 'notice_replied_you', '回复我的', 'Replied to me', '返信がありました', '回覆我的', 1);
INSERT INTO `translation` VALUES (110, 'post_top', '置顶', 'Pinned', 'トップに固定', '置頂', 1);
INSERT INTO `translation` VALUES (111, 'like', '赞', 'Like', 'いいね', '贊', 1);
INSERT INTO `translation` VALUES (112, 'action_too_fast', '好可怕，速度太快了', 'Scary, that\'s too fast', '速すぎて怖い！', '好可怕，速度太快了', 1);
INSERT INTO `translation` VALUES (113, 'banner_announce', '歡迎您來到Vmoex，這裡是一個知识与兴趣聚集地，很期待你成為這裡的一員！', 'Welcome to Vmoex, a place where knowledge and interests converge. We look forward to you becoming a part of this community!', 'Vmoexへようこそ。ここは知識と興味の集まる場所です。あなたがここに参加するのを楽しみにしています！', '歡迎您來到Vmoex，這裡是一個知識與興趣聚集地，很期待你成為這裡的一員！', 1);
INSERT INTO `translation` VALUES (114, 'all', '全部', 'All', '全部', '全部', 1);
INSERT INTO `translation` VALUES (115, 'hot', '热门', 'Hot', '人気', '熱門', 1);
INSERT INTO `translation` VALUES (116, 'site_state', '社区运行状态', 'Community Status', 'コミュニティの運営状態', '社區運行狀態', 1);
INSERT INTO `translation` VALUES (117, 'site_since', '社区成立时间', 'Community Established', 'コミュニティ設立日', '社區成立時間', 1);
INSERT INTO `translation` VALUES (118, 'site_post_count', '主题数量', 'Topic Count', 'トピック数', '主題數量', 1);
INSERT INTO `translation` VALUES (119, 'site_comment_count', '回复数量', 'Reply Count', '返信数', '回覆數量', 1);
INSERT INTO `translation` VALUES (120, 'site_user_count', '注册用户数量', 'Registered Users', '登録ユーザー数', '註冊用戶數量', 1);
INSERT INTO `translation` VALUES (121, 'site_copyright', '@2024 Vmoex - 知识与兴趣聚集地', '@2024 Vmoex - A Hub of Knowledge and Interests', '@2024 Vmoex - 知識と興味の集まる場所', '@2024 Vmoex - 知識與興趣聚集地', 1);
INSERT INTO `translation` VALUES (122, 'site_title', 'Vmoex - 知识与兴趣聚集地', 'Vmoex - A Hub of Knowledge and Interests', 'Vmoex - 知識と興味の集まる場所', 'Vmoex - 知識與興趣聚集地', 1);
INSERT INTO `translation` VALUES (123, 'site_name', 'Vmoex', 'Vmoex', 'Vmoex', 'Vmoex', 1);
INSERT INTO `translation` VALUES (124, 'user_place_in_site', '第count位Vmoex用户', 'The count-th Vmoex user', 'Vmoexの第count位のユーザー', '第count位Vmoex用戶', 1);
INSERT INTO `translation` VALUES (125, 'footer_available_with', '可用于: ', 'Available with: ', '使用可能: ', '可用於: ', 1);
INSERT INTO `translation` VALUES (126, 'user_my_messages', '我的私信', 'My Messages', 'マイメッセージ', '我的私信', 1);
INSERT INTO `translation` VALUES (127, 'user_my_received_messages', '我接收的', 'Received', '受信メッセージ', '我接收的', 1);
INSERT INTO `translation` VALUES (128, 'user_my_sent_messages', '我发出的', 'Sent', '送信メッセージ', '我發出的', 1);
INSERT INTO `translation` VALUES (129, 'sorry_no_content', '抱歉，暂时没有任何内容！', 'Sorry, no content available at the moment!', '申し訳ありませんが、現在コンテンツがありません！', '抱歉，暫時沒有任何內容！', 1);
INSERT INTO `translation` VALUES (130, 'user_you_send_message_to', '你对receiver说：', 'You said to receiver', 'あなたがreceiverに送信したメッセージ：', '你對receiver說：', 1);
INSERT INTO `translation` VALUES (131, 'user_send_message_to_you', '对你说：', 'receiver said to you', 'receiverがあなたに送信したメッセージ：', '對你說：', 1);
INSERT INTO `translation` VALUES (132, 'Title', '标题', 'Title', 'タイトル', '標題', 1);
INSERT INTO `translation` VALUES (133, 'Cover', '封面', 'Cover', 'カバー', '封面', 1);
INSERT INTO `translation` VALUES (134, 'Detail', '详情', 'Details', '詳細', '詳情', 1);
INSERT INTO `translation` VALUES (135, 'latest_blogs', '最新创建', 'Latest Blogs', '最新作成', '最新創建', 1);
INSERT INTO `translation` VALUES (136, 'nav_create_blog', '创建博客', 'Create Blog', 'ブログを作成', '創建博客', 1);
INSERT INTO `translation` VALUES (137, 'nav_create_post', '创建新主题', 'Create New Topic', '新しいトピックを作成', '創建新主題', 1);
INSERT INTO `translation` VALUES (138, 'Old password', '老密码', 'Old Password', '古いパスワード', '老密碼', 1);
INSERT INTO `translation` VALUES (139, 'New Password', '新密码', 'New Password', '新しいパスワード', '新密碼', 1);
INSERT INTO `translation` VALUES (140, 'Repeat Password', '重复密码', 'Repeat Password', 'パスワードを再入力', '重複密碼', 1);
INSERT INTO `translation` VALUES (141, 'home_now_register', '立即注册！', 'Register Now!', '今すぐ登録！', '立即註冊！', 1);
INSERT INTO `translation` VALUES (142, 'user_my_posts', '我的帖子', 'My Posts', 'マイ投稿', '我的帖子', 1);
INSERT INTO `translation` VALUES (143, 'user_my_comments', '我的评论', 'My Comments', 'マイコメント', '我的評論', 1);
INSERT INTO `translation` VALUES (144, 'user_my_following', '我的关注', 'My Followings', 'フォロー中', '我的關注', 1);
INSERT INTO `translation` VALUES (145, 'user_my_follower', '关注我的', 'My Followers', 'フォロワー', '關注我的', 1);
INSERT INTO `translation` VALUES (146, 'user_my_blog', '我创建的博客', 'My Blog', 'マイブログ', '我創建的博客', 1);
INSERT INTO `translation` VALUES (147, 'email', '邮箱', 'Email', 'メールアドレス', '郵箱', 1);
INSERT INTO `translation` VALUES (148, 'user_setting_email_verified', '邮箱已验证通过', 'Email verified', 'メールアドレスが認証されました', '郵箱已驗證通過', 1);
INSERT INTO `translation` VALUES (149, 'community', '社区', 'Community', 'コミュニティ', '社區', 1);
INSERT INTO `translation` VALUES (150, 'notice_comment_mention_you', '在评论中提到你', 'Mentioned you in a comment', 'コメントであなたに言及しました', '在評論中提到你', 1);
INSERT INTO `translation` VALUES (151, 'post_add_comment_hint', '请尽量添加有意义的评论。', 'Please try to add meaningful comments.', 'できるだけ意味のあるコメントを追加してください。', '請盡量添加有意義的評論。', 1);
INSERT INTO `translation` VALUES (152, 'users.gold_rank', '用户金币排行榜', 'User Gold Rankings', 'ユーザーゴールドランキング', '用戶金幣排行榜', 1);
INSERT INTO `translation` VALUES (153, 'users.rank', '排名', 'Rank', 'ランク', '排名', 1);
INSERT INTO `translation` VALUES (154, 'username', '用户名', 'Username', 'ユーザー名', '用戶名', 1);
INSERT INTO `translation` VALUES (155, 'gold', '金币', 'Coins', 'ゴールド', '金幣', 1);
INSERT INTO `translation` VALUES (156, 'users.sign_rank', '用户签到排行榜', 'User Sign-in Rankings', 'ユーザーサインインランキング', '用戶簽到排行榜', 1);
INSERT INTO `translation` VALUES (157, 'global.sign', '签到', 'Sign In', 'サインイン', '簽到', 1);
INSERT INTO `translation` VALUES (158, 'post_not_exist', '文章不存在', 'Post does not exist', '記事が存在しません', '文章不存在', 1);
INSERT INTO `translation` VALUES (159, 'length_not_support', '内个啥...长度好像不合适哦！', 'Hmm... seems like the length isn\'t quite right!', 'あの…長さが合ってないようです！', '內個啥...長度好像不合適哦！', 1);
INSERT INTO `translation` VALUES (160, 'do_not_repeat_mention_others', '请勿重复@其他人！', 'Please don\'t repeat @mention others!', '他の人に重複して@しないでください！', '請勿重複@其他人！', 1);
INSERT INTO `translation` VALUES (161, 'no_enough_gold', '金币不足', 'Not enough coins', 'ゴールドが不足しています', '金幣不足', 1);
INSERT INTO `translation` VALUES (162, 'comment_not_exist', '评论不存在', 'Comment does not exist', 'コメントが存在しません', '評論不存在', 1);
INSERT INTO `translation` VALUES (163, 'cant_modify_current_user_in_admin', '不能在管理端修改当前个人信息，请在用户端个人中心修改', 'Can\'t modify current user info in the admin panel, please change it in your user center.', '管理画面で現在のユーザー情報を変更できません。ユーザー画面のマイページで変更してください', '不能在管理端修改當前個人信息，請在用戶端個人中心修改', 1);
INSERT INTO `translation` VALUES (164, 'user_not_exist', '用户不存在', 'User does not exist', 'ユーザーが存在しません', '用戶不存在', 1);
INSERT INTO `translation` VALUES (165, 'locale_invalid', '非法的语言', 'Invalid language', '無効な言語', '非法的語言', 1);
INSERT INTO `translation` VALUES (166, 'hours', '小时', 'hours', '時間', '小時', 1);
INSERT INTO `translation` VALUES (167, 'access_denied', '访问被拒绝', 'Access denied', 'アクセスが拒否されました', '訪問被拒絕', 1);
INSERT INTO `translation` VALUES (168, 'locale invalid', '未知的语言', 'Unknown language', '不明な言語', '未知的語言', 1);
INSERT INTO `translation` VALUES (169, '历史公告', '历史公告', 'Historical Announcements', '過去のお知らせ', '歷史公告', 1);
INSERT INTO `translation` VALUES (170, '服务条款', '服务条款', 'Terms of Service', '利用規約', '服務條款', 1);
INSERT INTO `translation` VALUES (171, '支持', '支持', 'Support', 'サポート', '支持', 1);
INSERT INTO `translation` VALUES (172, '关于Vmoex', '关于Vmoex', 'About Vmoex', 'Vmoexについて', '關於Vmoex', 1);
INSERT INTO `translation` VALUES (173, 'member_oneline_count', '会员在线', 'Members online', 'メンバーオンライン', '會員在線', 1);
INSERT INTO `translation` VALUES (174, 'visitor', '游客', 'Visitor', '訪問者', '遊客', 1);
INSERT INTO `translation` VALUES (175, 'person', '人', 'Person', '人', '人', 1);
INSERT INTO `translation` VALUES (176, '最新发布', '最新发布', 'Latest Releases', '最新公開', '最新發布', 1);
INSERT INTO `translation` VALUES (177, '最新评论', '最新评论', 'Latest Comments', '最新コメント', '最新評論', 1);
INSERT INTO `translation` VALUES (178, '更多', '更多', 'More', 'もっと見る', '更多', 1);
INSERT INTO `translation` VALUES (179, '使用条款', '使用条款', 'Terms of Use', '利用規約', '使用條款', 1);
INSERT INTO `translation` VALUES (180, '第三方登录', '第三方登录', 'Third-Party Login', 'サードパーティーログイン', '第三方登入', 1);
INSERT INTO `translation` VALUES (181, '已有帐号？', '已有帐号？', 'Already have an account?', '既にアカウントをお持ちですか？', '已有帳號？', 1);
INSERT INTO `translation` VALUES (182, '直接登录', '直接登录', 'Log in directly', '直接ログイン', '直接登入', 1);
INSERT INTO `translation` VALUES (183, '立即注册', '立即注册', 'Register now', '今すぐ登録', '立即註冊', 1);
INSERT INTO `translation` VALUES (184, '记住登录状态', '记住登录状态', 'Remember login status', 'ログイン状態を記憶する', '記住登入狀態', 1);
INSERT INTO `translation` VALUES (185, '推荐主题', '推荐主题', 'Recommended Topics', 'おすすめのトピック', '推薦主題', 1);
INSERT INTO `translation` VALUES (186, '暂时没有任何文档！', '暂时没有任何文档！', 'No documents available at the moment!', '現在、ドキュメントはありません！', '暫時沒有任何文檔！', 1);
INSERT INTO `translation` VALUES (187, '签到领取奖励', '签到领取奖励', 'Check in to receive rewards', '出席して報酬を受け取る', '簽到領取獎勳', 1);
INSERT INTO `translation` VALUES (188, '验证码', '验证码', 'Verification code', '認証コード', '驗證碼', 1);
INSERT INTO `translation` VALUES (189, '验证', '验证', 'Verification', '検証', '驗證', 1);
INSERT INTO `translation` VALUES (190, '发送验证码', '发送验证码', 'Send verification code', '認証コードを送信する', '發送驗證碼', 1);
INSERT INTO `translation` VALUES (191, '基本资料', '基本资料', 'Basic information', '基本情報', '基本資料', 1);
INSERT INTO `translation` VALUES (192, '用户名不能被修改', '用户名不能被修改', 'Username cannot be changed', 'ユーザー名は変更できません', '用戶名不能被修改', 1);
INSERT INTO `translation` VALUES (193, '昵称每180天可修改一次，请谨慎修改。', '昵称每180天可修改一次，请谨慎修改。', 'Nickname can be changed once every 180 days. Please make changes carefully.', 'ニックネームは180日に1回変更できます。慎重に変更してください。', '昵称每180天可修改一次，請謹慎修改。', 1);
INSERT INTO `translation` VALUES (194, '天后可修改昵称。', '天后可修改昵称。', 'Nickname can be changed after day.', '天後にニックネームを変更できます。', '天後可修改暱稱。', 1);
INSERT INTO `translation` VALUES (195, '支持 2MB 以内的jpg、png、gif格式，推荐使用一张 200*200 的 PNG 文件以获得最佳效果，gif格式需消耗50金币', '支持 2MB 以内的jpg、png、gif格式，推荐使用一张 200*200 的 PNG 文件以获得最佳效果，gif格式需消耗50金币', 'Supports jpg, png, and gif formats up to 2MB. It is recommended to use a 200*200 PNG file for the best effect. Gif format requires 50 coins.', '2MB以内のjpg、png、gif形式がサポートされています。最適な効果を得るには200*200のPNGファイルを使用することをお勧めします。gif形式は50コインが必要です。', '支援 2MB 以內的jpg、png、gif格式，推薦使用一張 200*200 的 PNG 文件以獲得最佳效果，gif格式需消耗50金幣', 1);
INSERT INTO `translation` VALUES (196, '我的信箱', '我的信箱', 'My mailbox', '私のメールボックス', '我的信箱', 1);
INSERT INTO `translation` VALUES (197, '更新', '更新', 'Update', '更新', '更新', 1);
INSERT INTO `translation` VALUES (198, '管理员', '管理员', 'Administrator', 'かんりしゃ', '管理員', 1);
INSERT INTO `translation` VALUES (199, '内容', '内容', 'Content', '内容', '內容', 1);
INSERT INTO `translation` VALUES (200, '选择板块', '选择板块', 'Select Board', '板を選択', '選擇板塊', 1);
INSERT INTO `translation` VALUES (201, '提交', '提交', 'Submit', '提出', '提交', 1);
INSERT INTO `translation` VALUES (202, '我的收藏', '我的收藏', 'My Favorites', 'マイコレクション (私のコレクション)', '我的收藏', 1);
INSERT INTO `translation` VALUES (203, '我的感谢', '我的感谢', 'My Thanks', '私の感謝', '我的感謝', 1);
INSERT INTO `translation` VALUES (204, '主题', '主题', 'Topics', 'トピック', '主題', 1);
INSERT INTO `translation` VALUES (205, '我收到的', '我收到的', 'Received', '受け取った', '我收到的', 1);
INSERT INTO `translation` VALUES (206, '我送出的', '我送出的', 'Sent', '送った', '我送出的', 1);
INSERT INTO `translation` VALUES (207, '加入收藏', '加入收藏', 'Add to Favorites', 'お気に入りに追加', '加入收藏', 1);
INSERT INTO `translation` VALUES (208, '取消收藏', '取消收藏', 'Remove from Favorites', 'お気に入りから削除', '取消收藏', 1);
INSERT INTO `translation` VALUES (209, '感谢', '感谢', 'Thanks', '感謝', '感謝', 1);
INSERT INTO `translation` VALUES (210, '分享', '分享', 'Share', 'シェア', '分享', 1);
INSERT INTO `translation` VALUES (211, '屏蔽', '屏蔽', 'Block', 'ブロック', '隱藏', 1);
INSERT INTO `translation` VALUES (212, '已发送感谢', '已发送感谢', 'Thanks sent', '送信済みの感謝', '已發送感謝', 1);
INSERT INTO `translation` VALUES (213, '次收藏', '次收藏', 'Times favorited', '回のお気に入り', '次收藏', 1);
INSERT INTO `translation` VALUES (214, '次感谢', '次感谢', 'Times thanked', '回の感謝', '次感謝', 1);
INSERT INTO `translation` VALUES (215, '请注意言论,主题创建后不允许删除或修改', '请注意言论,主题创建后不允许删除或修改', 'Please be mindful of your comments. Once a topic is created, it cannot be deleted or modified.', 'コメントにはご注意ください。トピックが作成された後は、削除や変更ができません。', '請注意言論，主題創建後不允許刪除或修改。', 1);
INSERT INTO `translation` VALUES (216, '图片上传大小', '图片大小最大只能2M', 'The maximum allowed size for the image is 2MB', '最大サイズは2MBまでです。', '圖片大小最大只能2MB。', 1);
INSERT INTO `translation` VALUES (217, '日常', '日常', 'Daily', '日常', '日常', 1);
INSERT INTO `translation` VALUES (218, '闲聊灌水', '闲聊灌水', 'Casual Chat', '雑談', '閒聊灌水', 1);
INSERT INTO `translation` VALUES (219, '职场吐槽', '职场吐槽', 'Workplace Rants', '仕事の愚痴', '職場吐槽', 1);
INSERT INTO `translation` VALUES (220, '好玩', '好玩', 'Fun', '面白い', '好玩', 1);
INSERT INTO `translation` VALUES (221, '分享发现', '分享发现', 'Share Discoveries', '発見をシェア', '分享發現', 1);
INSERT INTO `translation` VALUES (222, '发起活动', '发起活动', 'Start Activity', 'イベントを開始', '發起活動', 1);
INSERT INTO `translation` VALUES (223, '奇思妙想', '奇思妙想', 'Creative Ideas', '奇想天外', '奇思妙想', 1);
INSERT INTO `translation` VALUES (224, '问答', '问答', 'Q&A', 'Q&A', '問答', 1);
INSERT INTO `translation` VALUES (225, '问题求助', '问题求助', 'Help & Support', '問題のヘルプ', '問題求助', 1);
INSERT INTO `translation` VALUES (226, '技术', '技术', 'Technology', '技術', '技術', 1);
INSERT INTO `translation` VALUES (227, '编程', '编程', 'Programming', 'プログラミング', '編程', 1);
INSERT INTO `translation` VALUES (228, '分享创造', '分享创造', 'Share Creations', '創作をシェア', '分享創造', 1);
INSERT INTO `translation` VALUES (229, '交易', '交易', 'Trading', '取引', '交易', 1);
INSERT INTO `translation` VALUES (230, '二手交易', '二手交易', 'Second-hand Trading', '中古取引', '二手交易', 1);
INSERT INTO `translation` VALUES (231, '免费赠送', '免费赠送', 'Free Gifts', '無料贈呈', '免費贈送', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', '$2y$13$6/ty6/UFtdBevVHz6wrwSeAjQnB91XE5tNg0DpwWVTPwVdRLUFfFO', '756152823@qq.com', 'avatar/admin.png', '管理员', 265, 115, 3, 1, 'ROLE_SUPER_ADMIN', 'df', '2024-08-18 20:36:01', '2024-09-06 04:43:42', '2022-08-20 02:58:51');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of visit
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
