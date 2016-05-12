-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 08:43 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cigs`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_anak`
--

CREATE TABLE IF NOT EXISTS `data_anak` (
  `NIK` varchar(20) NOT NULL,
  `NO` varchar(10) NOT NULL,
  `DA_NAMA` varchar(20) NOT NULL,
  `DA_TEMPAT_LAHIR` varchar(20) NOT NULL,
  `DA_TANGGAL_LAHIR` varchar(20) NOT NULL,
  `DA_ALAMAT` varchar(20) NOT NULL,
  `DA_ANAK_KE` varchar(20) NOT NULL,
  `DA_PEKERJAAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_istri`
--

CREATE TABLE IF NOT EXISTS `data_istri` (
  `NIK` varchar(20) NOT NULL,
  `NO` varchar(10) NOT NULL,
  `DI_NAMA` varchar(50) NOT NULL,
  `DI_TEMPAT_LAHIR` varchar(20) NOT NULL,
  `DI_TANGGAL_LAHIR` varchar(20) NOT NULL,
  `DI_PENDIDIKAN` varchar(20) NOT NULL,
  `DI_ALAMAT` varchar(20) NOT NULL,
  `DI_PEKERJAAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_orang_tua`
--

CREATE TABLE IF NOT EXISTS `data_orang_tua` (
  `NIK` varchar(20) NOT NULL,
  `NO` varchar(10) NOT NULL,
  `DOT_NAMA` varchar(20) NOT NULL,
  `DOT_TEMPAT_LAHIR` varchar(20) NOT NULL,
  `DOT_TANGGAL_LAHIR` varchar(20) NOT NULL,
  `DOT_ALAMAT` varchar(20) NOT NULL,
  `DOT_HUBUNGAN` varchar(20) NOT NULL,
  `DOT_PEKERJAAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ms_karyawan`
--

CREATE TABLE IF NOT EXISTS `ms_karyawan` (
  `NIK` varchar(20) NOT NULL,
  `NAMA_LENGKAP` varchar(100) NOT NULL,
  `POSISI` varchar(50) NOT NULL,
  `REFERENSI` varchar(50) NOT NULL,
  `TEMPAT_LAHIR` varchar(50) NOT NULL,
  `TANGGAL_LAHIR` varchar(20) NOT NULL,
  `AGAMA` varchar(20) NOT NULL,
  `HOBBY` varchar(20) NOT NULL,
  `TINGGI_BADAN` int(11) NOT NULL,
  `BERAT_BADAN` int(11) NOT NULL,
  `WARNA_KULIT` varchar(50) NOT NULL,
  `JENIS_RAMBUT` varchar(50) NOT NULL,
  `UKURAN_BAJU` varchar(5) NOT NULL,
  `UKURAN_CELANA` varchar(5) NOT NULL,
  `UKURAN_SEPATU` int(11) NOT NULL,
  `BENTUK_WAJAH` varchar(20) NOT NULL,
  `GOLONGAN_DARAH` varchar(3) NOT NULL,
  `TANDA_KHUSUS` varchar(20) NOT NULL,
  `ALAMAT_KTP` varchar(50) NOT NULL,
  `NO_KTP` varchar(30) NOT NULL,
  `ALAMAT_TINGGAL` varchar(50) NOT NULL,
  `STATUS_TINGGAL` varchar(20) NOT NULL,
  `NO_REKENING` varchar(20) NOT NULL,
  `NO_JAMSOSTEK` varchar(20) NOT NULL,
  `NO_NPWP` varchar(20) NOT NULL,
  `NO_TELP_RUMAH` varchar(15) NOT NULL,
  `NO_HP` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan_formal`
--

CREATE TABLE IF NOT EXISTS `pendidikan_formal` (
  `NIK` varchar(20) NOT NULL,
  `NO` varchar(10) NOT NULL,
  `PF_NAMA_SEKOLAH` varchar(50) NOT NULL,
  `PF_JURUSAN` varchar(50) NOT NULL,
  `PF_KET` varchar(100) NOT NULL,
  `PD_TAHUN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan_non_formal`
--

CREATE TABLE IF NOT EXISTS `pendidikan_non_formal` (
  `NIK` varchar(20) NOT NULL,
  `NO` varchar(10) NOT NULL,
  `PNF_NAMA_PENDIDIKAN` varchar(50) NOT NULL,
  `PNF_JURUSAN` varchar(20) NOT NULL,
  `PNF_MASA_PENDIDIKAN` varchar(20) NOT NULL,
  `PNF_TAHUN_PENDIDIKAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_kerja`
--

CREATE TABLE IF NOT EXISTS `pengalaman_kerja` (
  `NIK` varchar(20) NOT NULL,
  `NO` varchar(10) NOT NULL,
  `PK_NAMA_PERUSAHAAN` varchar(20) NOT NULL,
  `PK_JENIS_USAHA` varchar(20) NOT NULL,
  `PK_ALAMAT_PERUSAHAAN` varchar(50) NOT NULL,
  `PK_JABATAN` varchar(20) NOT NULL,
  `PK_ATASAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saudara_kandung`
--

CREATE TABLE IF NOT EXISTS `saudara_kandung` (
  `NIK` varchar(20) NOT NULL,
  `NO` varchar(10) NOT NULL,
  `SK_NAMA` varchar(20) NOT NULL,
  `SK_TEMPAT_LAHIR` varchar(20) NOT NULL,
  `SK_TANGGAL_LAHIR` varchar(20) NOT NULL,
  `SK_ALAMAT` varchar(20) NOT NULL,
  `SK_BERURUTAN` varchar(20) NOT NULL,
  `SK_PEKERJAAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_anak`
--
ALTER TABLE `data_anak`
 ADD PRIMARY KEY (`NO`), ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `data_istri`
--
ALTER TABLE `data_istri`
 ADD PRIMARY KEY (`NO`), ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `data_orang_tua`
--
ALTER TABLE `data_orang_tua`
 ADD PRIMARY KEY (`NO`), ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `ms_karyawan`
--
ALTER TABLE `ms_karyawan`
 ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `pendidikan_formal`
--
ALTER TABLE `pendidikan_formal`
 ADD PRIMARY KEY (`NO`), ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `pendidikan_non_formal`
--
ALTER TABLE `pendidikan_non_formal`
 ADD PRIMARY KEY (`NO`), ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `pengalaman_kerja`
--
ALTER TABLE `pengalaman_kerja`
 ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `saudara_kandung`
--
ALTER TABLE `saudara_kandung`
 ADD PRIMARY KEY (`NO`), ADD KEY `NIK` (`NIK`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_anak`
--
ALTER TABLE `data_anak`
ADD CONSTRAINT `data_anak_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `ms_karyawan` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_istri`
--
ALTER TABLE `data_istri`
ADD CONSTRAINT `data_istri_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `ms_karyawan` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ms_karyawan`
--
ALTER TABLE `ms_karyawan`
ADD CONSTRAINT `ms_karyawan_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `data_orang_tua` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendidikan_formal`
--
ALTER TABLE `pendidikan_formal`
ADD CONSTRAINT `pendidikan_formal_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `ms_karyawan` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendidikan_non_formal`
--
ALTER TABLE `pendidikan_non_formal`
ADD CONSTRAINT `pendidikan_non_formal_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `ms_karyawan` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengalaman_kerja`
--
ALTER TABLE `pengalaman_kerja`
ADD CONSTRAINT `pengalaman_kerja_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `ms_karyawan` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `saudara_kandung`
--
ALTER TABLE `saudara_kandung`
ADD CONSTRAINT `saudara_kandung_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `ms_karyawan` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
