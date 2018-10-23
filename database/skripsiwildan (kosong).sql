-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2018 at 09:21 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `skripsiwildan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(10) NOT NULL AUTO_INCREMENT,
  `nik` int(20) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_tlp` int(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` int(10) NOT NULL AUTO_INCREMENT,
  `nik` int(20) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_tlp` int(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(10) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(10) NOT NULL,
  `id_matpel` int(10) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam_pelajaran` varchar(20) NOT NULL,
  `id_guru` int(10) NOT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `id_kelas` (`id_kelas`),
  KEY `id_matpel` (`id_matpel`),
  KEY `id_guru` (`id_guru`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(10) NOT NULL AUTO_INCREMENT,
  `id_guru` int(10) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  PRIMARY KEY (`id_kelas`),
  KEY `id_guru` (`id_guru`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `matapelajaran`
--

CREATE TABLE IF NOT EXISTS `matapelajaran` (
  `id_matpel` int(10) NOT NULL AUTO_INCREMENT,
  `nama_matpel` varchar(20) NOT NULL,
  `kkm` int(2) NOT NULL,
  `id_guru` int(10) NOT NULL,
  PRIMARY KEY (`id_matpel`),
  KEY `id_guru` (`id_guru`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `id_nilai` int(10) NOT NULL AUTO_INCREMENT,
  `id_guru` int(10) NOT NULL,
  `id_matpel` int(10) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `nis` int(10) NOT NULL,
  `nilaitugas1` int(3) NOT NULL,
  `nilaitugas2` int(3) NOT NULL,
  `nilai_uts` int(3) NOT NULL,
  `nilai_uas` int(3) NOT NULL,
  `nilai_akhir` int(3) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_nilai`),
  KEY `id_guru` (`id_guru`),
  KEY `id_matpel` (`id_matpel`),
  KEY `id_kelas` (`id_kelas`),
  KEY `nis` (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT,
  `nis` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `jumlah_bayar` int(10) NOT NULL,
  `tipe_bayar` varchar(30) NOT NULL,
  `periode_bayar` varchar(50) NOT NULL,
  `inputTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_tatausaha` int(10) NOT NULL,
  PRIMARY KEY (`id_pembayaran`),
  KEY `id_kelas` (`id_kelas`),
  KEY `id_tatausaha` (`id_tatausaha`),
  KEY `nis` (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_masuk` int(10) NOT NULL AUTO_INCREMENT,
  `username` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(10) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id_masuk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(10) NOT NULL AUTO_INCREMENT,
  `nis` int(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_tlp` int(20) NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tatausaha`
--

CREATE TABLE IF NOT EXISTS `tatausaha` (
  `id_tatausaha` int(10) NOT NULL AUTO_INCREMENT,
  `nik` int(20) NOT NULL,
  `nama_tatausaha` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_tlp` int(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id_tatausaha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_matpel`) REFERENCES `matapelajaran` (`id_matpel`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD CONSTRAINT `matapelajaran_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_matpel`) REFERENCES `matapelajaran` (`id_matpel`),
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `nilai_ibfk_4` FOREIGN KEY (`nis`) REFERENCES `siswa` (`id_siswa`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`id_tatausaha`) REFERENCES `tatausaha` (`id_tatausaha`),
  ADD CONSTRAINT `pembayaran_ibfk_3` FOREIGN KEY (`nis`) REFERENCES `siswa` (`id_siswa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
