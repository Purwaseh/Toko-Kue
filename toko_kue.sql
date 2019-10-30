-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Okt 2019 pada 02.26
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_kue`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_hp` int(11) NOT NULL,
  `id_pemesanan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`) VALUES
(1, 'Kue Kering'),
(2, 'Kue Basah'),
(3, 'Kue Ultah'),
(4, 'Kue Bolu'),
(5, 'Kue Pastri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `alamat_pengiriman` varchar(200) NOT NULL,
  `tanggal_pengiriman` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `gambar`, `harga`, `stock`, `id_kategori`) VALUES
(1, 'Kue bola keju', 'bola keju.jpg', 1000, 20, 1),
(2, 'Kue nastar', 'nastar.jpg', 1000, 20, 1),
(3, 'Kue kastengel', 'kastengel.jpg', 15000, 10, 1),
(4, 'Kue kacang sabit', 'kacang sabit.jpg', 17000, 10, 1),
(5, 'Kue coklat', 'coklas.jpg', 20000, 10, 1),
(6, 'Kue kuping gajah', 'kuping gajah.jpg', 10000, 15, 1),
(7, 'Kue apem', 'apem.jpg', 5000, 15, 2),
(8, 'Kue bantal', 'bantal.jpg', 7000, 15, 2),
(9, 'Kue bakpia', 'bakpia.jpg', 5000, 20, 2),
(10, 'Kue mangkok', 'mangkok.jpg', 1000, 25, 2),
(11, 'Kue cenil', 'cenil.jpg', 2000, 15, 2),
(12, 'Kue putu', 'putu.jpg', 5000, 50, 2),
(13, 'Kue gethuk', 'gethuk.jpg', 5000, 20, 2),
(14, 'Kue bolo gulung keju', 'gulung keju.jpg', 10000, 10, 3),
(16, 'Kue bolu kemojo', 'kemojo.jpg', 15000, 10, 3),
(17, 'Kue brownies', 'brownies.jpg', 20000, 10, 3),
(18, 'Kue bugis', 'bugis.jpg', 15000, 10, 3),
(19, 'Blackforest', 'blackforest.jpg', 35000, 0, 3),
(20, 'Opera cake', 'opera cake.jpg', 40000, 0, 3),
(21, 'Cheese cake', 'cheese cake.jpg', 40000, 0, 3),
(22, 'Puff Pastry', 'puff.jpg', 30000, 0, 5),
(23, 'Phyllo', 'phyllo.jpg', 15000, 0, 5),
(24, 'Croissant', 'croissant.jpg', 15000, 0, 5),
(25, 'Danish pastry', 'danish.jpg', 15000, 0, 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
