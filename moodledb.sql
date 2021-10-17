/*
Navicat MySQL Data Transfer

Source Server         : kubernetes
Source Server Version : 50727
Source Host           : 35.184.45.36:3306
Source Database       : moodledb

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-04 19:59:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add access_history', '7', 'add_access_history');
INSERT INTO `auth_permission` VALUES ('26', 'Can change access_history', '7', 'change_access_history');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete access_history', '7', 'delete_access_history');
INSERT INTO `auth_permission` VALUES ('28', 'Can view access_history', '7', 'view_access_history');
INSERT INTO `auth_permission` VALUES ('29', 'Can add event_history', '8', 'add_event_history');
INSERT INTO `auth_permission` VALUES ('30', 'Can change event_history', '8', 'change_event_history');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete event_history', '8', 'delete_event_history');
INSERT INTO `auth_permission` VALUES ('32', 'Can view event_history', '8', 'view_event_history');
INSERT INTO `auth_permission` VALUES ('33', 'Can add menu_tree', '9', 'add_menu_tree');
INSERT INTO `auth_permission` VALUES ('34', 'Can change menu_tree', '9', 'change_menu_tree');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete menu_tree', '9', 'delete_menu_tree');
INSERT INTO `auth_permission` VALUES ('36', 'Can view menu_tree', '9', 'view_menu_tree');
INSERT INTO `auth_permission` VALUES ('37', 'Can add privilege', '10', 'add_privilege');
INSERT INTO `auth_permission` VALUES ('38', 'Can change privilege', '10', 'change_privilege');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete privilege', '10', 'delete_privilege');
INSERT INTO `auth_permission` VALUES ('40', 'Can view privilege', '10', 'view_privilege');
INSERT INTO `auth_permission` VALUES ('41', 'Can add school', '11', 'add_school');
INSERT INTO `auth_permission` VALUES ('42', 'Can change school', '11', 'change_school');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete school', '11', 'delete_school');
INSERT INTO `auth_permission` VALUES ('44', 'Can view school', '11', 'view_school');
INSERT INTO `auth_permission` VALUES ('45', 'Can add school type', '12', 'add_schooltype');
INSERT INTO `auth_permission` VALUES ('46', 'Can change school type', '12', 'change_schooltype');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete school type', '12', 'delete_schooltype');
INSERT INTO `auth_permission` VALUES ('48', 'Can view school type', '12', 'view_schooltype');
INSERT INTO `auth_permission` VALUES ('49', 'Can add tenant', '13', 'add_tenant');
INSERT INTO `auth_permission` VALUES ('50', 'Can change tenant', '13', 'change_tenant');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete tenant', '13', 'delete_tenant');
INSERT INTO `auth_permission` VALUES ('52', 'Can view tenant', '13', 'view_tenant');
INSERT INTO `auth_permission` VALUES ('53', 'Can add user', '14', 'add_user');
INSERT INTO `auth_permission` VALUES ('54', 'Can change user', '14', 'change_user');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete user', '14', 'delete_user');
INSERT INTO `auth_permission` VALUES ('56', 'Can view user', '14', 'view_user');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for basic_access_history
-- ----------------------------
DROP TABLE IF EXISTS `basic_access_history`;
CREATE TABLE `basic_access_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `time` datetime(6) NOT NULL,
  `ip_addr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of basic_access_history
-- ----------------------------
INSERT INTO `basic_access_history` VALUES ('1', 'admin', 'Fail', '2019-09-28 18:49:39.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('2', 'admin', 'Fail', '2019-09-28 18:49:45.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('3', 'admin', 'Fail', '2019-09-28 18:50:28.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('4', 'admin', 'Fail', '2019-09-28 18:50:30.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('5', 'admin', 'Login', '2019-09-28 18:50:57.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('6', 'admin', 'Logout', '2019-09-28 19:05:59.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('7', 'admin', 'Login', '2019-09-28 19:06:15.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('8', 'admin', 'Logout', '2019-09-28 19:06:55.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('9', 'admin', 'Login', '2019-09-28 19:07:36.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('10', 'admin', 'Login', '2019-09-28 19:07:41.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('11', 'admin', 'Logout', '2019-09-28 19:07:45.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('12', 'admin', 'Login', '2019-09-28 19:18:20.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('13', 'admin', 'Logout', '2019-09-28 19:18:37.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('14', 'admin', 'Login', '2019-09-28 19:20:58.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('15', 'admin', 'Logout', '2019-09-28 19:21:53.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('16', 'admin', 'Login', '2019-09-28 19:25:09.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('17', 'admin', 'Logout', '2019-09-28 19:28:01.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('18', 'admin', 'Login', '2019-09-28 19:36:10.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('19', 'tes1', 'Login', '2019-09-29 14:38:33.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('20', 'admin', 'Login', '2019-09-29 11:13:11.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('21', 'tes1', 'Logout', '2019-09-30 02:13:21.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('22', 'tes1', 'Login', '2019-09-30 02:14:24.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('23', 'tes1', 'Logout', '2019-09-30 02:15:15.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('24', 'tes1', 'Login', '2019-09-30 02:15:22.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('25', 'admin', 'Login', '2019-09-29 18:41:11.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('26', 'admin', 'Login', '2019-09-29 23:32:44.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('27', 'admin', 'Login', '2019-09-30 03:18:23.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('28', 'admin', 'Logout', '2019-09-30 03:42:01.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('29', 'admin', 'Login', '2019-09-30 03:42:31.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('30', 'admin', 'Login', '2019-09-30 05:01:59.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('31', 'admin', 'Logout', '2019-09-30 09:01:43.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('32', 'admin', 'Login', '2019-09-30 09:06:12.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('33', 'admin', 'Login', '2019-09-30 09:10:12.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('34', 'admin', 'Login', '2019-09-30 09:29:34.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('35', 'admin', 'Login', '2019-10-02 12:33:50.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('36', 'admin', 'Login', '2019-10-02 13:38:34.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('37', 'admin', 'Login', '2019-10-03 00:44:44.000000', '192.168.2.111:8000');
INSERT INTO `basic_access_history` VALUES ('38', 'admin', 'Login', '2019-10-03 14:58:19.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('39', 'admin', 'Logout', '2019-10-03 15:57:23.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('40', 'faisal', 'Login', '2019-10-03 15:57:38.000000', '35.184.45.36:8000');
INSERT INTO `basic_access_history` VALUES ('41', 'faisal', 'Logout', '2019-10-03 15:58:15.000000', '35.184.45.36:8000');

-- ----------------------------
-- Table structure for basic_event_history
-- ----------------------------
DROP TABLE IF EXISTS `basic_event_history`;
CREATE TABLE `basic_event_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `part` varchar(255) NOT NULL,
  `time` datetime(6) NOT NULL,
  `ip_addr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of basic_event_history
-- ----------------------------
INSERT INTO `basic_event_history` VALUES ('1', 'admin', 'Insert', 'Fail', '/tenant', '2019-09-28 23:09:27.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('2', 'admin', 'Insert', 'Fail', '/tenant', '2019-09-28 23:09:36.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('3', 'admin', 'Insert', 'Success', '/tenant', '2019-09-28 23:18:06.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('4', 'admin', 'Update', 'Success', '/tenant/1', '2019-09-28 23:29:28.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('5', 'admin', 'Insert', 'Success', '/tenant', '2019-09-28 23:30:03.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('6', 'admin', 'Delete', 'Success', '/tenant/2', '2019-09-28 23:30:08.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('7', 'admin', 'Insert', 'Success', '/tenant', '2019-09-29 00:44:56.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('8', 'admin', 'Update', 'Success', '/tenant/3', '2019-09-29 00:45:11.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('9', 'admin', 'Delete', 'Success', '/tenant/3', '2019-09-29 00:45:28.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('10', 'admin', 'Insert', 'Success', '/tenant', '2019-09-29 00:45:51.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('11', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 00:50:34.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('12', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 00:50:39.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('13', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 00:50:48.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('14', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 00:55:21.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('15', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 00:56:02.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('16', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 00:56:47.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('17', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 01:04:11.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('18', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 01:12:30.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('19', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 01:14:35.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('20', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 01:17:16.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('21', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 01:20:18.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('22', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 01:21:03.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('23', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 01:26:18.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('24', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 01:26:21.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('25', 'admin', 'Insert', 'Success', '/school', '2019-09-29 01:27:00.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('26', 'admin', 'Delete', 'Success', '/school/1', '2019-09-29 01:28:34.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('27', 'admin', 'Update', 'Success', '/school/2', '2019-09-29 01:31:42.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('28', 'admin', 'Update', 'Success', '/school/2', '2019-09-29 11:02:36.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('29', 'admin', 'Update', 'Success', '/school/2', '2019-09-29 11:02:43.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('30', 'admin', 'Update', 'Success', '/school/2', '2019-09-29 11:26:08.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('31', 'admin', 'Insert', 'Success', '/school', '2019-09-29 11:35:58.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('32', 'admin', 'Insert', 'Success', '/school', '2019-09-29 11:36:15.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('33', 'admin', 'Insert', 'Success', '/school', '2019-09-29 11:38:29.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('34', 'admin', 'Update', 'Success', '/school/3', '2019-09-29 11:42:19.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('35', 'admin', 'Update', 'Success', '/school/3', '2019-09-29 11:42:48.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('36', 'admin', 'Update', 'Success', '/school/4', '2019-09-29 11:47:32.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('37', '---', 'Register', 'Fail', '/Register/eeee', '2019-09-29 12:35:05.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('38', '---', 'Register', 'Fail', '/Register/eeee', '2019-09-29 12:35:16.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('39', '---', 'Register', 'Fail', '/Register/test1', '2019-09-29 14:11:10.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('40', '---', 'Register', 'Fail', '/Register/test1', '2019-09-29 14:17:47.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('41', '---', 'Register', 'Fail', '/Register/test1', '2019-09-29 14:18:05.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('42', '---', 'Register', 'Fail', '/Register/test1', '2019-09-29 14:19:29.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('43', '---', 'Register', 'Success', '/Register/test1', '2019-09-29 14:21:20.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('44', 'admin', 'Delete', 'Success', '/Setting/User/test1', '2019-09-29 14:21:29.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('45', 'admin', 'Update', 'Fail', '/Setting/User/test1', '2019-09-29 14:34:07.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('46', 'admin', 'Update', 'Success', '/Setting/User/test1', '2019-09-29 14:35:22.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('47', 'admin', 'Update', 'Fail', '/Setting/User/test1', '2019-09-29 14:35:36.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('48', 'admin', 'Update', 'Success', '/Setting/User/test1', '2019-09-29 14:35:57.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('49', 'admin', 'Update', 'Success', '/Setting/User/test12', '2019-09-29 14:37:12.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('50', 'admin', 'Delete', 'Success', '/Setting/User/test12', '2019-09-29 14:37:18.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('51', '---', 'Register', 'Success', '/Register/tes1', '2019-09-29 14:37:39.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('52', 'admin', 'Update', 'Success', '/Setting/User/tes1', '2019-09-29 14:38:02.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('53', 'admin', 'Update', 'Success', '/Setting/User/tes1', '2019-09-29 18:27:37.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('54', 'admin', 'Insert', 'Fail', '/school', '2019-09-29 11:13:39.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('55', 'admin', 'Insert', 'Success', '/school', '2019-09-29 11:15:20.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('56', 'admin', 'Delete', 'Success', '/school/2', '2019-09-29 11:17:39.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('57', 'admin', 'Delete', 'Success', '/school/3', '2019-09-29 11:17:43.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('58', 'admin', 'Delete', 'Success', '/school/4', '2019-09-29 11:17:48.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('59', 'admin', 'Delete', 'Success', '/school/5', '2019-09-29 11:17:53.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('60', 'admin', 'Delete', 'Success', '/school/6', '2019-09-29 11:17:57.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('61', 'admin', 'Insert', 'Success', '/school', '2019-09-29 11:18:50.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('62', 'admin', 'Delete', 'Success', '/school/7', '2019-09-29 11:27:07.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('63', '---', 'Register', 'Success', '/Register/test2', '2019-09-29 19:28:58.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('64', '---', 'Register', 'Success', '/Register/test3', '2019-09-29 19:29:28.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('65', 'admin', 'Update', 'Success', '/Setting/User/test2', '2019-09-29 19:29:51.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('66', 'admin', 'Update', 'Success', '/Setting/User/test3', '2019-09-29 19:30:07.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('67', 'admin', 'Update', 'Success', '/Setting/User/tes1', '2019-09-29 19:30:37.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('68', 'admin', 'Insert', 'Success', '/school', '2019-09-29 19:51:31.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('69', 'admin', 'Insert', 'Success', '/school', '2019-09-29 19:51:49.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('70', 'admin', 'Insert', 'Success', '/school', '2019-09-29 19:52:49.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('71', 'admin', 'Insert', 'Success', '/school', '2019-09-29 19:53:32.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('72', 'admin', 'Insert', 'Success', '/school', '2019-09-29 21:18:12.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('73', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:03:25.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('74', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:13:25.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('75', 'admin', 'Delete', 'Success', '/school/14', '2019-09-29 23:13:56.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('76', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:15:38.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('77', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:22:52.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('78', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:25:49.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('79', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:26:28.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('80', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:28:07.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('81', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:32:06.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('82', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:35:50.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('83', 'admin', 'Delete', 'Success', '/school/20', '2019-09-29 23:36:24.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('84', 'admin', 'Delete', 'Success', '/school/22', '2019-09-29 23:36:32.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('85', 'admin', 'Delete', 'Success', '/school/21', '2019-09-29 23:36:43.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('86', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:37:06.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('87', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:37:57.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('88', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:39:31.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('89', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:41:38.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('90', 'admin', 'Insert', 'Success', '/school', '2019-09-29 23:42:58.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('91', 'admin', 'Delete', 'Success', '/school/8', '2019-09-29 23:50:54.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('92', 'admin', 'Delete', 'Success', '/school/9', '2019-09-29 23:51:05.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('93', 'admin', 'Delete', 'Success', '/school/10', '2019-09-29 23:51:13.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('94', 'admin', 'Delete', 'Success', '/school/11', '2019-09-29 23:51:33.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('95', 'admin', 'Delete', 'Success', '/school/12', '2019-09-29 23:51:45.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('96', 'admin', 'Delete', 'Success', '/school/13', '2019-09-29 23:51:57.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('97', 'admin', 'Delete', 'Success', '/school/15', '2019-09-29 23:52:09.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('98', 'admin', 'Delete', 'Success', '/school/16', '2019-09-30 00:03:25.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('99', 'admin', 'Insert', 'Success', '/school', '2019-09-30 00:03:52.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('100', 'admin', 'Delete', 'Success', '/school/17', '2019-09-30 00:04:05.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('101', 'admin', 'Delete', 'Success', '/school/18', '2019-09-30 00:04:39.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('102', 'admin', 'Delete', 'Success', '/school/23', '2019-09-30 00:05:57.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('103', 'admin', 'Delete', 'Success', '/school/24', '2019-09-30 00:15:41.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('104', 'admin', 'Insert', 'Success', '/school', '2019-09-30 00:16:07.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('105', 'admin', 'Insert', 'Success', '/school', '2019-09-30 00:21:16.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('106', 'admin', 'Delete', 'Success', '/school/19', '2019-09-30 00:21:25.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('107', 'admin', 'Insert', 'Success', '/school', '2019-09-30 00:21:44.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('108', 'admin', 'Delete', 'Success', '/school/25', '2019-09-30 00:25:00.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('109', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:05:48.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('110', 'admin', 'Delete', 'Success', '/school/26', '2019-09-30 01:09:35.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('111', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:16:48.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('112', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:18:08.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('113', 'admin', 'Delete', 'Success', '/school/27', '2019-09-30 01:18:17.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('114', 'admin', 'Delete', 'Success', '/school/28', '2019-09-30 01:19:03.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('115', 'admin', 'Delete', 'Success', '/school/33', '2019-09-30 01:19:12.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('116', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:19:32.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('117', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:25:13.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('118', 'admin', 'Delete', 'Success', '/school/29', '2019-09-30 01:25:26.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('119', 'admin', 'Delete', 'Success', '/school/34', '2019-09-30 01:25:36.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('120', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:28:53.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('121', 'admin', 'Delete', 'Success', '/school/35', '2019-09-30 01:29:18.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('122', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:32:38.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('123', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:36:57.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('124', 'admin', 'Delete', 'Success', '/school/30', '2019-09-30 01:46:41.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('125', 'admin', 'Insert', 'Success', '/school', '2019-09-30 01:59:38.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('126', 'admin', 'Delete', 'Success', '/school/31', '2019-09-30 01:59:48.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('127', 'admin', 'Delete', 'Success', '/school/32', '2019-09-30 02:00:00.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('128', 'admin', 'Delete', 'Success', '/school/36', '2019-09-30 02:00:14.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('129', 'admin', 'Insert', 'Success', '/school', '2019-09-30 02:02:16.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('130', 'admin', 'Update', 'Success', '/Setting/User/tes1', '2019-09-30 02:07:04.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('131', 'admin', 'Update', 'Success', '/Setting/User/tes1', '2019-09-30 02:14:58.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('132', 'admin', 'Insert', 'Success', '/school', '2019-09-29 18:44:52.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('133', 'admin', 'Insert', 'Success', '/school', '2019-09-29 18:45:15.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('134', 'admin', 'Delete', 'Success', '/school/37', '2019-09-29 18:45:22.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('135', 'admin', 'Delete', 'Success', '/school/38', '2019-09-30 02:46:53.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('136', 'admin', 'Delete', 'Success', '/school/40', '2019-09-30 02:46:58.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('137', 'admin', 'Delete', 'Success', '/school/39', '2019-09-30 02:47:03.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('138', 'admin', 'Delete', 'Success', '/school/42', '2019-09-30 02:47:08.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('139', 'admin', 'Insert', 'Success', '/school', '2019-10-03 15:08:18.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('140', '---', 'Register', 'Success', '/Register/faisal', '2019-10-03 15:56:21.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('141', 'admin', 'Update', 'Success', '/Setting/User/faisal', '2019-10-03 15:57:12.000000', '35.184.45.36:8000');
INSERT INTO `basic_event_history` VALUES ('142', 'admin', 'Insert', 'Success', '/school', '2019-10-04 00:04:49.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('143', 'admin', 'Delete', 'Success', '/school/41', '2019-10-04 00:05:13.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('144', 'admin', 'Insert', 'Success', '/school', '2019-10-04 00:07:23.000000', '192.168.2.111:8000');
INSERT INTO `basic_event_history` VALUES ('145', 'admin', 'Insert', 'Success', '/school', '2019-10-04 00:11:26.000000', '192.168.2.111:8000');

-- ----------------------------
-- Table structure for basic_menu_tree
-- ----------------------------
DROP TABLE IF EXISTS `basic_menu_tree`;
CREATE TABLE `basic_menu_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `has_child` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of basic_menu_tree
-- ----------------------------
INSERT INTO `basic_menu_tree` VALUES ('1', '0', '0', 'Home', 'fa big-icon fa-tachometer icon-wrap', 'dashboard', '2');
INSERT INTO `basic_menu_tree` VALUES ('3', '0', '0', 'Tenant', 'fa big-icon fa-university icon-wrap', 'tenant', '1');
INSERT INTO `basic_menu_tree` VALUES ('5', '0', '0', 'School', 'fa big-icon fa-graduation-cap icon-wrap', 'school', '2');
INSERT INTO `basic_menu_tree` VALUES ('16', '100', '1', 'Setting', 'fa big-icon fa-cogs icon-wrap', '---', '2');
INSERT INTO `basic_menu_tree` VALUES ('17', '100', '0', 'Privilege', 'fa fa-user-md sub-icon-mg', 'setting/privilege_view', '1');
INSERT INTO `basic_menu_tree` VALUES ('18', '0', '0', 'User', 'fa fa-users icon-wrap', 'setting/user_view', '1');
INSERT INTO `basic_menu_tree` VALUES ('19', '16', '0', 'System', 'fa fa-cog sub-icon-mg', 'setting/system_view', '2');
INSERT INTO `basic_menu_tree` VALUES ('20', '0', '1', 'Activity', 'fa big-icon fa-history icon-wrap', '---', '2');
INSERT INTO `basic_menu_tree` VALUES ('21', '20', '0', 'Access', 'fa fa-frown-o sub-icon-mg', 'history/access_view', '2');
INSERT INTO `basic_menu_tree` VALUES ('22', '20', '0', 'Event', 'fa fa-check-circle sub-icon-mg', 'history/event_view', '2');

-- ----------------------------
-- Table structure for basic_privilege
-- ----------------------------
DROP TABLE IF EXISTS `basic_privilege`;
CREATE TABLE `basic_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of basic_privilege
-- ----------------------------
INSERT INTO `basic_privilege` VALUES ('1', 'Admin');
INSERT INTO `basic_privilege` VALUES ('2', 'User');

-- ----------------------------
-- Table structure for basic_school
-- ----------------------------
DROP TABLE IF EXISTS `basic_school`;
CREATE TABLE `basic_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `postalCode` varchar(255) NOT NULL,
  `headMaster` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `schoolTypeId` varchar(255) NOT NULL,
  `tenantId` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `httpPort` varchar(255) NOT NULL,
  `httpsPort` varchar(255) NOT NULL,
  `webUsername` varchar(255) NOT NULL,
  `webPassword` varchar(255) NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `activatedAt` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of basic_school
-- ----------------------------
INSERT INTO `basic_school` VALUES ('43', 'test31', 'test31', 'test31', 'test31', 'test31', 'test31', 'test31', 'test31', 'test31', '2', '4', 'namespace-6ec4c814-2e97-4d3a-b3ac-898ff373b33d', '32422/TCP', '31781/TCP', 'user', 'password', '2019-09-29 18:44:51.000000', '2019-09-29 18:47:26.000000');
INSERT INTO `basic_school` VALUES ('44', 'test32', 'test32', 'test32', 'test32', 'test32', 'test32', 'test32', 'test32', 'test32', '1', '1', 'namespace-a87e37ff-d41f-4006-85ef-aac6cd8b033b', '31896/TCP', '31935/TCP', 'user', 'password', '2019-09-29 18:45:14.000000', '2019-09-29 18:47:50.000000');
INSERT INTO `basic_school` VALUES ('45', 'SMA BPK Penabur 5 Palembang', 'Jl. Asahan 10A Indra Giri Hilir', 'Palembang', 'Sumatera Selatan', '23493', 'Rudi Sujarwo', '9203029032', '08120902930239', 'rudi.sujarwo@bpk.edu', '2', '1', 'namespace-1ccf9481-96bc-403b-97e2-37f2ea16a40f', '30945/TCP', '32514/TCP', 'user', 'password', '2019-10-03 15:08:15.000000', '2019-10-03 15:10:30.000000');
INSERT INTO `basic_school` VALUES ('46', 'test33', 'test33', 'test33', 'test33', 'test33', 'test33', 'test33', 'test33', 'test33', '1', '1', 'namespace-d8fedfae-433f-4943-ae66-d7f67cb513b2', '31660/TCP', '32024/TCP', 'user', 'password', '2019-10-04 00:04:43.000000', '2019-10-04 00:07:34.000000');
INSERT INTO `basic_school` VALUES ('47', 'test34', 'test34', 'test34', 'test34', 'test34', 'test34', 'test34', 'test34', 'test34', '1', '1', 'namespace-138d0c4c-3c7f-488d-b9b2-df00a9bb350e', '31448/TCP', '31814/TCP', 'user', 'password', '2019-10-04 00:07:19.000000', '2019-10-04 00:09:39.000000');
INSERT INTO `basic_school` VALUES ('48', 'test35', 'test35', 'test35', 'test35', 'test35', 'test35', 'test35', 'test35', 'test35', '1', '1', 'namespace-b9563b68-a07f-472d-84dc-0cd39d694e56', '31252/TCP', '31504/TCP', 'user', 'password', '2019-10-04 00:11:23.000000', '2019-10-04 00:14:19.000000');

-- ----------------------------
-- Table structure for basic_schooltype
-- ----------------------------
DROP TABLE IF EXISTS `basic_schooltype`;
CREATE TABLE `basic_schooltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of basic_schooltype
-- ----------------------------
INSERT INTO `basic_schooltype` VALUES ('1', 'Elementary School');
INSERT INTO `basic_schooltype` VALUES ('2', 'Junior High School');
INSERT INTO `basic_schooltype` VALUES ('3', 'Senior High School');
INSERT INTO `basic_schooltype` VALUES ('4', 'University');

-- ----------------------------
-- Table structure for basic_tenant
-- ----------------------------
DROP TABLE IF EXISTS `basic_tenant`;
CREATE TABLE `basic_tenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `postalCode` varchar(255) NOT NULL,
  `contactPerson` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `activeDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of basic_tenant
-- ----------------------------
INSERT INTO `basic_tenant` VALUES ('1', 'YBPK-0011', 'Yayasan BPK Penabur1', 'Jl Mayjen S Parman 101', 'Jakarta1', 'DKI Jakarta1', '123451', 'Budi Gunawan1', '812987364881', '08138738383731', 'budi gunawan@bpk-penabur.ac.id1', '2019-09-28 23:18:06.000000');
INSERT INTO `basic_tenant` VALUES ('4', 'tcod', 'tname', 'taddre', 'tcity', 'tprobicne', 'tpostal', 'tcont', 'tphon', 'tmobile', 'temail', '2019-09-29 00:45:51.000000');

-- ----------------------------
-- Table structure for basic_user
-- ----------------------------
DROP TABLE IF EXISTS `basic_user`;
CREATE TABLE `basic_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `tenantId` varchar(255) NOT NULL,
  `is_superuser` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of basic_user
-- ----------------------------
INSERT INTO `basic_user` VALUES ('1', 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '', '1', '1', '1970-01-01 00:00:00.000000');
INSERT INTO `basic_user` VALUES ('4', 'tes1', 'tes1', 'tes1', 'fa3fb6e0dccc657b57251c97db271b05', 'tes1', 'tes1', '4', '2', '1', '2019-09-29 14:37:39.000000');
INSERT INTO `basic_user` VALUES ('5', 'test2', 'test2', 'test2', 'ad0234829205b9033196ba818f7a872b', 'test2@test.com', 'test2', '1', '2', '0', '2019-09-29 19:28:57.000000');
INSERT INTO `basic_user` VALUES ('6', 'test3', 'test3', 'test3', '8ad8757baa8564dc136c1e07507f4a98', 'test3@tst.co', 'test3', '4', '2', '0', '2019-09-29 19:29:28.000000');
INSERT INTO `basic_user` VALUES ('7', 'faisal', 'Faisal', 'Rudi', '261685d78085509728a79ebf6aadc27c', 'faisal.ssi@hotmail.com', '08102919209121', '1', '2', '1', '2019-10-03 15:56:21.000000');

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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'basic', 'access_history');
INSERT INTO `django_content_type` VALUES ('8', 'basic', 'event_history');
INSERT INTO `django_content_type` VALUES ('9', 'basic', 'menu_tree');
INSERT INTO `django_content_type` VALUES ('10', 'basic', 'privilege');
INSERT INTO `django_content_type` VALUES ('11', 'basic', 'school');
INSERT INTO `django_content_type` VALUES ('12', 'basic', 'schooltype');
INSERT INTO `django_content_type` VALUES ('13', 'basic', 'tenant');
INSERT INTO `django_content_type` VALUES ('14', 'basic', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-09-28 10:44:54.565772');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-09-28 10:44:56.056667');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-09-28 10:45:08.666957');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-09-28 10:45:11.501590');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-09-28 10:45:11.559868');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-09-28 10:45:13.560765');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-09-28 10:45:13.789713');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-09-28 10:45:13.965796');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-09-28 10:45:14.021334');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-09-28 10:45:15.097339');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-09-28 10:45:15.155068');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-09-28 10:45:15.230998');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-09-28 10:45:15.372495');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-09-28 10:45:15.480530');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2019-09-28 10:45:15.581038');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2019-09-28 10:45:15.713279');
INSERT INTO `django_migrations` VALUES ('17', 'basic', '0001_initial', '2019-09-28 10:45:18.634434');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2019-09-28 10:45:19.840697');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1h8792hmhe7rn2ppz14txb4lm42ko8l1', 'ZjFjZDMwNTZkMjVmMDJkMmEzZTljNTMwMzlhZDA4MDA5MzRmMmE4Yzp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyaWQiOjEsInVzZXJsZXZlbCI6MSwidXNlcnRlbmFudElkIjoiIn0=', '2019-10-16 12:33:50.714219');
INSERT INTO `django_session` VALUES ('8hn162dgv8bbl42diiekdnkq74zfq8bz', 'ZjFjZDMwNTZkMjVmMDJkMmEzZTljNTMwMzlhZDA4MDA5MzRmMmE4Yzp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyaWQiOjEsInVzZXJsZXZlbCI6MSwidXNlcnRlbmFudElkIjoiIn0=', '2019-10-16 16:44:45.340556');
INSERT INTO `django_session` VALUES ('9t4wnrud7ilsup2rtuotgimjilvxe4p5', 'YmQxZDMwODE2Zjc2OTA3NTI0NjI5YTI0MWY2YzdiZjhkZWFiNzZhZjp7InVzZXJuYW1lIjpudWxsLCJ1c2VyaWQiOjcsInVzZXJsZXZlbCI6bnVsbCwidXNlcnRlbmFudElkIjoiMSJ9', '2019-10-17 15:58:15.365155');
INSERT INTO `django_session` VALUES ('bc73zlgpz63oo78p2egz20pyzzima6ky', 'ZjFjZDMwNTZkMjVmMDJkMmEzZTljNTMwMzlhZDA4MDA5MzRmMmE4Yzp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyaWQiOjEsInVzZXJsZXZlbCI6MSwidXNlcnRlbmFudElkIjoiIn0=', '2019-10-16 13:38:34.203502');
INSERT INTO `django_session` VALUES ('tiu7huemyq62tcv5mf725mzzz9vhk3hk', 'YzdlMDgyOWNiOWYzMjYyZGM1Njc0ZjlmNTQ1MzhiY2I3NmNiMTIxYjp7InVzZXJuYW1lIjoidGVzMSIsInVzZXJpZCI6NCwidXNlcmxldmVsIjoyLCJ1c2VydGVuYW50SWQiOiI0In0=', '2019-10-13 18:15:23.181567');
INSERT INTO `django_session` VALUES ('utva03ouf8hbrybjrf33s302jcbu5odf', 'ZjFjZDMwNTZkMjVmMDJkMmEzZTljNTMwMzlhZDA4MDA5MzRmMmE4Yzp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyaWQiOjEsInVzZXJsZXZlbCI6MSwidXNlcnRlbmFudElkIjoiIn0=', '2019-10-14 09:06:12.146373');
INSERT INTO `django_session` VALUES ('w1nparuyfmsulwfsrzjpesk20co8abnp', 'ZjFjZDMwNTZkMjVmMDJkMmEzZTljNTMwMzlhZDA4MDA5MzRmMmE4Yzp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyaWQiOjEsInVzZXJsZXZlbCI6MSwidXNlcnRlbmFudElkIjoiIn0=', '2019-10-17 14:58:19.350167');
