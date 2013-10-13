-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 14, 2013 at 12:43 AM
-- Server version: 10.0.4-MariaDB-1~raring-log
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AASA`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `sandi` varchar(300) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `no_handphone` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `activation_code` varchar(200) NOT NULL,
  `is_activated` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `email`, `sandi`, `nama`, `no_handphone`, `alamat`, `activation_code`, `is_activated`) VALUES
(0, 'dummy@dummy.com', 'dummybanget', 'dummy', '1371823', 'dummy', '', 0),
(19, 'fernandojordan.92@gmail.com', '541e984103d4099bb8383050c56d511e733d85e6ab889a1c363ced651762eee0', 'Jordan Fernando', '+6285664387055', 'Jalan Sultan Taha No. 125 Jambi', '66cc7b3b-d372-499d-8b4c-748add666cee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bagasi`
--

CREATE TABLE IF NOT EXISTS `bagasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bagasi` varchar(200) NOT NULL,
  `penumpang_id` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PENUMPANG` (`penumpang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bandara`
--

CREATE TABLE IF NOT EXISTS `bandara` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `daerah` varchar(100) NOT NULL,
  `biaya` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bandara`
--

INSERT INTO `bandara` (`id`, `nama`, `kode`, `daerah`, `biaya`) VALUES
(1, 'Jakarta', 'CGK', 'Jawa', 1000),
(2, 'Jambi', 'DJB', 'Sumatera', 1000),
(3, 'Makassar', 'UPG', 'Sulawesi', 1000),
(4, 'Bandung', 'BDO', 'Jawa', 1000),
(5, 'Medan', 'KNO', 'Sumatera', 1000),
(6, 'Padang', 'PDG', 'Sumatera', 1000),
(7, 'Semarang', 'SRG', 'Jawa', 1000),
(8, 'Solo', 'SOC', 'Jawa', 1000),
(9, 'Balikpapan', 'BPN', 'Kalimantan', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `log_login`
--

CREATE TABLE IF NOT EXISTS `log_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anggota_id` int(11) NOT NULL,
  `timestamp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anggota_id` (`anggota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `log_login`
--

INSERT INTO `log_login` (`id`, `anggota_id`, `timestamp`) VALUES
(5, 19, 'Sun Oct 13 20:01:44 WIT 2013'),
(6, 19, 'Mon Oct 14 00:38:05 WIT 2013');

-- --------------------------------------------------------

--
-- Table structure for table `log_pencarian`
--

CREATE TABLE IF NOT EXISTS `log_pencarian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `tanggal_berangkat` varchar(100) NOT NULL,
  `tanggal_kembali` varchar(100) NOT NULL,
  `jumlah_penumpang` int(11) NOT NULL,
  `sekali_jalan` int(11) NOT NULL,
  `timestamp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `log_pencarian`
--

INSERT INTO `log_pencarian` (`id`, `asal`, `tujuan`, `tanggal_berangkat`, `tanggal_kembali`, `jumlah_penumpang`, `sekali_jalan`, `timestamp`) VALUES
(1, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 0, 0, 'Tue Oct 01 09:32:05 WIT 2013'),
(2, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 0, 0, 'Tue Oct 01 09:32:54 WIT 2013'),
(3, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 0, 0, 'Tue Oct 01 09:34:08 WIT 2013'),
(4, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 0, 0, 'Tue Oct 01 09:34:18 WIT 2013'),
(5, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 0, 0, 'Tue Oct 01 09:35:21 WIT 2013'),
(6, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:11:42 WIT 2013'),
(7, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:12:56 WIT 2013'),
(8, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:19:54 WIT 2013'),
(9, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:21:29 WIT 2013'),
(10, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:21:56 WIT 2013'),
(11, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:22:12 WIT 2013'),
(12, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:22:28 WIT 2013'),
(13, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:22:41 WIT 2013'),
(14, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:23:35 WIT 2013'),
(15, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:23:55 WIT 2013'),
(16, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:24:14 WIT 2013'),
(17, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:24:21 WIT 2013'),
(18, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:24:29 WIT 2013'),
(19, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:24:42 WIT 2013'),
(20, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:24:58 WIT 2013'),
(21, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:25:04 WIT 2013'),
(22, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:25:09 WIT 2013'),
(23, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:25:16 WIT 2013'),
(24, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:25:23 WIT 2013'),
(25, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:30:46 WIT 2013'),
(26, 'Jakarta (CGK)', 'Jambi (DJB)', '10/10/2013', '', 0, 0, 'Tue Oct 01 16:31:02 WIT 2013'),
(27, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:34:20 WIT 2013'),
(28, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:36:02 WIT 2013'),
(29, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:39:51 WIT 2013'),
(30, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:41:13 WIT 2013'),
(31, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Tue Oct 01 16:42:28 WIT 2013'),
(32, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 0, 0, 'Thu Oct 03 14:26:54 WIT 2013'),
(33, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/16/2013', 0, 0, 'Thu Oct 03 14:53:49 WIT 2013'),
(34, 'Jakarta (CGK)', 'Jambi (DJB)', '10/16/2013', '', 0, 0, 'Thu Oct 03 14:55:14 WIT 2013'),
(35, 'Jakarta (CGK)', 'Jambi (DJB)', '10/14/2013', '10/16/2013', 0, 0, 'Thu Oct 03 14:55:25 WIT 2013'),
(36, 'Jakarta (CGK)', 'Jambi (DJB)', '10/15/2013', '10/17/2013', 0, 0, 'Thu Oct 03 14:56:22 WIT 2013'),
(37, 'Jakarta (CGK)', 'Jambi (DJB)', '10/15/2013', '10/23/2013', 0, 0, 'Thu Oct 03 14:58:27 WIT 2013'),
(38, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/23/2013', 0, 0, 'Thu Oct 03 14:59:17 WIT 2013'),
(39, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/23/2013', 0, 0, 'Thu Oct 03 15:00:28 WIT 2013'),
(40, 'Jakarta (CGK)', 'Jambi (DJB)', '10/10/2013', '', 0, 0, 'Thu Oct 03 16:32:44 WIT 2013'),
(41, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Thu Oct 03 16:32:51 WIT 2013'),
(42, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Thu Oct 03 19:48:34 WIT 2013'),
(43, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Thu Oct 03 20:12:22 WIT 2013'),
(44, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Thu Oct 03 20:22:15 WIT 2013'),
(45, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 0, 0, 'Thu Oct 03 20:28:40 WIT 2013'),
(46, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 09:45:53 WIT 2013'),
(47, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 10:59:05 WIT 2013'),
(48, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 11:00:05 WIT 2013'),
(49, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 13:53:14 WIT 2013'),
(50, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:44:51 WIT 2013'),
(51, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:47:03 WIT 2013'),
(52, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:48:01 WIT 2013'),
(53, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:48:23 WIT 2013'),
(54, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:48:41 WIT 2013'),
(55, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:48:55 WIT 2013'),
(56, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:50:02 WIT 2013'),
(57, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:50:08 WIT 2013'),
(58, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:50:13 WIT 2013'),
(59, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:50:53 WIT 2013'),
(60, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:51:31 WIT 2013'),
(61, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:51:53 WIT 2013'),
(62, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:52:32 WIT 2013'),
(63, 'Jambi (DJB)', 'Jakarta (CGK)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:52:49 WIT 2013'),
(64, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:53:04 WIT 2013'),
(65, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:53:28 WIT 2013'),
(66, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 14:53:42 WIT 2013'),
(67, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:00:46 WIT 2013'),
(68, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:01:10 WIT 2013'),
(69, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:01:26 WIT 2013'),
(70, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:01:58 WIT 2013'),
(71, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:01:59 WIT 2013'),
(72, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:03:21 WIT 2013'),
(73, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:03:31 WIT 2013'),
(74, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:03:53 WIT 2013'),
(75, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:04:08 WIT 2013'),
(76, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:04:54 WIT 2013'),
(77, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:05:18 WIT 2013'),
(78, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:05:33 WIT 2013'),
(79, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:05:41 WIT 2013'),
(80, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:07:27 WIT 2013'),
(81, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:08:05 WIT 2013'),
(82, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:12:15 WIT 2013'),
(83, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 15:45:27 WIT 2013'),
(84, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 16:29:06 WIT 2013'),
(85, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 19:01:04 WIT 2013'),
(86, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 19:15:22 WIT 2013'),
(87, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 19:53:29 WIT 2013'),
(88, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 19:54:17 WIT 2013'),
(89, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 3, 0, 'Sun Oct 13 19:56:10 WIT 2013'),
(90, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 20:02:03 WIT 2013'),
(91, 'Jakarta (CGK)', 'Jambi (DJB)', '10/13/2013', '', 1, 0, 'Sun Oct 13 23:00:07 WIT 2013');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `kode_job` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `kode_job`) VALUES
(1, 'haha', 'haha'),
(2, 'haha', 'haha');

-- --------------------------------------------------------

--
-- Table structure for table `pemesan`
--

CREATE TABLE IF NOT EXISTS `pemesan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_handphone` varchar(200) NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `pemesanan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pemesanan_id` (`pemesanan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `pemesan`
--

INSERT INTO `pemesan` (`id`, `nama`, `email`, `no_handphone`, `anggota_id`, `pemesanan_id`) VALUES
(4, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 8),
(5, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 9),
(6, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 9),
(7, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 10),
(8, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 11),
(9, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 12),
(10, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 13),
(11, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 14),
(12, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 15),
(13, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 16),
(14, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 17),
(15, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 18),
(16, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 21),
(17, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 22),
(18, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '+6285664387055', 0, 22),
(19, 'a', 'test@test.com', '+6212312', 0, 25),
(20, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 26),
(21, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 27),
(22, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 28),
(23, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 29),
(24, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 30),
(25, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 31),
(26, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 32),
(27, 'a', 'test@test.com', '+6212312', 0, 33),
(28, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 34),
(29, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 35),
(30, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 0, 36),
(31, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 19, 37),
(32, 'Jordan Fernando', 'fernandojordan.92@gmail.com', '85664387055', 19, 48);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_booking` varchar(100) NOT NULL,
  `penerbangan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_booking` (`kode_booking`),
  KEY `id_penerbangan` (`penerbangan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `kode_booking`, `penerbangan_id`) VALUES
(8, 'ZNAB5A', 1),
(9, 'TC088B', 1),
(10, '6IA98K', 1),
(11, 'MUGNBE', 1),
(12, 'GKYQRI', 1),
(13, 'HGZZC8', 1),
(14, 'LAO743', 1),
(15, 'KPEGMD', 1),
(16, 'UOEO2J', 1),
(17, 'PUEOH0', 1),
(18, 'S41HIH', 1),
(19, 'P3B9QE', 1),
(20, 'JOTRRI', 1),
(21, 'X029HE', 1),
(22, 'V18MC0', 1),
(23, '2X53QO', 1),
(24, 'FXQM31', 1),
(25, 'G2SYIJ', 1),
(26, 'XJF2QY', 1),
(27, 'HZJ0IZ', 1),
(28, '5Z1MTQ', 1),
(29, 'QZNY4Q', 1),
(30, 'MECTC3', 1),
(31, '16I0BR', 1),
(32, 'T125PM', 1),
(33, 'CPUO77', 1),
(34, '0UWVGU', 1),
(35, '5GJ3YO', 1),
(36, 'KOF4K3', 1),
(37, 'YAGPXZ', 1),
(38, 'VYMXW6', 1),
(39, 'P3L767', 1),
(40, 'YNKU84', 1),
(41, '3HWPHO', 1),
(42, 'IPIVWE', 1),
(43, 'N5J7TU', 1),
(44, 'D1222G', 1),
(45, 'DTDT6B', 1),
(46, '4P1RQO', 1),
(47, 'DVW7VL', 1),
(48, 'GAN41F', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penerbangan`
--

CREATE TABLE IF NOT EXISTS `penerbangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_penerbangan` varchar(100) NOT NULL,
  `jam_berangkat` varchar(100) NOT NULL,
  `jam_tiba` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `bandara_asal_id` int(11) NOT NULL,
  `bandara_tujuan_id` int(11) NOT NULL,
  `pesawat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_bandara_asal` (`bandara_asal_id`,`bandara_tujuan_id`,`pesawat_id`),
  KEY `id_bandara_tujuan` (`bandara_tujuan_id`),
  KEY `id_pesawat` (`pesawat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `penerbangan`
--

INSERT INTO `penerbangan` (`id`, `kode_penerbangan`, `jam_berangkat`, `jam_tiba`, `tanggal`, `harga`, `bandara_asal_id`, `bandara_tujuan_id`, `pesawat_id`) VALUES
(1, 'ER-1234', '09:00', '10:00', '10/13/2013', 300000, 1, 2, 1),
(2, 'ER-1235', '12:00', '13:00', '10/13/2013', 300000, 1, 2, 1),
(3, 'ER-1236', '10:00', '11:00', '10/13/2013', 300000, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penerbangan_pegawai`
--

CREATE TABLE IF NOT EXISTS `penerbangan_pegawai` (
  `penerbangan_id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  PRIMARY KEY (`penerbangan_id`,`pegawai_id`),
  KEY `id_pegawai` (`pegawai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE IF NOT EXISTS `penumpang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemesanan_id` int(11) NOT NULL,
  `titel` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `is_checkin` int(11) NOT NULL,
  `no_kursi` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penerbangan` (`pemesanan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`id`, `pemesanan_id`, `titel`, `nama`, `is_checkin`, `no_kursi`) VALUES
(1, 31, 'Tuan', 'Jordan Fernando', 0, ''),
(2, 32, 'Tuan', 'Jordan Fernando', 0, ''),
(3, 35, 'Tuan', 'Jordan Fernando', 0, ''),
(4, 36, 'Tuan', 'Kevin Alfianto Jangcik', 0, ''),
(5, 36, 'Tuan', 'Jordan Fernando', 0, ''),
(6, 36, 'Tuan', 'Felix Terahadi', 0, ''),
(7, 37, 'Tuan', 'Jordan Fernando', 0, ''),
(8, 48, 'Tuan', 'Jordan Fernando', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pesawat`
--

CREATE TABLE IF NOT EXISTS `pesawat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(300) NOT NULL,
  `total_kursi` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pesawat`
--

INSERT INTO `pesawat` (`id`, `nama`, `total_kursi`) VALUES
(1, 'Boeing 737-900ER', 40);

-- --------------------------------------------------------

--
-- Table structure for table `play_evolutions`
--

CREATE TABLE IF NOT EXISTS `play_evolutions` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `applied_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `apply_script` text,
  `revert_script` text,
  `state` varchar(255) DEFAULT NULL,
  `last_problem` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `play_evolutions`
--

INSERT INTO `play_evolutions` (`id`, `hash`, `applied_at`, `apply_script`, `revert_script`, `state`, `last_problem`) VALUES
(1, 'fb0208a4a1a1f157ed7bd954a2326cce4585ec1d', '2013-10-13 09:41:12', 'create table anggota (\nid                        integer auto_increment not null,\nemail                     varchar(255),\nsandi                     varchar(255),\nnama                      varchar(255),\nno_handphone              varchar(255),\nalamat                    varchar(255),\nactivation_code           varchar(255),\nis_activated              integer,\nconstraint pk_anggota primary key (id))\n;\n\ncreate table bandara (\nid                        integer auto_increment not null,\nnama                      varchar(255),\nkode                      varchar(255),\ndaerah                    varchar(255),\nbiaya                     integer,\nconstraint pk_bandara primary key (id))\n;\n\ncreate table log_login (\nid                        integer auto_increment not null,\nanggota_id                integer,\ntimestamp                 varchar(255),\nconstraint pk_log_login primary key (id))\n;\n\ncreate table log_pencarian (\nid                        integer auto_increment not null,\nasal                      varchar(255),\ntujuan                    varchar(255),\ntanggal_berangkat         varchar(255),\ntanggal_kembali           varchar(255),\njumlah_penumpang          integer,\ntimestamp                 varchar(255),\nsekali_jalan              integer,\nconstraint pk_log_pencarian primary key (id))\n;\n\ncreate table pemesan (\nid                        integer auto_increment not null,\nconstraint pk_pemesan primary key (id))\n;\n\ncreate table pemesanan (\nid                        integer auto_increment not null,\nkode_booking              varchar(255),\npenerbangan_id            integer,\nconstraint pk_pemesanan primary key (id))\n;\n\ncreate table penerbangan (\nid                        integer auto_increment not null,\nkode_penerbangan          varchar(255),\njam_berangkat             varchar(255),\njam_tiba                  varchar(255),\ntanggal                   varchar(255),\nharga                     integer,\nbandara_asal_id           integer,\nbandara_tujuan_id         integer,\npesawat_id                integer,\nconstraint pk_penerbangan primary key (id))\n;\n\ncreate table penumpang (\nid                        integer auto_increment not null,\npemesanan_id              integer,\ntitel                     varchar(255),\nnama                      varchar(255),\nno_kursi                  varchar(255),\nis_checkin                integer,\nconstraint pk_penumpang primary key (id))\n;\n\ncreate table pesawat (\nid                        integer auto_increment not null,\nnama                      varchar(255),\ntotal_kursi               integer,\nconstraint pk_pesawat primary key (id))\n;\n\nalter table log_login add constraint fk_log_login_anggota_1 foreign key (anggota_id) references anggota (id) on delete restrict on update restrict;\ncreate index ix_log_login_anggota_1 on log_login (anggota_id);\nalter table pemesanan add constraint fk_pemesanan_penerbangan_2 foreign key (penerbangan_id) references penerbangan (id) on delete restrict on update restrict;\ncreate index ix_pemesanan_penerbangan_2 on pemesanan (penerbangan_id);\nalter table penerbangan add constraint fk_penerbangan_bandara_asal_3 foreign key (bandara_asal_id) references bandara (id) on delete restrict on update restrict;\ncreate index ix_penerbangan_bandara_asal_3 on penerbangan (bandara_asal_id);\nalter table penerbangan add constraint fk_penerbangan_bandara_tujuan_4 foreign key (bandara_tujuan_id) references bandara (id) on delete restrict on update restrict;\ncreate index ix_penerbangan_bandara_tujuan_4 on penerbangan (bandara_tujuan_id);\nalter table penerbangan add constraint fk_penerbangan_pesawat_5 foreign key (pesawat_id) references pesawat (id) on delete restrict on update restrict;\ncreate index ix_penerbangan_pesawat_5 on penerbangan (pesawat_id);\nalter table penumpang add constraint fk_penumpang_pemesanan_6 foreign key (pemesanan_id) references pemesanan (id) on delete restrict on update restrict;\ncreate index ix_penumpang_pemesanan_6 on penumpang (pemesanan_id);', 'SET FOREIGN_KEY_CHECKS=0;\n\ndrop table anggota;\n\ndrop table bandara;\n\ndrop table log_login;\n\ndrop table log_pencarian;\n\ndrop table pemesan;\n\ndrop table pemesanan;\n\ndrop table penerbangan;\n\ndrop table penumpang;\n\ndrop table pesawat;\n\nSET FOREIGN_KEY_CHECKS=1;', 'applied', 'Table ''anggota'' already exists [ERROR:1050, SQLSTATE:42S01]');

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE IF NOT EXISTS `refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemesanan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pemesanan_id` (`pemesanan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `refund`
--

INSERT INTO `refund` (`id`, `pemesanan_id`) VALUES
(1, 37),
(2, 37);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bagasi`
--
ALTER TABLE `bagasi`
  ADD CONSTRAINT `bagasi_ibfk_1` FOREIGN KEY (`penumpang_id`) REFERENCES `penumpang` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `log_login`
--
ALTER TABLE `log_login`
  ADD CONSTRAINT `log_login_ibfk_2` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD CONSTRAINT `pemesan_ibfk_1` FOREIGN KEY (`pemesanan_id`) REFERENCES `pemesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`penerbangan_id`) REFERENCES `penerbangan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `penerbangan`
--
ALTER TABLE `penerbangan`
  ADD CONSTRAINT `penerbangan_ibfk_1` FOREIGN KEY (`bandara_asal_id`) REFERENCES `bandara` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penerbangan_ibfk_2` FOREIGN KEY (`bandara_tujuan_id`) REFERENCES `bandara` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penerbangan_ibfk_3` FOREIGN KEY (`pesawat_id`) REFERENCES `pesawat` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `penerbangan_pegawai`
--
ALTER TABLE `penerbangan_pegawai`
  ADD CONSTRAINT `penerbangan_pegawai_ibfk_1` FOREIGN KEY (`penerbangan_id`) REFERENCES `penerbangan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penerbangan_pegawai_ibfk_2` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD CONSTRAINT `penumpang_ibfk_1` FOREIGN KEY (`pemesanan_id`) REFERENCES `pemesanan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `refund_ibfk_1` FOREIGN KEY (`pemesanan_id`) REFERENCES `pemesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
