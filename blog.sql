/*
Navicat MySQL Data Transfer

Source Server         : localhost_9804
Source Server Version : 50728
Source Host           : localhost:9804
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2019-12-03 16:18:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 公告', '6', 'add_activate');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 公告', '6', 'change_activate');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 公告', '6', 'delete_activate');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 文章', '7', 'add_article');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 文章', '7', 'change_article');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 文章', '7', 'delete_article');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 大分类', '8', 'add_bigcategory');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 大分类', '8', 'change_bigcategory');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 大分类', '8', 'delete_bigcategory');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 图片轮播', '9', 'add_carousel');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 图片轮播', '9', 'change_carousel');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 图片轮播', '9', 'delete_carousel');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 分类', '10', 'add_category');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 分类', '10', 'change_category');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 分类', '10', 'delete_category');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 友情链接', '11', 'add_friendlink');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 友情链接', '11', 'change_friendlink');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 友情链接', '11', 'delete_friendlink');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 关键词', '12', 'add_keyword');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 关键词', '12', 'change_keyword');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 关键词', '12', 'delete_keyword');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 死链', '13', 'add_silian');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 死链', '13', 'change_silian');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 死链', '13', 'delete_silian');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 标签', '14', 'add_tag');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 标签', '14', 'change_tag');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 标签', '14', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 用户', '15', 'add_ouser');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 用户', '15', 'change_ouser');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 用户', '15', 'delete_ouser');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 关于自己评论', '16', 'add_aboutcomment');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 关于自己评论', '16', 'change_aboutcomment');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 关于自己评论', '16', 'delete_aboutcomment');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 文章评论', '17', 'add_articlecomment');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 文章评论', '17', 'change_articlecomment');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 文章评论', '17', 'delete_articlecomment');
INSERT INTO `auth_permission` VALUES ('52', 'Can add comment user', '18', 'add_commentuser');
INSERT INTO `auth_permission` VALUES ('53', 'Can change comment user', '18', 'change_commentuser');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete comment user', '18', 'delete_commentuser');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 给我留言', '19', 'add_messagecomment');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 给我留言', '19', 'change_messagecomment');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 给我留言', '19', 'delete_messagecomment');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 资源', '20', 'add_resource');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 资源', '20', 'change_resource');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 资源', '20', 'delete_resource');

-- ----------------------------
-- Table structure for comment_aboutcomment
-- ----------------------------
DROP TABLE IF EXISTS `comment_aboutcomment`;
CREATE TABLE `comment_aboutcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `rep_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_aboutcomment_author_id_d11e841e_fk_comment_c` (`author_id`),
  KEY `comment_aboutcomment_parent_id_a12294ac_fk_comment_a` (`parent_id`),
  KEY `comment_aboutcomment_rep_to_id_e44ab5ad_fk_comment_a` (`rep_to_id`),
  CONSTRAINT `comment_aboutcomment_author_id_d11e841e_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_aboutcomment_parent_id_a12294ac_fk_comment_a` FOREIGN KEY (`parent_id`) REFERENCES `comment_aboutcomment` (`id`),
  CONSTRAINT `comment_aboutcomment_rep_to_id_e44ab5ad_fk_comment_a` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_aboutcomment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_aboutcomment
-- ----------------------------

-- ----------------------------
-- Table structure for comment_articlecomment
-- ----------------------------
DROP TABLE IF EXISTS `comment_articlecomment`;
CREATE TABLE `comment_articlecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `belong_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `rep_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_articlecomme_author_id_46e6fdb8_fk_comment_c` (`author_id`),
  KEY `comment_articlecomment_belong_id_58e0232c_fk_storm_article_id` (`belong_id`),
  KEY `comment_articlecomme_parent_id_f0ab594d_fk_comment_a` (`parent_id`),
  KEY `comment_articlecomme_rep_to_id_84dab3d5_fk_comment_a` (`rep_to_id`),
  CONSTRAINT `comment_articlecomme_author_id_46e6fdb8_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_articlecomme_parent_id_f0ab594d_fk_comment_a` FOREIGN KEY (`parent_id`) REFERENCES `comment_articlecomment` (`id`),
  CONSTRAINT `comment_articlecomme_rep_to_id_84dab3d5_fk_comment_a` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_articlecomment` (`id`),
  CONSTRAINT `comment_articlecomment_belong_id_58e0232c_fk_storm_article_id` FOREIGN KEY (`belong_id`) REFERENCES `storm_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_articlecomment
-- ----------------------------
INSERT INTO `comment_articlecomment` VALUES ('1', '2019-11-28 11:17:24.440985', '0', '1', '1', null, null);

-- ----------------------------
-- Table structure for comment_commentuser
-- ----------------------------
DROP TABLE IF EXISTS `comment_commentuser`;
CREATE TABLE `comment_commentuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_commentuser
-- ----------------------------
INSERT INTO `comment_commentuser` VALUES ('1', 'makangjia', 'mkj0421@126.com', '');

-- ----------------------------
-- Table structure for comment_messagecomment
-- ----------------------------
DROP TABLE IF EXISTS `comment_messagecomment`;
CREATE TABLE `comment_messagecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `rep_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_messagecomme_author_id_0bb97e6c_fk_comment_c` (`author_id`),
  KEY `comment_messagecomme_parent_id_d4633983_fk_comment_m` (`parent_id`),
  KEY `comment_messagecomme_rep_to_id_029597ed_fk_comment_m` (`rep_to_id`),
  CONSTRAINT `comment_messagecomme_author_id_0bb97e6c_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_messagecomme_parent_id_d4633983_fk_comment_m` FOREIGN KEY (`parent_id`) REFERENCES `comment_messagecomment` (`id`),
  CONSTRAINT `comment_messagecomme_rep_to_id_029597ed_fk_comment_m` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_messagecomment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_messagecomment
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_ouser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_ouser_id` FOREIGN KEY (`user_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-11-28 09:52:13.243705', '1', 'Python', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-11-28 10:26:35.425448', '1', 'Python', '2', '[{\"changed\": {\"fields\": [\"slug\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-11-28 10:26:55.701012', '2', '数字媒体', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-11-28 10:29:40.241540', '1', '生活笔记', '2', '[{\"changed\": {\"fields\": [\"name\", \"slug\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-11-28 10:30:06.082270', '3', '技术分享', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-11-28 10:30:42.934729', '1', '随笔', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-11-28 10:30:59.030815', '2', 'Python', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-11-28 10:31:09.337629', '3', 'java', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-11-28 10:31:21.510678', '4', 'Git', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-11-28 10:31:45.311332', '5', '作业相关', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2019-11-28 10:37:50.553795', '1', 'Git|Github', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2019-11-28 10:39:38.310039', '2', '生活笔记', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2019-11-28 10:39:50.389780', '3', 'Python', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2019-11-28 10:39:59.983671', '4', '作业', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2019-11-28 10:48:21.639619', '1', '作业', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2019-11-28 10:48:26.295519', '1', '作业一', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2019-11-28 11:22:09.161449', '2', '作业二', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2019-11-28 11:22:37.232150', '2', '作业二', '2', '[{\"changed\": {\"fields\": [\"body\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2019-11-28 11:29:50.070212', '1', '干就完事了', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2019-11-28 11:30:28.053999', '2', '村第一二狗子', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2019-11-28 11:31:23.934136', '1', '干就完事了', '2', '[{\"changed\": {\"fields\": [\"img_url\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2019-11-28 11:31:30.437136', '2', '村第一二狗子', '2', '[{\"changed\": {\"fields\": [\"img_url\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2019-11-28 11:32:23.986922', '3', '村第一韩信', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2019-11-28 11:32:38.374221', '4', '村第一李白', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2019-11-28 11:33:16.460077', '5', '村第一赵云', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2019-11-28 11:34:18.194099', '1', '干就完事了', '2', '[{\"changed\": {\"fields\": [\"img_url\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2019-11-28 11:35:05.363362', '1', '干就完事了', '2', '[{\"changed\": {\"fields\": [\"img_url\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2019-11-28 11:35:44.114886', '1', '干就完事了', '2', '[{\"changed\": {\"fields\": [\"img_url\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2019-11-28 11:36:31.620769', '1', '干就完事了', '2', '[{\"changed\": {\"fields\": [\"img_url\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2019-11-28 11:36:58.053535', '1', '干就完事了', '2', '[]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2019-11-28 14:18:45.172177', '4', '关于KJ', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2019-11-28 14:19:35.981473', '5', '资源分享', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2019-11-28 14:20:15.514684', '6', '赞助KJ', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2019-11-28 14:52:01.470000', '1', '作业一', '2', '[{\"changed\": {\"fields\": [\"body\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2019-11-28 14:52:02.401999', '1', '作业一', '2', '[]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2019-11-28 14:53:19.505988', '1', '作业一', '2', '[{\"changed\": {\"fields\": [\"body\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2019-11-28 14:54:52.772725', '2', '作业二', '2', '[{\"changed\": {\"fields\": [\"body\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2019-11-28 14:56:25.365297', '3', '作业三', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2019-11-28 14:57:59.026920', '4', '作业四', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2019-11-28 16:22:23.489063', '5', 'JAVA', '1', '[{\"added\": {}}]', '14', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2019-11-28 16:22:34.386063', '2', '笔记', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2019-11-28 16:22:40.394755', '5', 'Head First Java', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2019-11-28 16:23:10.284995', '6', 'python随笔', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2019-11-28 16:34:23.523195', '6', 'python随笔', '2', '[{\"changed\": {\"fields\": [\"img_link\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2019-11-28 16:35:01.561785', '5', 'Head First Java', '2', '[{\"changed\": {\"fields\": [\"img_link\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('46', '2019-11-28 16:35:54.938210', '6', 'python随笔', '2', '[{\"changed\": {\"fields\": [\"img_link\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2019-11-29 15:53:12.875570', '2', '测试', '1', '[{\"added\": {}}]', '20', '1');
INSERT INTO `django_admin_log` VALUES ('48', '2019-11-29 16:22:23.275800', '3', '第二次测试', '1', '[{\"added\": {}}]', '20', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('16', 'comment', 'aboutcomment');
INSERT INTO `django_content_type` VALUES ('17', 'comment', 'articlecomment');
INSERT INTO `django_content_type` VALUES ('18', 'comment', 'commentuser');
INSERT INTO `django_content_type` VALUES ('19', 'comment', 'messagecomment');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'storm', 'activate');
INSERT INTO `django_content_type` VALUES ('7', 'storm', 'article');
INSERT INTO `django_content_type` VALUES ('8', 'storm', 'bigcategory');
INSERT INTO `django_content_type` VALUES ('9', 'storm', 'carousel');
INSERT INTO `django_content_type` VALUES ('10', 'storm', 'category');
INSERT INTO `django_content_type` VALUES ('11', 'storm', 'friendlink');
INSERT INTO `django_content_type` VALUES ('12', 'storm', 'keyword');
INSERT INTO `django_content_type` VALUES ('20', 'storm', 'resource');
INSERT INTO `django_content_type` VALUES ('13', 'storm', 'silian');
INSERT INTO `django_content_type` VALUES ('14', 'storm', 'tag');
INSERT INTO `django_content_type` VALUES ('15', 'user', 'ouser');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-11-28 09:39:47.059815');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-11-28 09:39:48.044408');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-11-28 09:39:51.542893');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-11-28 09:39:52.509705');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-11-28 09:39:52.536691');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-11-28 09:39:52.562720');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-11-28 09:39:52.586695');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-11-28 09:39:52.617114');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-11-28 09:39:52.667647');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-11-28 09:39:52.712884');
INSERT INTO `django_migrations` VALUES ('11', 'user', '0001_initial', '2019-11-28 09:39:57.517819');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0001_initial', '2019-11-28 09:39:59.941555');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2019-11-28 09:39:59.977373');
INSERT INTO `django_migrations` VALUES ('14', 'storm', '0001_initial', '2019-11-28 09:40:04.692245');
INSERT INTO `django_migrations` VALUES ('15', 'comment', '0001_initial', '2019-11-28 09:40:13.550330');
INSERT INTO `django_migrations` VALUES ('16', 'comment', '0002_auto_20190330_2030', '2019-11-28 09:40:21.439313');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2019-11-28 09:40:21.994277');
INSERT INTO `django_migrations` VALUES ('18', 'storm', '0002_auto_20190330_2030', '2019-11-28 09:40:29.461652');
INSERT INTO `django_migrations` VALUES ('19', 'storm', '0003_auto_20191129_1457', '2019-11-29 14:58:20.590429');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('q59kv43awe5y6lywihsme64biy9g0fo0', 'ODk4Y2Q1MDY0ZDg4MWFiNjliN2Y3OTg0NWFlY2Y1MDM3NDM5NDBjNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YWMyMjNjMjk3MWI2NTc4MjBlODk0ODA0ZjRiYmMzNjM2ODM0Y2FlIiwidXNlcm5hbWUiOiJtbW1ra2tqamoiLCJ1aWQiOjIsIm5pY2siOm51bGwsInRpZCI6bnVsbH0=', '2019-12-17 11:14:50.414412');

-- ----------------------------
-- Table structure for storm_activate
-- ----------------------------
DROP TABLE IF EXISTS `storm_activate`;
CREATE TABLE `storm_activate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `is_active` tinyint(1) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_activate
-- ----------------------------

-- ----------------------------
-- Table structure for storm_article
-- ----------------------------
DROP TABLE IF EXISTS `storm_article`;
CREATE TABLE `storm_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `summary` longtext NOT NULL,
  `body` longtext NOT NULL,
  `img_link` varchar(255) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `views` int(11) NOT NULL,
  `loves` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `storm_article_author_id_113892f7_fk_user_ouser_id` (`author_id`),
  KEY `storm_article_category_id_c56e32c4_fk_storm_category_id` (`category_id`),
  CONSTRAINT `storm_article_author_id_113892f7_fk_user_ouser_id` FOREIGN KEY (`author_id`) REFERENCES `user_ouser` (`id`),
  CONSTRAINT `storm_article_category_id_c56e32c4_fk_storm_category_id` FOREIGN KEY (`category_id`) REFERENCES `storm_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_article
-- ----------------------------
INSERT INTO `storm_article` VALUES ('1', '作业一', '数字媒体第一次作业', '#音频采集与处理（20分）\r\n##要求：\r\n- 用Windows录音机录制一首自己唱的歌或朗诵，准备一段背景音乐，使用Cool Edit导入录制的声音文件和背景音乐，并进行合成。\r\n##提交内容：\r\n- 背景音乐文件、声音文件、合成作品、实验报告（电子版+打印版）。', '/static/images/summary.jpg', '2019-11-28 10:48:24.021442', '2019-11-28 16:36:15.232689', '0', '3', 'homework1', '1', '5');
INSERT INTO `storm_article` VALUES ('2', '作业二', '数字媒体第二次作业', '#图像处理（20分）\r\n##要求：\r\n- 1. 选取适当的图片素材和世界地图，运用各种选取方法制作一幅由世界名胜照片揉和在一起的背景。利用图层效果制作一幅有地形质感的世界地图。调整并合并所有层存储为各种图像文件格式并压缩。\r\n- 2. 显示一个bmp文件的C程序，并实现图像亮度、对比度调整、图像平移、放大、旋转和镜像。\r\n##提交内容：\r\n- 图片素材、合成图片、显示bmp的程序代码、显示bmp的可执行文件、实验报告（电子版+打印版）。', '/static/images/summary.jpg', '2019-11-28 11:22:08.938966', '2019-11-28 15:06:01.372860', '0', '2', 'homework2', '1', '5');
INSERT INTO `storm_article` VALUES ('3', '作业三', '数字媒体第三次作业', '#动画制作（30分）\r\n##要求：\r\n- 根据实验1中得到的歌曲或配乐朗诵，做一段Flash不少于1分半钟，并合成为一段动画MV。\r\n##提交内容：\r\n- 根据实验1中得到的歌曲或配乐朗诵，做一段Flash不少于1分半钟，并合成为一段动画MV。', '/static/images/summary.jpg', '2019-11-28 14:56:24.064296', '2019-11-28 14:56:24.064296', '0', '0', 'homework3', '1', '5');
INSERT INTO `storm_article` VALUES ('4', '作业四', '数字媒体第四次作业', '#网站制作（30分）\r\n##要求：\r\n- 个人页面开发，包含个人基本信息，整个课程的各次实验信息，并实现媒体文件上传、下载功能实现。\r\n##提交内容：\r\n- 网页制作素材、网页源代码、实验报告（电子版+打印版）。', '/static/images/summary.jpg', '2019-11-28 14:57:58.427918', '2019-11-28 14:57:58.427918', '0', '0', 'homework4', '1', '5');
INSERT INTO `storm_article` VALUES ('5', 'Head First Java', '对 Head First Java 的一些阅读笔记', '# 一 基本概念\r\n\r\n## 一些问答\r\n\r\n- __java不可以做整数类型测试__\r\n    java中的integer 和 boolean 两种类型并不相容\r\n\r\n# 二 类与对象\r\n\r\n## java会拾荒\r\n-   创建对象时，它会被存放在堆区   不管对象如何创建都在堆区中。这个堆时可回收垃圾堆。java会根据对象的大小来分配内存空间。 当某个对象被java 虚拟机察觉不再被使用时，该对象被标记为可回收。如果内存开始不足，垃圾收集器就会启动来清理垃圾，让空间能够再次被使用。\r\n\r\n## 一些问答\r\n\r\n- __全局变量?__\r\n  java 面向对象中并没有全局变量。但是实际会需要一些方法或者变量（常量） 可被任何的程序存取。在任何类的任何程序中都可以存取public static 的方法。任何变量只要加上public static 和 final，基本都会变成全局变量取用的常量。\r\n\r\n- __char  C语言8bit   java 16bit__\r\n- __注意 除非带上f  要不然所有小数值均会当作double处理  32.0f 为float类型__\r\n\r\n\r\n\r\n\r\n# 六 认识java的API\r\n\r\n## 一些问答\r\n\r\n-   __使用import会把程序变大吗__、\r\n    import和C的include并不相同，使用import只是帮你节省下来每个类前面的包名称而已，程序不会因为用了import而变大变慢 \r\n-   **为何不必import进String类**\r\n\r\n    因为java.lang是个经常会用到的基础包，会被预先引用，所以可不必指定名称。\r\n\r\n------------------------------------\r\n## 一些记录\r\n-   将类中的某个方法标上final 表示这个方法不可被覆盖  如果将整个类标上final 则这个类不可被继承，即所有的方法都不可被覆盖\r\n\r\n# 七 继承和多态\r\n\r\n-   重载版的方法只是刚好有相同名字的不同方法，它与继承和多态无关。  \r\n\r\n-   抽象类不可被初始化  声明抽象类只需在前边加上 abstract\r\n-   抽象的类表明该类必须被extend过，抽象的方法表明此方法一定要被覆盖过。\r\n```\r\n    public abstract void eat();\r\n    没有方法体  抽象方法\r\n```\r\n- 注意!! 如果你声明一个抽象的方法，必须将类也标记为抽象的  不能再非抽象类中拥有抽象方法\r\n\r\n- 如果将A B  两个类都标记为abstract  B extend A  那么 B不需要实现A的方法，C extend B  C需要实现A 和 B的抽象方法\r\n\r\n-   使用instanceof 检查类型\r\n```\r\n    if (o instanceof Dog){\r\n        Dog d = (Dog) o;\r\n    }\r\n```\r\n# 九构造器\r\n\r\n## 一些记录\r\n\r\n- 当你写了一个带有参数的构造函数时，如果你想用一个没有参数的构造函数，那么你必须自己写一个，编译器不会帮你写好\r\n-   调用父类的构造函数的唯一方法时调用super()\r\n-   this() 和 super() 只能用在构造函数中，且必须为第一行，但两者不能同时存在\r\n\r\n# 十 数字局静态\r\n\r\n-   **Math方法:最接近全局的方法**\r\n在Math这个类中的所有方法都不需要实例变量值。因为这些方法都是静态的。你只会用到它的类本身\r\n\r\n- 以类的名字调用静态方法 | 以引用变量的名称调用非静态方法\r\n\r\n-   将构造函数设置为私有，则在外部就无法创建这个类的实例对象，Math类就是这样\r\n-   静态变量是共享的，同意类的所有实例共享一份静态变量\r\n-   设计一个只能创建一个唯一实例的类--单例模式\r\n> 单例模式：http://www.360doc.com/content/14/0218/15/7669533_353538758.shtml\r\n\r\n\r\n-   静态方法不能调用非静态方法和变量\r\n-   在java中的常量是把变量同时标成static 和 final\r\n-   \'<\' 告诉格式化程序重复利用之前的参数\r\n```\r\n    Date today = new Date();\r\n    String.format(\"%tA,%<tB %<td\",today);\r\n```\r\n# 十六 集合与泛型\r\n\r\n## 关于泛型\r\n- 创建被泛型化类的实例：\r\n\r\n```\r\n    new ArrayList<Song>()\r\n```\r\n- 声明与指定泛型类型的变量\r\n\r\n```\r\n    List<Song> songList = \r\n            new ArrayList<Song>()\r\n```\r\n- 声明（与调用）取用泛型类型的方法\r\n```\r\n    void foo(List<Song>list)\r\n    x.foo(songList)\r\n```\r\n- 一种方法的声明：\r\n```\r\n    public <T extends Animal> void takeThing(ArrayList<T> list)\r\n\r\n    区别于\r\n\r\n    public void takeThing(ArrayList<Animal> list)\r\n\r\n    // <T extends Animal> 是方法声明的一部分\r\n```\r\n- 万用字符  wildcard\r\n```\r\n public void takeAnimals(ArrayList<? extends Animal> animals){\r\n     for(Animal a: animals){\r\n         a.eat()\r\n     }\r\n }\r\n\r\n //这里extends 同时表示继承和实现。如果取用有实现Pet这个接口的ArrayList 声明如下：\r\n\r\n ArrayList<? extends Pet>\r\n```\r\n- ps： 实际使用带有<?>声明时，编译器不会让你添加任何东西到集合中，即你无法在DOG集合里添加CAT\r\n\r\n- head first for java p575\r\n\r\n# 十七 打包 jar 存档文件和部署', '/static/images/sciens.jpg', '2019-11-28 16:22:37.002061', '2019-11-28 16:35:01.073796', '0', '0', 'head-first-java', '1', '3');
INSERT INTO `storm_article` VALUES ('6', 'python随笔', '测试用', '大师傅似的', '/static/images/timthumb5.jpg', '2019-11-28 16:23:10.057990', '2019-11-28 16:35:54.833213', '0', '0', 'python-test', '1', '2');

-- ----------------------------
-- Table structure for storm_article_keywords
-- ----------------------------
DROP TABLE IF EXISTS `storm_article_keywords`;
CREATE TABLE `storm_article_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storm_article_keywords_article_id_keyword_id_7510b8d6_uniq` (`article_id`,`keyword_id`),
  KEY `storm_article_keywords_keyword_id_a563777a_fk_storm_keyword_id` (`keyword_id`),
  CONSTRAINT `storm_article_keywords_article_id_5df25258_fk_storm_article_id` FOREIGN KEY (`article_id`) REFERENCES `storm_article` (`id`),
  CONSTRAINT `storm_article_keywords_keyword_id_a563777a_fk_storm_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `storm_keyword` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_article_keywords
-- ----------------------------
INSERT INTO `storm_article_keywords` VALUES ('1', '1', '1');
INSERT INTO `storm_article_keywords` VALUES ('2', '2', '1');
INSERT INTO `storm_article_keywords` VALUES ('3', '3', '1');
INSERT INTO `storm_article_keywords` VALUES ('4', '4', '1');
INSERT INTO `storm_article_keywords` VALUES ('5', '5', '2');
INSERT INTO `storm_article_keywords` VALUES ('6', '6', '2');

-- ----------------------------
-- Table structure for storm_article_tags
-- ----------------------------
DROP TABLE IF EXISTS `storm_article_tags`;
CREATE TABLE `storm_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storm_article_tags_article_id_tag_id_c71bf3b2_uniq` (`article_id`,`tag_id`),
  KEY `storm_article_tags_tag_id_e8380d38_fk_storm_tag_id` (`tag_id`),
  CONSTRAINT `storm_article_tags_article_id_15b9f147_fk_storm_article_id` FOREIGN KEY (`article_id`) REFERENCES `storm_article` (`id`),
  CONSTRAINT `storm_article_tags_tag_id_e8380d38_fk_storm_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `storm_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_article_tags
-- ----------------------------
INSERT INTO `storm_article_tags` VALUES ('1', '1', '4');
INSERT INTO `storm_article_tags` VALUES ('2', '2', '4');
INSERT INTO `storm_article_tags` VALUES ('3', '3', '4');
INSERT INTO `storm_article_tags` VALUES ('4', '4', '4');
INSERT INTO `storm_article_tags` VALUES ('5', '5', '5');
INSERT INTO `storm_article_tags` VALUES ('6', '6', '3');

-- ----------------------------
-- Table structure for storm_bigcategory
-- ----------------------------
DROP TABLE IF EXISTS `storm_bigcategory`;
CREATE TABLE `storm_bigcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `keywords` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_bigcategory
-- ----------------------------
INSERT INTO `storm_bigcategory` VALUES ('1', '生活笔记', 'life', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', 'KJ,静觅,网络,IT,技术,博客,Python');
INSERT INTO `storm_bigcategory` VALUES ('2', '数字媒体', 'sz', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', 'KJ,静觅,网络,IT,技术,博客,Python');
INSERT INTO `storm_bigcategory` VALUES ('3', '技术分享', 'technique', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', 'KJ,静觅,网络,IT,技术,博客,Python');
INSERT INTO `storm_bigcategory` VALUES ('4', '关于KJ', 'about', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', 'KJ,静觅,网络,IT,技术,博客,Python');
INSERT INTO `storm_bigcategory` VALUES ('5', '资源分享', 'resource', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', 'KJ,静觅,网络,IT,技术,博客,Python');
INSERT INTO `storm_bigcategory` VALUES ('6', '赞助KJ', 'donate', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', 'KJ,静觅,网络,IT,技术,博客,Python');

-- ----------------------------
-- Table structure for storm_carousel
-- ----------------------------
DROP TABLE IF EXISTS `storm_carousel`;
CREATE TABLE `storm_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(80) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_carousel
-- ----------------------------
INSERT INTO `storm_carousel` VALUES ('1', '1', 'KJ', '干就完事了', 'http://127.0.0.1:8000/static/images/index1.jpg', '#');
INSERT INTO `storm_carousel` VALUES ('2', '2', 'KJ', '村第一二狗子', 'http://127.0.0.1:8000/static/images/index2.jpg', '#');
INSERT INTO `storm_carousel` VALUES ('3', '3', 'KJ', '村第一韩信', 'http://127.0.0.1:8000/static/images/index3.jpg', '#');
INSERT INTO `storm_carousel` VALUES ('4', '4', 'KJ', '村第一李白', 'http://127.0.0.1:8000/static/images/index4.jpg', '#');
INSERT INTO `storm_carousel` VALUES ('5', '5', 'KJ', '村第一赵云', 'http://127.0.0.1:8000/static/images/index5.jpg', '#');

-- ----------------------------
-- Table structure for storm_category
-- ----------------------------
DROP TABLE IF EXISTS `storm_category`;
CREATE TABLE `storm_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `bigcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `storm_category_bigcategory_id_aa573836_fk_storm_bigcategory_id` (`bigcategory_id`),
  CONSTRAINT `storm_category_bigcategory_id_aa573836_fk_storm_bigcategory_id` FOREIGN KEY (`bigcategory_id`) REFERENCES `storm_bigcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_category
-- ----------------------------
INSERT INTO `storm_category` VALUES ('1', '随笔', 'notes', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', '1');
INSERT INTO `storm_category` VALUES ('2', 'Python', 'python', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', '3');
INSERT INTO `storm_category` VALUES ('3', 'java', 'java', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', '3');
INSERT INTO `storm_category` VALUES ('4', 'Git', 'git', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', '3');
INSERT INTO `storm_category` VALUES ('5', '作业相关', 'homework', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好', '2');

-- ----------------------------
-- Table structure for storm_friendlink
-- ----------------------------
DROP TABLE IF EXISTS `storm_friendlink`;
CREATE TABLE `storm_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_friendlink
-- ----------------------------

-- ----------------------------
-- Table structure for storm_keyword
-- ----------------------------
DROP TABLE IF EXISTS `storm_keyword`;
CREATE TABLE `storm_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_keyword
-- ----------------------------
INSERT INTO `storm_keyword` VALUES ('1', '作业');
INSERT INTO `storm_keyword` VALUES ('2', '笔记');

-- ----------------------------
-- Table structure for storm_resource
-- ----------------------------
DROP TABLE IF EXISTS `storm_resource`;
CREATE TABLE `storm_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `summary` longtext NOT NULL,
  `doc` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `storm_resource_author_id_c6a2f5eb_fk_user_ouser_id` (`author_id`),
  CONSTRAINT `storm_resource_author_id_c6a2f5eb_fk_user_ouser_id` FOREIGN KEY (`author_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_resource
-- ----------------------------
INSERT INTO `storm_resource` VALUES ('2', '测试', '描述文件，请务必填写...', 'doc/gobang-game_XmWzVDe_fwHBmhU.zip', '1');
INSERT INTO `storm_resource` VALUES ('3', '第二次测试', '这次我写多西但是犯得上犯得上大师傅', 'doc/gobang-game_XmWzVDe_sITagyX.zip', '1');
INSERT INTO `storm_resource` VALUES ('4', '块第三方', '大师傅大师傅', 'doc/Python编程从入门到实践.pdf', '1');
INSERT INTO `storm_resource` VALUES ('5', '第三方第三方 地方', '大师傅士大夫 第三方', 'doc/Head_First_Java.第二版.中文完整高清版.pdf', '1');
INSERT INTO `storm_resource` VALUES ('6', 'o huo  o ', 'o huo o ', 'doc/Head_First_Java.第二版.中文完整高清版_K3wvf2x.pdf', '2');

-- ----------------------------
-- Table structure for storm_silian
-- ----------------------------
DROP TABLE IF EXISTS `storm_silian`;
CREATE TABLE `storm_silian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badurl` varchar(200) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `add_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_silian
-- ----------------------------

-- ----------------------------
-- Table structure for storm_tag
-- ----------------------------
DROP TABLE IF EXISTS `storm_tag`;
CREATE TABLE `storm_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storm_tag
-- ----------------------------
INSERT INTO `storm_tag` VALUES ('1', 'Git|Github', 'Git', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好');
INSERT INTO `storm_tag` VALUES ('2', '生活笔记', 'life-note', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好');
INSERT INTO `storm_tag` VALUES ('3', 'Python', 'python', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好');
INSERT INTO `storm_tag` VALUES ('4', '作业', 'homework', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好');
INSERT INTO `storm_tag` VALUES ('5', 'JAVA', 'java', 'KJ的个人网站，记录生活的瞬间，分享学习的心得，感悟生活，留住感动，静静寻觅生活的美好');

-- ----------------------------
-- Table structure for user_ouser
-- ----------------------------
DROP TABLE IF EXISTS `user_ouser`;
CREATE TABLE `user_ouser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `link` varchar(200) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_ouser
-- ----------------------------
INSERT INTO `user_ouser` VALUES ('1', 'pbkdf2_sha256$36000$md7dnozkTbkN$URxAQdogSuYTyMUIHKyBD/yjAKZSpB6dt+3SPzylqEE=', '2019-12-03 10:09:41.586044', '1', 'makangjia', '', '', 'mkj0421@126.com', '1', '1', '2019-11-28 09:45:58.634934', '', 'avatar/default.png');
INSERT INTO `user_ouser` VALUES ('2', 'pbkdf2_sha256$36000$QHIQepgTO1u7$UCptro4e/NgDc7QrKN7gyxOrgYEg0IgfNGfIHYkOWjQ=', '2019-12-03 11:14:50.300391', '0', 'mmmkkkjjj', '', '', '185480131@qq.com', '0', '1', '2019-12-03 09:56:25.140128', '', 'avatar/default.png');

-- ----------------------------
-- Table structure for user_ouser_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_ouser_groups`;
CREATE TABLE `user_ouser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ouser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_ouser_groups_ouser_id_group_id_03bce0cb_uniq` (`ouser_id`,`group_id`),
  KEY `user_ouser_groups_group_id_12001949_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_ouser_groups_group_id_12001949_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_ouser_groups_ouser_id_ad1b57d3_fk_user_ouser_id` FOREIGN KEY (`ouser_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_ouser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_ouser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_ouser_user_permissions`;
CREATE TABLE `user_ouser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ouser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_ouser_user_permissions_ouser_id_permission_id_ef5c908e_uniq` (`ouser_id`,`permission_id`),
  KEY `user_ouser_user_perm_permission_id_da78e996_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_ouser_user_perm_permission_id_da78e996_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_ouser_user_permissions_ouser_id_a820347f_fk_user_ouser_id` FOREIGN KEY (`ouser_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_ouser_user_permissions
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
