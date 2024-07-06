-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2024 pada 22.49
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perizinan_meninggalkan_kantor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `nip` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(30) DEFAULT NULL,
  `temporary_role` varchar(30) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `nip`, `role`, `temporary_role`, `password`, `created_at`, `updated_at`) VALUES
(2, 'reza_hd@gmail.com', 11111, 'pegawai', NULL, '$2y$12$CqeTCzvEhLsFw1k280fXDu/7o0xBgeMUe17zlfhBWE/zWPJg/7xPa', '2024-01-04 23:18:05', '2024-02-26 23:29:07'),
(3, 'jiro.inao@gmail.com', 33333, 'pegawai', NULL, '$2y$12$GAJlkz4gu/egd.eCHPpp7uTCPOYOjoI1YrAjBWu05o6kWoAunfUy6', '2024-01-24 17:30:52', '2024-02-15 21:29:06'),
(4, 'shaniIndira@gmail.com', 22222, 'atasan', NULL, '$2y$12$CqeTCzvEhLsFw1k280fXDu/7o0xBgeMUe17zlfhBWE/zWPJg/7xPa', NULL, '2024-06-25 00:48:15'),
(5, 'silviranabila@gmail.com', 13111, 'pegawai', NULL, '$2y$12$njqgZC8.Qfizz3G5aIijeOhfbaJ7WBfYzcYDVIp.ahbAnSZ0tB.N2', '2024-01-30 23:11:15', '2024-06-25 00:48:15'),
(6, 'sdm@gmail.com', 99999, 'sdm', NULL, '$2y$12$GAJlkz4gu/egd.eCHPpp7uTCPOYOjoI1YrAjBWu05o6kWoAunfUy6', '2024-02-01 02:02:49', '2024-02-14 19:34:12'),
(79, 'keamanan@gmail.com', 777777, 'keamanan', NULL, '$2y$12$lPVjbec1DnjPqSmjDCCgXucAlVhM869uPk8MZA6uNTeJl62LgLxEO', '2024-02-21 00:32:37', '2024-02-21 01:58:32'),
(91, 'fuad@gmail.com', 23940234823, 'pegawai', NULL, '$2y$12$bSi.4QAAzIlBtQRt7m7KMuJ0pUUM3wN.k3wojE8Oqww/odHoSSR5K', '2024-05-21 12:36:54', '2024-05-21 12:37:13'),
(102, 'akmal@gmail.com', 99999999, 'pegawai', NULL, '$2y$12$Bp1eLF5J.3BKH8UZ2IM3UO9RtXBfTz3jik5glt5jacciQXuKiOnhq', '2024-06-25 00:49:33', '2024-06-25 00:49:50'),
(103, 'anindhita.rahma@gmail.com', 11112, 'pegawai', NULL, '$2y$12$JCpYEkdX1nS6m408Pv76O.IrMBFxLfLLIgp3r/MYsmgPvBW8JYl9O', '2024-06-25 00:50:35', '2024-06-25 00:50:35'),
(104, 'christy.chriselle@gmail.com', 11113, 'pegawai', NULL, '$2y$12$dPX/35tzs7uSYNCX.kHJmevTbaNnCbu8cik0XEfoawCrjuQbTsNjK', '2024-06-25 00:50:35', '2024-06-25 00:50:35'),
(105, 'zahra.nur@gmail.com', 11114, 'pegawai', NULL, '$2y$12$5YLt/Iu4u.Ggllq9UAt7.OO30JCYX97x.jzVeo24VmAD6/yXUM43C', '2024-06-25 00:50:35', '2024-06-25 00:50:35'),
(106, 'chalista.ellysia@gmail.com', 11115, 'pegawai', NULL, '$2y$12$ttDssiynAH3fkTJhxVowAOwGnk.nii0jOsjvRRrE9Gjf34/MgiFSa', '2024-06-25 00:50:36', '2024-06-25 00:50:36'),
(107, 'christabel.jocelyn@gmail.com', 11116, 'pegawai', NULL, '$2y$12$g2b4R.7prRwhrcVV/PXLxO9hTxBzUNpr.LGzNgz.9iQeDyHdMIn62', '2024-06-25 00:50:36', '2024-06-25 00:50:36'),
(108, 'iris.vevina@gmail.com', 11117, 'pegawai', NULL, '$2y$12$uUaFqg4i0ShefUb/MwTnsuAbKwwGuaxp5fHkpE65CZT.LmsAAW42i', '2024-06-25 00:50:36', '2024-06-25 00:50:36'),
(109, 'nabila.gusmarlia@gmail.com', 11118, 'pegawai', NULL, '$2y$12$31CUFn896dt9wMIic9Nb/O0UWW203luS2LE.V4Tq3gY6aZy2RCy9G', '2024-06-25 00:50:37', '2024-06-25 00:50:37'),
(110, 'olivia.payten@gmail.com', 11119, 'pegawai', NULL, '$2y$12$pcAmBE091/GrvSoKSr3Ua.CfrLtxkaDseTcysi8FFIdNpBAiENsF2', '2024-06-25 00:50:37', '2024-06-25 00:50:37'),
(111, 'putri.elzahra@gmail.com', 11120, 'pegawai', NULL, '$2y$12$v2rPFLkRrzy/kkU.p/v8zOygB0yiSG6pNM0N4M1aMAk3rVHNZLG.G', '2024-06-25 00:50:37', '2024-06-25 00:50:37'),
(112, 'shinta.devi@gmail.com', 11121, 'pegawai', NULL, '$2y$12$9uj9Ni/nSTHKq4K0jYtRzuZiREfKnXht3o8umJFV/QSnzdrIRwIzO', '2024-06-25 00:50:37', '2024-06-25 00:50:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
