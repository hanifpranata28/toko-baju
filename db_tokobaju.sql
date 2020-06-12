-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Jun 2020 pada 14.41
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokobaju`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_pembelian`
--

CREATE TABLE `form_pembelian` (
  `nama_barang` varchar(50) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `total` varchar(30) NOT NULL,
  `bayar` varchar(30) NOT NULL,
  `kembalian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `form_pembelian`
--

INSERT INTO `form_pembelian` (`nama_barang`, `harga`, `jumlah`, `total`, `bayar`, `kembalian`) VALUES
('2. Pakaian Dewasa', '20000', '20000', 'Rp. 40000', '60000', 'Rp. 20000'),
('4. Jaket', '15000', '15000', 'Rp. 60000', '80000', 'Rp. 20000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('kasir', 'kasir');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
