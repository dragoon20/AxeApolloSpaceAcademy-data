-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 01, 2013 at 05:16 PM
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
  `sandi` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `no_handphone` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `email`, `sandi`, `nama`, `no_handphone`, `alamat`) VALUES
(1, 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa'),
(2, 'fernandojordan.92@gmail.com', 'asdasdasdsa', 'sadasd', 'asuhdioashdxi', 'daesjhdoiajd'),
(3, 'marti@gmail.com', 'homo', 'Martin', '080808008', 'Jl Ampunm'),
(10, 'jordan@traveloka.com', 'abcde', 'asdadad', 'sadadad', 'aasda'),
(11, 'martin@gmail.com', 'martin', 'martin', '+6212343123', 'tes');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `timestamp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `log_pencarian`
--

INSERT INTO `log_pencarian` (`id`, `asal`, `tujuan`, `tanggal_berangkat`, `tanggal_kembali`, `timestamp`) VALUES
(1, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 'Tue Oct 01 09:32:05 WIT 2013'),
(2, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 'Tue Oct 01 09:32:54 WIT 2013'),
(3, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 'Tue Oct 01 09:34:08 WIT 2013'),
(4, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 'Tue Oct 01 09:34:18 WIT 2013'),
(5, 'Jakarta (CGK)', 'Jambi (DJB)', '10/08/2013', '10/17/2013', 'Tue Oct 01 09:35:21 WIT 2013'),
(6, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:11:42 WIT 2013'),
(7, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:12:56 WIT 2013'),
(8, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:19:54 WIT 2013'),
(9, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:21:29 WIT 2013'),
(10, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:21:56 WIT 2013'),
(11, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:22:12 WIT 2013'),
(12, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:22:28 WIT 2013'),
(13, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:22:41 WIT 2013'),
(14, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:23:35 WIT 2013'),
(15, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:23:55 WIT 2013'),
(16, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:24:14 WIT 2013'),
(17, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:24:21 WIT 2013'),
(18, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:24:29 WIT 2013'),
(19, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:24:42 WIT 2013'),
(20, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:24:58 WIT 2013'),
(21, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:25:04 WIT 2013'),
(22, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:25:09 WIT 2013'),
(23, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:25:16 WIT 2013'),
(24, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:25:23 WIT 2013'),
(25, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:30:46 WIT 2013'),
(26, 'Jakarta (CGK)', 'Jambi (DJB)', '10/10/2013', '', 'Tue Oct 01 16:31:02 WIT 2013'),
(27, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:34:20 WIT 2013'),
(28, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:36:02 WIT 2013'),
(29, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:39:51 WIT 2013'),
(30, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:41:13 WIT 2013'),
(31, 'Jakarta (CGK)', 'Jambi (DJB)', '10/09/2013', '', 'Tue Oct 01 16:42:28 WIT 2013');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `kode_job` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pemesan`
--

CREATE TABLE IF NOT EXISTS `pemesan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemesanan_id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_handphone` varchar(200) NOT NULL,
  `anggota_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penerbangan` (`pemesanan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_booking` varchar(100) NOT NULL,
  `penerbangan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penerbangan` (`penerbangan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(1, 'ER-1234', '09:00', '10:00', '10/09/2013', 300000, 1, 2, 1),
(2, 'ER-1235', '12:00', '13:00', '10/09/2013', 300000, 1, 2, 1),
(3, 'ER-1236', '10:00', '11:00', '10/09/2013', 300000, 2, 1, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bagasi`
--
ALTER TABLE `bagasi`
  ADD CONSTRAINT `bagasi_ibfk_1` FOREIGN KEY (`penumpang_id`) REFERENCES `penumpang` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD CONSTRAINT `pemesan_ibfk_1` FOREIGN KEY (`pemesanan_id`) REFERENCES `pemesanan` (`id`) ON UPDATE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
