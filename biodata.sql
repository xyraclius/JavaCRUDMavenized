-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2018 at 11:53 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `Nik` varchar(8) NOT NULL,
  `Nama` varchar(25) DEFAULT NULL,
  `Jeniskelamin` varchar(6) DEFAULT NULL,
  `Tempatlahir` varchar(15) DEFAULT NULL,
  `Tanggallahir` varchar(20) DEFAULT NULL,
  `Alamatdomisili` varchar(90) DEFAULT NULL,
  `Jabatan` varchar(25) DEFAULT NULL,
  `Agama` varchar(7) DEFAULT NULL,
  `Notelp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`Nik`, `Nama`, `Jeniskelamin`, `Tempatlahir`, `Tanggallahir`, `Alamatdomisili`, `Jabatan`, `Agama`, `Notelp`) VALUES
('28483', 'Tallula Tristya', 'Wanita', 'Jakarta', '12-July-1995', 'Jl. Pramuka No. 80', 'Project Manager', 'Islam', '087834985734'),
('31769', 'Ardiansyah', 'Pria', 'Jakarta', '19-January-1993', 'Jl. Cildug Raya No. 4', 'Social Media Specialist', 'Islam', '089628318718'),
('61464', 'Nabil Fawwaz Elqayyim', 'Pria', 'Jakarta', '31-October-1995', 'Jl. H. Muslim No. 144', 'Development Supervisor', 'Islam', '087777331995'),
('77658', 'Aurelia Liana', 'Wanita', 'Jakarta', '30-October-1992', 'Jl. Sengon No. 13', 'Digital Strategist', 'Kristen', '087884628493'),
('94247', 'Septa Saputra', 'Pria', 'Jakarta', '16-September-1993', 'Jl. L Yos Sudarso No. 29', 'Web Developer', 'Islam', '081223298423');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`Nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
