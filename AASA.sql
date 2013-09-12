-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2013 at 05:50 PM
-- Server version: 5.5.32-0ubuntu0.13.04.1
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
-- Table structure for table `bagasi`
--

CREATE TABLE IF NOT EXISTS `bagasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bagasi` varchar(200) NOT NULL,
  `id_penumpang` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `charge` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PENUMPANG` (`id_penumpang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bandara`
--

CREATE TABLE IF NOT EXISTS `bandara` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `biaya` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `id_pemesanan` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_handphone` varchar(200) NOT NULL,
  `is_member` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penerbangan` (`id_pemesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_booking` varchar(100) NOT NULL,
  `id_penerbangan` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penerbangan` (`id_penerbangan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `penerbangan`
--

CREATE TABLE IF NOT EXISTS `penerbangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jam_berangkat` varchar(100) NOT NULL,
  `jam_tiba` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `id_bandara_asal` int(11) NOT NULL,
  `id_bandara_tujuan` int(11) NOT NULL,
  `id_pesawat` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_bandara_asal` (`id_bandara_asal`,`id_bandara_tujuan`,`id_pesawat`),
  KEY `id_bandara_tujuan` (`id_bandara_tujuan`),
  KEY `id_pesawat` (`id_pesawat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `penerbangan_pegawai`
--

CREATE TABLE IF NOT EXISTS `penerbangan_pegawai` (
  `id_penerbangan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id_penerbangan`,`id_pegawai`),
  KEY `id_pegawai` (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE IF NOT EXISTS `penumpang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pemesanan` int(11) NOT NULL,
  `titel` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `is_checkin` int(11) NOT NULL,
  `no_kursi` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penerbangan` (`id_pemesanan`)
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bagasi`
--
ALTER TABLE `bagasi`
  ADD CONSTRAINT `bagasi_ibfk_1` FOREIGN KEY (`id_penumpang`) REFERENCES `penumpang` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD CONSTRAINT `pemesan_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_penerbangan`) REFERENCES `penerbangan` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `penerbangan`
--
ALTER TABLE `penerbangan`
  ADD CONSTRAINT `penerbangan_ibfk_3` FOREIGN KEY (`id_pesawat`) REFERENCES `pesawat` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penerbangan_ibfk_1` FOREIGN KEY (`id_bandara_asal`) REFERENCES `bandara` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penerbangan_ibfk_2` FOREIGN KEY (`id_bandara_tujuan`) REFERENCES `bandara` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `penerbangan_pegawai`
--
ALTER TABLE `penerbangan_pegawai`
  ADD CONSTRAINT `penerbangan_pegawai_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penerbangan_pegawai_ibfk_1` FOREIGN KEY (`id_penerbangan`) REFERENCES `penerbangan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD CONSTRAINT `penumpang_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
