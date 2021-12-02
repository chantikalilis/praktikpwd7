-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2021 pada 10.48
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `khs`
--

CREATE TABLE `khs` (
  `NIM` varchar(50) NOT NULL,
  `kodeMK` varchar(50) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `khs`
--

INSERT INTO `khs` (`NIM`, `kodeMK`, `nilai`) VALUES
('1800018000', 'AA3', '78'),
('1800018055', 'AA1', '80'),
('1800018066', 'AA2', '83'),
('1800018080', 'AA2', '80'),
('1800018088', 'AA1', '80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jkel` varchar(1) DEFAULT NULL,
  `alamat` text,
  `tgllhr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jkel`, `alamat`, `tgllhr`) VALUES
('MHS01', 'Siti Aminah', 'P', 'Solo', '1995-10-01'),
('MHS02', 'Rita', 'P', 'Solo', '1999-01-01'),
('MHS03', 'Amirudin', 'L', 'Semarang', '1998-08-11'),
('MHS04', 'Siti Maryam', 'P', 'Jakarta', '1995-04-15'),
('MHS05', 'chantika', 'P', 'Imogiri', '2021-05-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sks` int(10) NOT NULL,
  `sem` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `nama`, `sks`, `sem`) VALUES
('A1', 'Basis Data', 4, 3),
('A2', 'PWD', 2, 7),
('A3', 'Pembelajaran Mesin', 2, 6),
('A4', 'DDP', 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'user',
  `nohp` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `password`, `nama`, `email`, `level`, `nohp`) VALUES
('chantika', '827ccb0eea8a706c4c34a16891f84e7b', 'chantika', 'chantikalilis@gmail.com', 'user', 0),
('lilis', '12345', 'lilis', '', 'user', 878335722);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
