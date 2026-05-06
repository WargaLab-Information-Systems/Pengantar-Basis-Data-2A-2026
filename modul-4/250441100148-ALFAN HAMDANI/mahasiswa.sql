-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2026 at 05:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siakad`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama_mahasiswa` varchar(100) DEFAULT NULL,
  `program_studi` varchar(50) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama_mahasiswa`, `program_studi`, `angkatan`) VALUES
(2201, 'Dhani Kusuma', 'Sistem Informasi', 2022),
(2202, 'Rizky Pratama', 'Sistem Informasi', 2022),
(2301, 'Andi Wijaya', 'Sistem Informasi', 2023),
(2302, 'Bunga Citra', 'Sistem Informasi', 2023),
(2303, 'Dimas Anggara', 'Sistem Informasi', 2023),
(2401, 'Candra Gupta', 'Sistem Informasi', 2024),
(2402, 'Dedi Kurniawan', 'Sistem Informasi', 2024),
(2501, 'Farah Nabila', 'Sistem Informasi', 2025),
(2502, 'Gibran Rakabumi', 'Sistem Informasi', 2025),
(2503, 'Hani Safira', 'Sistem Informasi', 2025),
(2504, 'Irfan Bachdim', 'Sistem Informasi', 2025),
(2505, 'Joko Anwar', 'Sistem Informasi', 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
