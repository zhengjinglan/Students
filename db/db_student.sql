/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : db_student

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2021-07-05 11:25:11
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` VALUES ('25', 'Can add student', '7', 'add_student');
INSERT INTO `auth_permission` VALUES ('26', 'Can change student', '7', 'change_student');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete student', '7', 'delete_student');
INSERT INTO `auth_permission` VALUES ('28', 'Can view student', '7', 'view_student');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'Student', 'student');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'Student', '0001_initial', '2021-06-23 11:11:20.557094');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0001_initial', '2021-06-23 11:11:20.602972');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2021-06-23 11:11:21.054318');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0001_initial', '2021-06-23 11:11:21.167432');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0002_logentry_remove_auto_add', '2021-06-23 11:11:21.178403');
INSERT INTO `django_migrations` VALUES ('6', 'admin', '0003_logentry_add_action_flag_choices', '2021-06-23 11:11:21.189275');
INSERT INTO `django_migrations` VALUES ('7', 'contenttypes', '0002_remove_content_type_name', '2021-06-23 11:11:21.264228');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0002_alter_permission_name_max_length', '2021-06-23 11:11:21.314271');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0003_alter_user_email_max_length', '2021-06-23 11:11:21.362160');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0004_alter_user_username_opts', '2021-06-23 11:11:21.372134');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0005_alter_user_last_login_null', '2021-06-23 11:11:21.415065');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0006_require_contenttypes_0002', '2021-06-23 11:11:21.420143');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0007_alter_validators_add_error_messages', '2021-06-23 11:11:21.430120');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0008_alter_user_username_max_length', '2021-06-23 11:11:21.472092');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0009_alter_user_last_name_max_length', '2021-06-23 11:11:21.516236');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0010_alter_group_name_max_length', '2021-06-23 11:11:21.564168');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0011_update_proxy_permissions', '2021-06-23 11:11:21.576164');
INSERT INTO `django_migrations` VALUES ('18', 'auth', '0012_alter_user_first_name_max_length', '2021-06-23 11:11:21.625033');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2021-06-23 11:11:21.664168');

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

-- ----------------------------
-- Table structure for student_student
-- ----------------------------
DROP TABLE IF EXISTS `student_student`;
CREATE TABLE `student_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stuId` varchar(12) NOT NULL,
  `stuName` varchar(8) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `brithDate` datetime(6) NOT NULL,
  `native` varchar(40) NOT NULL,
  `entranceTime` datetime(6) NOT NULL,
  `politicalFee` varchar(1) NOT NULL,
  `perPhone` varchar(11) NOT NULL,
  `idNum` varchar(18) NOT NULL,
  `classId` varchar(9) NOT NULL,
  `dormitoryId` varchar(4) NOT NULL,
  `national` varchar(1) NOT NULL,
  `employmcntStatus` varchar(10) NOT NULL,
  `hPhone` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_student
-- ----------------------------
INSERT INTO `student_student` VALUES ('1', '0001', '历史', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('2', '0002', '历史1', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('3', '0003', '历史2', '', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('4', '0004', '历史2', '', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('5', '0005', '历史2', '', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('6', '0006', '历史', '', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('7', '0007', '历史', '', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('8', '0008', '历史', '', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('9', '0009', '历史', '', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('10', '0010', '历史2', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('11', '0011', '历史2', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('12', '0012', '历史2', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('13', '0013', '历史2', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('14', '0014', '历史2', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('15', '0015', '历史2', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('16', '0016', '历史2', 'on', '2021-06-23 00:00:00.000000', '是是是', '2021-06-23 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('17', '0020', '历史', 'on', '2021-06-24 00:00:00.000000', '是是是', '2021-06-24 00:00:00.000000', '无', '12811000077', '475124587523456321', '0001', '303', '汉', '无', '13711000011', '时代大厦');
INSERT INTO `student_student` VALUES ('18', '0025', '张三', '男', '1995-02-08 00:00:00.000000', '无', '2020-08-09 00:00:00.000000', '无', '13811000011', '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索');
INSERT INTO `student_student` VALUES ('19', '0025', '张三', '男', '1995-02-08 00:00:00.000000', '无', '2020-08-09 00:00:00.000000', '无', '13811000011', '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索');
INSERT INTO `student_student` VALUES ('20', '0025', '张三', '男', '1995-02-08 00:00:00.000000', '无', '2020-08-09 00:00:00.000000', '无', '13811000011', '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索');
INSERT INTO `student_student` VALUES ('21', '0025', '张三', '男', '1995-02-08 00:00:00.000000', '无', '2020-08-09 00:00:00.000000', '无', '13811000011', '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索');
INSERT INTO `student_student` VALUES ('22', '0025', '张三', '男', '1995-02-08 00:00:00.000000', '无', '2020-08-09 00:00:00.000000', '无', '13811000011', '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索');
INSERT INTO `student_student` VALUES ('23', '0025', '张三', '男', '1995-02-08 00:00:00.000000', '无', '2020-08-09 00:00:00.000000', '无', '13811000011', '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索');
INSERT INTO `student_student` VALUES ('24', '0025', '张三', '男', '1995-02-08 00:00:00.000000', '无', '2020-08-09 00:00:00.000000', '无', '13811000011', '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索');
INSERT INTO `student_student` VALUES ('25', '0025', '张三', '男', '1995-02-08 00:00:00.000000', '无', '2020-08-09 00:00:00.000000', '无', '13811000011', '412547852365457896', '001', '101', '无', '无', '13811000011', '搜索');

-- ----------------------------
-- Table structure for tb_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_class`;
CREATE TABLE `tb_class` (
  `ClassID` char(9) NOT NULL COMMENT '班级编号',
  `ClassName` varchar(20) NOT NULL COMMENT '班级名称',
  `Num` tinyint(1) NOT NULL COMMENT '人数',
  `SpeeializeID` char(2) NOT NULL COMMENT '专业编号',
  `DepartmentID` char(2) NOT NULL COMMENT '系部编号',
  PRIMARY KEY (`ClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_class
-- ----------------------------

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `CourseID` char(8) NOT NULL COMMENT '课程编号',
  `CourseName` varchar(25) NOT NULL COMMENT '课程名称',
  `CourseNature` char(10) NOT NULL COMMENT '课程性质',
  `Credits` tinyint(1) NOT NULL COMMENT '学分',
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_course
-- ----------------------------

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `DepartmentID` char(2) NOT NULL COMMENT '系部编号',
  `DepartmentName` varchar(20) NOT NULL COMMENT '系部名称',
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_department
-- ----------------------------

-- ----------------------------
-- Table structure for tb_school
-- ----------------------------
DROP TABLE IF EXISTS `tb_school`;
CREATE TABLE `tb_school` (
  `schoolId` int(11) NOT NULL,
  `schoolName` varchar(20) DEFAULT NULL,
  `schoolPrincipal` varchar(20) DEFAULT NULL,
  `schoolAdd` varchar(200) DEFAULT NULL,
  `schoolEmain` varchar(200) DEFAULT NULL,
  `schoolTel` varchar(11) DEFAULT NULL,
  `schoolWebsite` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`schoolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_school
-- ----------------------------

-- ----------------------------
-- Table structure for tb_score
-- ----------------------------
DROP TABLE IF EXISTS `tb_score`;
CREATE TABLE `tb_score` (
  `scoreId` int(11) NOT NULL,
  `studentId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`scoreId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_score
-- ----------------------------

-- ----------------------------
-- Table structure for tb_specialize
-- ----------------------------
DROP TABLE IF EXISTS `tb_specialize`;
CREATE TABLE `tb_specialize` (
  `SpeeializeID` char(2) NOT NULL COMMENT '专业编号',
  `SpecializeName` varchar(20) NOT NULL COMMENT '专业名称',
  `DepartmentID` char(2) NOT NULL COMMENT '系部编号',
  PRIMARY KEY (`SpeeializeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_specialize
-- ----------------------------

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `StuID` char(12) NOT NULL COMMENT '学号',
  `StuName` varchar(8) NOT NULL COMMENT '姓名',
  `Sex` char(2) NOT NULL COMMENT '性别',
  `BrithDate` date DEFAULT NULL COMMENT '出生日期',
  `Native` varchar(40) NOT NULL COMMENT '籍贯',
  `EntranceTime` date DEFAULT NULL COMMENT '入学时间',
  `PoliticalFee` char(10) NOT NULL COMMENT '政治面貌',
  `PerPhone` char(11) NOT NULL COMMENT '个人电话',
  `IDNum` varbinary(255) NOT NULL COMMENT '身份证号',
  `ClassID` char(9) NOT NULL COMMENT '班级编号',
  `DormitoryID` char(4) NOT NULL COMMENT '宿舍编号',
  `National` char(10) NOT NULL COMMENT '民族',
  `EmploymcntStatus` varchar(10) DEFAULT NULL COMMENT '就业情况',
  `HPhone` char(11) NOT NULL COMMENT '家庭电话',
  `Address` varchar(50) NOT NULL COMMENT '家庭地址',
  PRIMARY KEY (`StuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('0016', '王五', '男', '1998-12-08', '浙江', '2018-08-08', '党员', '13877000077', 0x343132373335313939383132303835383337, '006', '308', '汉', '已就业', '13877000077', '杭州');
INSERT INTO `tb_student` VALUES ('2021062901', '张三', '男', '1996-08-08', '杭州', '2002-09-01', '无', '13811000011', 0x343132353435373839363533323534313235, '0003', '301', '汉', '无', '13811000011', '杭州');
INSERT INTO `tb_student` VALUES ('2021062902', '张三', '男', '1996-08-08', '杭州', '2002-09-01', '无', '13811000011', 0x343132353435373839363533323534313235, '0003', '301', '汉', '无', '13811000011', '杭州');
INSERT INTO `tb_student` VALUES ('2021062903', '张三', '男', '1996-08-08', '杭州', '2002-09-01', '无', '13811000011', 0x343132353435373839363533323534313235, '0003', '301', '汉', '无', '13811000011', '杭州');
INSERT INTO `tb_student` VALUES ('2021062904', '张三', '男', '1996-08-08', '杭州', '2002-09-01', '无', '13811000011', 0x343132353435373839363533323534313235, '0003', '301', '汉', '无', '13811000011', '杭州');
INSERT INTO `tb_student` VALUES ('2021062905', '张三', '男', '1996-08-08', '杭州', '2002-09-01', '无', '13811000011', 0x343132353435373839363533323534313235, '0003', '301', '汉', '无', '13811000011', '杭州');
INSERT INTO `tb_student` VALUES ('2021062909', '张三', '男', '1996-08-08', '杭州', '2002-09-01', '无', '13811000011', 0x343132353435373839363533323534313235, '0003', '301', '汉', '无', '13811000011', '杭州');
INSERT INTO `tb_student` VALUES ('2021062910', '张三', '男', '1996-08-08', '杭州', '2002-09-01', '无', '13811000011', 0x343132353435373839363533323534313235, '0003', '301', '汉', '无', '13811000011', '杭州');

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `TeacherID` char(10) NOT NULL COMMENT '教师编号',
  `TeacherName` varchar(8) NOT NULL COMMENT '姓名',
  `Sex` char(2) NOT NULL COMMENT '性别',
  `BirthDate` datetime(6) NOT NULL COMMENT '出生日期',
  `PoliticalFace` varchar(8) NOT NULL COMMENT '政治面貌',
  `Native` varchar(40) NOT NULL COMMENT '籍贯',
  `National` char(1) NOT NULL COMMENT '民族',
  `Tephone` char(1) NOT NULL COMMENT '联系电话',
  `Email` varchar(50) NOT NULL COMMENT '电子邮箱',
  `IDNum` varchar(18) NOT NULL COMMENT '身份证号',
  `Photo` varbinary(255) NOT NULL COMMENT '照片',
  `AdmissionTime` datetime NOT NULL COMMENT '入校时间',
  `FirstDegree` char(4) NOT NULL COMMENT '第一学历',
  `HighestDegree` char(4) NOT NULL COMMENT '最高学历',
  `Position` varchar(8) NOT NULL COMMENT '职务',
  `Notes` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for tb_teacheryoung
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacheryoung`;
CREATE TABLE `tb_teacheryoung` (
  `TeacherID` char(10) NOT NULL COMMENT '教师编号',
  `CourseID` char(8) NOT NULL COMMENT '课程编号',
  `ClassID` char(9) NOT NULL COMMENT '班级编号',
  `Term` tinyint(1) NOT NULL COMMENT '学期',
  `ClassroomID` varchar(10) NOT NULL COMMENT '教师编号',
  `WeeklyHours` tinyint(1) NOT NULL COMMENT '每周学时',
  `TermWorkload` tinyint(3) NOT NULL COMMENT '学期工作量',
  `Wubie` char(2) NOT NULL COMMENT '午别',
  `JieCi` char(2) NOT NULL COMMENT '节次',
  `Notes` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TeacherID`,`CourseID`,`ClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacheryoung
-- ----------------------------

-- ----------------------------
-- Table structure for tb_teachingplan
-- ----------------------------
DROP TABLE IF EXISTS `tb_teachingplan`;
CREATE TABLE `tb_teachingplan` (
  `Term` tinyint(1) NOT NULL COMMENT '学期',
  `DepartmcntID` char(2) NOT NULL COMMENT '系部编号',
  `SpecializclID` char(2) NOT NULL COMMENT '专业编号',
  `CourscID` char(8) NOT NULL COMMENT '课程编号',
  `StartWcck` tinyint(1) NOT NULL COMMENT '起始周',
  `EndWcck` tinyint(1) NOT NULL COMMENT '结束周',
  `ThcoryHours` tinyint(1) NOT NULL COMMENT '理论学时',
  `PracticcHours` tinyint(1) NOT NULL COMMENT '实践学时',
  `SumHours` tinyint(1) unsigned zerofill NOT NULL COMMENT '总学时',
  PRIMARY KEY (`Term`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teachingplan
-- ----------------------------
