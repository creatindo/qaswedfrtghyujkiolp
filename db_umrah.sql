/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : db_umrah

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-04-12 09:06:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `data_dokumen`;
CREATE TABLE `data_dokumen` (
  `ID_DATA_DOKUMEN` int(11) NOT NULL AUTO_INCREMENT,
  `DATA_DOKUMEN` varchar(500) DEFAULT NULL,
  `KETERANGAN` varchar(50) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_DATA_DOKUMEN`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_dokumen
-- ----------------------------
INSERT INTO `data_dokumen` VALUES ('1', 'ktp', null, '0');
INSERT INTO `data_dokumen` VALUES ('2', 'd', null, '0');
INSERT INTO `data_dokumen` VALUES ('3', 'dfs', null, '0');
INSERT INTO `data_dokumen` VALUES ('4', 'dfghjk', 'dfghjk', '1');
INSERT INTO `data_dokumen` VALUES ('5', 'dfjksdh', 'jkshdkfhlsk', '1');
INSERT INTO `data_dokumen` VALUES ('6', 'xcvbnm', 'cvbnm', '1');
INSERT INTO `data_dokumen` VALUES ('7', 'fksjdfkl  jkl', 'jskdjflk', '1');
INSERT INTO `data_dokumen` VALUES ('8', 'asek', 'asek', '1');

-- ----------------------------
-- Table structure for data_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `data_pelanggan`;
CREATE TABLE `data_pelanggan` (
  `ID_DATA_PEL` int(11) NOT NULL AUTO_INCREMENT,
  `PEL_NAMA` varchar(50) DEFAULT NULL,
  `PEL_ALAMAT` varchar(255) DEFAULT NULL,
  `PEL_IBU_KANDUNG` varchar(100) DEFAULT NULL,
  `PEL_TEMPAT_LAHIR` varchar(20) DEFAULT NULL,
  `PEL_TANGGAL_LAHIR` date DEFAULT NULL,
  `PEL_JK` varchar(1) DEFAULT NULL,
  `PEL_PEKERJAAN` varchar(100) DEFAULT NULL,
  `PEL_NO_PASSPORT` varchar(100) DEFAULT NULL,
  `PEL_FOTO` varchar(255) DEFAULT NULL,
  `KOTA_ID` int(11) DEFAULT NULL,
  `KECAMATAN_ID` int(11) DEFAULT NULL,
  `PROPINSI_ID` int(11) DEFAULT NULL,
  `KETERANGAN` varchar(50) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_DATA_PEL`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_pelanggan
-- ----------------------------
INSERT INTO `data_pelanggan` VALUES ('7', 'bulyan', 'sumenep', 'abdullah', 'sumenep', '1993-01-11', 'l', 'prohammer', '12345678', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('8', 'ali', 'dasdasd', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('133', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('134', 'sdfghjkl;\'', '', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('135', 'sdfghjkl;\'', '', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('136', 'sdfghjkl;\'', '', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('137', 'sdfghjkl;\'', '', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('138', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('139', 'asddasdasdas', 'asdasd', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('140', 'asddasdasdas', 'asdasd', 'asdasdasd', '', '1970-01-01', null, '', '', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('141', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('142', 'dfghjk', 'sfdss', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('143', 'aaa', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('144', 'aaa', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('145', 'aaa', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('146', 'aaa', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('147', 'aaa', '', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('148', 'aaa', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('149', 'aaa', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('150', 'aaa', 'sdfsdfs', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('151', 'aaa', 'sdfsdf', '', '', '1970-01-01', null, '', '', null, null, null, null, null, '1');
INSERT INTO `data_pelanggan` VALUES ('152', 'aaa', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `data_pelanggan` VALUES ('153', 'aaa', null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for dokumen
-- ----------------------------
DROP TABLE IF EXISTS `dokumen`;
CREATE TABLE `dokumen` (
  `ID_DOKUMEN` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DATA_DOKUMEN` int(11) DEFAULT NULL,
  `ID_PELANGGAN` int(11) DEFAULT NULL,
  `TGL_PENGUMPULAN` date DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_DOKUMEN`),
  KEY `FK_RELATIONSHIP_6` (`ID_DATA_DOKUMEN`),
  KEY `ID_PELANGGAN` (`ID_PELANGGAN`),
  CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_DATA_DOKUMEN`) REFERENCES `data_dokumen` (`ID_DATA_DOKUMEN`),
  CONSTRAINT `dokumen_ibfk_1` FOREIGN KEY (`ID_PELANGGAN`) REFERENCES `pelanggan` (`ID_DATA_PEL`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dokumen
-- ----------------------------
INSERT INTO `dokumen` VALUES ('8', '5', '147', '2016-04-09', null, '1');
INSERT INTO `dokumen` VALUES ('9', '4', '147', '2016-04-09', null, '1');
INSERT INTO `dokumen` VALUES ('10', '7', '147', '2016-04-09', null, '1');
INSERT INTO `dokumen` VALUES ('12', '8', '147', '2016-04-09', null, '0');
INSERT INTO `dokumen` VALUES ('15', '6', '147', '2016-04-09', null, '0');

-- ----------------------------
-- Table structure for kurs
-- ----------------------------
DROP TABLE IF EXISTS `kurs`;
CREATE TABLE `kurs` (
  `ID_KURS` int(11) NOT NULL AUTO_INCREMENT,
  `TGL` date DEFAULT NULL,
  `NILAI_KURS` int(11) DEFAULT NULL,
  `KURS_ASAL` varchar(3) DEFAULT NULL,
  `KURS_TUJUAN` varchar(3) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_KURS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kurs
-- ----------------------------

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `ID_PELANGGAN` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DATA_PEL` int(11) DEFAULT NULL,
  `ID_SPONSOR` int(11) DEFAULT NULL,
  `ID_PERIODE` int(11) DEFAULT NULL,
  `JUMLAH_CICILAN` int(11) DEFAULT NULL,
  `TOTAL_BAYAR` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PELANGGAN`),
  KEY `FK_RELATIONSHIP_3` (`ID_DATA_PEL`),
  KEY `FK_RELATIONSHIP_7` (`ID_SPONSOR`),
  KEY `ID_PERIODE` (`ID_PERIODE`),
  CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_DATA_PEL`) REFERENCES `data_pelanggan` (`ID_DATA_PEL`),
  CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_SPONSOR`) REFERENCES `sponsor` (`ID_SPONSOR`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES ('3', '7', '1', '3', null, null);
INSERT INTO `pelanggan` VALUES ('4', '8', '1', '3', null, null);
INSERT INTO `pelanggan` VALUES ('110', '136', null, '3', null, null);
INSERT INTO `pelanggan` VALUES ('111', '137', null, '5', null, null);
INSERT INTO `pelanggan` VALUES ('112', '139', null, '4', null, null);
INSERT INTO `pelanggan` VALUES ('113', '140', null, '5', null, null);
INSERT INTO `pelanggan` VALUES ('114', '145', null, '4', null, null);
INSERT INTO `pelanggan` VALUES ('115', '150', null, '6', null, null);
INSERT INTO `pelanggan` VALUES ('119', '147', null, '5', '7', '4124141');
INSERT INTO `pelanggan` VALUES ('122', '153', null, '6', null, null);

-- ----------------------------
-- Table structure for pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran` (
  `ID_PEMBAYARAN` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PELANGGAN` int(11) DEFAULT NULL,
  `NO_BUKTI` varchar(10) DEFAULT NULL,
  `TGL` date DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `MATA_UANG` varchar(3) DEFAULT NULL,
  `KETERANGAN` varchar(50) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PEMBAYARAN`),
  KEY `pembayaran_ibfk_1` (`ID_PELANGGAN`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pembayaran
-- ----------------------------
INSERT INTO `pembayaran` VALUES ('12', '147', null, null, '2000', null, null, '1');
INSERT INTO `pembayaran` VALUES ('13', '147', null, null, '3000', null, null, '1');
INSERT INTO `pembayaran` VALUES ('14', '147', null, null, '4000', null, null, '1');
INSERT INTO `pembayaran` VALUES ('15', '147', null, null, '5', null, null, '1');
INSERT INTO `pembayaran` VALUES ('16', '147', null, null, '5', null, null, '1');
INSERT INTO `pembayaran` VALUES ('17', '147', null, null, '5', null, null, '1');
INSERT INTO `pembayaran` VALUES ('18', '147', null, null, '5', null, null, '1');
INSERT INTO `pembayaran` VALUES ('19', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('20', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('21', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('22', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('23', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('24', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('25', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('26', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('27', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('28', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('29', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('30', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('31', '147', null, null, null, null, null, '0');
INSERT INTO `pembayaran` VALUES ('32', '147', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for periode
-- ----------------------------
DROP TABLE IF EXISTS `periode`;
CREATE TABLE `periode` (
  `ID_PERIODE` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(20) DEFAULT NULL,
  `TGL_BRNGKT` date DEFAULT NULL,
  `TGL_PULANG` date DEFAULT NULL,
  `KUOTA` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PERIODE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of periode
-- ----------------------------
INSERT INTO `periode` VALUES ('3', 'Periode 1', '2016-04-27', '2016-04-27', '3', '1');
INSERT INTO `periode` VALUES ('4', 'Periode 4', '2016-04-28', '2016-06-09', '3', '1');
INSERT INTO `periode` VALUES ('5', 'sdf', null, null, '3', '1');
INSERT INTO `periode` VALUES ('6', '66876', '1970-01-01', '1970-01-01', '3', '1');

-- ----------------------------
-- Table structure for privilage
-- ----------------------------
DROP TABLE IF EXISTS `privilage`;
CREATE TABLE `privilage` (
  `ID_PRIVILLAGE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_USER` int(11) DEFAULT NULL,
  `KETERANGAN` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_PRIVILLAGE`),
  KEY `FK_RELATIONSHIP_2` (`ID_USER`),
  CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of privilage
-- ----------------------------

-- ----------------------------
-- Table structure for sponsor
-- ----------------------------
DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE `sponsor` (
  `ID_SPONSOR` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(225) DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID_SPONSOR`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sponsor
-- ----------------------------
INSERT INTO `sponsor` VALUES ('1', 'BS', 'surabaya', '1');
INSERT INTO `sponsor` VALUES ('2', null, null, null);
INSERT INTO `sponsor` VALUES ('3', null, null, '0');
INSERT INTO `sponsor` VALUES ('4', 'ghjgh', 'alamat\r\n', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PRIVILLAGE` int(11) DEFAULT NULL,
  `USERNAME` varchar(250) DEFAULT NULL,
  `PASSWORD` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`),
  KEY `FK_RELATIONSHIP_1` (`ID_PRIVILLAGE`),
  CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_PRIVILLAGE`) REFERENCES `privilage` (`ID_PRIVILLAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- View structure for v_pembayaran
-- ----------------------------
DROP VIEW IF EXISTS `v_pembayaran`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_pembayaran` AS SELECT
	pelanggan.ID_PELANGGAN,
	pelanggan.ID_DATA_PEL,
	data_pelanggan.PEL_NAMA,
	pelanggan.JUMLAH_CICILAN AS TOTAL_CICILAN,
	pelanggan.TOTAL_BAYAR,
	(
		SELECT
			COUNT(*)
		FROM
			pembayaran
		WHERE
			pelanggan.ID_DATA_PEL = pembayaran.ID_PELANGGAN
		AND STATUS = 1
	) AS JUMLAH_CICILAN,
	(
		SELECT
			SUM(JUMLAH)
		FROM
			pembayaran
		WHERE
			pelanggan.ID_DATA_PEL = pembayaran.ID_PELANGGAN
		AND STATUS = 1
	) AS JUMLAH_BAYAR
FROM
	pelanggan
LEFT JOIN data_pelanggan ON pelanggan.ID_DATA_PEL = data_pelanggan.ID_DATA_PEL ;

-- ----------------------------
-- View structure for v_periode
-- ----------------------------
DROP VIEW IF EXISTS `v_periode`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_periode` AS SELECT
	ID_PERIODE,
	NAMA,
	TGL_BRNGKT,
	TGL_PULANG,
	KUOTA,
	(
		SELECT
			COUNT(*)
		FROM
			pelanggan
		WHERE
			pelanggan.ID_PERIODE = periode.ID_PERIODE
	) AS KUOTA_TERPAKAI,
	`STATUS`
FROM
	periode ;
