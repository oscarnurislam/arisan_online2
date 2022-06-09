-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2022 pada 15.36
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arisan_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arisans`
--

CREATE TABLE `arisans` (
  `id` int(11) NOT NULL,
  `nama_arisan` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `arisans`
--

INSERT INTO `arisans` (`id`, `nama_arisan`, `keterangan`, `harga`, `slot`, `created_at`, `updated_at`) VALUES
(1, 'Arisan Mingguan', 'Dibayar Setiap Hari Minggu dengan Harga tertera', 10000, 20, '2022-06-07 08:10:23', '2022-06-07 08:10:37'),
(2, 'Arisan Harian', 'Dibayar Setiap Hari dengan Harga tertera', 25000, 20, '2022-06-07 08:11:14', '2022-06-07 08:24:49'),
(5, 'Arisan Bulanan', 'Dibayar Setiap Awal Bulan dengan Harga tertera', 50000, 10, '2022-06-08 10:17:35', '2022-06-08 10:17:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_kelompok_arisans`
--

CREATE TABLE `detail_kelompok_arisans` (
  `id` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `ket_arisan` varchar(20) NOT NULL,
  `peringatan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_kelompok_arisans`
--

INSERT INTO `detail_kelompok_arisans` (`id`, `id_kelompok`, `id_peserta`, `ket_arisan`, `peringatan`, `created_at`, `updated_at`) VALUES
(3, 2, 1, '-', 1, '2022-06-08 16:01:40', '2022-06-08 16:44:05'),
(4, 4, 4, '-', 0, '2022-06-08 16:04:29', '2022-06-08 16:04:29'),
(38, 2, 5, '-', 0, '2022-06-08 17:57:36', '2022-06-08 17:57:36'),
(39, 2, 1, '-', 0, '2022-06-08 18:26:01', '2022-06-08 18:26:01'),
(41, 4, 6, '-', 0, '2022-06-09 06:05:41', '2022-06-09 06:05:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_arisans`
--

CREATE TABLE `kelompok_arisans` (
  `id` int(11) NOT NULL,
  `nama_kelompok` varchar(20) NOT NULL,
  `id_arisan` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelompok_arisans`
--

INSERT INTO `kelompok_arisans` (`id`, `nama_kelompok`, `id_arisan`, `keterangan`, `harga`, `slot`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Kelompok 1', 2, 'Dibayar Setiap Hari dengan Harga tertera', 25000, 20, 'Tersisa 17 Slot', '2022-06-08 11:47:40', '2022-06-08 18:26:01'),
(4, 'Kelompok 2', 5, 'Dibayar Setiap Awal Bulan dengan Harga tertera', 50000, 10, 'Tersisa 8 Slot', '2022-06-08 15:42:19', '2022-06-09 06:05:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_02_01_014521_create_setoran_table', 1),
(4, '2021_02_01_034021_create_users_table', 1),
(5, '2021_02_02_234936_create_pesertas_table', 1),
(6, '2021_02_03_233812_create_setorans_table', 1),
(7, '2021_02_05_000053_create_statuss_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `id_detail_kelompok` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `tgl_setor` date NOT NULL,
  `stts` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `id_kelompok`, `id_detail_kelompok`, `id_peserta`, `tgl_setor`, `stts`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 1, '2022-06-09', 1, NULL, '2022-06-09 03:18:23'),
(2, 4, 4, 4, '2022-06-10', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesertas`
--

CREATE TABLE `pesertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nm_peserta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stts` int(11) NOT NULL,
  `sttsPeserta` int(11) NOT NULL,
  `email` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesertas`
--

INSERT INTO `pesertas` (`id`, `nm_peserta`, `alamat`, `no_tlp`, `stts`, `sttsPeserta`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Rafi', 'Tulungagung', '081', 2, 0, '', '2022-05-31 06:24:31', '2022-06-08 18:26:01'),
(4, 'Debora', 'Nganjuk', '069', 1, 0, '', '2022-06-08 13:26:41', '2022-06-08 16:04:29'),
(5, 'Dila', 'Blitar', '021', 1, 0, '', '2022-06-08 17:09:43', '2022-06-08 17:57:36'),
(6, 'Febrian Pratama Putra', 'Malang', '02', 1, 0, 'f@gmail.com', '2022-06-09 03:34:18', '2022-06-09 06:05:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setoran`
--

CREATE TABLE `setoran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idpeserta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_setoran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_setoran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setorans`
--

CREATE TABLE `setorans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_peserta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nm_peserta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_setoran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_setoran` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `statuss`
--

CREATE TABLE `statuss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nm_peserta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `statuss`
--

INSERT INTO `statuss` (`id`, `nm_peserta`, `alamat`, `no_tlp`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rafi', 'Alamat', '081', 'belum lunas', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Nur Sukma P', 'a@gmail.com', '$2y$10$FSMwix/rfRqzhmk.mvjw1.5xwwEmKQRrbrFBPX/PT5rLSyp1pEUO2', 'admin', NULL, '2022-06-07 08:17:37'),
(2, 'Meilia Inka Putri', 'm@gmail.com', '$2y$10$FSMwix/rfRqzhmk.mvjw1.5xwwEmKQRrbrFBPX/PT5rLSyp1pEUO2', 'user', NULL, NULL),
(3, 'Febrian Pratama Putra', 'f@gmail.com', '$2y$10$A7WogUiI38yo6KjVhWVpBOf/cXC9PdaeqWCFGvcJOR/7K65woZNQC', 'user', '2022-06-09 03:34:18', '2022-06-09 03:34:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arisans`
--
ALTER TABLE `arisans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_kelompok_arisans`
--
ALTER TABLE `detail_kelompok_arisans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kelompok_arisans`
--
ALTER TABLE `kelompok_arisans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesertas`
--
ALTER TABLE `pesertas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setoran`
--
ALTER TABLE `setoran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setorans`
--
ALTER TABLE `setorans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `statuss`
--
ALTER TABLE `statuss`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arisans`
--
ALTER TABLE `arisans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `detail_kelompok_arisans`
--
ALTER TABLE `detail_kelompok_arisans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelompok_arisans`
--
ALTER TABLE `kelompok_arisans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pesertas`
--
ALTER TABLE `pesertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `setoran`
--
ALTER TABLE `setoran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setorans`
--
ALTER TABLE `setorans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `statuss`
--
ALTER TABLE `statuss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
