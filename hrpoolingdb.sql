/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50512
Source Host           : 10.2.224.32:3306
Source Database       : hrpoolingdb

Target Server Type    : MYSQL
Target Server Version : 50512
File Encoding         : 65001

Date: 2018-07-20 18:40:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(45) NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '天津事业部', '6', null);
INSERT INTO `department` VALUES ('2', '北京事业部', '6', null);
INSERT INTO `department` VALUES ('3', '金融事业部', '6', null);
INSERT INTO `department` VALUES ('4', '外包事业部', '6', null);
INSERT INTO `department` VALUES ('5', '财务部', '6', null);
INSERT INTO `department` VALUES ('6', '软通动力集团', null, null);
INSERT INTO `department` VALUES ('7', '人力资源办公室', '6', null);
INSERT INTO `department` VALUES ('8', '开发事业1部', '1', null);
INSERT INTO `department` VALUES ('9', '开发事业2部', '1', null);
INSERT INTO `department` VALUES ('10', '开发事业3部', '2', null);
INSERT INTO `department` VALUES ('11', '开发事业4部', '2', null);
INSERT INTO `department` VALUES ('12', '金融服务部', '3', null);
INSERT INTO `department` VALUES ('13', '金融创新部', '3', null);

-- ----------------------------
-- Table structure for `emp_jobbing`
-- ----------------------------
DROP TABLE IF EXISTS `emp_jobbing`;
CREATE TABLE `emp_jobbing` (
  `id` varchar(45) NOT NULL,
  `empno` varchar(45) DEFAULT NULL,
  `jointype` int(11) NOT NULL DEFAULT '-1',
  `fromcor` text,
  `project` text,
  `joindate` date DEFAULT NULL,
  `urgent` text,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_7` (`empno`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`empno`) REFERENCES `employee` (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_jobbing
-- ----------------------------
INSERT INTO `emp_jobbing` VALUES ('5685c9dd-58ee-4872-a329-e0a0f8210c85', 'JE000004', '-1', null, null, '2018-07-22', null);
INSERT INTO `emp_jobbing` VALUES ('89820321-bd78-437d-ab34-a773035fd0fc', 'JE000007', '-1', null, null, '2018-07-01', null);
INSERT INTO `emp_jobbing` VALUES ('cf9301af-dd6c-48f9-ad26-90a8efab52e2', 'JE000005', '-1', null, null, '2018-07-13', null);
INSERT INTO `emp_jobbing` VALUES ('cfa8e23d-113a-431c-b74e-34074bc467b9', 'JE000002', '-1', null, null, '2018-07-05', null);
INSERT INTO `emp_jobbing` VALUES ('fd1e991d-42fd-4522-a543-c7640b444d76', 'JE000003', '-1', '金山', '开发', '2018-07-16', '');

-- ----------------------------
-- Table structure for `emp_normal`
-- ----------------------------
DROP TABLE IF EXISTS `emp_normal`;
CREATE TABLE `emp_normal` (
  `id` varchar(45) NOT NULL,
  `empno` varchar(45) NOT NULL,
  `eduHistory` varchar(8) NOT NULL,
  `joindate` date DEFAULT NULL,
  `jobcertify` text,
  `bank` varchar(45) DEFAULT NULL,
  `bankno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_4` (`empno`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`empno`) REFERENCES `employee` (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_normal
-- ----------------------------
INSERT INTO `emp_normal` VALUES ('52ac3524-7cd6-4bd4-a357-9c429af4e4e0', 'WE00003', '3', null, null, '工商银行', null);
INSERT INTO `emp_normal` VALUES ('5d843c06-88ea-4b8d-b393-7a0fd5e1614f', 'WE00001', '3', '2018-07-27', '', '建设银行', '33336699');
INSERT INTO `emp_normal` VALUES ('62dc9927-391b-45b0-ad6e-f2628f1b0101', 'NE000003', '2', '2014-12-18', '', '建设银行', '23938458503854');
INSERT INTO `emp_normal` VALUES ('6b9d44f2-bb5e-4928-ab7f-ffeda2b0fdd2', 'NE000006', '1', null, '', '豪哥银行', '');
INSERT INTO `emp_normal` VALUES ('6c012287-c883-4228-8617-324ebda6052f', 'AB00023', '1', null, null, null, null);
INSERT INTO `emp_normal` VALUES ('72edaff2-428c-4ca9-9670-f978c567944a', 'AB00021', '1', null, null, null, null);
INSERT INTO `emp_normal` VALUES ('79c19ffc-4a79-489f-934b-82ae3ae74b38', 'NE000002', '2', '2015-02-01', 'CET 4', '招商银行', '62264485733374496');
INSERT INTO `emp_normal` VALUES ('7a77c14e-bcef-45c5-be92-017314aba78e', 'NE000001', '1', '2014-12-31', '证书2\r\n证书5', '工商银行', '23343948485950');
INSERT INTO `emp_normal` VALUES ('83e07959-5cc7-47d6-a54f-df9786f52bef', 'NE000007', '0', '2015-02-05', '专业等级证书1', '招商银行', '622699486668400384');
INSERT INTO `emp_normal` VALUES ('8a988eb0-c767-4533-81ff-c45d39596376', 'NE000004', '4', '2014-12-10', '证书1\r\n证书2\r\n证书3\r\n证书4', '招商银行', '23948548390');
INSERT INTO `emp_normal` VALUES ('932052e9-b6fa-408d-8e84-36fba7e90048', 'AQ00004', '1', '2018-07-12', '', '建设银行', '11111');
INSERT INTO `emp_normal` VALUES ('9ed1a20b-ed5d-4fe2-bc5f-6db7ba88c60c', 'AB00025', '4', null, null, null, null);
INSERT INTO `emp_normal` VALUES ('b524259a-edd3-4773-ab69-ab2db2b62aa7', 'AQ00001', '1', '2018-06-28', '', '', '');
INSERT INTO `emp_normal` VALUES ('b7115bfe-18df-427e-baf0-c4d21b3f6459', 'AB00022', '0', null, null, null, null);
INSERT INTO `emp_normal` VALUES ('c7ab8877-9145-456a-b803-b30d3818997e', 'AB00024', '3', null, null, null, null);
INSERT INTO `emp_normal` VALUES ('d83c87cd-258a-428c-8f0c-4a53fac4a6af', 'WE00002', '1', null, null, '工商银行', null);
INSERT INTO `emp_normal` VALUES ('e7935ecd-931d-4487-8e93-69b5ff82f2c7', 'AQ00003', '1', '2018-07-26', '', '建设银行', '111112333');

-- ----------------------------
-- Table structure for `emp_outer`
-- ----------------------------
DROP TABLE IF EXISTS `emp_outer`;
CREATE TABLE `emp_outer` (
  `id` varchar(45) NOT NULL,
  `empno` varchar(45) DEFAULT NULL,
  `sendbor` text,
  `sendbegin` date DEFAULT NULL,
  `sendcontract` varchar(45) DEFAULT NULL,
  `cycle` decimal(8,1) DEFAULT '0.0',
  `subsidy` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_6` (`empno`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`empno`) REFERENCES `employee` (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_outer
-- ----------------------------
INSERT INTO `emp_outer` VALUES ('546959cc-0d29-4ab6-a8bb-e77164388200', 'OE000004', '腾讯', null, null, '0.0', '0');
INSERT INTO `emp_outer` VALUES ('84fec559-6505-40a8-b1a5-92c0141d0faa', 'OE000003', '阿里巴巴', '2018-07-13', '马云', '2.0', '0');
INSERT INTO `emp_outer` VALUES ('cfa8e23d-113a-431c-b74e-34074bc467a0', 'OE000001', null, null, null, '0.0', '1');
INSERT INTO `emp_outer` VALUES ('cfa8e23d-113a-431c-b74e-34074bc467a1', 'OE000002', '腾讯', '2015-01-01', null, '0.0', '1');

-- ----------------------------
-- Table structure for `emp_student`
-- ----------------------------
DROP TABLE IF EXISTS `emp_student`;
CREATE TABLE `emp_student` (
  `id` varchar(45) NOT NULL,
  `empno` varchar(45) NOT NULL,
  `school` text,
  `level` int(11) DEFAULT '0',
  `interest` text,
  `paytype` int(11) DEFAULT '0',
  `paycourt` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_8` (`empno`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`empno`) REFERENCES `employee` (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_student
-- ----------------------------
INSERT INTO `emp_student` VALUES ('5ce28b2e-47f8-4ab1-bfaf-357ac6ed29fc', 'SE000004', '天津工业大学', '3', null, '0', '0');
INSERT INTO `emp_student` VALUES ('cfa8e23d-113a-431c-b74e-34074bc467c4', 'SE000001', '', '0', null, '0', '0');
INSERT INTO `emp_student` VALUES ('cfa8e23d-113a-431c-b74e-34074bc467c5', 'SE000002', null, '0', null, '0', '0');
INSERT INTO `emp_student` VALUES ('d3a299d2-0d26-4b57-8be8-9f29e9b4ad7f', 'SE000003', '天津工业大学', '3', '睡觉', '0', '10');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `empno` varchar(45) NOT NULL,
  `namecn` varchar(45) NOT NULL,
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0',
  `birth` date DEFAULT NULL,
  `birthplace` text,
  `personid` varchar(18) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `qq` varchar(45) DEFAULT NULL,
  `countary` int(11) DEFAULT NULL,
  `nationality` int(11) DEFAULT NULL,
  `address` text,
  `state` int(11) DEFAULT '1',
  `postcode` varchar(10) DEFAULT NULL,
  `deptid` int(11) NOT NULL DEFAULT '-1',
  `jobid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`empno`),
  KEY `FK_Reference_3` (`jobid`),
  KEY `aa` (`deptid`),
  CONSTRAINT `aa` FOREIGN KEY (`deptid`) REFERENCES `department` (`id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`jobid`) REFERENCES `job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('AB00021', '韩哲', '0', null, null, '410527188802362541', '121@qq.com', null, '1210497519', null, null, null, '1', null, '1', '1');
INSERT INTO `employee` VALUES ('AB00022', '王四', '0', null, null, '420356874123698521', '111@qq.com', null, '1112223364', null, null, null, '1', null, '1', '1');
INSERT INTO `employee` VALUES ('AB00023', '王三', '1', null, null, '410325874203685128', '101@qq.com', null, '1013949209', null, null, null, '1', null, '1', '1');
INSERT INTO `employee` VALUES ('AB00024', '王五', '1', null, null, '789654123014785236', '91@qq.com', null, '915675054', null, null, null, '1', null, '1', '1');
INSERT INTO `employee` VALUES ('AB00025', '张明', '0', null, null, '123654789632142369', '81@qq.com', null, '817400899', null, null, null, '1', null, '1', '1');
INSERT INTO `employee` VALUES ('AQ00001', '李晓哲', '1', '2018-07-19', '', '', '123@136.com', '13163122551', '1210497519', '0', '0', '', '1', '', '1', '1');
INSERT INTO `employee` VALUES ('AQ00002', '陈宇豪', '0', '2018-07-19', '', '', '123@136.com', '13163122551', '1210497519', '0', '0', '', '1', '', '1', '1');
INSERT INTO `employee` VALUES ('AQ00003', '念熙来', '1', '2018-07-12', '厦门', '1111122222222', '123@136.com', '13163122551', '1210497519', '0', '0', '天津工业大学', '1', '120110', '1', '1');
INSERT INTO `employee` VALUES ('AQ00004', '闫旭东', '1', '2018-07-19', '内蒙古', '1111122222222', '123@136.com', '13163122551', '1210497519', '0', '0', '天津工业大学', '1', '120110', '1', '4');
INSERT INTO `employee` VALUES ('JE000001', '外协', '1', null, null, '139474638329495847', null, '213546', null, '1', '1', null, '1', null, '7', '5');
INSERT INTO `employee` VALUES ('JE000002', '外协2', '0', null, null, '122384753488374765', '2222', '', '', '2', '0', null, '1', null, '6', '1');
INSERT INTO `employee` VALUES ('JE000003', '陈宇豪', '1', '2018-07-07', '贵州', '1111122222222', '123@136.com', '13163122551', '1210497519', '0', '0', '天津工业大学', '1', '120110', '3', '4');
INSERT INTO `employee` VALUES ('JE000004', '外协3', '1', null, null, '139474638329495847', '2222', '213546222', '111113333', null, null, null, '1', null, '6', '8');
INSERT INTO `employee` VALUES ('JE000005', '外协5', '0', null, null, '139474638329495847', '2222', '213546', '11111', null, null, null, '1', null, '6', '8');
INSERT INTO `employee` VALUES ('JE000006', '外协6', '0', null, null, '139474638329495847', '2222', '213546', '11111', null, null, null, '1', null, '6', '8');
INSERT INTO `employee` VALUES ('JE000007', '007', '0', null, null, '139474638329495847', '2222', '213546', '111113311', null, null, null, '1', null, '6', '8');
INSERT INTO `employee` VALUES ('NE000001', '测试N1', '0', '1980-12-01', '天津', '122323849483837898', 'test@gmail.com', '12333432232', '34354353434', '0', '0', '天津市西青区，天津市大学软件园', '0', '300000', '8', '7');
INSERT INTO `employee` VALUES ('NE000002', '新员工', '1', '2014-12-25', '天津', '2232343332', 'tj@126.com', '374575884', '344677889', '0', '2', '', '1', '', '13', '8');
INSERT INTO `employee` VALUES ('NE000003', '新员工3T', '1', '1990-12-03', '天津', '23435464656543', 'tj@136.com', '2345332244', '34544422', '0', '2', '天津西青区，天津师范大学', '1', '300384', '9', '7');
INSERT INTO `employee` VALUES ('NE000004', '空信息测试', '1', null, '天津', '12039348473664823', '2342@ddd.com', '1332223444', '', '0', '0', '', '1', '', '1', '8');
INSERT INTO `employee` VALUES ('NE000006', '员工3', '0', '1980-03-06', '天津', '1204454883374632', 'yuangong@iss.com', '1890048555837', '394855573', '0', '1', '天津市西青区大学软件园', '1', '300384', '10', '7');
INSERT INTO `employee` VALUES ('NE000007', '新员工', '1', '1980-07-21', '北京', '120444955847232', 'xin@iss.com', '1332988847', '490384575', '0', '1', '天津市西青区大学院软件院', '1', '', '9', '2');
INSERT INTO `employee` VALUES ('OE000001', '外包1', '1', null, null, '358737384459584737', 'yuangong@iss.com', '1890048555837', '34544422', '0', '0', null, '1', null, '5', '9');
INSERT INTO `employee` VALUES ('OE000002', '外包2', '0', null, null, '283847585948373759', 'yuangong@iss.com', '1890048555837', '1210497519', '1', '0', null, '1', null, '4', '2');
INSERT INTO `employee` VALUES ('OE000003', '外包3', '0', '2018-07-04', '厦门', '1204454883374632', '123@136.com', '13163122551', '1210497519', '0', '0', '', '1', '', '3', '4');
INSERT INTO `employee` VALUES ('OE000004', '闫旭东', '1', null, null, '120445488337463', 'tj@136.com', '18900485558', '333311112', null, null, null, '1', null, '5', '7');
INSERT INTO `employee` VALUES ('SE000001', '实习生1', '1', '1989-02-01', null, '120103199001920039', '', '13163122551', '444444', '1', '2', null, '1', null, '12', '9');
INSERT INTO `employee` VALUES ('SE000002', '实习生2', '0', null, null, '120104199004058847', null, null, null, '0', '1', null, '1', null, '11', '8');
INSERT INTO `employee` VALUES ('SE000003', '念熙来', '1', '2018-07-10', '厦门', '11111222222223', '123@136.com', '13163122551', '1210497519', '0', '0', '天津工业大学', '1', '120110', '1', '1');
INSERT INTO `employee` VALUES ('SE000004', '实习生3', '0', null, null, '1204454883374632', 'ruangong@qq.com', '13163122551', '34544422', null, null, null, '1', null, '2', '2');
INSERT INTO `employee` VALUES ('WE00001', '大王', '0', '2018-07-04', '河南', '1111122222222', '123@qq.com', '1316312255', '1210497519', '1', '2', '天津工业大学', '1', '120110', '1', '1');
INSERT INTO `employee` VALUES ('WE00002', '陈宇豪', '1', null, null, '111122222236', '21365@qq.com', '12345698745', '1032546', null, null, null, '1', null, '2', '2');
INSERT INTO `employee` VALUES ('WE00003', '寨主', '0', null, null, '111122222236', '21365@qq.com', '12345698745', '1032546877', null, null, null, '1', null, '2', '2');

-- ----------------------------
-- Table structure for `job`
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titlecn` varchar(45) NOT NULL,
  `reportto` int(11) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '职员', '2', null);
INSERT INTO `job` VALUES ('2', '部门总监', '13', null);
INSERT INTO `job` VALUES ('3', '项目助理', '11', null);
INSERT INTO `job` VALUES ('4', '开发工程师', '11', null);
INSERT INTO `job` VALUES ('5', '助理开发工程师', '4', null);
INSERT INTO `job` VALUES ('6', '实习生', '4', null);
INSERT INTO `job` VALUES ('7', '高级开发工程师', '11', null);
INSERT INTO `job` VALUES ('8', '架构师', '11', null);
INSERT INTO `job` VALUES ('9', '测试工程师', '10', null);
INSERT INTO `job` VALUES ('10', '测试经理', '2', null);
INSERT INTO `job` VALUES ('11', '项目经理', '2', null);
INSERT INTO `job` VALUES ('12', '部门助理', '2', null);
INSERT INTO `job` VALUES ('13', '总经理', null, null);

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` varchar(45) NOT NULL,
  `empid` varchar(45) NOT NULL,
  `base` decimal(8,2) DEFAULT '0.00',
  `job` decimal(8,2) DEFAULT '0.00',
  `traffic` decimal(8,2) DEFAULT '0.00',
  `communicate` decimal(8,2) DEFAULT NULL,
  `trip` decimal(8,2) DEFAULT '0.00',
  `ednownent` decimal(8,2) DEFAULT '0.00',
  `medical` decimal(8,2) DEFAULT NULL,
  `unemployment` decimal(8,2) DEFAULT NULL,
  `pafhc` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`empid`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`empid`) REFERENCES `employee` (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('3fb8063e-befd-4c4e-8e77-ffa738ae9ea5', 'OE000002', '3500.00', '1500.00', '200.00', '50.00', '0.00', '1980.00', '80.00', '50.00', '2000.00');
INSERT INTO `payment` VALUES ('62dc9927-391b-45b0-ad6e-f2628f1b0102', 'NE000002', '100000.00', '2000.00', '5000.00', '100.00', '100.00', '5000.00', '200.00', '500.00', '6000.00');
INSERT INTO `payment` VALUES ('62dc9927-391b-45b0-ad6e-f2628f1b0108', 'NE000003', '50000.00', '200.00', '300.00', '500.00', '50.00', '3000.00', '500.00', '100.00', '4000.00');
INSERT INTO `payment` VALUES ('93deb778-468a-43c0-925c-9cdda571c273', 'OE000001', '1500.00', '1500.00', '300.00', '50.00', '50.00', '100.00', '100.00', '200.00', '300.00');
INSERT INTO `payment` VALUES ('a3346fac-753f-4ada-8e33-6ca9ee587671', 'JE000002', '4000.00', '5000.00', '500.00', '120.00', '80.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO `payment` VALUES ('e99e142a-6ae5-485a-a5f4-eb01abb091111', 'SE000003', '100.00', '100.00', '100.00', '100.00', '0.00', '100.00', '100.00', '100.00', '100.00');
INSERT INTO `payment` VALUES ('e99e142a-6ae5-485a-a5f4-eb01abb091112', 'SE000004', '0.00', '0.00', '0.00', null, '0.00', '0.00', null, null, '0.00');
INSERT INTO `payment` VALUES ('e99e142a-6ae5-485a-a5f4-eb01abb09127', 'JE000001', '5000.00', '1500.00', '300.00', '5000.00', '80.00', '2500.00', '100.00', '80.00', '5000.00');
INSERT INTO `payment` VALUES ('e99e142a-6ae5-485a-a5f4-eb01abb09128', 'SE000001', '0.00', '0.00', '0.00', null, '0.00', '0.00', null, null, '0.00');
INSERT INTO `payment` VALUES ('e99e142a-6ae5-485a-a5f4-eb01abb09129', 'SE000002', '0.00', '0.00', '0.00', null, '0.00', '0.00', null, null, '0.00');

-- ----------------------------
-- Table structure for `sysdictype`
-- ----------------------------
DROP TABLE IF EXISTS `sysdictype`;
CREATE TABLE `sysdictype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `remark` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysdictype
-- ----------------------------
INSERT INTO `sysdictype` VALUES ('1', '学历', null);
INSERT INTO `sysdictype` VALUES ('2', '国籍', null);
INSERT INTO `sysdictype` VALUES ('3', '民族', null);
INSERT INTO `sysdictype` VALUES ('4', '年级', null);
INSERT INTO `sysdictype` VALUES ('5', '付款类型', null);

-- ----------------------------
-- Table structure for `sysdicvalue`
-- ----------------------------
DROP TABLE IF EXISTS `sysdicvalue`;
CREATE TABLE `sysdicvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `value` varchar(45) NOT NULL,
  `display` varchar(45) NOT NULL,
  `remark` text,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`typeid`),
  KEY `value` (`value`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`typeid`) REFERENCES `sysdictype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysdicvalue
-- ----------------------------
INSERT INTO `sysdicvalue` VALUES ('2', '1', '1', '本科', null);
INSERT INTO `sysdicvalue` VALUES ('3', '1', '2', '硕士', null);
INSERT INTO `sysdicvalue` VALUES ('4', '1', '3', '博士', null);
INSERT INTO `sysdicvalue` VALUES ('5', '1', '4', '其他', null);
INSERT INTO `sysdicvalue` VALUES ('6', '4', '0', '其他', null);
INSERT INTO `sysdicvalue` VALUES ('7', '4', '1', '大一', null);
INSERT INTO `sysdicvalue` VALUES ('8', '4', '2', '大二', null);
INSERT INTO `sysdicvalue` VALUES ('9', '4', '3', '大三', null);
INSERT INTO `sysdicvalue` VALUES ('10', '4', '4', '大四', '');
INSERT INTO `sysdicvalue` VALUES ('11', '2', '0', '中国', null);
INSERT INTO `sysdicvalue` VALUES ('12', '2', '1', '美国', null);
INSERT INTO `sysdicvalue` VALUES ('13', '2', '2', '德国', null);
INSERT INTO `sysdicvalue` VALUES ('14', '2', '3', '日本', null);
INSERT INTO `sysdicvalue` VALUES ('15', '2', '4', '韩国', null);
INSERT INTO `sysdicvalue` VALUES ('16', '2', '5', '英国', null);
INSERT INTO `sysdicvalue` VALUES ('17', '2', '6', '俄罗斯', null);
INSERT INTO `sysdicvalue` VALUES ('18', '2', '7', '印度', null);
INSERT INTO `sysdicvalue` VALUES ('19', '3', '0', '汉', null);
INSERT INTO `sysdicvalue` VALUES ('20', '3', '1', '回', null);
INSERT INTO `sysdicvalue` VALUES ('21', '3', '2', '满', null);
INSERT INTO `sysdicvalue` VALUES ('22', '3', '3', '其他', null);
INSERT INTO `sysdicvalue` VALUES ('23', '2', '8', '其他', null);
INSERT INTO `sysdicvalue` VALUES ('24', '5', '1', '日薪', null);
INSERT INTO `sysdicvalue` VALUES ('26', '5', '2', '月薪', null);

-- ----------------------------
-- Table structure for `sysuser`
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `displayname` varchar(45) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', 'myphoto\\208f0cbd-8a50-4c05-86fa-b33913f5e400.jpg', '系统管理员');
INSERT INTO `sysuser` VALUES ('2', 'manager', 'e10adc3949ba59abbe56e057f20f883e', '经理', null, 'HR部门经理');
INSERT INTO `sysuser` VALUES ('3', 'jessica', 'e10adc3949ba59abbe56e057f20f883e', '新入职职工', null, 'HR部门员工');
INSERT INTO `sysuser` VALUES ('6', 'test', 'e10adc3949ba59abbe56e057f20f883e', '测试用户', null, '测试信息');
INSERT INTO `sysuser` VALUES ('7', 'newUser', 'e10adc3949ba59abbe56e057f20f883e', '新用户', null, '用户信息');
INSERT INTO `sysuser` VALUES ('8', 'demo', 'e10adc3949ba59abbe56e057f20f883e', '测试用户', null, '测试信息');

-- ----------------------------
-- View structure for `view1`
-- ----------------------------
DROP VIEW IF EXISTS `view1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view1` AS select `employee`.`empno` AS `empno`,`employee`.`sex` AS `sex`,`employee`.`namecn` AS `namecn`,`job`.`titlecn` AS `titlecn`,`payment`.`empid` AS `empid`,`payment`.`base` AS `base`,`payment`.`job` AS `job`,`payment`.`traffic` AS `traffic`,`payment`.`communicate` AS `communicate`,`payment`.`ednownent` AS `ednownent`,`payment`.`medical` AS `medical`,`payment`.`unemployment` AS `unemployment`,`payment`.`pafhc` AS `pafhc`,`department`.`deptName` AS `deptName`,`payment`.`trip` AS `trip` from ((((`job` join `employee` on((`employee`.`jobid` = `job`.`id`))) join `payment` on((`payment`.`empid` = `employee`.`empno`))) join `department` on((`employee`.`deptid` = `department`.`id`))) join `emp_normal` on((`emp_normal`.`empno` = `employee`.`empno`)));

-- ----------------------------
-- View structure for `view10`
-- ----------------------------
DROP VIEW IF EXISTS `view10`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view10` AS select `employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn`,`employee`.`sex` AS `sex`,`employee`.`personid` AS `personid`,`employee`.`email` AS `email`,`employee`.`tel` AS `tel`,`employee`.`qq` AS `qq`,`emp_jobbing`.`jointype` AS `jointype`,`emp_jobbing`.`joindate` AS `joindate` from (`emp_jobbing` join `employee` on((`emp_jobbing`.`empno` = `employee`.`empno`)));

-- ----------------------------
-- View structure for `view2`
-- ----------------------------
DROP VIEW IF EXISTS `view2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view2` AS select `employee`.`deptid` AS `deptid`,`department`.`deptName` AS `deptName`,`employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn` from (`employee` join `department` on((`employee`.`deptid` = `department`.`id`)));

-- ----------------------------
-- View structure for `view3`
-- ----------------------------
DROP VIEW IF EXISTS `view3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view3` AS select `job`.`titlecn` AS `titlecn`,`employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn`,`job`.`id` AS `id` from (`job` join `employee` on((`employee`.`jobid` = `job`.`id`)));

-- ----------------------------
-- View structure for `view4`
-- ----------------------------
DROP VIEW IF EXISTS `view4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view4` AS select `employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn`,`employee`.`sex` AS `sex`,`department`.`deptName` AS `deptName`,`job`.`titlecn` AS `titlecn`,`payment`.`empid` AS `empid`,`payment`.`base` AS `base`,`payment`.`job` AS `job`,`payment`.`traffic` AS `traffic`,`payment`.`communicate` AS `communicate`,`payment`.`ednownent` AS `ednownent`,`payment`.`medical` AS `medical`,`payment`.`unemployment` AS `unemployment`,`payment`.`pafhc` AS `pafhc`,`payment`.`trip` AS `trip` from ((((`employee` join `department` on((`employee`.`deptid` = `department`.`id`))) join `job` on((`employee`.`jobid` = `job`.`id`))) join `emp_student` on((`emp_student`.`empno` = `employee`.`empno`))) join `payment` on((`payment`.`empid` = `employee`.`empno`)));

-- ----------------------------
-- View structure for `view5`
-- ----------------------------
DROP VIEW IF EXISTS `view5`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view5` AS select `payment`.`empid` AS `empid`,`payment`.`base` AS `base`,`payment`.`job` AS `job`,`payment`.`traffic` AS `traffic`,`payment`.`communicate` AS `communicate`,`payment`.`trip` AS `trip`,`payment`.`ednownent` AS `ednownent`,`payment`.`medical` AS `medical`,`payment`.`unemployment` AS `unemployment`,`payment`.`pafhc` AS `pafhc`,`employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn`,`employee`.`sex` AS `sex`,`job`.`titlecn` AS `titlecn`,`department`.`deptName` AS `deptName` from ((((`employee` join `emp_outer` on((`emp_outer`.`empno` = `employee`.`empno`))) join `department` on((`employee`.`deptid` = `department`.`id`))) join `job` on((`employee`.`jobid` = `job`.`id`))) join `payment` on((`payment`.`empid` = `employee`.`empno`)));

-- ----------------------------
-- View structure for `view6`
-- ----------------------------
DROP VIEW IF EXISTS `view6`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view6` AS select `employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn`,`employee`.`sex` AS `sex`,`employee`.`personid` AS `personid`,`employee`.`email` AS `email`,`employee`.`tel` AS `tel`,`emp_outer`.`sendbor` AS `sendbor`,`employee`.`qq` AS `qq` from (`emp_outer` join `employee` on((`emp_outer`.`empno` = `employee`.`empno`)));

-- ----------------------------
-- View structure for `view7`
-- ----------------------------
DROP VIEW IF EXISTS `view7`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view7` AS select `sysdicvalue`.`typeid` AS `typeid`,`sysdicvalue`.`value` AS `value`,`sysdicvalue`.`display` AS `display`,`employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn`,`employee`.`sex` AS `sex`,`employee`.`personid` AS `personid`,`employee`.`email` AS `email`,`employee`.`tel` AS `tel`,`employee`.`qq` AS `qq`,`emp_normal`.`bank` AS `bank`,`emp_normal`.`eduHistory` AS `eduHistory` from ((`employee` join `emp_normal` on((`emp_normal`.`empno` = `employee`.`empno`))) join `sysdicvalue`);

-- ----------------------------
-- View structure for `view8`
-- ----------------------------
DROP VIEW IF EXISTS `view8`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view8` AS select `sysdicvalue`.`typeid` AS `typeid`,`sysdicvalue`.`value` AS `value`,`sysdicvalue`.`display` AS `display`,`employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn`,`employee`.`sex` AS `sex`,`employee`.`email` AS `email`,`employee`.`personid` AS `personid`,`employee`.`tel` AS `tel`,`employee`.`qq` AS `qq`,`emp_student`.`school` AS `school`,`emp_student`.`level` AS `level` from ((`employee` join `emp_student` on((`emp_student`.`empno` = `employee`.`empno`))) join `sysdicvalue`);

-- ----------------------------
-- View structure for `view9`
-- ----------------------------
DROP VIEW IF EXISTS `view9`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view9` AS select `department`.`deptName` AS `deptName`,`job`.`titlecn` AS `titlecn`,`employee`.`empno` AS `empno`,`employee`.`namecn` AS `namecn`,`employee`.`sex` AS `sex`,`payment`.`empid` AS `empid`,`payment`.`base` AS `base`,`payment`.`job` AS `job`,`payment`.`traffic` AS `traffic`,`payment`.`communicate` AS `communicate`,`payment`.`trip` AS `trip`,`payment`.`ednownent` AS `ednownent`,`payment`.`medical` AS `medical`,`payment`.`unemployment` AS `unemployment`,`payment`.`pafhc` AS `pafhc` from ((((`department` join `employee` on((`employee`.`deptid` = `department`.`id`))) join `job` on((`employee`.`jobid` = `job`.`id`))) join `payment` on((`payment`.`empid` = `employee`.`empno`))) join `emp_jobbing` on((`emp_jobbing`.`empno` = `employee`.`empno`)));
