-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2016 at 12:41 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_umrah`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_dokumen`
--

CREATE TABLE IF NOT EXISTS `data_dokumen` (
  `ID_DATA_DOKUMEN` int(11) NOT NULL,
  `DATA_DOKUMEN` varchar(500) DEFAULT NULL,
  `KETERANGAN` varchar(50) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dokumen`
--

INSERT INTO `data_dokumen` (`ID_DATA_DOKUMEN`, `DATA_DOKUMEN`, `KETERANGAN`, `STATUS`) VALUES
(1, 'ktp', NULL, 0),
(2, 'd', NULL, 0),
(3, 'dfs', NULL, 0),
(4, 'dfghjk', 'dfghjk', 1),
(5, 'dfjksdh', 'jkshdkfhlsk', 1),
(6, 'xcvbnm', 'cvbnm', 1),
(7, 'fksjdfkl  jkl', 'jskdjflk', 1),
(8, 'asek', 'asek', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggan`
--

CREATE TABLE IF NOT EXISTS `data_pelanggan` (
  `ID_DATA_PEL` int(11) NOT NULL,
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
  `STATUS` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pelanggan`
--

INSERT INTO `data_pelanggan` (`ID_DATA_PEL`, `PEL_NAMA`, `PEL_ALAMAT`, `PEL_IBU_KANDUNG`, `PEL_TEMPAT_LAHIR`, `PEL_TANGGAL_LAHIR`, `PEL_JK`, `PEL_PEKERJAAN`, `PEL_NO_PASSPORT`, `PEL_FOTO`, `KOTA_ID`, `KECAMATAN_ID`, `PROPINSI_ID`, `KETERANGAN`, `STATUS`) VALUES
(7, 'bulyan', 'sumenep', 'abdullah', 'sumenep', '1993-01-11', 'l', 'prohammer', '12345678', NULL, NULL, NULL, NULL, NULL, 1),
(8, 'ali', 'dasdasd', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(134, 'sdfghjkl;''', '', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1),
(135, 'sdfghjkl;''', '', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0),
(136, 'sdfghjkl;''', '', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0),
(137, 'sdfghjkl;''', '', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 0),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(139, 'asddasdasdas', 'asdasd', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1),
(140, 'asddasdasdas', 'asdasd', 'asdasdasd', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(142, 'dfghjk', 'sfdss', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1),
(143, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(144, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(145, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(147, 'aaa', '', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1),
(148, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(149, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(150, 'aaa', 'sdfsdfs', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1),
(151, 'aaa', 'sdfsdf', '', '', '1970-01-01', NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1),
(152, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
  `ID_DOKUMEN` int(11) NOT NULL,
  `ID_DATA_DOKUMEN` int(11) DEFAULT NULL,
  `ID_PELANGGAN` int(11) DEFAULT NULL,
  `TGL_PENGUMPULAN` date DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kurs`
--

CREATE TABLE IF NOT EXISTS `kurs` (
  `ID_KURS` int(11) NOT NULL,
  `TGL` date DEFAULT NULL,
  `NILAI_KURS` int(11) DEFAULT NULL,
  `KURS_ASAL` varchar(3) DEFAULT NULL,
  `KURS_TUJUAN` varchar(3) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `ID_PELANGGAN` int(11) NOT NULL,
  `ID_DATA_PEL` int(11) DEFAULT NULL,
  `ID_SPONSOR` int(11) DEFAULT NULL,
  `ID_PERIODE` int(11) DEFAULT NULL,
  `JUMLAH_CICILAN` int(11) DEFAULT NULL,
  `TOTAL_BAYAR` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ID_PELANGGAN`, `ID_DATA_PEL`, `ID_SPONSOR`, `ID_PERIODE`, `JUMLAH_CICILAN`, `TOTAL_BAYAR`) VALUES
(3, 7, 1, NULL, NULL, NULL),
(4, 8, 1, NULL, NULL, NULL),
(110, 136, NULL, NULL, NULL, NULL),
(111, 137, NULL, NULL, NULL, NULL),
(112, 139, NULL, 4, NULL, NULL),
(113, 140, NULL, NULL, NULL, NULL),
(114, 145, NULL, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `ID_PEMBAYARAN` int(11) NOT NULL,
  `ID_PELANGGAN` int(11) DEFAULT NULL,
  `NO_BUKTI` varchar(10) DEFAULT NULL,
  `TGL` date DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `MATA_UANG` varchar(3) DEFAULT NULL,
  `KETERANGAN` varchar(50) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`ID_PEMBAYARAN`, `ID_PELANGGAN`, `NO_BUKTI`, `TGL`, `JUMLAH`, `MATA_UANG`, `KETERANGAN`, `STATUS`) VALUES
(1, 4, NULL, '0000-00-00', 250, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE IF NOT EXISTS `periode` (
  `ID_PERIODE` int(11) NOT NULL,
  `NAMA` varchar(20) DEFAULT NULL,
  `TGL_BRNGKT` date DEFAULT NULL,
  `TGL_PULANG` date DEFAULT NULL,
  `KUOTA` int(11) DEFAULT NULL,
  `PENUH` int(11) DEFAULT '0',
  `STATUS` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`ID_PERIODE`, `NAMA`, `TGL_BRNGKT`, `TGL_PULANG`, `KUOTA`, `PENUH`, `STATUS`) VALUES
(3, 'Periode 1', '2016-04-27', '2016-04-27', 208, 0, 1),
(4, 'Periode 4', '2016-04-28', '2016-06-09', 203, 0, 1),
(5, NULL, NULL, NULL, NULL, 0, 0),
(6, '66876', '1970-01-01', '1970-01-01', 67, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `privilage`
--

CREATE TABLE IF NOT EXISTS `privilage` (
  `ID_PRIVILLAGE` int(11) NOT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `KETERANGAN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE IF NOT EXISTS `sponsor` (
  `ID_SPONSOR` int(11) NOT NULL,
  `NAMA` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(225) DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`ID_SPONSOR`, `NAMA`, `ALAMAT`, `STATUS`) VALUES
(1, 'BS', 'surabaya', 1),
(2, NULL, NULL, NULL),
(3, NULL, NULL, 0),
(4, 'ghjgh', 'alamat\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID_USER` int(11) NOT NULL,
  `ID_PRIVILLAGE` int(11) DEFAULT NULL,
  `USERNAME` varchar(250) DEFAULT NULL,
  `PASSWORD` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_periode`
--
CREATE TABLE IF NOT EXISTS `v_periode` (
`ID_PERIODE` int(11)
,`NAMA` varchar(20)
,`TGL_BRNGKT` date
,`TGL_PULANG` date
,`KUOTA` int(11)
,`KUOTA_TERPAKAI` bigint(21)
,`STATUS` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `v_periode`
--
DROP TABLE IF EXISTS `v_periode`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_periode` AS select `periode`.`ID_PERIODE` AS `ID_PERIODE`,`periode`.`NAMA` AS `NAMA`,`periode`.`TGL_BRNGKT` AS `TGL_BRNGKT`,`periode`.`TGL_PULANG` AS `TGL_PULANG`,`periode`.`KUOTA` AS `KUOTA`,(select count(0) from `pelanggan` where (`pelanggan`.`ID_PERIODE` = `periode`.`ID_PERIODE`)) AS `KUOTA_TERPAKAI`,`periode`.`STATUS` AS `STATUS` from `periode`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_dokumen`
--
ALTER TABLE `data_dokumen`
  ADD PRIMARY KEY (`ID_DATA_DOKUMEN`);

--
-- Indexes for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  ADD PRIMARY KEY (`ID_DATA_PEL`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`ID_DOKUMEN`),
  ADD KEY `FK_RELATIONSHIP_5` (`ID_PELANGGAN`),
  ADD KEY `FK_RELATIONSHIP_6` (`ID_DATA_DOKUMEN`);

--
-- Indexes for table `kurs`
--
ALTER TABLE `kurs`
  ADD PRIMARY KEY (`ID_KURS`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_PELANGGAN`),
  ADD KEY `FK_RELATIONSHIP_3` (`ID_DATA_PEL`),
  ADD KEY `FK_RELATIONSHIP_7` (`ID_SPONSOR`),
  ADD KEY `ID_PERIODE` (`ID_PERIODE`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`ID_PEMBAYARAN`),
  ADD KEY `FK_RELATIONSHIP_8` (`ID_PELANGGAN`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`ID_PERIODE`);

--
-- Indexes for table `privilage`
--
ALTER TABLE `privilage`
  ADD PRIMARY KEY (`ID_PRIVILLAGE`),
  ADD KEY `FK_RELATIONSHIP_2` (`ID_USER`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`ID_SPONSOR`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_USER`),
  ADD KEY `FK_RELATIONSHIP_1` (`ID_PRIVILLAGE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_dokumen`
--
ALTER TABLE `data_dokumen`
  MODIFY `ID_DATA_DOKUMEN` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  MODIFY `ID_DATA_PEL` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `ID_DOKUMEN` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kurs`
--
ALTER TABLE `kurs`
  MODIFY `ID_KURS` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `ID_PELANGGAN` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `ID_PEMBAYARAN` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `ID_PERIODE` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `privilage`
--
ALTER TABLE `privilage`
  MODIFY `ID_PRIVILLAGE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `ID_SPONSOR` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`ID_PELANGGAN`) REFERENCES `pelanggan` (`ID_PELANGGAN`),
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`ID_DATA_DOKUMEN`) REFERENCES `data_dokumen` (`ID_DATA_DOKUMEN`);

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`ID_DATA_PEL`) REFERENCES `data_pelanggan` (`ID_DATA_PEL`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`ID_SPONSOR`) REFERENCES `sponsor` (`ID_SPONSOR`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`ID_PELANGGAN`) REFERENCES `pelanggan` (`ID_PELANGGAN`);

--
-- Constraints for table `privilage`
--
ALTER TABLE `privilage`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`ID_PRIVILLAGE`) REFERENCES `privilage` (`ID_PRIVILLAGE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
