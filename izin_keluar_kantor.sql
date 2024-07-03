-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2024 pada 21.45
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
-- Database: `izin_keluar_kantor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` int(5) UNSIGNED NOT NULL,
  `bidang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `bidang`) VALUES
(3000, 'Operasi'),
(3001, 'Pemeliharaan'),
(3002, 'Enjiniring'),
(3003, 'Administrasi'),
(3004, 'Keamanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin`
--

CREATE TABLE `izin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal` date NOT NULL,
  `waktu_keluar` time NOT NULL,
  `waktu_kembali` time NOT NULL,
  `keperluan` int(2) NOT NULL,
  `uraian_keperluan` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `nip_penyetuju` bigint(20) NOT NULL,
  `tgl_disetujui` datetime DEFAULT NULL,
  `surat_izin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `izin`
--

INSERT INTO `izin` (`id`, `nip`, `tanggal`, `waktu_keluar`, `waktu_kembali`, `keperluan`, `uraian_keperluan`, `status`, `nip_penyetuju`, `tgl_disetujui`, `surat_izin`, `created_at`, `updated_at`) VALUES
(1, 11111, '2024-01-11', '07:59:00', '09:00:00', 0, 'Saya memerlukan izin keluar kantor karena memiliki janji medis yang tidak dapat dihindari.', 1, 22222, NULL, 'surat_izin_1.pdf', NULL, '2024-01-23 19:37:20'),
(2, 11111, '2024-01-12', '11:44:00', '11:48:00', 1, 'Saya diamanahi tugas untuk mewakili perusahaan dalam acara industri atau konferensi yang berdampak positif pada citra perusahaan.', 1, 22222, NULL, 'surat_izin_2.pdf', '2024-01-10 21:52:03', '2024-01-23 19:37:15'),
(26, 11111, '2024-01-16', '09:56:00', '12:05:00', 0, 'Saya ingin menghabiskan waktu bermain game online yang baru dirilis', 2, 22222, NULL, NULL, '2024-01-14 19:57:06', '2024-01-23 19:37:09'),
(27, 11111, '2024-01-16', '12:56:00', '15:04:00', 0, 'Ada acara olahraga besar yang ingin saya saksikan langsung, jadi saya ingin mengajukan izin', 2, 22222, NULL, NULL, '2024-01-14 20:56:09', '2024-01-23 19:37:02'),
(28, 11111, '2024-01-16', '11:21:00', '11:26:00', 0, 'Ada rencana pesta yang sayang untuk dilewatkan, jadi saya ingin mengambil cuti untuk bersenang-senang', 2, 22222, NULL, NULL, '2024-01-14 21:25:06', '2024-01-23 19:36:55'),
(34, 11111, '2024-01-18', '13:49:00', '19:49:00', 0, 'Saya perlu mengurus keperluan keluarga yang bersifat mendesak di luar kantor.', 1, 22222, NULL, 'surat_izin_34.pdf', '2024-01-15 23:56:26', '2024-01-23 19:36:51'),
(50, 11111, '2024-01-18', '15:39:00', '15:46:00', 0, 'Saya memiliki janji medis yang telah lama dijadwalkan dan tidak dapat dihindari.', 1, 22222, NULL, 'surat_izin_50.pdf', '2024-01-17 01:40:09', '2024-01-23 19:36:47'),
(52, 22222, '2024-01-24', '10:45:00', '10:51:00', 0, 'Saya membutuhkan izin keluar kantor untuk hari ini karena perlu waktu untuk fokus pada pemulihan mental dan kesehatan diri', 2, 22222, NULL, NULL, '2024-01-22 20:45:19', '2024-01-22 20:45:19'),
(55, 22222, '2024-01-29', '10:29:00', '10:31:00', 0, 'saya ingin meminta izin untuk meninggalkan kantor lebih awal karena ada acara keagamaan yang harus saya ikuti', 2, 22222, NULL, NULL, '2024-01-28 20:29:49', '2024-01-28 20:29:49'),
(57, 11111, '2024-01-29', '13:37:00', '18:44:00', 0, 'menjemput anak', 1, 22222, '2024-01-29 00:00:00', 'surat_izin_57.pdf', '2024-01-28 23:38:12', '2024-01-29 00:06:25'),
(60, 11111, '2024-01-30', '09:21:00', '09:27:00', 0, 'mendadak', 2, 22222, NULL, NULL, '2024-01-29 19:21:56', '2024-01-29 19:21:56'),
(61, 11111, '2024-01-30', '10:01:00', '15:06:00', 0, 'izin keluar kantor untuk menghadiri seminar penting', 1, 22222, '2024-01-30 00:00:00', 'D:\\PKL\\sistem_informasi_pln\\public\\surat izin keluar kantor/surat_izin_61.docx', '2024-01-29 20:00:28', '2024-01-29 21:36:39'),
(62, 11111, '2024-01-31', '10:14:00', '16:20:00', 0, 'Ada situasi mendesak yang membutuhkan kehadiran saya di luar kantor. Mohon izin untuk meninggalkan pekerjaan sejenak.', 1, 22222, '2024-01-31 07:23:54', 'D:\\PKL\\sistem_informasi_pln\\public\\surat izin keluar kantor/surat_izin_62.docx', '2024-01-30 20:14:51', '2024-01-31 00:23:54'),
(63, 13111, '2024-01-31', '13:12:00', '17:18:00', 0, 'Saya ingin meminta izin keluar kantor karena terlibat dalam kegiatan sukarela di komunitas yang telah direncanakan sejak lama.', 1, 22222, '2024-01-31 06:41:16', 'D:\\PKL\\sistem_informasi_pln\\public\\surat izin keluar kantor/surat_izin_63.docx', '2024-01-30 23:12:46', '2024-01-30 23:41:16'),
(74, 11111, '2024-02-13', '07:48:00', '13:54:00', 1, 'Saya ada tugas untuk menghadiri rapat mewakili pln ip tambak lorok', 1, 22222, '2024-02-13 03:08:50', 'D:\\PKL\\sistem_informasi_pln\\public\\surat izin keluar kantor/surat_izin_74.docx', '2024-02-12 17:52:02', '2024-02-12 20:08:50'),
(80, 11111, '2024-02-20', '09:28:00', '14:28:00', 0, 'servis hp', 1, 22222, '2024-02-20 02:34:10', 'surat_izin_80.docx', '2024-02-19 19:29:02', '2024-02-19 19:34:10'),
(82, 11111, '2024-02-27', '10:42:00', '14:46:00', 0, 'mengurus bank', 1, 22222, '2024-02-27 07:07:06', 'surat_izin_82.docx', '2024-02-19 20:43:12', '2024-02-27 00:07:06'),
(84, 11111, '2024-05-21', '15:13:00', '15:58:00', 0, 'izin mengurus ktp', 1, 22222, '2024-05-21 07:16:04', 'surat_izin_84.docx', '2024-05-21 00:14:49', '2024-05-21 00:16:04'),
(85, 11111, '2024-05-23', '14:21:00', '15:25:00', 0, 'izin mengurus rekening bank dan sim', 1, 22222, '2024-05-21 19:22:49', 'surat_izin_85.docx', '2024-05-21 12:21:32', '2024-05-21 12:22:49'),
(86, 11111, '2024-06-12', '13:27:00', '15:30:00', 0, 'ada keperluan mendadak untuk mengurus ktp', 1, 99999, '2024-06-11 11:42:30', 'surat_izin_86.docx', '2024-06-11 04:28:37', '2024-06-11 04:42:30'),
(87, 11111, '2024-06-25', '11:49:00', '13:51:00', 0, 'izin untuk mengurus stnk', 2, 22222, NULL, NULL, '2024-06-24 21:50:01', '2024-06-24 21:53:49'),
(88, 11111, '2024-06-26', '12:52:00', '14:54:00', 1, 'izin untuk menghadiri rapat pusat PT PLN', 2, 22222, NULL, NULL, '2024-06-24 21:51:45', '2024-06-24 21:51:45'),
(89, 11111, '2024-06-25', '14:44:00', '15:45:00', 0, 'izin mengurus stnk', 1, 22222, '2024-06-25 07:45:24', 'surat_izin_89.docx', '2024-06-25 00:44:18', '2024-06-25 00:45:24'),
(90, 11111, '2024-07-02', '14:17:00', '14:20:00', 0, 'rapat di pusat', 2, 22222, NULL, NULL, '2024-07-02 00:17:38', '2024-07-02 00:17:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(5) UNSIGNED NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `id_bidang` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`, `id_bidang`) VALUES
(2100, 'Manager Operasi', 3000),
(2101, 'Assistant Manager Perencanaan dan Pengendalian Operasi dan Niaga', 3000),
(2102, 'Assistant Manager Operasi (A-D)', 3000),
(2103, 'Assistant Manager Kimia, Energi Primer dan Material Operasi', 3000),
(2104, 'Assistant Manager K3 dan Lingkungan', 3000),
(2105, 'Officer Perencanaan dan Evaluasi Operasi', 3000),
(2106, 'Junior Officer Niaga (A-D)', 3000),
(2107, 'Team Leader Operasi PLTU (A-D)', 3000),
(2108, 'Junior Technician Operasi Control Room PLTU (A-D)', 3000),
(2109, 'Team Leader Operasi PLTGU Blok 1-2 (A-D)', 3000),
(2110, 'Junior Technician Operasi Control Room PLTGU Blok 1-2 (A-D)', 3000),
(2111, 'Junior Technician Operasi Turbin PLTGU Blok 3 (A-D)', 3000),
(2112, 'Team Leader Operasional PLTGU Blok 3 (A-D)', 3000),
(2113, 'Junior Technician Operasi Control Room PLTGU Blok 3 (A-D)', 3000),
(2114, 'Junior Technician Operasi Turbin PLTGU Blok 3 (A-D)', 3000),
(2115, 'Team Leader Kimia', 3000),
(2116, 'Junior Officer Kimia', 3000),
(2117, 'Team Leader Energi Primer dan Material Operasi', 3000),
(2118, 'Junior Officer Energi Primer dan Material Operasi', 3000),
(2119, 'Officer K3', 3000),
(2120, 'Officer Lingkungan', 3000),
(2121, 'Junior Officer K3', 3000),
(2122, 'Junior Officer Lingkungan', 3000),
(2200, 'Manager Pemeliharaan', 3001),
(2201, 'Assistant Manager Perencanaan dan Pengendalian Pemeliharaan dan Inventory', 3001),
(2202, 'Assistant Manager Outage', 3001),
(2203, 'Assistant Manager Pemeliharaan Mesin', 3001),
(2204, 'Assistant Manager Pemeliharaan Listrik', 3001),
(2205, 'Assistant Manager Pemeliharaan Kontrol dan Instrumen', 3001),
(2206, 'Officer Perencanaan dan Evaluasi Pemeliharaan', 3001),
(2207, 'Officer Inventory', 3001),
(2208, 'Officer Perencanaan Outage', 3001),
(2209, 'Team Leader Pemeliharaan Mesin PLTGU Blok 1-2', 3001),
(2210, 'Junior Technician Pemeliharaan Mesin PLTGU Blok 1-2', 3001),
(2211, 'Team Leader Pemeliharaan Mesin PLTGU Blok 3', 3001),
(2212, 'Junior Technician Pemeliharaan Mesin PLTGU Blok 3', 3001),
(2213, 'Team Leader Pemeliharaan Mesin PLTU', 3001),
(2214, 'Junior Technician Pemeliharaan Mesin PLTU', 3001),
(2215, 'Team Leader Pemeliharaan Mesin BOP Bengkel dan Tools', 3001),
(2216, 'Junior Technician Pemeliharaan Mesin dan BOP Bengkel dan Tools', 3001),
(2217, 'Team Leader Pemeliharaan Listrik PLTGU Blok 1-2', 3001),
(2218, 'Junior Technician Pemeliharaan Listrik PLTGU Blok 1-2', 3001),
(2219, 'Team Leader Pemeliharaan Listrik PLTGU Blok 3', 3001),
(2220, 'Junior Technician Pemeliharaan Listrik PLTGU Blok 3', 3001),
(2221, 'Team Leader Pemeliharaan Listrik PLTU', 3001),
(2222, 'Junior Technician Pemeliharaan Listrik PLTU', 3001),
(2223, 'Team Leader Pemeliharaan Listrik BOP', 3001),
(2224, 'Junior Technician Pemeliharaan Listrik BOP', 3001),
(2225, 'Team Leader Pemeliharaan Kontrol dan Instrumen PLTGU Blok 1-2', 3001),
(2226, 'Junior Technician Pemeliharaan Kontrol dan Instrumen PLTGU Blok 1-2', 3001),
(2227, 'Team Leader Pemeliharaan Kontrol dan Instrumen PLTGU Blok 3', 3001),
(2228, 'Junior Technician Pemeliharaan Kontrol dan Instrumen PLTGU Blok 3', 3001),
(2229, 'Team Leader Pemeliharaan Kontrol dan Instrumen PLTU', 3001),
(2230, 'Junior Technician Pemeliharaan Kontrol dan Instrumen PLTU', 3001),
(2231, 'Team Leader Pemeliharaan Kontrol dan Instrumen BOP', 3001),
(2232, 'Junior Technician Pemeliharaan Kontrol dan Instrumen PLTU', 3001),
(2300, 'Manager Enjiniring', 3002),
(2301, 'Assistant Manager Perencanaan Unit dan Kinerja', 3002),
(2302, 'Assistant Manager Reliability dan Condition Based Maintenance', 3002),
(2303, 'Assistant Manager Manajemen Risiko, Life Cycle Management dan Investasi', 3002),
(2304, 'Assistant Manager Informasi', 3002),
(2305, 'Senior Officer Enjiniring Turbin', 3002),
(2306, 'Senior Officer Enjiniring Boiler dan HSRG', 3002),
(2307, 'Senior Officer Enjiniring Listrik', 3002),
(2308, 'Senior Officer Enjiniring Kontrol dan Instrumen', 3002),
(2309, 'Senior Officer Enjiniring BOP', 3002),
(2310, 'Senior Officer Enjiniring Kimia, K3 dan Lingkungan', 3002),
(2311, 'Senior Officer Enjiniring Efisiensi', 3002),
(2312, 'Officer Pengelolaan RJP dan Kinerja Unit', 3002),
(2313, 'Officer Knowledge Management dan Inovasi', 3002),
(2314, 'Officer Sistem Manajemen Terintegrasi', 3002),
(2315, 'Officer Reliability', 3002),
(2316, 'Officer Predictive Maintenance', 3002),
(2317, 'Junior Officer Predictive Maintenance', 3002),
(2318, 'Officer Manajemen Risiko', 3002),
(2319, 'Officer Life Cycle Management dan Investasi', 3002),
(2320, 'Officer Sistem Informasi', 3002),
(2321, 'Junior Officer Infrastruktur', 3002),
(2400, 'Manager Administrasi', 3003),
(2401, 'Assistant Manager Keuangan dan Pajak', 3003),
(2402, 'Assistant Manager SDM', 3003),
(2403, 'Assistant Manager Umum', 3003),
(2404, 'Assistant Manager Keamanan dan Humas', 3003),
(2405, 'Assistant Manager Pengadaan Barang dan Jasa', 3003),
(2406, 'Assistant Manager Gudang', 3003),
(2407, 'Assistant Manager Akuntansi dan Anggaran', 3003),
(2408, 'Officer Keuangan', 3003),
(2409, 'Officer Pajak', 3003),
(2410, 'Junior Officer Keuangan', 3003),
(2411, 'Junior Officer Pajak', 3003),
(2412, 'Officer SDM', 3003),
(2413, 'Officer Budaya dan OCG', 3003),
(2414, 'Junior Officer Kepegawaian', 3003),
(2415, 'Junior Officer Pengembangan Kompetensi', 3003),
(2416, 'Officer Sipil, Fasilitas, Sarana Gedung, dan Bangunan', 3003),
(2417, 'Junior Officer Fasilitas, Sarana Gedung, dan Bangunan', 3003),
(2418, 'Junior Officer Kesekretariatan', 3003),
(2419, 'Officer Community Development', 3003),
(2420, 'Junior Officer Humas dan Protokoler', 3003),
(2421, 'Team Leader Keamanan', 3003),
(2422, 'Officer Pengadaan Barang dan Jasa', 3003),
(2423, 'Junior Officer Gudang', 3003),
(2424, 'Officer Akuntansi', 3003),
(2425, 'Officer Anggaran', 3003),
(2426, 'Junior Officer Akuntansi', 3003),
(2427, 'Junior Officer Anggaran', 3003),
(2501, 'Keamanan', 3004);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `team_leader` bigint(20) UNSIGNED DEFAULT NULL,
  `nip_atasan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_jabatan` int(2) UNSIGNED DEFAULT NULL,
  `id_bidang` int(2) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `team_leader`, `nip_atasan`, `id_jabatan`, `id_bidang`, `updated_at`, `created_at`) VALUES
(1, 'tidak ada atasan', NULL, NULL, NULL, NULL, NULL, NULL),
(11111, 'Reza Hilmi Dafa', NULL, 22222, 2320, 3002, '2024-06-25 00:48:15', NULL),
(11112, 'Anindhita Rahma Cahyadi', NULL, 22222, 2320, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11113, 'Christy Chriselle', NULL, 22222, 2307, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11114, 'Zahra Nur Khaulah', NULL, 22222, 2308, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11115, 'Chalista Ellysia', NULL, 22222, 2309, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11116, 'Christabel Jocelyn', NULL, 22222, 2310, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11117, 'Iris Vevina Prasetio', NULL, 22222, 2311, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11118, 'Nabila Gusmarlia', NULL, 22222, 2312, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11119, 'Olivia Payten', NULL, 22222, 2313, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11120, 'Putri Elzahra', NULL, 22222, 2314, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(11121, 'Shinta Devi', NULL, 22222, 2315, 3002, '2024-06-25 00:50:38', '2024-06-25 00:50:38'),
(13111, 'Silvira Nabila Anggita Giraldi', NULL, 22222, 2320, 3002, '2024-06-25 00:48:15', '2024-01-30 23:11:15'),
(22222, 'Shani Indira Natio', NULL, 33333, 2304, 3002, '2024-06-25 00:48:15', '2024-02-14 18:56:13'),
(33333, 'Jiro Inao', NULL, 1, 2300, 3002, '2024-02-26 23:29:07', NULL),
(99999, 'sdm', NULL, 1, 2320, 3002, '2024-02-19 20:58:52', '2024-02-01 02:02:49'),
(777777, 'Keamanan', NULL, 1, 2501, 3004, '2024-02-21 01:58:32', '2024-02-21 00:32:37'),
(99999999, 'akmal', NULL, 22222, 2122, 3001, '2024-06-25 00:49:50', '2024-06-25 00:49:33'),
(23940234823, 'Fuad', NULL, 22222, 2202, 3001, '2024-06-25 00:48:15', '2024-05-21 12:36:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 'rezahilmidafa@gmail.com', 11111, 'pegawai', NULL, '$2y$12$CqeTCzvEhLsFw1k280fXDu/7o0xBgeMUe17zlfhBWE/zWPJg/7xPa', '2024-01-04 23:18:05', '2024-02-26 23:29:07'),
(3, 'jiro.inao@gmail.com', 33333, 'pegawai', NULL, '$2y$12$GAJlkz4gu/egd.eCHPpp7uTCPOYOjoI1YrAjBWu05o6kWoAunfUy6', '2024-01-24 17:30:52', '2024-02-15 21:29:06'),
(4, 'o0darkkatana0o@gmail.com', 22222, 'atasan', NULL, '$2y$12$CqeTCzvEhLsFw1k280fXDu/7o0xBgeMUe17zlfhBWE/zWPJg/7xPa', NULL, '2024-06-25 00:48:15'),
(5, 'silviranabila@gmail.com', 13111, 'pegawai', NULL, '$2y$12$njqgZC8.Qfizz3G5aIijeOhfbaJ7WBfYzcYDVIp.ahbAnSZ0tB.N2', '2024-01-30 23:11:15', '2024-06-25 00:48:15'),
(6, 'sdm@gmail.com', 99999, 'sdm', NULL, '$2y$12$GAJlkz4gu/egd.eCHPpp7uTCPOYOjoI1YrAjBWu05o6kWoAunfUy6', '2024-02-01 02:02:49', '2024-02-14 19:34:12'),
(79, 'tanyaajalangsung@gmail.com', 777777, 'keamanan', NULL, '$2y$12$lPVjbec1DnjPqSmjDCCgXucAlVhM869uPk8MZA6uNTeJl62LgLxEO', '2024-02-21 00:32:37', '2024-02-21 01:58:32'),
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
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`nip`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `id_bidang` (`id_bidang`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `pegawai_ibfk_3` (`nip_atasan`),
  ADD KEY `team_leader` (`team_leader`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `izin`
--
ALTER TABLE `izin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2502;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_bidang`) REFERENCES `bidang` (`id_bidang`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `pegawai_ibfk_3` FOREIGN KEY (`nip_atasan`) REFERENCES `pegawai` (`nip`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_4` FOREIGN KEY (`team_leader`) REFERENCES `pegawai` (`nip`) ON DELETE SET NULL ON UPDATE CASCADE;

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `update_status_izin` ON SCHEDULE EVERY 1 MINUTE STARTS '2024-01-15 11:24:25' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Update permission status based on return date' DO BEGIN
    UPDATE izin
    SET status = 2
    WHERE status = 0 AND (CONCAT(tanggal, ' ', waktu_kembali) <= NOW());
  END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
