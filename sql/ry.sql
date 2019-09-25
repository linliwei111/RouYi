/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-09-23 18:38:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'sys_score', '学生成绩表', 'SysScore', 'crud', 'com.ruoyi.system', 'system', 'score', '学生成绩', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2019-09-20 10:56:44', '', '2019-09-20 10:58:00', '');
INSERT INTO `gen_table` VALUES ('4', 'sys_sxgl', '实训攻略表', 'SysSxgl', 'crud', 'com.ruoyi.system', 'system', 'sxgl', '实训攻略', 'ruoyi', null, 'admin', '2019-09-20 14:59:24', '', null, null);
INSERT INTO `gen_table` VALUES ('5', 'sys_sxgl01', '实训攻略表', 'SysSxgl01', 'crud', 'com.ruoyi.system', 'system', 'sxgl01', '实训攻略', 'ruoyi', null, 'admin', '2019-09-20 15:41:51', '', null, null);
INSERT INTO `gen_table` VALUES ('6', 'sys_sxgl02', '实训攻略表', 'SysSxgl02', 'crud', 'com.ruoyi.system', 'system', 'sxgl02', '实训攻略', 'ruoyi', null, 'admin', '2019-09-20 16:02:00', '', null, null);
INSERT INTO `gen_table` VALUES ('7', 'sys_sxgl03', '实训攻略表', 'SysSxgl03', 'crud', 'com.ruoyi.system', 'system', 'sxgl03', '实训攻略', 'ruoyi', null, 'admin', '2019-09-20 16:16:32', '', null, null);
INSERT INTO `gen_table` VALUES ('8', 'sys_others', '其他任务', 'SysOthers', 'crud', 'com.ruoyi.system', 'system', 'others', '其他任务', 'ruoyi', null, 'admin', '2019-09-23 15:25:19', '', null, null);
INSERT INTO `gen_table` VALUES ('9', 'sys_gl', '项目攻略', 'SysGl', 'crud', 'com.ruoyi.system', 'system', 'gl', '项目攻略', 'ruoyi', null, 'admin', '2019-09-23 15:49:49', '', null, null);
INSERT INTO `gen_table` VALUES ('10', 'sys_newmessage', '趣味知识表', 'SysNewmessage', 'crud', 'com.ruoyi.system', 'system', 'newmessage', '趣味知识', 'ruoyi', null, 'admin', '2019-09-23 16:15:11', '', null, null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'student_id', 'null', 'int(255)', 'Long', 'studentId', '1', '1', null, '1', null, '1', '1', 'EQ', 'input', '', '1', 'admin', '2019-09-20 10:56:44', null, '2019-09-20 10:58:00');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'student_name', 'null', 'varchar(255)', 'String', 'studentName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-09-20 10:56:44', null, '2019-09-20 10:58:00');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'couse_name', 'null', 'varchar(255)', 'String', 'couseName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-09-20 10:56:44', null, '2019-09-20 10:58:00');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'score', 'null', 'float(255,2)', 'Double', 'score', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-09-20 10:56:44', null, '2019-09-20 10:58:00');
INSERT INTO `gen_table_column` VALUES ('28', '4', 'id', null, 'int(255)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-09-20 14:59:25', '', null);
INSERT INTO `gen_table_column` VALUES ('29', '4', '名称', null, 'varchar(255)', 'String', '名称', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-09-20 14:59:25', '', null);
INSERT INTO `gen_table_column` VALUES ('30', '4', '内容', null, 'varchar(255)', 'String', '内容', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-09-20 14:59:25', '', null);
INSERT INTO `gen_table_column` VALUES ('31', '4', '链接', null, 'varchar(255)', 'String', '链接', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-09-20 14:59:25', '', null);
INSERT INTO `gen_table_column` VALUES ('32', '4', '类型', null, 'varchar(255)', 'String', '类型', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-09-20 14:59:25', '', null);
INSERT INTO `gen_table_column` VALUES ('33', '4', '分值', null, 'varchar(255)', 'String', '分值', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-09-20 14:59:25', '', null);
INSERT INTO `gen_table_column` VALUES ('34', '4', '模式', null, 'varchar(255)', 'String', '模式', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-09-20 14:59:25', '', null);
INSERT INTO `gen_table_column` VALUES ('35', '5', 'id', null, 'int(255)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-09-20 15:41:51', '', null);
INSERT INTO `gen_table_column` VALUES ('36', '5', '名称', null, 'varchar(255)', 'String', '名称', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-09-20 15:41:51', '', null);
INSERT INTO `gen_table_column` VALUES ('37', '5', '内容', null, 'varchar(255)', 'String', '内容', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-09-20 15:41:51', '', null);
INSERT INTO `gen_table_column` VALUES ('38', '5', '链接', null, 'text', 'String', '链接', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-09-20 15:41:51', '', null);
INSERT INTO `gen_table_column` VALUES ('39', '5', '类型', null, 'varchar(255)', 'String', '类型', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-09-20 15:41:51', '', null);
INSERT INTO `gen_table_column` VALUES ('40', '5', '分值', null, 'varchar(255)', 'String', '分值', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-09-20 15:41:51', '', null);
INSERT INTO `gen_table_column` VALUES ('41', '5', '模式', null, 'varchar(255)', 'String', '模式', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-09-20 15:41:51', '', null);
INSERT INTO `gen_table_column` VALUES ('42', '6', 'id', null, 'int(255)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-09-20 16:02:00', '', null);
INSERT INTO `gen_table_column` VALUES ('43', '6', '名称', null, 'varchar(255)', 'String', '名称', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-09-20 16:02:00', '', null);
INSERT INTO `gen_table_column` VALUES ('44', '6', '内容', null, 'varchar(255)', 'String', '内容', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-09-20 16:02:00', '', null);
INSERT INTO `gen_table_column` VALUES ('45', '6', '链接', null, 'text', 'String', '链接', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-09-20 16:02:00', '', null);
INSERT INTO `gen_table_column` VALUES ('46', '6', '类型', null, 'varchar(255)', 'String', '类型', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-09-20 16:02:00', '', null);
INSERT INTO `gen_table_column` VALUES ('47', '6', '分值', null, 'varchar(255)', 'String', '分值', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-09-20 16:02:00', '', null);
INSERT INTO `gen_table_column` VALUES ('48', '6', '模式', null, 'varchar(255)', 'String', '模式', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-09-20 16:02:00', '', null);
INSERT INTO `gen_table_column` VALUES ('49', '7', 'id', null, 'int(255)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-09-20 16:16:32', '', null);
INSERT INTO `gen_table_column` VALUES ('50', '7', '名称', null, 'varchar(255)', 'String', '名称', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-09-20 16:16:32', '', null);
INSERT INTO `gen_table_column` VALUES ('51', '7', '内容', null, 'varchar(255)', 'String', '内容', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-09-20 16:16:32', '', null);
INSERT INTO `gen_table_column` VALUES ('52', '7', '链接', null, 'text', 'String', '链接', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-09-20 16:16:32', '', null);
INSERT INTO `gen_table_column` VALUES ('53', '7', '类型', null, 'varchar(255)', 'String', '类型', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-09-20 16:16:32', '', null);
INSERT INTO `gen_table_column` VALUES ('54', '7', '分值', null, 'varchar(255)', 'String', '分值', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-09-20 16:16:32', '', null);
INSERT INTO `gen_table_column` VALUES ('55', '7', '模式', null, 'varchar(255)', 'String', '模式', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-09-20 16:16:32', '', null);
INSERT INTO `gen_table_column` VALUES ('56', '8', 'id', null, 'int(255)', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-09-23 15:25:19', '', null);
INSERT INTO `gen_table_column` VALUES ('57', '8', '名称', null, 'varchar(255)', 'String', '名称', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-09-23 15:25:19', '', null);
INSERT INTO `gen_table_column` VALUES ('58', '8', '内容', null, 'varchar(255)', 'String', '内容', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-09-23 15:25:19', '', null);
INSERT INTO `gen_table_column` VALUES ('59', '8', '链接', null, 'text', 'String', '链接', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-09-23 15:25:19', '', null);
INSERT INTO `gen_table_column` VALUES ('60', '8', '类型', null, 'varchar(255)', 'String', '类型', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-09-23 15:25:19', '', null);
INSERT INTO `gen_table_column` VALUES ('61', '8', '分值', null, 'varchar(255)', 'String', '分值', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-09-23 15:25:19', '', null);
INSERT INTO `gen_table_column` VALUES ('62', '8', '模式', null, 'varchar(255)', 'String', '模式', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-09-23 15:25:19', '', null);
INSERT INTO `gen_table_column` VALUES ('63', '9', 'id', null, 'int(255)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-09-23 15:49:49', '', null);
INSERT INTO `gen_table_column` VALUES ('64', '9', '名称', null, 'varchar(255)', 'String', '名称', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-09-23 15:49:49', '', null);
INSERT INTO `gen_table_column` VALUES ('65', '9', '内容', null, 'varchar(255)', 'String', '内容', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-09-23 15:49:49', '', null);
INSERT INTO `gen_table_column` VALUES ('66', '9', '链接', null, 'text', 'String', '链接', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-09-23 15:49:49', '', null);
INSERT INTO `gen_table_column` VALUES ('67', '9', '类型', null, 'varchar(255)', 'String', '类型', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2019-09-23 15:49:50', '', null);
INSERT INTO `gen_table_column` VALUES ('68', '9', '分值', null, 'varchar(255)', 'String', '分值', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-09-23 15:49:50', '', null);
INSERT INTO `gen_table_column` VALUES ('69', '9', '模式', null, 'varchar(255)', 'String', '模式', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-09-23 15:49:50', '', null);
INSERT INTO `gen_table_column` VALUES ('70', '10', 'id', null, 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-09-23 16:15:11', '', null);
INSERT INTO `gen_table_column` VALUES ('71', '10', '名称', null, 'varchar(255)', 'String', '名称', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-09-23 16:15:11', '', null);
INSERT INTO `gen_table_column` VALUES ('72', '10', '内容', null, 'varchar(255)', 'String', '内容', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-09-23 16:15:11', '', null);
INSERT INTO `gen_table_column` VALUES ('73', '10', '链接', null, 'text', 'String', '链接', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-09-23 16:15:11', '', null);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'PC-2019090822361569227052484', '1569232232202', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1569227060000', '-1', '5', 'PAUSED', 'CRON', '1569227052000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1569227055000', '-1', '5', 'PAUSED', 'CRON', '1569227052000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1569227060000', '-1', '5', 'PAUSED', 'CRON', '1569227053000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_gl
-- ----------------------------
DROP TABLE IF EXISTS `sys_gl`;
CREATE TABLE `sys_gl` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `内容` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `链接` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `类型` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `分值` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `模式` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目攻略';

-- ----------------------------
-- Records of sys_gl
-- ----------------------------
INSERT INTO `sys_gl` VALUES ('1', 'github同性交友网站', null, '<a href=\"https://github.com/\">点我</a>\n<a></a>', null, null, '个人');
INSERT INTO `sys_gl` VALUES ('2', 'idea配置tomcat', null, '<a href=\"https://jingyan.baidu.com/article/ff411625da4c3d12e582377f.html\">点我</a>\n<a></a>', null, null, '个人');
INSERT INTO `sys_gl` VALUES ('3', 'ProcessOn在线作图', null, '<a href=\"https://www.processon.com/\">在线作图</a>\n<a></a>', null, null, '个人');
INSERT INTO `sys_gl` VALUES ('4', '编程概念问卷调查', null, '<a href=\"https://www.wjx.cn/jq/45574015.aspx\">点我</a>', null, null, '个人');
INSERT INTO `sys_gl` VALUES ('5', 'Linux命令大全', null, '<a href=\"https://wangchujiang.com/linux-command/\">Linux</a>', null, null, '个人');
INSERT INTO `sys_gl` VALUES ('6', 'spring思维导图', '你所没总结过的spring', '<a href=\"https://www.processon.com/view/link/5d7ee4f1e4b0c5c942c21ce7#map\">点我</a>', null, null, '个人');
INSERT INTO `sys_gl` VALUES ('7', 'SourceTree安装', null, '<a href=\"https://cloud.tencent.com/developer/article/1369196\">SourceTree安装</a>\n<a></a>', null, null, '个人');
INSERT INTO `sys_gl` VALUES ('8', '若依框架使用', null, '<a href=\"https://blog.csdn.net/SpringAndGG/article/details/96474583\">点我</a>\n<a></a>', null, null, '个人');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 10:28:29');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 10:52:02');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 11:16:41');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-20 11:21:44');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 11:21:47');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 11:22:28');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 11:31:12');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 11:34:57');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 11:40:19');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 11:42:43');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 13:55:26');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-20 14:16:53');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 14:16:57');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 15:20:24');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 15:25:16');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 15:28:59');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-20 15:29:48');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 15:29:51');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 15:30:16');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 15:55:27');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-20 16:00:46');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:00:48');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:09:34');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-20 16:11:21');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:11:23');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:15:12');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-20 16:20:05');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:20:08');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:21:25');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:25:24');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:28:06');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-20 16:29:07');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-23 10:58:09');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 10:58:15');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 12:39:37');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 14:25:16');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 14:41:19');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 15:18:51');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 15:29:40');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 15:36:55');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-23 15:40:52');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 15:40:54');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 15:52:36');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 15:57:37');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 16:08:53');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-23 16:19:02');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 16:19:16');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 16:24:45');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-23 17:03:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2063 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', 'menuItem', 'C', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-20 14:38:59', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2000', '学生成绩', '3', '1', '/system/score', '', 'C', '0', 'system:score:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '学生成绩菜单');
INSERT INTO `sys_menu` VALUES ('2001', '学生成绩查询', '2000', '1', '#', '', 'F', '0', 'system:score:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2002', '学生成绩新增', '2000', '2', '#', '', 'F', '0', 'system:score:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2003', '学生成绩修改', '2000', '3', '#', '', 'F', '0', 'system:score:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2004', '学生成绩删除', '2000', '4', '#', '', 'F', '0', 'system:score:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2005', '软件实训', '0', '1', '#', 'menuItem', 'C', '0', '', 'fa fa-address-card-o', 'admin', '2019-09-20 14:38:06', 'admin', '2019-09-20 14:50:27', '');
INSERT INTO `sys_menu` VALUES ('2007', '第一周', '2005', '1', '#', 'menuItem', 'C', '0', '\'system:sxgl:view\'', '#', 'admin', '2019-09-20 14:47:29', 'admin', '2019-09-23 15:31:26', '');
INSERT INTO `sys_menu` VALUES ('2008', '周任务', '2007', '3', '/system/sxgl', 'menuItem', 'C', '0', 'system:sxgl:view', '#', 'admin', '2019-09-20 14:48:19', 'admin', '2019-09-20 15:21:58', '');
INSERT INTO `sys_menu` VALUES ('2009', '实训攻略', '3', '1', '/system/sxgl', '', 'C', '0', 'system:sxgl:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '实训攻略菜单');
INSERT INTO `sys_menu` VALUES ('2010', '实训攻略查询', '2009', '1', '#', '', 'F', '0', 'system:sxgl:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2011', '实训攻略新增', '2009', '2', '#', '', 'F', '0', 'system:sxgl:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2012', '实训攻略修改', '2009', '3', '#', '', 'F', '0', 'system:sxgl:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2013', '实训攻略删除', '2009', '4', '#', '', 'F', '0', 'system:sxgl:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2014', '第二周', '2005', '2', '#', 'menuItem', 'C', '0', null, '#', 'admin', '2019-09-20 15:34:51', '', null, '');
INSERT INTO `sys_menu` VALUES ('2015', '第三周', '2005', '3', '#', 'menuItem', 'C', '0', '', '#', 'admin', '2019-09-20 15:35:19', 'admin', '2019-09-23 15:53:13', '');
INSERT INTO `sys_menu` VALUES ('2016', '第四周', '2005', '4', '#', 'menuItem', 'C', '0', '', '#', 'admin', '2019-09-20 15:35:31', 'admin', '2019-09-23 15:53:24', '');
INSERT INTO `sys_menu` VALUES ('2017', '其他任务', '2005', '5', '/system/others', 'menuItem', 'C', '0', 'system:others:view', '#', 'admin', '2019-09-20 15:36:09', 'admin', '2019-09-23 15:53:49', '');
INSERT INTO `sys_menu` VALUES ('2018', '葵花宝典（攻略）', '2005', '6', '/system/gl', 'menuItem', 'C', '0', 'system:gl:view', '#', 'admin', '2019-09-20 15:36:30', 'admin', '2019-09-23 15:55:10', '');
INSERT INTO `sys_menu` VALUES ('2019', '周任务', '2014', '3', '/system/sxgl01', 'menuItem', 'C', '0', 'system:sxgl01:view', '#', 'admin', '2019-09-20 15:37:35', 'admin', '2019-09-20 15:56:54', '');
INSERT INTO `sys_menu` VALUES ('2020', '周任务', '2015', '3', '/system/sxgl02', 'menuItem', 'C', '0', 'system:sxgl02:view', '#', 'admin', '2019-09-20 15:37:53', 'admin', '2019-09-20 16:10:43', '');
INSERT INTO `sys_menu` VALUES ('2021', '周任务', '2016', '3', '/system/sxgl03', 'menuItem', 'C', '0', 'system:sxgl03:view', '#', 'admin', '2019-09-20 15:38:09', 'admin', '2019-09-20 16:19:40', '');
INSERT INTO `sys_menu` VALUES ('2022', '实训攻略', '3', '1', '/system/sxgl01', '', 'C', '0', 'system:sxgl01:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '实训攻略菜单');
INSERT INTO `sys_menu` VALUES ('2023', '实训攻略查询', '2022', '1', '#', '', 'F', '0', 'system:sxgl01:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2024', '实训攻略新增', '2022', '2', '#', '', 'F', '0', 'system:sxgl01:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2025', '实训攻略修改', '2022', '3', '#', '', 'F', '0', 'system:sxgl01:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2026', '实训攻略删除', '2022', '4', '#', '', 'F', '0', 'system:sxgl01:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2027', '实训攻略', '3', '1', '/system/sxgl02', '', 'C', '0', 'system:sxgl02:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '实训攻略菜单');
INSERT INTO `sys_menu` VALUES ('2028', '实训攻略查询', '2027', '1', '#', '', 'F', '0', 'system:sxgl02:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2029', '实训攻略新增', '2027', '2', '#', '', 'F', '0', 'system:sxgl02:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2030', '实训攻略修改', '2027', '3', '#', '', 'F', '0', 'system:sxgl02:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2031', '实训攻略删除', '2027', '4', '#', '', 'F', '0', 'system:sxgl02:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2032', '实训攻略', '3', '1', '/system/sxgl03', '', 'C', '0', 'system:sxgl03:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '实训攻略菜单');
INSERT INTO `sys_menu` VALUES ('2033', '实训攻略查询', '2032', '1', '#', '', 'F', '0', 'system:sxgl03:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2034', '实训攻略新增', '2032', '2', '#', '', 'F', '0', 'system:sxgl03:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2035', '实训攻略修改', '2032', '3', '#', '', 'F', '0', 'system:sxgl03:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2036', '实训攻略删除', '2032', '4', '#', '', 'F', '0', 'system:sxgl03:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2037', '其他任务', '3', '1', '/system/others', '', 'C', '0', 'system:others:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '其他任务菜单');
INSERT INTO `sys_menu` VALUES ('2038', '其他任务查询', '2037', '1', '#', '', 'F', '0', 'system:others:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2039', '其他任务新增', '2037', '2', '#', '', 'F', '0', 'system:others:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2040', '其他任务修改', '2037', '3', '#', '', 'F', '0', 'system:others:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2041', '其他任务删除', '2037', '4', '#', '', 'F', '0', 'system:others:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2042', '其他任务', '3', '1', '/system/others', '', 'C', '0', 'system:others:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '其他任务菜单');
INSERT INTO `sys_menu` VALUES ('2043', '其他任务查询', '2042', '1', '#', '', 'F', '0', 'system:others:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2044', '其他任务新增', '2042', '2', '#', '', 'F', '0', 'system:others:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2045', '其他任务修改', '2042', '3', '#', '', 'F', '0', 'system:others:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2046', '其他任务删除', '2042', '4', '#', '', 'F', '0', 'system:others:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2047', '项目攻略', '3', '1', '/system/gl', '', 'C', '0', 'system:gl:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '项目攻略菜单');
INSERT INTO `sys_menu` VALUES ('2048', '项目攻略查询', '2047', '1', '#', '', 'F', '0', 'system:gl:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2049', '项目攻略新增', '2047', '2', '#', '', 'F', '0', 'system:gl:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2050', '项目攻略修改', '2047', '3', '#', '', 'F', '0', 'system:gl:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2051', '项目攻略删除', '2047', '4', '#', '', 'F', '0', 'system:gl:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2052', '项目攻略', '3', '1', '/system/gl', '', 'C', '0', 'system:gl:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '项目攻略菜单');
INSERT INTO `sys_menu` VALUES ('2053', '项目攻略查询', '2052', '1', '#', '', 'F', '0', 'system:gl:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2054', '项目攻略新增', '2052', '2', '#', '', 'F', '0', 'system:gl:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2055', '项目攻略修改', '2052', '3', '#', '', 'F', '0', 'system:gl:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2056', '项目攻略删除', '2052', '4', '#', '', 'F', '0', 'system:gl:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2057', '趣味知识', '2005', '7', '/system/newmessage', 'menuItem', 'C', '0', 'system:newmessage:view', '#', 'admin', '2019-09-23 16:10:39', 'admin', '2019-09-23 16:19:46', '');
INSERT INTO `sys_menu` VALUES ('2058', '趣味知识', '3', '1', '/system/newmessage', '', 'C', '0', 'system:newmessage:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '趣味知识菜单');
INSERT INTO `sys_menu` VALUES ('2059', '趣味知识查询', '2058', '1', '#', '', 'F', '0', 'system:newmessage:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2060', '趣味知识新增', '2058', '2', '#', '', 'F', '0', 'system:newmessage:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2061', '趣味知识修改', '2058', '3', '#', '', 'F', '0', 'system:newmessage:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2062', '趣味知识删除', '2058', '4', '#', '', 'F', '0', 'system:newmessage:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_newmessage
-- ----------------------------
DROP TABLE IF EXISTS `sys_newmessage`;
CREATE TABLE `sys_newmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `内容` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `链接` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='趣味知识表';

-- ----------------------------
-- Records of sys_newmessage
-- ----------------------------
INSERT INTO `sys_newmessage` VALUES ('1', '心理学效应', '逆火效应', '<a href=\"https://baike.baidu.com/item/%E9%80%86%E7%81%AB%E6%95%88%E5%BA%94/1137384?fr=aladdin\">点我</a>');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_score\" ]\r\n}', '0', null, '2019-09-20 10:56:44');
INSERT INTO `sys_oper_log` VALUES ('101', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"1\" ],\r\n  \"tableName\" : [ \"sys_score\" ],\r\n  \"tableComment\" : [ \"学生成绩表\" ],\r\n  \"className\" : [ \"SysScore\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"1\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"null\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"studentId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].isList\" : [ \"1\" ],\r\n  \"columns[0].isQuery\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"2\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"null\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"studentName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"3\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"null\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"couseName\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"4\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"null\" ],\r\n  \"columns[3].javaType\" : [ \"Double\" ],\r\n  \"columns[3].javaField\" : [ \"score\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"tplCategory\" : [ \"crud\" ],\r\n  \"packageName\" : [', '0', null, '2019-09-20 10:58:00');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_score', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-20 10:58:03');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_job_log\" ]\r\n}', '0', null, '2019-09-20 14:16:07');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '0', null, '2019-09-20 14:16:30');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_menu\" ]\r\n}', '0', null, '2019-09-20 14:23:47');
INSERT INTO `sys_oper_log` VALUES ('106', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"实训攻略\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-address-card-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 14:38:06');
INSERT INTO `sys_oper_log` VALUES ('107', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"实训攻略\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 14:38:35');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2006', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-20 14:38:43');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"系统管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-gear\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 14:38:59');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"实训攻略\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-address-card-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 14:39:04');
INSERT INTO `sys_oper_log` VALUES ('111', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"实训攻略\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-address-card-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 14:39:09');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第一周\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 14:47:29');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2007\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 14:48:19');
INSERT INTO `sys_oper_log` VALUES ('114', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2005\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"软件实训\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-address-card-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 14:50:27');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '0', null, '2019-09-20 14:52:05');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_sxgl\" ]\r\n}', '0', null, '2019-09-20 14:59:25');
INSERT INTO `sys_oper_log` VALUES ('117', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_sxgl', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-20 14:59:45');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"2007\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:01:40');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2008\" ],\r\n  \"parentId\" : [ \"2007\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"/system/sxgl\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:sxgl:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:21:58');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第一周\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\'system:sxgl:view\'\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:22:52');
INSERT INTO `sys_oper_log` VALUES ('121', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第一天\" ],\r\n  \"内容\" : [ \"实训启动\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-20 15:32:34');
INSERT INTO `sys_oper_log` VALUES ('122', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"第一天\" ],\r\n  \"内容\" : [ \"实训启动\" ],\r\n  \"链接\" : [ \"<a href=\\\"www.baidu,com\\\" >点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-20 15:33:13');
INSERT INTO `sys_oper_log` VALUES ('123', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"第一天\" ],\r\n  \"内容\" : [ \"实训启动\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://www.baidu.com\\\">点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-20 15:33:56');
INSERT INTO `sys_oper_log` VALUES ('124', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第二周\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:34:51');
INSERT INTO `sys_oper_log` VALUES ('125', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第三周\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:35:19');
INSERT INTO `sys_oper_log` VALUES ('126', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第四周\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:35:31');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"其他任务\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:36:09');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"葵花宝典\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:36:30');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2014\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:37:35');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2015\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:37:53');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2016\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:38:09');
INSERT INTO `sys_oper_log` VALUES ('132', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_sxgl01\" ]\r\n}', '0', null, '2019-09-20 15:41:52');
INSERT INTO `sys_oper_log` VALUES ('133', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_sxgl01', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-20 15:41:57');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2019\" ],\r\n  \"parentId\" : [ \"2014\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"/system/sxgl01\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:56:26');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2019\" ],\r\n  \"parentId\" : [ \"2014\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"/system/sxgl01\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:sxgl01:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 15:56:54');
INSERT INTO `sys_oper_log` VALUES ('136', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_sxgl02\" ]\r\n}', '0', null, '2019-09-20 16:02:00');
INSERT INTO `sys_oper_log` VALUES ('137', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_sxgl02', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-20 16:02:05');
INSERT INTO `sys_oper_log` VALUES ('138', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2015\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第三周\" ],\r\n  \"url\" : [ \"/system/sxgl02\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 16:10:01');
INSERT INTO `sys_oper_log` VALUES ('139', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2020\" ],\r\n  \"parentId\" : [ \"2015\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:sxgl02:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 16:10:21');
INSERT INTO `sys_oper_log` VALUES ('140', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2015\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第三周\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 16:10:30');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2020\" ],\r\n  \"parentId\" : [ \"2015\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"/system/sxgl02\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:sxgl02:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 16:10:43');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2015\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第三周\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 16:10:50');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2015\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第三周\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 16:11:01');
INSERT INTO `sys_oper_log` VALUES ('144', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_sxgl03\" ]\r\n}', '0', null, '2019-09-20 16:16:32');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_sxgl03', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-20 16:16:40');
INSERT INTO `sys_oper_log` VALUES ('146', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_sxgl03', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-20 16:18:50');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2021\" ],\r\n  \"parentId\" : [ \"2016\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"周任务\" ],\r\n  \"url\" : [ \"/system/sxgl03\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:sxgl03:view\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-20 16:19:41');
INSERT INTO `sys_oper_log` VALUES ('148', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"第一周\" ],\r\n  \"内容\" : [ \"本周需要掌握 1、完成实训项目启动； 2、获取对应资料材料； 根据材料自学jeesite框架 （jeesite名叫框架，实则是多个框架组合设计而成的脚手架，其中包含基础的SSM，以及其他缓存，权限等内容）\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:01:03');
INSERT INTO `sys_oper_log` VALUES ('149', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"周听听\" ],\r\n  \"内容\" : [ \"1、小组模式学习《终身成长》，并且讨论自我剖析；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"职业素养\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:01:52');
INSERT INTO `sys_oper_log` VALUES ('150', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"周子学\" ],\r\n  \"内容\" : [ \"算法与数据结构 掌握排序等常见算法\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:02:51');
INSERT INTO `sys_oper_log` VALUES ('151', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"3\" ],\r\n  \"名称\" : [ \"周自学\" ],\r\n  \"内容\" : [ \"算法与数据结构 掌握排序等常见算法\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:03:13');
INSERT INTO `sys_oper_log` VALUES ('152', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第一天\" ],\r\n  \"内容\" : [ \"项目启动\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"个人\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"综合能力\" ]\r\n}', '0', null, '2019-09-23 11:04:12');
INSERT INTO `sys_oper_log` VALUES ('153', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"4\" ],\r\n  \"名称\" : [ \"第一天\" ],\r\n  \"内容\" : [ \"项目启动\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:04:23');
INSERT INTO `sys_oper_log` VALUES ('154', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"获取实训攻略\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:04:40');
INSERT INTO `sys_oper_log` VALUES ('155', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"了解实训目的\" ],\r\n  \"内容\" : [ \"1、完成一次全过程软件项目流程；含软件生命周期的整个阶段；<br> 2、完成一轮人才标准化技术等内容自我实践学习；<br> 3、完成额外的辅助类的职业规划，职场心态等转换；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:05:33');
INSERT INTO `sys_oper_log` VALUES ('156', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"获取实训材料\" ],\r\n  \"内容\" : [ \"1、项目标准化资料；<br> 2、实训软件清单；<br> 3、部署jeesite基本框架；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:06:14');
INSERT INTO `sys_oper_log` VALUES ('157', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"安装相关软件\" ],\r\n  \"内容\" : [ \"1、安装开发工具：idea<br> 2、安装版本管理工具：git & sourcetree\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"40\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:07:17');
INSERT INTO `sys_oper_log` VALUES ('158', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"完成团队组建\" ],\r\n  \"内容\" : [ \"1、五人一组，设定组长（需要提前摸底）；<br> 2、分配任务，确定里程碑；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:07:45');
INSERT INTO `sys_oper_log` VALUES ('159', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"听取音频材料\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\'https://pan.baidu.com/s/1WSHUWeR67LS0616vgDJRxg\'>网盘</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:08:20');
INSERT INTO `sys_oper_log` VALUES ('160', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"阅读规范材料\" ],\r\n  \"内容\" : [ \"1、阅读《阿里巴巴Java开发手册（纪念版）》.pdf\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:09:04');
INSERT INTO `sys_oper_log` VALUES ('161', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"学习每日词汇\" ],\r\n  \"内容\" : [ \"1、学习Java编程常用词汇，每天学一点编程不用愁；<br> 链接：https://pan.baidu.com/s/1OU8VNoRxdMer32tdoukLYA <br> 提取码：6ob8 <br> 复制这段内容后打开百度网盘手机App，操作更方便哦\" ],\r\n  \"链接\" : [ \"<a href=\'https://pan.baidu.com/s/1OU8VNoRxdMer32tdoukLYA\'>网盘</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:10:10');
INSERT INTO `sys_oper_log` VALUES ('162', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"12\" ],\r\n  \"名称\" : [ \"学习每日词汇\" ],\r\n  \"内容\" : [ \"1、学习Java编程常用词汇，每天学一点编程不用愁；<br> 链接：https://pan.baidu.com/s/1OU8VNoRxdMer32tdoukLYA <br> 提取码：6ob8\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://pan.baidu.com/s/1OU8VNoRxdMer32tdoukLYA\\\">网盘</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:10:31');
INSERT INTO `sys_oper_log` VALUES ('163', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日面试技巧\" ],\r\n  \"内容\" : [ \"职业价值观可以精简为9种： 1、工资高，福利好。 2、工作环境（物质方面）舒适。 3、人际关系良好。 4、工作稳定有保障。 5、能提供较好的受教育机会。 6、有较高的社会地位。 7、工作不太紧张，外部压力小。 8、能充分发挥自己的能力特长。 9、社会需要与社会贡献大。\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"职业素养\" ]\r\n}', '0', null, '2019-09-23 11:11:13');
INSERT INTO `sys_oper_log` VALUES ('164', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"<a>每日代码题目</a>\" ],\r\n  \"内容\" : [ \"1、注册力扣账号；<br> 2、选择基础的题目每天一题；<br> 3、小组讨论学习；\" ],\r\n  \"链接\" : [ \"<a href=\'https://leetcode-cn.com/\'>刷题网</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:13:43');
INSERT INTO `sys_oper_log` VALUES ('165', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"14\" ],\r\n  \"名称\" : [ \"每日代码题目\" ],\r\n  \"内容\" : [ \"1、注册力扣账号；<br> 2、选择基础的题目每天一题；<br> 3、小组讨论学习；\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://leetcode-cn.com/\\\">刷题网</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:13:53');
INSERT INTO `sys_oper_log` VALUES ('166', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"第一周\" ],\r\n  \"内容\" : [ \"&nbsp&nbsp本周需要掌握 1、完成实训项目启动； 2、获取对应资料材料； 根据材料自学jeesite框架 （jeesite名叫框架，实则是多个框架组合设计而成的脚手架，其中包含基础的SSM，以及其他缓存，权限等内容）\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://www.baidu.com\\\">点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:14:16');
INSERT INTO `sys_oper_log` VALUES ('167', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"第一周\" ],\r\n  \"内容\" : [ \"&nbsp;&amp;本周需要掌握 1、完成实训项目启动； 2、获取对应资料材料； 根据材料自学jeesite框架 （jeesite名叫框架，实则是多个框架组合设计而成的脚手架，其中包含基础的SSM，以及其他缓存，权限等内容）\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://www.baidu.com\\\">点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:14:25');
INSERT INTO `sys_oper_log` VALUES ('168', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"第一周\" ],\r\n  \"内容\" : [ \"&amp;本周需要掌握 1、完成实训项目启动； 2、获取对应资料材料； 根据材料自学jeesite框架 （jeesite名叫框架，实则是多个框架组合设计而成的脚手架，其中包含基础的SSM，以及其他缓存，权限等内容）\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://www.baidu.com\\\">点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:14:31');
INSERT INTO `sys_oper_log` VALUES ('169', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"第一周\" ],\r\n  \"内容\" : [ \"nbsp;本周需要掌握 1、完成实训项目启动； 2、获取对应资料材料； 根据材料自学jeesite框架 （jeesite名叫框架，实则是多个框架组合设计而成的脚手架，其中包含基础的SSM，以及其他缓存，权限等内容）\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://www.baidu.com\\\">点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:14:39');
INSERT INTO `sys_oper_log` VALUES ('170', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"第一周\" ],\r\n  \"内容\" : [ \"本周需要掌握 1、完成实训项目启动； 2、获取对应资料材料； 根据材料自学jeesite框架 （jeesite名叫框架，实则是多个框架组合设计而成的脚手架，其中包含基础的SSM，以及其他缓存，权限等内容）\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://www.baidu.com\\\">点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:14:44');
INSERT INTO `sys_oper_log` VALUES ('171', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"5\" ],\r\n  \"名称\" : [ \"\" ],\r\n  \"内容\" : [ \"获取实训攻略\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:15:16');
INSERT INTO `sys_oper_log` VALUES ('172', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"5\" ],\r\n  \"名称\" : [ \"\" ],\r\n  \"内容\" : [ \"获取实训攻略\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:15:20');
INSERT INTO `sys_oper_log` VALUES ('173', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"5\" ],\r\n  \"名称\" : [ \" \" ],\r\n  \"内容\" : [ \"获取实训攻略\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:15:24');
INSERT INTO `sys_oper_log` VALUES ('174', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"5\" ],\r\n  \"名称\" : [ \"获取实训攻略\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:15:30');
INSERT INTO `sys_oper_log` VALUES ('175', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"5\" ],\r\n  \"名称\" : [ \"获取实训攻略\" ],\r\n  \"内容\" : [ \" \" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:15:38');
INSERT INTO `sys_oper_log` VALUES ('176', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"5\" ],\r\n  \"名称\" : [ \"\" ],\r\n  \"内容\" : [ \"获取实训攻略\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:15:47');
INSERT INTO `sys_oper_log` VALUES ('177', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"5\" ],\r\n  \"名称\" : [ \"获取实训攻略\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:15:55');
INSERT INTO `sys_oper_log` VALUES ('178', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"成熟程序员的标志\" ],\r\n  \"链接\" : [ \"<a href=\'https://www.cnblogs.com/n216/archive/2011/05/16/2047327.html\'>点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:17:32');
INSERT INTO `sys_oper_log` VALUES ('179', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第二天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:18:03');
INSERT INTO `sys_oper_log` VALUES ('180', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"注册一个processon账号\" ],\r\n  \"内容\" : [ \"1、注册一个processon账号\" ],\r\n  \"链接\" : [ \"<a href=\'https://www.processon.com/i/577c75bfe4b0d4077ce\'>注册</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:20:19');
INSERT INTO `sys_oper_log` VALUES ('181', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"-----------------------------------\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:21:03');
INSERT INTO `sys_oper_log` VALUES ('182', '实训攻略', '3', 'com.ruoyi.web.controller.system.SysSxglController.remove()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"18\" ]\r\n}', '0', null, '2019-09-23 11:21:09');
INSERT INTO `sys_oper_log` VALUES ('183', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"流程图入门\" ],\r\n  \"内容\" : [ \"1、学习编程中的流程图使用；<br> 链接：https://pan.baidu.com/s/19FUf8dk9RBf6cC7_w1i2Og <br> 提取码：cz4d <br> 复制这段内容后打开百度网盘手机App，操作更方便哦\" ],\r\n  \"链接\" : [ \"<a href=\'https://pan.baidu.com/s/19FUf8dk9RBf6cC7_w1i2Og\'>网盘</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"15\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:21:55');
INSERT INTO `sys_oper_log` VALUES ('184', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"19\" ],\r\n  \"名称\" : [ \"流程图入门\" ],\r\n  \"内容\" : [ \"1、学习编程中的流程图使用；<br> 链接：https://pan.baidu.com/s/19FUf8dk9RBf6cC7_w1i2Og <br> 提取码：cz4d \" ],\r\n  \"链接\" : [ \"<a href=\\\"https://pan.baidu.com/s/19FUf8dk9RBf6cC7_w1i2Og\\\">网盘</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"15\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:22:09');
INSERT INTO `sys_oper_log` VALUES ('185', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"性格MBTI测试\" ],\r\n  \"内容\" : [ \"1、完成MBTI性格测试，更好的发现自己适合的发展路线；<br>\" ],\r\n  \"链接\" : [ \"<a href=\'http://www.apesk.com/mbti/dati.asp?\'>mbti测试题</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:22:34');
INSERT INTO `sys_oper_log` VALUES ('186', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"注册GitHub账号\" ],\r\n  \"内容\" : [ \"1、组长带头，完成五个人注册GitHub账号； 2、创建项目仓库，并且分配权限；\" ],\r\n  \"链接\" : [ \"<a  href=\'https://github.com/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:22:55');
INSERT INTO `sys_oper_log` VALUES ('187', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"20\" ],\r\n  \"名称\" : [ \"性格MBTI测试\" ],\r\n  \"内容\" : [ \"1、完成MBTI性格测试，更好的发现自己适合的发展路线；<br>\" ],\r\n  \"链接\" : [ \"<a href=\\\"http://www.apesk.com/mbti/dati.asp?\\\">mbti测试题</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:23:08');
INSERT INTO `sys_oper_log` VALUES ('188', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"提交jeesite框架代码\" ],\r\n  \"内容\" : [ \"1、完成一次代码提交；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:23:48');
INSERT INTO `sys_oper_log` VALUES ('189', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"获取软件项目材料\" ],\r\n  \"内容\" : [ \"1、获取软件项目材料；<br> 2、将材料提交到团队项目中；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"5\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:24:15');
INSERT INTO `sys_oper_log` VALUES ('190', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"学习软件项目标准材料\" ],\r\n  \"内容\" : [ \"1、完成标准材料的通读，以及了解各个材料的意义跟背景；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:24:33');
INSERT INTO `sys_oper_log` VALUES ('191', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"三分钟了解敏捷开发\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/fo6zrgxaoMld35pieJWcsg\'>点我</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:24:55');
INSERT INTO `sys_oper_log` VALUES ('192', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第三天\" ],\r\n  \"内容\" : [ \"1、开始实训项目\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:25:28');
INSERT INTO `sys_oper_log` VALUES ('193', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"了解项目背景\" ],\r\n  \"内容\" : [ \"1、完成 项目立项报告\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:26:22');
INSERT INTO `sys_oper_log` VALUES ('194', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"分析项目需求\" ],\r\n  \"内容\" : [ \"1、完成  软件需求规格说明书；<br> 2、完成  项目开发计划 （建议采用小组会议形式，并且形成会议纪要）;<br> 3、明确责任分工，开始搭建开发环境，并且确认项目节点里程碑；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:27:27');
INSERT INTO `sys_oper_log` VALUES ('195', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"良好习惯养成\\t\" ],\r\n  \"内容\" : [ \"1、观看或听《掌控习惯》，学会如何改变自己的习惯；<br> 链接：https://pan.baidu.com/s/1IMu70DYLvr6QtzsFrhGt3g <br> 提取码：259l <br> 复制这段内容后打开百度网盘手机App，操作更方便哦\" ],\r\n  \"链接\" : [ \"<a href=\'https://pan.baidu.com/s/1IMu70DYLvr6QtzsFrhGt3g\'>网盘</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:28:02');
INSERT INTO `sys_oper_log` VALUES ('196', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"29\" ],\r\n  \"名称\" : [ \"良好习惯养成\" ],\r\n  \"内容\" : [ \"1、观看或听《掌控习惯》，学会如何改变自己的习惯；<br> 链接：https://pan.baidu.com/s/1IMu70DYLvr6QtzsFrhGt3g <br> 提取码：259l \" ],\r\n  \"链接\" : [ \"<a href=\\\"https://pan.baidu.com/s/1IMu70DYLvr6QtzsFrhGt3g\\\">网盘</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:28:13');
INSERT INTO `sys_oper_log` VALUES ('197', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"掌握一个小软件\" ],\r\n  \"内容\" : [ \"1、搜索软件 everything ，并且完成他的使用；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:28:32');
INSERT INTO `sys_oper_log` VALUES ('198', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"了解沟通反馈\" ],\r\n  \"内容\" : [ \"1、完成一个项目小游戏，由材料提供方发起《项目管理游戏》；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"35\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:28:53');
INSERT INTO `sys_oper_log` VALUES ('199', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"什么是架构师\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/38RF3REJX8rF6Ejt1V-yXQ\'>点我</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:29:23');
INSERT INTO `sys_oper_log` VALUES ('200', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第四天\" ],\r\n  \"内容\" : [ \"1、完成日常常规内容，以及项目内容\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:29:41');
INSERT INTO `sys_oper_log` VALUES ('201', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"获取Java技能树\" ],\r\n  \"内容\" : [ \"1、获取Java技能树；<br> 2、使用思维导图，绘制自己的技能树；\" ],\r\n  \"链接\" : [ \"<a href=\'https://www.processon.com/view/5c89f14ae4b0f88919ad93e1#map\'>技能树</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:30:05');
INSERT INTO `sys_oper_log` VALUES ('202', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"掌握沟通反馈\" ],\r\n  \"内容\" : [ \"1、完成一次实训或者学习过程中遇到的文档；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:30:33');
INSERT INTO `sys_oper_log` VALUES ('203', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"完成项目数据库设计\" ],\r\n  \"内容\" : [ \"1、使用powerdesigner设计数据库业务表，并且输出一份完整的《数据库设计文档》，以及一份设计文件；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:30:53');
INSERT INTO `sys_oper_log` VALUES ('204', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"什么是人工智能\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/8rkxHFmRxpF-tNMbxAtuGA\'>点我</ a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:31:28');
INSERT INTO `sys_oper_log` VALUES ('205', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"学习ER图\" ],\r\n  \"内容\" : [ \"掌握ER图的绘制，并且用于项目中设计\" ],\r\n  \"链接\" : [ \"<a  href=\'https://www.cnblogs.com/zpfbuaa/p/5256187.html/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:31:56');
INSERT INTO `sys_oper_log` VALUES ('206', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第五天\" ],\r\n  \"内容\" : [ \"1、是时候来个阶段小结了\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:32:12');
INSERT INTO `sys_oper_log` VALUES ('207', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"获取软件项目材料\" ],\r\n  \"内容\" : [ \"1、获取《IT研发管理制度》<br> 2、获取《01_软件公司职位说明书》\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:32:39');
INSERT INTO `sys_oper_log` VALUES ('208', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"掌握markdown用法\" ],\r\n  \"内容\" : [ \"1、下载typora，掌握md的基本语法；也可以尝试其他同类软件如 小书匠\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:32:58');
INSERT INTO `sys_oper_log` VALUES ('209', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"什么是大数据\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/3lpm5mgAVghAqYnumG3BeQ\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:33:35');
INSERT INTO `sys_oper_log` VALUES ('210', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"42\" ],\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"什么是大数据\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://mp.weixin.qq.com/s/3lpm5mgAVghAqYnumG3BeQ\\\">点我</a>\" ],\r\n  \"类型\" : [ \"综合能力\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:33:45');
INSERT INTO `sys_oper_log` VALUES ('211', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第六天\" ],\r\n  \"内容\" : [ \"1、专题日 本期分享学习渠道\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:34:14');
INSERT INTO `sys_oper_log` VALUES ('212', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxglController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第二周\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:34:35');
INSERT INTO `sys_oper_log` VALUES ('213', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"3\" ],\r\n  \"名称\" : [ \"周自学\" ],\r\n  \"内容\" : [ \"算法与数据结构 掌握排序等常见算法\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:34:54');
INSERT INTO `sys_oper_log` VALUES ('214', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"5\" ],\r\n  \"名称\" : [ \"获取实训攻略\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:35:06');
INSERT INTO `sys_oper_log` VALUES ('215', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"11\" ],\r\n  \"名称\" : [ \"阅读规范材料\" ],\r\n  \"内容\" : [ \"1、阅读《阿里巴巴Java开发手册（纪念版）》.pdf\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:35:23');
INSERT INTO `sys_oper_log` VALUES ('216', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"16\" ],\r\n  \"名称\" : [ \"第二天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:35:36');
INSERT INTO `sys_oper_log` VALUES ('217', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"26\" ],\r\n  \"名称\" : [ \"第三天\" ],\r\n  \"内容\" : [ \"1、开始实训项目\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:35:55');
INSERT INTO `sys_oper_log` VALUES ('218', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"39\" ],\r\n  \"名称\" : [ \"第五天\" ],\r\n  \"内容\" : [ \"1、是时候来个阶段小结了\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:36:16');
INSERT INTO `sys_oper_log` VALUES ('219', '实训攻略', '2', 'com.ruoyi.web.controller.system.SysSxglController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"41\" ],\r\n  \"名称\" : [ \"掌握markdown用法\" ],\r\n  \"内容\" : [ \"1、下载typora，掌握md的基本语法；也可以尝试其他同类软件如 小书匠\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:36:28');
INSERT INTO `sys_oper_log` VALUES ('220', '实训攻略', '3', 'com.ruoyi.web.controller.system.SysSxglController.remove()', 'POST', '1', 'admin', '研发部门', '/system/sxgl/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"44\" ]\r\n}', '0', null, '2019-09-23 11:37:05');
INSERT INTO `sys_oper_log` VALUES ('221', '实训攻略', '3', 'com.ruoyi.web.controller.system.SysSxgl01Controller.remove()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '0', null, '2019-09-23 11:37:11');
INSERT INTO `sys_oper_log` VALUES ('222', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"周听听\" ],\r\n  \"内容\" : [ \"1、小组单位共同学习《掌控习惯》，并且分析哪些习惯可以养成。\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"职业素养\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:41:12');
INSERT INTO `sys_oper_log` VALUES ('223', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"周任务\" ],\r\n  \"内容\" : [ \"Java实现一个网络测试程序： 1、要求，使用定时任务，自定义配置定时任务时间规则； 2、测试所得结果记录到数据库中； 3、拥有结果展示页面，用echarts的图表展示；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"自学能力\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:41:46');
INSERT INTO `sys_oper_log` VALUES ('224', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"周自学\" ],\r\n  \"内容\" : [ \"springboot学习\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://chanxinguidao.github.io/springboot/2019/05/01/Spring-Boot%E6%95%99%E7%A8%8B%E7%AC%AC0%E7%AF%87-%E5%85%A5%E9%97%A8%E9%9B%86%E9%94%A6.html\'>SpringBoot入门第一站</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:42:15');
INSERT INTO `sys_oper_log` VALUES ('225', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第一天\" ],\r\n  \"内容\" : [ \"1、开始项目代码编码工作；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 11:42:49');
INSERT INTO `sys_oper_log` VALUES ('226', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\\t\" ],\r\n  \"内容\" : [ \"什么是微服务\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/FRVOYlgZCO524KwzQRohLA\'>点我</ a>\" ],\r\n  \"类型\" : [ \"技术水平\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:43:26');
INSERT INTO `sys_oper_log` VALUES ('227', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第二天\" ],\r\n  \"内容\" : [ \"1、搭建GitHub博客；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:43:52');
INSERT INTO `sys_oper_log` VALUES ('228', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"搭建自己的GitHub博客\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:44:14');
INSERT INTO `sys_oper_log` VALUES ('229', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"写一份技术博客\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:44:33');
INSERT INTO `sys_oper_log` VALUES ('230', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"什么是docker\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/_TUj4Nf4APMPEY1TpURRtw\'>点我</ a>\" ],\r\n  \"类型\" : [ \"技术水平\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:45:09');
INSERT INTO `sys_oper_log` VALUES ('231', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第三天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:45:20');
INSERT INTO `sys_oper_log` VALUES ('232', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"面试技巧篇\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/3gN8rsOoJcO3vfcINF-y9w\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:45:43');
INSERT INTO `sys_oper_log` VALUES ('233', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第四天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:45:57');
INSERT INTO `sys_oper_log` VALUES ('234', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"经典面试题\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/Bw5ZEkVqPErO573bTByMUA\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:46:29');
INSERT INTO `sys_oper_log` VALUES ('235', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第五天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:46:39');
INSERT INTO `sys_oper_log` VALUES ('236', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"设计模式（将来你一定会遇到他）\" ],\r\n  \"链接\" : [ \"<a  href=\'https://www.javazhiyin.com/41814.html\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:46:58');
INSERT INTO `sys_oper_log` VALUES ('237', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl01Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第三周\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:47:25');
INSERT INTO `sys_oper_log` VALUES ('238', '实训攻略', '3', 'com.ruoyi.web.controller.system.SysSxgl01Controller.remove()', 'POST', '1', 'admin', '研发部门', '/system/sxgl01/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"17\" ]\r\n}', '0', null, '2019-09-23 11:47:36');
INSERT INTO `sys_oper_log` VALUES ('239', '实训攻略', '3', 'com.ruoyi.web.controller.system.SysSxgl02Controller.remove()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '0', null, '2019-09-23 11:47:42');
INSERT INTO `sys_oper_log` VALUES ('240', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"周职场\" ],\r\n  \"内容\" : [ \"1、小组学习，开发者的职场基本功： 参考大话程序员第四部分\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"职业素养\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:48:08');
INSERT INTO `sys_oper_log` VALUES ('241', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"周自学\" ],\r\n  \"内容\" : [ \"微服务入门\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://chanxinguidao.github.io/spring-cloud.html\'>微服务入门</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:48:32');
INSERT INTO `sys_oper_log` VALUES ('242', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第一天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:48:44');
INSERT INTO `sys_oper_log` VALUES ('243', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"开源中国 了解一下\" ],\r\n  \"链接\" : [ \"<a href=\'https://www.oschina.net\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:49:03');
INSERT INTO `sys_oper_log` VALUES ('244', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第二天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:49:12');
INSERT INTO `sys_oper_log` VALUES ('245', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a target=\'blank\' href=\'https://mp.weixin.qq.com/s/fo3yZfUHP2Hf53fd8mAPAQ\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:49:46');
INSERT INTO `sys_oper_log` VALUES ('246', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第三天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:49:55');
INSERT INTO `sys_oper_log` VALUES ('247', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"stackoverflow 优秀程序员值得拥有\" ],\r\n  \"链接\" : [ \"<a  href=\'https://stackoverflow.com/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:50:29');
INSERT INTO `sys_oper_log` VALUES ('248', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第四天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:50:37');
INSERT INTO `sys_oper_log` VALUES ('249', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"牛客网 一个在线刷题的网站\" ],\r\n  \"链接\" : [ \"<a  href=\'https://www.nowcoder.com/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:52:44');
INSERT INTO `sys_oper_log` VALUES ('250', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第五天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:52:58');
INSERT INTO `sys_oper_log` VALUES ('251', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl02Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl02/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"实验楼，在线学习，在线编程\" ],\r\n  \"链接\" : [ \"<a  href=\'https://www.shiyanlou.com/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:53:46');
INSERT INTO `sys_oper_log` VALUES ('252', '实训攻略', '3', 'com.ruoyi.web.controller.system.SysSxgl03Controller.remove()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '0', null, '2019-09-23 11:54:10');
INSERT INTO `sys_oper_log` VALUES ('253', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"周任务\" ],\r\n  \"内容\" : [ \"1、小组单位，掌握Linux的基本操作，需要具备基本的安装部署能力，具备部署项目能力； 2、小组单位，掌握VUE.JS的基本语法；\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"自学能力\" ],\r\n  \"分值\" : [ \"50\" ],\r\n  \"模式\" : [ \"屯对\" ]\r\n}', '0', null, '2019-09-23 11:54:38');
INSERT INTO `sys_oper_log` VALUES ('254', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第一天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:54:48');
INSERT INTO `sys_oper_log` VALUES ('255', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"w3school 大部分程序员的入门选择\" ],\r\n  \"链接\" : [ \"<a  href=\'https://www.w3school.com.cn/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:55:10');
INSERT INTO `sys_oper_log` VALUES ('256', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"安装vm虚拟机\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:56:37');
INSERT INTO `sys_oper_log` VALUES ('257', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"安装centos7\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"20\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:57:00');
INSERT INTO `sys_oper_log` VALUES ('258', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"熟悉常用Linux命令\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 11:57:21');
INSERT INTO `sys_oper_log` VALUES ('259', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"熟悉常用Linux命令\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:57:50');
INSERT INTO `sys_oper_log` VALUES ('260', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第二天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:58:35');
INSERT INTO `sys_oper_log` VALUES ('261', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"菜鸟教程，其实我一点也不菜\" ],\r\n  \"链接\" : [ \"<a  href=\'https://www.runoob.com/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 11:59:17');
INSERT INTO `sys_oper_log` VALUES ('262', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"部署tomcat\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:00:38');
INSERT INTO `sys_oper_log` VALUES ('263', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"部署jdk\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:00:51');
INSERT INTO `sys_oper_log` VALUES ('264', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"部署MySQL\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:01:07');
INSERT INTO `sys_oper_log` VALUES ('265', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"部署软件项目\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:01:24');
INSERT INTO `sys_oper_log` VALUES ('266', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第三天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:01:34');
INSERT INTO `sys_oper_log` VALUES ('267', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"CSDN\" ],\r\n  \"链接\" : [ \"<a  href=\'https://www.csdn.net/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:02:57');
INSERT INTO `sys_oper_log` VALUES ('268', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第四天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:03:24');
INSERT INTO `sys_oper_log` VALUES ('269', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"你不了解的hashMap\" ],\r\n  \"链接\" : [ \"<a title=\'试试鼠标滚轮呢？\' href=\'https://mp.weixin.qq.com/s/HzRH9ZJYmidzW5jrMvEi4w\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:04:03');
INSERT INTO `sys_oper_log` VALUES ('270', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"第五天\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:04:16');
INSERT INTO `sys_oper_log` VALUES ('271', '实训攻略', '1', 'com.ruoyi.web.controller.system.SysSxgl03Controller.addSave()', 'POST', '1', 'admin', '研发部门', '/system/sxgl03/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"每日一文\" ],\r\n  \"内容\" : [ \"简单的加法运算\" ],\r\n  \"链接\" : [ \"<a  href=\'https://leetcode-cn.com/problems/add-two-numbers/\'>点我</ a>\" ],\r\n  \"类型\" : [ \"技术水平\" ],\r\n  \"分值\" : [ \"30\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 12:04:41');
INSERT INTO `sys_oper_log` VALUES ('272', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_others\" ]\r\n}', '0', null, '2019-09-23 15:25:19');
INSERT INTO `sys_oper_log` VALUES ('273', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_others', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-23 15:25:25');
INSERT INTO `sys_oper_log` VALUES ('274', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2007\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第一周\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\'system:sxgl:view\'\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 15:31:26');
INSERT INTO `sys_oper_log` VALUES ('275', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2017\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"其他任务\" ],\r\n  \"url\" : [ \"/system/others\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:others:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 15:32:19');
INSERT INTO `sys_oper_log` VALUES ('276', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"Java每日小测\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\'https://ks.wjx.top/jq/45459462.aspx\'>Java测试题</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others          ( 名称,                          链接,                          分值,             模式 )           values ( ?,                          ?,                          ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-09-23 15:37:47');
INSERT INTO `sys_oper_log` VALUES ('277', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"Java每日小测\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\'https://ks.wjx.top/jq/45459462.aspx\'>Java测试题</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others          ( 名称,                          链接,                          分值,             模式 )           values ( ?,                          ?,                          ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-09-23 15:37:53');
INSERT INTO `sys_oper_log` VALUES ('278', '其他任务', '2', 'com.ruoyi.web.controller.system.SysOthersController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/others/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"Java每日小测\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\'https://ks.wjx.top/jq/45459462.aspx\'>Java测试题</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"团队\" ]\r\n}', '0', null, '2019-09-23 15:39:41');
INSERT INTO `sys_oper_log` VALUES ('279', '其他任务', '2', 'com.ruoyi.web.controller.system.SysOthersController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/others/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"名称\" : [ \"Java每日小测\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://ks.wjx.top/jq/45459462.aspx\\\">Java测试题</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 15:39:47');
INSERT INTO `sys_oper_log` VALUES ('280', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"1\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others          ( 名称 )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-09-23 15:39:58');
INSERT INTO `sys_oper_log` VALUES ('281', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-09-23 15:40:01');
INSERT INTO `sys_oper_log` VALUES ('282', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"1\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"1\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others          ( 名称,                                                                 模式 )           values ( ?,                                                                 ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-09-23 15:40:08');
INSERT INTO `sys_oper_log` VALUES ('283', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"1\" ],\r\n  \"内容\" : [ \" \" ],\r\n  \"链接\" : [ \" \" ],\r\n  \"类型\" : [ \" \" ],\r\n  \"分值\" : [ \" \" ],\r\n  \"模式\" : [ \"1\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others          ( 名称,                                                                 模式 )           values ( ?,                                                                 ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-09-23 15:40:13');
INSERT INTO `sys_oper_log` VALUES ('284', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-09-23 15:40:23');
INSERT INTO `sys_oper_log` VALUES ('285', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-09-23 15:40:50');
INSERT INTO `sys_oper_log` VALUES ('286', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2019-09-23 15:40:59');
INSERT INTO `sys_oper_log` VALUES ('287', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"好哦\" ],\r\n  \"内容\" : [ \"好哦\" ],\r\n  \"链接\" : [ \"好哦\" ],\r\n  \"类型\" : [ \"好哦\" ],\r\n  \"分值\" : [ \"10\" ],\r\n  \"模式\" : [ \"好哦\" ]\r\n}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.system.mapper.SysOthersMapper.insertSysOthers-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_others          ( 名称,             内容,             链接,             类型,             分值,             模式 )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-09-23 15:41:27');
INSERT INTO `sys_oper_log` VALUES ('288', '其他任务', '1', 'com.ruoyi.web.controller.system.SysOthersController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/others/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"1\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"\" ]\r\n}', '0', null, '2019-09-23 15:42:45');
INSERT INTO `sys_oper_log` VALUES ('289', '其他任务', '3', 'com.ruoyi.web.controller.system.SysOthersController.remove()', 'POST', '1', 'admin', '研发部门', '/system/others/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '0', null, '2019-09-23 15:42:47');
INSERT INTO `sys_oper_log` VALUES ('290', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_gl\" ]\r\n}', '0', null, '2019-09-23 15:49:50');
INSERT INTO `sys_oper_log` VALUES ('291', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_gl', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-23 15:49:58');
INSERT INTO `sys_oper_log` VALUES ('292', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2015\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第三周\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 15:53:13');
INSERT INTO `sys_oper_log` VALUES ('293', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2016\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"第四周\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 15:53:24');
INSERT INTO `sys_oper_log` VALUES ('294', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2017\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"其他任务\" ],\r\n  \"url\" : [ \"/system/others\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:others:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 15:53:49');
INSERT INTO `sys_oper_log` VALUES ('295', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2018\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"葵花宝典（攻略）\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 15:54:13');
INSERT INTO `sys_oper_log` VALUES ('296', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2018\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"葵花宝典（攻略）\" ],\r\n  \"url\" : [ \"/system/gl\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:gl:view\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 15:55:10');
INSERT INTO `sys_oper_log` VALUES ('297', '项目攻略', '1', 'com.ruoyi.web.controller.system.SysGlController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/gl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"github同性交友网站\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://github.com/\\\">点我<a/>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 15:58:11');
INSERT INTO `sys_oper_log` VALUES ('298', '项目攻略', '1', 'com.ruoyi.web.controller.system.SysGlController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/gl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"idea配置tomcat\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://jingyan.baidu.com/article/ff411625da4c3d12e582377f.html\\\">点我<a/>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 15:58:30');
INSERT INTO `sys_oper_log` VALUES ('299', '项目攻略', '1', 'com.ruoyi.web.controller.system.SysGlController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/gl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"ProcessOn在线作图\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://www.processon.com/\\\">在线作图<a/>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 15:58:50');
INSERT INTO `sys_oper_log` VALUES ('300', '项目攻略', '1', 'com.ruoyi.web.controller.system.SysGlController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/gl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"编程概念问卷调查\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://www.wjx.cn/jq/45574015.aspx\\\">点我</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 15:59:11');
INSERT INTO `sys_oper_log` VALUES ('301', '项目攻略', '1', 'com.ruoyi.web.controller.system.SysGlController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/gl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"Linux命令大全\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\'https://wangchujiang.com/linux-command/\'>Linux</a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 15:59:26');
INSERT INTO `sys_oper_log` VALUES ('302', '项目攻略', '1', 'com.ruoyi.web.controller.system.SysGlController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/gl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"spring思维导图\" ],\r\n  \"内容\" : [ \"你所没总结过的spring\" ],\r\n  \"链接\" : [ \"<a  href=\'https://www.processon.com/view/link/5d7ee4f1e4b0c5c942c21ce7#map\'>点我</ a>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 15:59:46');
INSERT INTO `sys_oper_log` VALUES ('303', '项目攻略', '1', 'com.ruoyi.web.controller.system.SysGlController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/gl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"SourceTree安装\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://cloud.tencent.com/developer/article/1369196\\\">SourceTree安装<a/>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 16:00:00');
INSERT INTO `sys_oper_log` VALUES ('304', '项目攻略', '1', 'com.ruoyi.web.controller.system.SysGlController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/gl/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"若依框架使用\" ],\r\n  \"内容\" : [ \"\" ],\r\n  \"链接\" : [ \"<a href=\\\"https://blog.csdn.net/SpringAndGG/article/details/96474583\\\">点我<a/>\" ],\r\n  \"类型\" : [ \"\" ],\r\n  \"分值\" : [ \"\" ],\r\n  \"模式\" : [ \"个人\" ]\r\n}', '0', null, '2019-09-23 16:00:24');
INSERT INTO `sys_oper_log` VALUES ('305', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"趣味知识\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"8\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 16:10:39');
INSERT INTO `sys_oper_log` VALUES ('306', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2057\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"趣味知识\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 16:11:05');
INSERT INTO `sys_oper_log` VALUES ('307', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_newmessage\" ]\r\n}', '0', null, '2019-09-23 16:15:11');
INSERT INTO `sys_oper_log` VALUES ('308', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_newmessage', '127.0.0.1', '内网IP', '{ }', '0', null, '2019-09-23 16:15:14');
INSERT INTO `sys_oper_log` VALUES ('309', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2057\" ],\r\n  \"parentId\" : [ \"2005\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"趣味知识\" ],\r\n  \"url\" : [ \"/system/newmessage\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:newmessage:view\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '0', null, '2019-09-23 16:19:46');
INSERT INTO `sys_oper_log` VALUES ('310', '趣味知识', '1', 'com.ruoyi.web.controller.system.SysNewmessageController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/newmessage/add', '127.0.0.1', '内网IP', '{\r\n  \"名称\" : [ \"心理学效应\" ],\r\n  \"内容\" : [ \"逆火效应\" ],\r\n  \"链接\" : [ \"<a  href=\'https://baike.baidu.com/item/%E9%80%86%E7%81%AB%E6%95%88%E5%BA%94/1137384?fr=aladdin\'>点我</ a>\" ]\r\n}', '0', null, '2019-09-23 16:20:15');

-- ----------------------------
-- Table structure for sys_others
-- ----------------------------
DROP TABLE IF EXISTS `sys_others`;
CREATE TABLE `sys_others` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `内容` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `链接` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `类型` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `分值` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `模式` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='其他任务';

-- ----------------------------
-- Records of sys_others
-- ----------------------------
INSERT INTO `sys_others` VALUES ('1', 'Java每日小测', null, '<a href=\"https://ks.wjx.top/jq/45459462.aspx\">Java测试题</a>', null, '10', '个人');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for sys_score
-- ----------------------------
DROP TABLE IF EXISTS `sys_score`;
CREATE TABLE `sys_score` (
  `student_id` int(255) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) DEFAULT NULL,
  `couse_name` varchar(255) DEFAULT NULL,
  `score` float(255,2) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='学生成绩表';

-- ----------------------------
-- Records of sys_score
-- ----------------------------
INSERT INTO `sys_score` VALUES ('1', '林礼炜', '语文', '90.00');

-- ----------------------------
-- Table structure for sys_sxgl
-- ----------------------------
DROP TABLE IF EXISTS `sys_sxgl`;
CREATE TABLE `sys_sxgl` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) DEFAULT NULL,
  `内容` varchar(255) DEFAULT NULL,
  `链接` text,
  `类型` varchar(255) DEFAULT NULL,
  `分值` varchar(255) DEFAULT NULL,
  `模式` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='实训攻略表';

-- ----------------------------
-- Records of sys_sxgl
-- ----------------------------
INSERT INTO `sys_sxgl` VALUES ('1', '第一周', '本周需要掌握 1、完成实训项目启动； 2、获取对应资料材料； 根据材料自学jeesite框架 （jeesite名叫框架，实则是多个框架组合设计而成的脚手架，其中包含基础的SSM，以及其他缓存，权限等内容）', '<a href=\"https://www.baidu.com\">点我</a>', '综合能力', '50', '团队');
INSERT INTO `sys_sxgl` VALUES ('2', '周听听', '1、小组模式学习《终身成长》，并且讨论自我剖析；', null, '职业素养', '50', '团队');
INSERT INTO `sys_sxgl` VALUES ('3', '周自学', '算法与数据结构 掌握排序等常见算法', null, null, '50', '个人');
INSERT INTO `sys_sxgl` VALUES ('4', '第一天', '项目启动', null, '综合能力', null, '个人');
INSERT INTO `sys_sxgl` VALUES ('5', '获取实训攻略', '', null, null, null, '个人');
INSERT INTO `sys_sxgl` VALUES ('6', '了解实训目的', '1、完成一次全过程软件项目流程；含软件生命周期的整个阶段；\n<br> 2、完成一轮人才标准化技术等内容自我实践学习；\n<br> 3、完成额外的辅助类的职业规划，职场心态等转换；', null, null, '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('7', '获取实训材料', '1、项目标准化资料；\n<br> 2、实训软件清单；\n<br> 3、部署jeesite基本框架；', null, null, '30', '个人');
INSERT INTO `sys_sxgl` VALUES ('8', '安装相关软件', '1、安装开发工具：idea\n<br> 2、安装版本管理工具：git &amp; sourcetree', null, '综合能力', '40', '团队');
INSERT INTO `sys_sxgl` VALUES ('9', '完成团队组建', '1、五人一组，设定组长（需要提前摸底）；\n<br> 2、分配任务，确定里程碑；', null, null, '20', '团队');
INSERT INTO `sys_sxgl` VALUES ('10', '听取音频材料', '', '<a href=\"https://pan.baidu.com/s/1WSHUWeR67LS0616vgDJRxg\">网盘</a>', null, '30', '团队');
INSERT INTO `sys_sxgl` VALUES ('11', '阅读规范材料', '1、阅读《阿里巴巴Java开发手册（纪念版）》.pdf', null, null, '30', '个人');
INSERT INTO `sys_sxgl` VALUES ('12', '学习每日词汇', '1、学习Java编程常用词汇，每天学一点编程不用愁；\n<br> 链接：https://pan.baidu.com/s/1OU8VNoRxdMer32tdoukLYA \n<br> 提取码：6ob8', '<a href=\"https://pan.baidu.com/s/1OU8VNoRxdMer32tdoukLYA\">网盘</a>', null, '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('13', '每日面试技巧', '职业价值观可以精简为9种： 1、工资高，福利好。 2、工作环境（物质方面）舒适。 3、人际关系良好。 4、工作稳定有保障。 5、能提供较好的受教育机会。 6、有较高的社会地位。 7、工作不太紧张，外部压力小。 8、能充分发挥自己的能力特长。 9、社会需要与社会贡献大。', null, null, '10', '职业素养');
INSERT INTO `sys_sxgl` VALUES ('14', '每日代码题目', '1、注册力扣账号；\n<br> 2、选择基础的题目每天一题；\n<br> 3、小组讨论学习；', '<a href=\"https://leetcode-cn.com/\">刷题网</a>', null, '30', '个人');
INSERT INTO `sys_sxgl` VALUES ('15', '每日一文', '成熟程序员的标志', '<a href=\"https://www.cnblogs.com/n216/archive/2011/05/16/2047327.html\">点我</a>', '综合能力', '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('16', '第二天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl` VALUES ('17', '注册一个processon账号', '1、注册一个processon账号', '<a href=\"https://www.processon.com/i/577c75bfe4b0d4077ce\">注册</a>', null, '10', '团队');
INSERT INTO `sys_sxgl` VALUES ('19', '流程图入门', '1、学习编程中的流程图使用；\n<br> 链接：https://pan.baidu.com/s/19FUf8dk9RBf6cC7_w1i2Og \n<br> 提取码：cz4d', '<a href=\"https://pan.baidu.com/s/19FUf8dk9RBf6cC7_w1i2Og\">网盘</a>', null, '15', '团队');
INSERT INTO `sys_sxgl` VALUES ('20', '性格MBTI测试', '1、完成MBTI性格测试，更好的发现自己适合的发展路线；\n<br>', '<a href=\"http://www.apesk.com/mbti/dati.asp?\">mbti测试题</a>', null, '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('21', '注册GitHub账号', '1、组长带头，完成五个人注册GitHub账号； 2、创建项目仓库，并且分配权限；', '<a href=\"https://github.com/\">点我</a>', null, '20', '团队');
INSERT INTO `sys_sxgl` VALUES ('22', '提交jeesite框架代码', '1、完成一次代码提交；', null, null, '10', '团队');
INSERT INTO `sys_sxgl` VALUES ('23', '获取软件项目材料', '1、获取软件项目材料；\n<br> 2、将材料提交到团队项目中；', null, null, '5', '团队');
INSERT INTO `sys_sxgl` VALUES ('24', '学习软件项目标准材料', '1、完成标准材料的通读，以及了解各个材料的意义跟背景；', null, null, '30', '团队');
INSERT INTO `sys_sxgl` VALUES ('25', '每日一文', '三分钟了解敏捷开发', '<a href=\"https://mp.weixin.qq.com/s/fo6zrgxaoMld35pieJWcsg\">点我</a>', null, null, '团队');
INSERT INTO `sys_sxgl` VALUES ('26', '第三天', '1、开始实训项目', null, null, null, '团队');
INSERT INTO `sys_sxgl` VALUES ('27', '了解项目背景', '1、完成 项目立项报告', null, null, '10', '团队');
INSERT INTO `sys_sxgl` VALUES ('28', '分析项目需求', '1、完成 软件需求规格说明书；\n<br> 2、完成 项目开发计划 （建议采用小组会议形式，并且形成会议纪要）;\n<br> 3、明确责任分工，开始搭建开发环境，并且确认项目节点里程碑；', null, null, '20', '团队');
INSERT INTO `sys_sxgl` VALUES ('29', '良好习惯养成', '1、观看或听《掌控习惯》，学会如何改变自己的习惯；\n<br> 链接：https://pan.baidu.com/s/1IMu70DYLvr6QtzsFrhGt3g \n<br> 提取码：259l', '<a href=\"https://pan.baidu.com/s/1IMu70DYLvr6QtzsFrhGt3g\">网盘</a>', null, '30', '团队');
INSERT INTO `sys_sxgl` VALUES ('30', '掌握一个小软件', '1、搜索软件 everything ，并且完成他的使用；', null, null, '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('31', '了解沟通反馈', '1、完成一个项目小游戏，由材料提供方发起《项目管理游戏》；', null, null, '35', '团队');
INSERT INTO `sys_sxgl` VALUES ('32', '每日一文', '什么是架构师', '<a href=\"https://mp.weixin.qq.com/s/38RF3REJX8rF6Ejt1V-yXQ\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('33', '第四天', '1、完成日常常规内容，以及项目内容', null, null, null, '团队');
INSERT INTO `sys_sxgl` VALUES ('34', '获取Java技能树', '1、获取Java技能树；\n<br> 2、使用思维导图，绘制自己的技能树；', '<a href=\"https://www.processon.com/view/5c89f14ae4b0f88919ad93e1#map\">技能树</a>', null, '20', '个人');
INSERT INTO `sys_sxgl` VALUES ('35', '掌握沟通反馈', '1、完成一次实训或者学习过程中遇到的文档；', null, null, '20', '团队');
INSERT INTO `sys_sxgl` VALUES ('36', '完成项目数据库设计', '1、使用powerdesigner设计数据库业务表，并且输出一份完整的《数据库设计文档》，以及一份设计文件；', null, null, '30', '团队');
INSERT INTO `sys_sxgl` VALUES ('37', '每日一文', '什么是人工智能', '<a href=\"https://mp.weixin.qq.com/s/8rkxHFmRxpF-tNMbxAtuGA\">点我</a>', '综合能力', '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('38', '学习ER图', '掌握ER图的绘制，并且用于项目中设计', '<a href=\"https://www.cnblogs.com/zpfbuaa/p/5256187.html/\">点我</a>', '综合能力', '30', '个人');
INSERT INTO `sys_sxgl` VALUES ('39', '第五天', '1、是时候来个阶段小结了', null, null, null, '团队');
INSERT INTO `sys_sxgl` VALUES ('40', '获取软件项目材料', '1、获取《IT研发管理制度》\n<br> 2、获取《01_软件公司职位说明书》', null, null, '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('41', '掌握markdown用法', '1、下载typora，掌握md的基本语法；也可以尝试其他同类软件如 小书匠', null, null, '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('42', '每日一文', '什么是大数据', '<a href=\"https://mp.weixin.qq.com/s/3lpm5mgAVghAqYnumG3BeQ\">点我</a>', '综合能力', '10', '个人');
INSERT INTO `sys_sxgl` VALUES ('43', '第六天', '1、专题日 本期分享学习渠道', null, null, '20', '团队');

-- ----------------------------
-- Table structure for sys_sxgl01
-- ----------------------------
DROP TABLE IF EXISTS `sys_sxgl01`;
CREATE TABLE `sys_sxgl01` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) DEFAULT NULL,
  `内容` varchar(255) DEFAULT NULL,
  `链接` text,
  `类型` varchar(255) DEFAULT NULL,
  `分值` varchar(255) DEFAULT NULL,
  `模式` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='实训攻略表';

-- ----------------------------
-- Records of sys_sxgl01
-- ----------------------------
INSERT INTO `sys_sxgl01` VALUES ('2', '周听听', '1、小组单位共同学习《掌控习惯》，并且分析哪些习惯可以养成。', null, '职业素养', '20', '团队');
INSERT INTO `sys_sxgl01` VALUES ('3', '周任务', 'Java实现一个网络测试程序： 1、要求，使用定时任务，自定义配置定时任务时间规则； 2、测试所得结果记录到数据库中； 3、拥有结果展示页面，用echarts的图表展示；', null, '自学能力', '30', '团队');
INSERT INTO `sys_sxgl01` VALUES ('4', '周自学', 'springboot学习', '<a href=\"https://chanxinguidao.github.io/springboot/2019/05/01/Spring-Boot%E6%95%99%E7%A8%8B%E7%AC%AC0%E7%AF%87-%E5%85%A5%E9%97%A8%E9%9B%86%E9%94%A6.html\">SpringBoot入门第一站</a>', null, '50', '团队');
INSERT INTO `sys_sxgl01` VALUES ('5', '第一天', '1、开始项目代码编码工作；', null, null, null, null);
INSERT INTO `sys_sxgl01` VALUES ('6', '每日一文', '什么是微服务', '<a href=\"https://mp.weixin.qq.com/s/FRVOYlgZCO524KwzQRohLA\">点我</a>', '技术水平', '10', '团队');
INSERT INTO `sys_sxgl01` VALUES ('7', '第二天', '1、搭建GitHub博客；', null, null, '20', '团队');
INSERT INTO `sys_sxgl01` VALUES ('8', '搭建自己的GitHub博客', null, null, null, '30', '个人');
INSERT INTO `sys_sxgl01` VALUES ('9', '写一份技术博客', null, null, null, '30', '个人');
INSERT INTO `sys_sxgl01` VALUES ('10', '每日一文', '什么是docker', '<a href=\"https://mp.weixin.qq.com/s/_TUj4Nf4APMPEY1TpURRtw\">点我</a>', '技术水平', '10', '个人');
INSERT INTO `sys_sxgl01` VALUES ('11', '第三天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl01` VALUES ('12', '每日一文', '面试技巧篇', '<a href=\"https://mp.weixin.qq.com/s/3gN8rsOoJcO3vfcINF-y9w\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl01` VALUES ('13', '第四天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl01` VALUES ('14', '每日一文', '经典面试题', '<a href=\"https://mp.weixin.qq.com/s/Bw5ZEkVqPErO573bTByMUA\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl01` VALUES ('15', '第五天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl01` VALUES ('16', '每日一文', '设计模式（将来你一定会遇到他）', '<a href=\"https://www.javazhiyin.com/41814.html\">点我</a>', null, '20', '个人');

-- ----------------------------
-- Table structure for sys_sxgl02
-- ----------------------------
DROP TABLE IF EXISTS `sys_sxgl02`;
CREATE TABLE `sys_sxgl02` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) DEFAULT NULL,
  `内容` varchar(255) DEFAULT NULL,
  `链接` text,
  `类型` varchar(255) DEFAULT NULL,
  `分值` varchar(255) DEFAULT NULL,
  `模式` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='实训攻略表';

-- ----------------------------
-- Records of sys_sxgl02
-- ----------------------------
INSERT INTO `sys_sxgl02` VALUES ('2', '周职场', '1、小组学习，开发者的职场基本功： 参考大话程序员第四部分', null, '职业素养', '50', '团队');
INSERT INTO `sys_sxgl02` VALUES ('3', '周自学', '微服务入门', '<a href=\"https://chanxinguidao.github.io/spring-cloud.html\">微服务入门</a>', null, '30', '团队');
INSERT INTO `sys_sxgl02` VALUES ('4', '第一天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl02` VALUES ('5', '每日一文', '开源中国 了解一下', '<a href=\"https://www.oschina.net\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl02` VALUES ('6', '第二天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl02` VALUES ('7', '每日一文', null, '<a href=\"https://mp.weixin.qq.com/s/fo3yZfUHP2Hf53fd8mAPAQ\">点我</a>', null, null, '个人');
INSERT INTO `sys_sxgl02` VALUES ('8', '第三天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl02` VALUES ('9', '每日一文', 'stackoverflow 优秀程序员值得拥有', '<a href=\"https://stackoverflow.com/\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl02` VALUES ('10', '第四天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl02` VALUES ('11', '每日一文', '牛客网 一个在线刷题的网站', '<a href=\"https://www.nowcoder.com/\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl02` VALUES ('12', '第五天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl02` VALUES ('13', '每日一文', '实验楼，在线学习，在线编程', '<a href=\"https://www.shiyanlou.com/\">点我</a>', null, '10', '个人');

-- ----------------------------
-- Table structure for sys_sxgl03
-- ----------------------------
DROP TABLE IF EXISTS `sys_sxgl03`;
CREATE TABLE `sys_sxgl03` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `名称` varchar(255) DEFAULT NULL,
  `内容` varchar(255) DEFAULT NULL,
  `链接` text,
  `类型` varchar(255) DEFAULT NULL,
  `分值` varchar(255) DEFAULT NULL,
  `模式` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='实训攻略表';

-- ----------------------------
-- Records of sys_sxgl03
-- ----------------------------
INSERT INTO `sys_sxgl03` VALUES ('2', '周任务', '1、小组单位，掌握Linux的基本操作，需要具备基本的安装部署能力，具备部署项目能力； 2、小组单位，掌握VUE.JS的基本语法；', null, '自学能力', '50', '屯对');
INSERT INTO `sys_sxgl03` VALUES ('3', '第一天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl03` VALUES ('4', '每日一文', 'w3school 大部分程序员的入门选择', '<a href=\"https://www.w3school.com.cn/\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl03` VALUES ('5', '安装vm虚拟机', null, null, null, '20', '团队');
INSERT INTO `sys_sxgl03` VALUES ('6', '安装centos7', null, null, null, '20', '团队');
INSERT INTO `sys_sxgl03` VALUES ('7', '熟悉常用Linux命令', null, null, null, '30', '团队');
INSERT INTO `sys_sxgl03` VALUES ('8', '熟悉常用Linux命令', null, null, null, '30', '个人');
INSERT INTO `sys_sxgl03` VALUES ('9', '第二天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl03` VALUES ('10', '每日一文', '菜鸟教程，其实我一点也不菜', '<a href=\"https://www.runoob.com/\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl03` VALUES ('11', '部署tomcat', null, null, null, '30', '个人');
INSERT INTO `sys_sxgl03` VALUES ('12', '部署jdk', null, null, null, '30', '个人');
INSERT INTO `sys_sxgl03` VALUES ('13', '部署MySQL', null, null, null, '30', '个人');
INSERT INTO `sys_sxgl03` VALUES ('14', '部署软件项目', null, null, null, '30', '个人');
INSERT INTO `sys_sxgl03` VALUES ('15', '第三天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl03` VALUES ('16', '每日一文', 'CSDN', '<a href=\"https://www.csdn.net/\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl03` VALUES ('17', '第四天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl03` VALUES ('18', '每日一文', '你不了解的hashMap', '<a title=\"试试鼠标滚轮呢？\" href=\"https://mp.weixin.qq.com/s/HzRH9ZJYmidzW5jrMvEi4w\">点我</a>', null, '10', '个人');
INSERT INTO `sys_sxgl03` VALUES ('19', '第五天', null, null, null, null, '个人');
INSERT INTO `sys_sxgl03` VALUES ('20', '每日一文', '简单的加法运算', '<a href=\"https://leetcode-cn.com/problems/add-two-numbers/\">点我</a>', '技术水平', '30', '个人');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2019-09-23 17:03:27', 'admin', '2018-03-16 11:33:00', 'ry', '2019-09-23 17:03:26', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('6a2391d5-1fd8-4477-8fa8-cdbb8e488c01', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2019-09-23 17:03:23', '2019-09-23 17:17:48', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
