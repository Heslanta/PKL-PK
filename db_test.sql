-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 09:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `klien`
--

CREATE TABLE `klien` (
  `id` int(11) NOT NULL,
  `wajibpajak` varchar(255) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `notelp` varchar(12) NOT NULL,
  `catatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klien`
--

INSERT INTO `klien` (`id`, `wajibpajak`, `npwp`, `notelp`, `catatan`) VALUES
(1, 'Aldo Savero', '01.234.567.8-123.321', '081212341234', 'Anak Bos Perusahaan PT.INDOFOOD SUKSES MAKMUR '),
(2, 'Max1', '01.456.123.8-321.123', '089898761234', 'BOS perusahaan Tambah KalTeng Nusantara 12345'),
(3, 'Gerhard Christoper', '123', '12345', 'TECHNICAL WRITER'),
(8, 'Charvia Wijaya', '81.21.22.12121', '121212', 'PM BACKEND'),
(11, 'Petrus', '123121', '212121', 'Office'),
(12, 'Charvia12', '9876554321', '918282812121', 'dsdsdsds'),
(13, 'Aldo Gunawan', '123', '123', '1231'),
(14, 'Aldo Setiawan', '123', '12345', 'A'),
(15, 'Petrus 123', '123123123123', '12341', ''),
(16, 'gerry123', '9876554321', '918282812121', 'ada'),
(17, 'Charvia', '987655432112121', '123123', 'Halo'),
(18, 'Charvia Cipta Wijaya Bersama Mereka', '123', '123', 'Hai Juga'),
(19, 'Maxi', '123231ada', 'adadasd', 'jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika jika '),
(20, 'CV. ABADI SENTOSA BERSAMA MEREKA', '123', '123', 'ADADADADA');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsul` int(11) NOT NULL,
  `id_klien` int(11) NOT NULL,
  `konsul_ke` int(11) NOT NULL,
  `hari_tanggal` date NOT NULL,
  `Tujuan` varchar(255) NOT NULL,
  `hasil_konsul` varchar(255) NOT NULL,
  `catatan_konsul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsul`, `id_klien`, `konsul_ke`, `hari_tanggal`, `Tujuan`, `hasil_konsul`, `catatan_konsul`) VALUES
(17, 1, 1, '2022-02-11', 'TUJUAN', 'HASIL', 'CATATAN'),
(19, 1, 2, '2022-02-02', 'tujuan', 'ALDO', 'SUKA DEWI'),
(21, 2, 1, '2022-02-21', 'tujuan', '123', '321'),
(25, 1, 3, '2022-03-07', 'tujuan', 'Hai', 'Bro'),
(26, 1, 4, '2022-03-29', '123', '1234', 'adadada'),
(27, 1, 5, '2022-03-30', '432', 'adasdsa', 'safdasdd'),
(28, 1, 6, '2022-03-30', 'tujuan', 'adada', 'adadada'),
(29, 2, 2, '2022-03-29', 'tujuan', 'ada', 'ada');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL,
  `notelp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`, `notelp`) VALUES
(1, 'Admin Tugas', 'admin', 'admin', 'admin', '089898761234'),
(2, 'Aldo Savero', 'aldo', 'aldo', 'pegawai', '081231231234'),
(4, 'Charvia 123', 'charvia', 'charvia', 'pegawai', '081231231235'),
(9, 'Charvia Wijaya1', 'Charvia', 'charvia123', 'pegawai', '087814555012'),
(10, 'Gerhard', 'gerhard', '123', 'pegawai', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klien`
--
ALTER TABLE `klien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsul`),
  ADD KEY `id_klien` (`id_klien`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klien`
--
ALTER TABLE `klien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD CONSTRAINT `konsultasi_ibfk_1` FOREIGN KEY (`id_klien`) REFERENCES `klien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
