-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Agustus 2023


CREATE DATABASE egarage;
use egarage;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egarage`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `email`, `password`) VALUES
(1, 'SuperAdmin', 'admin', 'admin@gmail.com', '$2y$10$wDIWHNZU2T5pTalXRQ4dDe5gujj0T4GUB1q7cJcBWywTDHFgjBzse');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `nama_bank` int(11) NOT NULL,
  `no_rek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`) VALUES
(3, 'Knalpot'),
(4, 'Shock Breaker'),
(5, 'Disc Brake'),
(6, 'Oli'),
(7, 'Body Repair');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `users_id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat_jalan` text DEFAULT NULL,
  `kecamatan` varchar(180) DEFAULT NULL,
  `kelurahan` varchar(180) DEFAULT NULL,
  `kota` varchar(170) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`users_id`, `nama`, `email`, `no_hp`, `alamat_jalan`, `kecamatan`, `kelurahan`, `kota`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Khaidar Ahsanur Rijal', 'khaidarfree@gmail.com', '0085712347654', 'ijsaisja', 'jaisjais', 'aisjaisj', 'saksjasj', '', '2023-08-11 04:21:52', '2023-08-11 15:30:59'),
(5, 'Ilham Adji Saputra', 'ilhamsptr@gmail.com', '085212349876', 'Komp guru Minda no25', 'palung', 'air', 'Tangerang', '', '2023-08-12 14:39:17', '2023-08-12 14:44:49'),
(6, 'Al Fauzan', 'fauzanka@gmail.com', '085656564312', 'Jl. Pemuda ', 'Kelapa dua', 'Jatiasih', 'Jakarta', '', '2023-08-13 10:32:29', '2021-08-13 10:35:02'),
(7, 'Farisa Adam', 'farisa@gmail.com', '085389897645', 'Jl. Diponegoro ', '', '', 'Manokwari', '', '2023-08-13 10:32:29', '2021-08-13 10:35:02'),
(8, 'Ahmad Handoko', 'ndoko@gmail.com', '085212436578', 'Jl. A. Yani ', 'Wonokromo', 'Wonokromo', 'Surabaya', '', '2023-08-13 10:32:29', '2021-08-13 10:35:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kategori` int(100) NOT NULL,
  `url_slug` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `gambar`, `kategori`, `url_slug`, `created_at`, `updated_at`) VALUES
(8, 'Akraprovic', 'Akraprovic 99', 'akr1.png', 3, 'Akraprovic-14082003', '2023-08-11 20:14:38', '2023-08-22 21:34:45'),
(9, 'Ohlins', 'Ohlins Rear Shock', 'ohl1.jpg', 4, 'Ohlins-11082023', '2023-08-10 21:19:19', '2021-11-22 21:18:48'),
(10, 'Cat Body', 'Cat Body', 'ctb.png', 7, 'Painting-14082023', '2023-08-14 19:12:43', '2023-08-14 19:30:39'),
(11, 'Oli', 'Idemitsu', 'oil1.png', 6, 'Idemitsu-14082023', '2023-08-14 19:12:43', '2023-08-14 19:30:39'),
(12, 'Air Radiator', 'Air Radiator', 'ard1.png', 7, 'Radiator-14082023', '2023-08-14 19:12:43', '2023-08-14 19:30:39'),
(13, 'Brembo Kaliper Piston', 'Brembo Rear Brake', 'brm1.png', 5, 'Brembo-14082023', '2023-08-14 19:12:43', '2023-08-14 19:30:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_produk`
--

CREATE TABLE `stok_produk` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stok_produk`
--

INSERT INTO `stok_produk` (`id`, `id_produk`, `ukuran`, `stok`, `harga`) VALUES
(12, 8, '', 4, 45000000),
(13, 9, '', 3, 20000000),
(14, 10, '', 5, 800000),
(15, 11, '8000ml', 11, 250000),
(16, 12, '2500ml', 7, 100000),
(17, 13, '', 7, 3000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kode_trx` varchar(100) NOT NULL,
  `id_buyer` int(11) NOT NULL,
  `nama_produk` text DEFAULT NULL,
  `nama_bank` text DEFAULT NULL,
  `no_rek_bank` varchar(50) DEFAULT NULL,
  `variasi` text NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `kurir` varchar(255) NOT NULL,
  `harga` int(20) NOT NULL,
  `alamat_jalan` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_trx`, `id_buyer`, `nama_produk`, `nama_bank`, `no_rek_bank`, `variasi`, `kuantitas`, `status`, `bukti_bayar`, `no_resi`, `kurir`, `harga`, `alamat_jalan`, `created_at`, `updated_at`) VALUES
(2, 'EG619C0B223DB14', 8, 'Akraprovic', NULL, NULL, '', 1, 'Dibatalkan', NULL, NULL, '', 45000000, 'ijsaisja', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(3, 'EG619C0CEEB7152', 1, 'Ohlins', NULL, NULL, '', 1, 'Dibatalkan', NULL, NULL, '', 20000000, 'ijsaisja', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(4, 'EG619C0CEEB7152', 1, 'Ohlins', NULL, NULL, '', 1, 'Dibatalkan', NULL, NULL, '', 20000000, 'ijsaisja', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(5, 'EG619C0CEEB7152', 5, 'Ohlins', NULL, NULL, '', 1, 'Dibatalkan', NULL, NULL, '', 20000000, 'ijsaisja', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(6, 'EG619C0E1561321', 5, 'Oli', NULL, NULL, '8000ml', 1, 'Dibatalkan', NULL, NULL, '', 250000, 'ijsaisja', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(7, 'EG619C190EED9F6', 1, 'Cat Body', NULL, NULL, '', 1, 'Dibatalkan', NULL, NULL, '', 400000, 'ijsaisja', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(9, 'EG619C55A91AF02', 7, 'Air Radiator', NULL, NULL, '2500ml', 1, 'Dibatalkan', NULL, NULL, '', 100000, 'ijsaisja', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(10, 'EG619CB2604C46F', 6, 'Air Radiator', NULL, NULL, '2500ml', 1, 'Dibatalkan - Pembayaran Tidak Valid', '1637659263_2f062d6e09d77ecb7213.jpg', NULL, '', 100000, 'ijsaisja', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(16, 'EG619DF722B26D9', 5, 'Ohlins', NULL, NULL, '', 1, 'Selesai', '1637742666_f0bed970ca25fbfb75c1.jpg', 'LP190355413S7', 'JNE', 20000000, 'Komp guru Minda no25', '2023-08-14 19:00:43', '2023-08-14 19:05:39'),
(17, 'EG619E03DF48250', 5, 'Akraprovic', NULL, NULL, '', 1, 'Menunggu Pembayaran', NULL, NULL, '', 45000000, 'Jl. Manyar Rejo', '2023-08-14 19:00:43', '2023-08-14 19:05:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`users_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`kategori`);

--
-- Indeks untuk tabel `stok_produk`
--
ALTER TABLE `stok_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produk` (`id_produk`) USING BTREE;

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `stok_produk`
--
ALTER TABLE `stok_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--
--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `stok_produk`
--
ALTER TABLE `stok_produk`
  ADD CONSTRAINT `stok_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
