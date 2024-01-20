-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 01:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek_javaee`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_ruangan`
--

CREATE TABLE `booking_ruangan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `waktu` int(11) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_ruangan`
--

INSERT INTO `booking_ruangan` (`id`, `id_user`, `id_ruangan`, `tanggal`, `jam`, `waktu`, `keperluan`, `status`, `created_at`) VALUES
(22, 1, 7, '2023-12-15', '22:37:00', 2, 'asdf', 1, '2023-12-14 14:37:42'),
(23, 7, 1, '2023-12-15', '10:02:00', 2, 'kegiatan himatif', 1, '2023-12-15 01:02:32'),
(26, 1, 8, '2023-12-20', '09:56:00', 2, 'ta', 0, '2023-12-19 01:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `izin_bermalam`
--

CREATE TABLE `izin_bermalam` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time DEFAULT NULL,
  `kembali` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin_bermalam`
--

INSERT INTO `izin_bermalam` (`id`, `id_user`, `keperluan`, `tanggal`, `jam`, `kembali`, `status`, `created_at`) VALUES
(19, 1, 'bertemu keluarga', '2023-12-15', '17:16:00', '2023-12-18', 1, '2023-12-14 10:19:50'),
(27, 1, 'bertemu keluarga', '2023-12-15', '14:17:00', '2023-12-20', 0, '2023-12-15 02:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `izin_keluar`
--

CREATE TABLE `izin_keluar` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `jam_kembali` time NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin_keluar`
--

INSERT INTO `izin_keluar` (`id`, `id_user`, `keperluan`, `tanggal`, `jam`, `jam_kembali`, `status`, `created_at`) VALUES
(13, 1, 'pangkas', '2023-12-15', '11:21:00', '13:21:00', 1, '2023-12-14 04:21:43'),
(16, 1, 'pangkas', '2023-12-15', '09:19:00', '10:19:00', 2, '2023-12-15 02:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_kaos`
--

CREATE TABLE `pembelian_kaos` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ukuran` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian_kaos`
--

INSERT INTO `pembelian_kaos` (`id`, `id_user`, `ukuran`, `jumlah`, `total`, `status`, `created_at`) VALUES
(6, 7, 2, 2, 200000, 1, '2023-12-15 01:01:44'),
(7, 1, 1, 1, 100000, 1, '2023-12-15 02:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `request_surat`
--

CREATE TABLE `request_surat` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `keperluan` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_surat`
--

INSERT INTO `request_surat` (`id`, `id_user`, `id_surat`, `keperluan`, `status`, `created_at`) VALUES
(1, 1, 2, 'sanksos\r\n', 1, '2023-12-14 04:52:01'),
(4, 7, 2, 'sansos', 0, '2023-12-15 01:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  `deskripsi_ruangan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`, `deskripsi_ruangan`, `created_at`) VALUES
(1, 'audit', 'ruangan auditt', '2023-12-07 06:02:08'),
(7, 'gd 515', 'lapangan hijau', '2023-12-07 14:35:43'),
(8, 'vokasi', 'gedung vokasi', '2023-12-15 01:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `nama_surat` varchar(20) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `nama_surat`, `deskripsi`, `created_at`) VALUES
(2, 'Surat Pemutihan', 'asdlasdfkj', '2023-12-13 15:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_telepon` bigint(20) NOT NULL,
  `no_ktp` bigint(20) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `no_telepon`, `no_ktp`, `nim`, `username`, `password`) VALUES
(1, 'benned', 8123123, 12312312312, '1231321', 'ben', 'tam'),
(3, 'PAULINA TAMBUNAN', 123123123123, 123132123, '12312311231', 'asdfsadf', 'adsfasdf'),
(4, 'Suandika', 12312312, 123123123123, '123123', 'suan', 'suan'),
(5, 'Suandika', 8123193, 123123123, '123123', 'suan', 'suan'),
(6, 'adsf', 123123131231, 1231231231, '1231231', 'bens', 'tam'),
(7, 'Agus', 81234212342, 1212021312123123, '11321012', 'agus123', 'agus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_ruangan` (`id_ruangan`);

--
-- Indexes for table `izin_bermalam`
--
ALTER TABLE `izin_bermalam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `izin_keluar`
--
ALTER TABLE `izin_keluar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pembelian_kaos`
--
ALTER TABLE `pembelian_kaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `request_surat`
--
ALTER TABLE `request_surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `izin_bermalam`
--
ALTER TABLE `izin_bermalam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `izin_keluar`
--
ALTER TABLE `izin_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pembelian_kaos`
--
ALTER TABLE `pembelian_kaos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `request_surat`
--
ALTER TABLE `request_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  ADD CONSTRAINT `booking_ruangan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `booking_ruangan_ibfk_2` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan` (`id`);

--
-- Constraints for table `izin_bermalam`
--
ALTER TABLE `izin_bermalam`
  ADD CONSTRAINT `izin_bermalam_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `izin_keluar`
--
ALTER TABLE `izin_keluar`
  ADD CONSTRAINT `izin_keluar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `pembelian_kaos`
--
ALTER TABLE `pembelian_kaos`
  ADD CONSTRAINT `pembelian_kaos_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `request_surat`
--
ALTER TABLE `request_surat`
  ADD CONSTRAINT `request_surat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
