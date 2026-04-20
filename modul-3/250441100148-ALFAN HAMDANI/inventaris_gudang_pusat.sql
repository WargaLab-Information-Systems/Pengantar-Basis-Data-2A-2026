-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2026 at 03:53 PM
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
-- Database: `manajemen_inventaris_gudang_pusat`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventaris_gudang_pusat`
--

CREATE TABLE `inventaris_gudang_pusat` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `kode_sku` varchar(50) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `harga_satuan` decimal(10,0) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `lokasi_rak` varchar(20) DEFAULT NULL,
  `status_qc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventaris_gudang_pusat`
--

INSERT INTO `inventaris_gudang_pusat` (`id_barang`, `nama_barang`, `kode_sku`, `kategori`, `harga_satuan`, `stok`, `lokasi_rak`, `status_qc`) VALUES
(101, 'Gaming Laptop G5', 'ELEC-442-X', 'Laptop', 15500000, 12, 'A-01', 'Lulus'),
(102, 'Wireless Mouse', 'ACC-101-Y', 'Aksesoris', 250000, 150, NULL, 'Lulus'),
(103, 'Ultra Wide Monitor', 'ELEC-881-X', 'Monitor', 7200000, 0, 'B-05', 'Pending'),
(104, 'Mechanical Keyboard', 'ACC-202-Z', 'Aksesoris', 1200000, 45, 'B-02', 'Lulus'),
(105, 'Office Chair Pro', 'FURN-991-P', 'Furniture', 3500000, 8, 'C-01', NULL),
(106, 'USB-C Hub 10-in-1', 'ACC-303-X', 'Aksesoris', 850000, 0, NULL, 'Gagal'),
(107, 'Smartphone Z Flip', 'ELEC-112-Y', 'Smartphone', 14000000, 4, 'A-03', 'Lulus'),
(108, 'Standing Desk', 'FURN-882-Q', 'Furniture', 5000000, 15, 'C-02', 'Lulus'),
(109, 'Headset Gaming RGB', 'ACC-404-X', 'Aksesoris', 1100000, 25, NULL, 'Lulus'),
(110, 'Thunderbolt Cable', 'ACC-505-Z', 'Aksesoris', 450000, 100, 'B-03', 'Lulus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventaris_gudang_pusat`
--
ALTER TABLE `inventaris_gudang_pusat`
  ADD PRIMARY KEY (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
