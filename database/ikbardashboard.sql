-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2024 pada 17.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikbardashboard`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datahub`
--

CREATE TABLE `datahub` (
  `iddatahub` int(11) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `region` varchar(100) NOT NULL,
  `kepala_sekolah` varchar(255) DEFAULT NULL,
  `wakil_kepala_operasional` varchar(255) DEFAULT NULL,
  `no_admin_hub` varchar(20) DEFAULT NULL,
  `start_sewa` date DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `luas_bangunan` float DEFAULT NULL,
  `pks_sewa_menyewa` varchar(255) DEFAULT NULL,
  `legalitas_bangunan` varchar(255) DEFAULT NULL,
  `budget_pengeluaran_hub` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datahub`
--

INSERT INTO `datahub` (`iddatahub`, `lokasi`, `status`, `region`, `kepala_sekolah`, `wakil_kepala_operasional`, `no_admin_hub`, `start_sewa`, `nama_pemilik`, `luas_bangunan`, `pks_sewa_menyewa`, `legalitas_bangunan`, `budget_pengeluaran_hub`) VALUES
(1, 'SMM Grogol - Jakarta Barat 1', 'SID', 'Central', 'Ade Susilawati', 'Thalia Ashira Purwanto', '0851-7406-5750', '2023-02-01', 'PT Pos Properti Indonesia', 180, 'PKS Sewa Unit SMM Grogol', 'Legalitas SMM Grogol - Jakarta Barat 1', '770.202.092'),
(2, 'SMM Prawirotaman - Yogyakarta 1', 'SID', 'Central', 'Galang Mandiring Pribadi', '', '0851-7441-7433', '0000-00-00', '', 195, '', '', '363.894.920'),
(3, 'SMM JGC Cakung - Jakarta Timur 3', 'SID', 'Central', 'Nur Anisa', 'Eky Erwanto Putra', '0851-7438-9676', '2023-04-01', 'Eddy Supriyono', 400, 'PKS Sewa SMM JGC', '', '719.524.506'),
(4, 'SMM Kota Barat - Solo 1', 'SID', 'Central', '', 'Siti Shofiyyah', '0851-7507-5070', '2023-05-01', 'Herman Dewanto, S.I.P', 300, 'PKS Sewa SMM Kota Barat', '', '205.207.932'),
(5, 'SMM Raya Langsep - Malang 1', 'SID', 'Central', '', 'Rochmatika Nur Anisa', '0851-7433-5029', '2023-06-06', 'Endang Widarsih', 300, 'PKS Sewa SMM Raya Langsep', '', '295.611.120'),
(6, 'SMM Tebet - Jakarta Selatan 4', 'SID', 'Central', 'Hari Prasetio', '', '0821-2000-8266', '2023-06-16', '', 300, '', '', '479.454.403'),
(7, 'SMM Kelapa Gading - Jakarta Utara 1', 'SID', 'Central', '', 'Bella Nadya', '0821-2488-1066', '2023-11-24', 'Siguan Tunaldi', 420, 'PKS Sewa SMM Kelapa Gading', '', '498.622.837'),
(8, 'SMM Sriwijaya - Semarang 1', 'SID', 'Central', '', 'Atina Zahiratul Fikrah', '0851-6253-2075', '2023-01-10', 'Henry Fernando', 350, 'PKS Sewa SMM Sriwijaya', '', '385.795.810'),
(9, 'SMM Banjar Wijaya Cipondoh - Tangerang 1', 'SID', 'Central', 'Imtiyaz Fawaida', '', '', '2024-04-19', 'VIYENTI TARJADINATA Viyenti Tarjadinata', 414, 'PKS Sewa SMM Cipondoh', 'SMM Cipondoh - Tangerang 1', '1.382.821.043'),
(10, 'SMM Joglo - Jakarta Barat 2', 'SID', 'Central', 'Aprin Kislina', '', '', '2024-05-19', 'Ema Kuwati', 200, 'PKS Sewa SMM Joglo', '', '1.424.023.930'),
(11, 'SMM Duren Sawit - Jakarta Timur 2', 'SID - Relokasi', 'Central', 'Siti Mariam', 'Vina Rahmatika', '0851-7435-0870', '2024-06-16', 'Ilodye Marcelyn Taruly', 433, 'PKS Duren Sawit', '', '1.219.348.008'),
(12, 'SMM Airlangga - Surabaya 2', 'SID - Relokasi', 'Central', 'Stephanie Wyllie', '', '0851-6253-9313', '2023-04-04', 'PT Graha Sarana Duta', 306, 'PKS Airlangga', '', '904.086.321'),
(13, 'SMM Cilandak - Jakarta Selatan 2', 'SID', 'West', 'Kurniati', 'Azmina Syahida', '0851-6253-7679', '2024-01-01', 'Handayani Kariko & Fatmawaty Assegaf', 800, 'PKS Sewa Unit SMM Cilandak', '', '1.133.982.061'),
(14, 'SMM Eduverse - Bandung 1', 'SID', 'West', 'Aditya Nur Rahman', 'Dary Muhammad Putera', '0851-6253-0620', '2022-10-01', 'Endro Tjahjono', 282, 'PKS Sewa SMM Eduverse', 'Legalitas SMM Eduverse - Bandung 1', '881.844.775'),
(15, 'SMM Pandu Raya - Bogor 1', 'SID', 'West', 'Nina Safitri', 'Sonny Irawan', '0851-5809-3998', '2024-02-03', 'Suratmi Scherl', 0, 'PKS Sewa SMM Pandu Raya', '', '239.939.068'),
(16, 'SMM Gajah Mada - Medan 1', 'SID', 'West', 'Monika Lingga', '', '0851-8689-3434', '2023-05-21', 'Jayarman', 300, 'PKS Sewa SMM Gajah Mada', 'Legalitas SMM Gajah Mada - Medan 1', '533.385.449'),
(17, 'SMM Cibubur - Depok 2', 'SID', 'West', 'Rani Indriani', 'Muhamad Tourqi Sulaeman Fauzi', '0851-7444-8261', '2023-07-15', 'PT Graha Sarana Duta', 450, 'PKS Sewa SMM Cibubur', '', '395.626.066'),
(18, 'SMM Bojongsari - Depok 3', 'SID', 'West', 'Meirisa Talitha', 'Ninda Pinka', '0823-1250-2751', '2023-11-12', 'Herriyanto', 400, 'PKS Sewa SMM Bojongsari', 'Legalitas SMM Bojongsari - Depok 3', '1.094.758.109'),
(19, 'SMM Jagakarsa - Jakarta Selatan 5', 'SID', 'West', 'Siti Nuratiyah', '', '0852-8044-6600', '0000-00-00', 'Teguh Wirawan', 425, 'PKS Sewa Unit SMM Jagakarsa', 'Legalitas SMM Jagakarsa - Jakarta Selatan 5', '931.572.590'),
(20, 'SMM Cinere - Depok 4', 'SID', 'West', 'Tamara Indah Puspita', '', '0857-7396-5812', '2024-01-31', 'Kusnorosidi', 450, 'PKS Sewa Unit SMM Cinere', 'Legalitas SMM Cinere - Depok 4', '456.787.547'),
(21, 'SMM Kota Wisata - Bogor 2', 'SID', 'West', 'Agaphe Martha', '', '0851-8305-0582', '2024-02-20', 'Febri Wijayanto', 330, 'PKS Sewa SMM Kota Wisata', 'Legalitas SMM Kota Wisata - Bogor 2', '868.751.940'),
(22, 'SMM Cikarang - Bekasi 6', 'SID', 'West', '', 'Suci Yusrina Ilman', '0851-7976-6876', '2024-02-13', 'Christopher Roy', 682, 'PKS Sewa SMM Cikarang', 'Legalitas SMM Cikarang - Bekasi 6', '1.111.760.094'),
(23, 'SMM Sentul City - Bogor 3', 'SID', 'West', '', 'Noval Fahwiarman', '0851-8303-0064', '2024-02-01', 'DR. Jimmy Budi Haryanto, SE,SH,MH,MBA', 520, 'PKS Sewa SMM Sentul City', 'Legalitas SMM Sentul City - Bogor 3', '934.320.450'),
(24, 'SMM Depok Jaya - Depok 1', 'SID - Relokasi', 'West', 'Ranggi Kanya', 'Nia Nur Malasari', '0851-6253-0297', '2023-07-14', 'PT Pos Properti Indonesia', 219, 'PKS Sewa Unit Depok Jaya', 'Legalitas SMM Depok Jaya - Depok 1', '828.668.561'),
(25, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'SID', 'East', 'Hulda Widi', 'Taopik Hidayat', '0851-6252-5264', '2023-01-08', 'Umiyatun Hayati Triastuti', 300, 'PKS Sewa Unit SMM Bintaro Sektor IX', 'Legalitas SMM Bintaro Sektor IX - Tangerang Selatan 1', '536.722.503'),
(26, 'SMM Ciputat - Tangerang Selatan 4', 'SID', 'East', 'Mia Roosmalisa Dewi', '', '0851-7441-7972', '2023-05-01', 'Yayasan Dakwah Lentera Hati Indonesia', 338, 'PKS Sewa SMM Ciputat', 'Legalitas SMM Ciputat - Tangerang Selatan 4', '243.381.489'),
(27, 'SMM Pondok Cabe - Tangerang Selatan 5', 'SID', 'East', 'Naufal Pribadi', '', '0851-7441-5957', '0000-00-00', '', 0, '', '', '834.362.265'),
(28, 'SMM Agus Salim - Bekasi 4', 'SID', 'East', '', 'Dyan Wahyuning Praharwati', '0851-7444-7341', '2023-05-01', 'Hian Fen', 350, 'PKS Sewa SMM Agus Salim', 'Legalitas SMM Agus Salim - Bekasi 4', '440.561.229'),
(29, 'SMM Denpasar Timur - Denpasar 1', 'SID', 'East', 'Aria Negara', '', '0878-8584-6567', '2023-09-01', 'A.A. Nyoman Djawi', 263, 'PKS Sewa SMM Denpasar Timur', 'Legalitas SMM Denpasar Timur - Denpasar 1', '589.798.024'),
(30, 'SMM Jatiasih - Bekasi 5', 'SID', 'East', '', 'Gilang Wisnugroho', '0852-8391-0306', '2023-11-20', 'Mansyur Tampubolon', 400, 'PKS Sewa SMM Jatiasih', 'Legalitas SMM Jatiasih - Bekasi 5', '919.855.581'),
(31, 'SMM Batu Putih - Makassar 1', 'SID', 'East', '', 'Aula Qonita Insani', '0851-7979-7698', '2024-04-20', 'Rizaldi Andi Ramlan', 0, 'PKS Sewa SMM Batu Putih', 'SMM Batu Putih - Makassar 1', '1.522.937.667'),
(32, 'SMM Rumah Perubahan - Bekasi 7', 'SID', 'East', 'Nur Anisa', 'Nahla Syauva', '0851-7984-7821', '2024-05-02', 'Yayasan Rumah Perubahan Indonesia', 0, 'PKS Sewa SMM Rumah Perubahan', 'SMM Rumah Perubahan - Bekasi 7', '368.130.323'),
(33, 'SMM Setu Pamulang - Tangerang Selatan 3', 'SID - Relokasi', 'East', 'Rini Astuti', '', '0851-7972-8690', '2024-01-16', 'Made Satriyani', 2000, 'PKS Sewa Unit SMM Setu Pamulang', 'SMM Setu Pamulang - Tangerang Selatan 3', '906.075.090');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `penerima`, `qty`) VALUES
(11, 14, '2024-11-03 19:39:57', 'Nico', 100),
(12, 14, '2024-11-03 19:40:24', 'Nico', 100),
(13, 14, '2024-11-03 20:21:43', 'Nico', 100),
(14, 14, '2024-11-03 20:23:10', 'Nico', 100),
(15, 15, '2024-11-03 20:29:39', 'Nico', 100),
(16, 15, '2024-11-03 20:52:13', 'Nico', 100),
(17, 11, '2024-11-13 07:48:46', 'SDF', 1),
(18, 12, '2024-11-13 08:05:58', 'dsa', 2),
(19, 13, '2024-11-13 08:09:06', 'asd', 1),
(20, 13, '2024-11-13 08:24:32', 'asd', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`) VALUES
(1, 'ikbarfirdaus@gmail.com', 'manunited14'),
(4, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `qtyb` int(11) NOT NULL,
  `qtyr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `penerima`, `qty`, `qtyb`, `qtyr`) VALUES
(13, 10, '2024-11-03 18:57:20', 'Nico', 100, 0, 0),
(16, 14, '2024-11-03 19:47:17', 'Nico', 100, 0, 0),
(17, 14, '2024-11-03 19:50:53', 'Nico', 0, 100, 0),
(18, 14, '2024-11-03 19:53:59', 'Nico', 0, 0, 100),
(19, 14, '2024-11-03 20:06:32', 'Nico', 50, 0, 50),
(20, 14, '2024-11-03 20:07:25', 'Nico', 0, 100, 0),
(21, 15, '2024-11-03 20:28:03', 'Nico', 100, 0, 0),
(22, 15, '2024-11-03 20:28:25', 'Nico', 0, 100, 0),
(23, 15, '2024-11-03 20:28:39', 'Nico', 0, 0, 100),
(24, 15, '2024-11-03 20:51:53', 'Nico', 200, 0, 0),
(25, 11, '2024-11-04 06:15:43', 'Ikbar', 100, 100, 100),
(26, 13, '2024-11-13 07:41:12', 'ASD', 10, 0, 10),
(27, 12, '2024-11-13 08:05:45', 'ASD', 1, 0, 1),
(28, 11, '2024-11-13 08:08:51', 'asd', 2, 0, 2),
(29, 12, '2024-11-13 08:24:17', 'asd', 5, 0, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `realisasi`
--

CREATE TABLE `realisasi` (
  `idrealisasi` int(11) NOT NULL,
  `hub` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `realisasi`
--

INSERT INTO `realisasi` (`idrealisasi`, `hub`) VALUES
(1, 'SMM Kemang Pratama - Bekasi 2'),
(2, 'SMM Bintaro Sektor IX - Tangerang Selatan 1'),
(3, 'SMM Cilandak - Jakarta Selatan 2'),
(4, 'SMM Eduverse - Bandung 1'),
(5, 'SMM Pandu Raya - Bogor 1'),
(6, 'SMM Grogol - Jakarta Barat 1'),
(7, 'SMM Prawirotaman - Yogyakarta 1'),
(8, 'SMM Ciputat - Tangerang Selatan 4'),
(9, 'SMM Pondok Cabe - Tangerang Selatan 5'),
(10, 'SMM JGC Cakung - Jakarta Timur 3'),
(11, 'SMM Agus Salim - Bekasi 4'),
(12, 'SMM Kota Barat - Solo 1'),
(13, 'SMM Raya Langsep - Malang 1'),
(14, 'SMM Gajah Mada - Medan 1'),
(15, 'SMM Tebet - Jakarta Selatan 4'),
(16, 'SMM Cibubur - Depok 2'),
(17, 'SMM Denpasar Timur - Denpasar 1'),
(18, 'SMM Bojongsari - Depok 3'),
(19, 'SMM Jatiasih - Bekasi 5'),
(20, 'SMM Kelapa Gading - Jakarta Utara 1'),
(21, 'SMM Jagakarsa - Jakarta Selatan 5'),
(22, 'SMM Cinere - Depok 4'),
(23, 'SMM Kota Wisata - Bogor 2'),
(24, 'SMM Cikarang - Bekasi 6'),
(25, 'SMM Sentul City - Bogor 3'),
(26, 'SMM Sriwijaya - Semarang 1'),
(27, 'SMM Batu Putih - Makassar 1'),
(28, 'SMM Rumah Perubahan - Bekasi 7'),
(29, 'SMM Banjar Wijaya Cipondoh - Tangerang 1'),
(30, 'SMM Joglo - Jakarta Barat 2'),
(31, 'SMM Setu Pamulang - Tangerang Selatan 3'),
(32, 'SMM Depok Jaya - Depok 1'),
(33, 'SMM Duren Sawit - Jakarta Timur 2'),
(34, 'SMM Airlangga - Surabaya 2'),
(35, 'SMM BSD City - Tangerang 2'),
(36, 'SMM Margonda - Depok 5'),
(37, 'SMM Galuh Mas - Karawang 1'),
(38, 'SMM Kotabaru - Yogyakarta 2'),
(39, 'SMM Matraman - Jakarta Timur 4'),
(40, 'SMM Cipto Mangunkusumo - Cirebon 1'),
(41, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7'),
(42, 'SMM Harapan Indah - Bekasi 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `realisasi_foto`
--

CREATE TABLE `realisasi_foto` (
  `id` int(11) NOT NULL,
  `idrealisasi` int(11) NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `realisasi_foto`
--

INSERT INTO `realisasi_foto` (`id`, `idrealisasi`, `judul`, `foto`) VALUES
(1, 1, 'Gambar 1', 'uploads/629d8378d164259adc300681e8c97075.jpg'),
(2, 2, 'Gambar 1', 'uploads/629d8378d164259adc300681e8c97075.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `risetpasar`
--

CREATE TABLE `risetpasar` (
  `idrisetpasar` int(11) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `week_ke` text DEFAULT NULL,
  `pic_leads` varchar(100) DEFAULT NULL,
  `wilayah` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `bentuk` varchar(50) DEFAULT NULL,
  `nama_agent_owner` varchar(100) DEFAULT NULL,
  `kontak_hp_agent_owner` varchar(20) DEFAULT NULL,
  `biaya_sewa_tahun` text DEFAULT NULL,
  `luas_tanah_m2` float DEFAULT NULL,
  `luas_bangunan_m2` text DEFAULT NULL,
  `status_properti` varchar(50) DEFAULT NULL,
  `terdapat_halaman` text DEFAULT NULL,
  `lokasi_pinggir_jalan_raya` text DEFAULT NULL,
  `dokumen_legal_shm` text DEFAULT NULL,
  `dokumen_legal_imb_pbg` text DEFAULT NULL,
  `dokumen_legal_pbb` text DEFAULT NULL,
  `diizinikan_buat_sekolah` text DEFAULT NULL,
  `opsi_sewa_5_tahun` text DEFAULT NULL,
  `diizinkan_oleh_developer` text DEFAULT NULL,
  `lokasi_google_maps` text DEFAULT NULL,
  `link_iklan` varchar(255) DEFAULT NULL,
  `dokumentasi_foto_fasilitas` varchar(255) DEFAULT NULL,
  `acc_am_operations` varchar(100) DEFAULT NULL,
  `jadwal_survei_lokasi` date DEFAULT NULL,
  `sudah_disurvei_020` text DEFAULT NULL,
  `skor_lebih_dari_4` text DEFAULT NULL,
  `approve_by_bu` text DEFAULT NULL,
  `deal_with_owner` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `risetpasar`
--

INSERT INTO `risetpasar` (`idrisetpasar`, `bulan`, `tahun`, `week_ke`, `pic_leads`, `wilayah`, `kota`, `kecamatan`, `bentuk`, `nama_agent_owner`, `kontak_hp_agent_owner`, `biaya_sewa_tahun`, `luas_tanah_m2`, `luas_bangunan_m2`, `status_properti`, `terdapat_halaman`, `lokasi_pinggir_jalan_raya`, `dokumen_legal_shm`, `dokumen_legal_imb_pbg`, `dokumen_legal_pbb`, `diizinikan_buat_sekolah`, `opsi_sewa_5_tahun`, `diizinkan_oleh_developer`, `lokasi_google_maps`, `link_iklan`, `dokumentasi_foto_fasilitas`, `acc_am_operations`, `jadwal_survei_lokasi`, `sudah_disurvei_020`, `skor_lebih_dari_4`, `approve_by_bu`, `deal_with_owner`) VALUES
(1, '', 0, '', '', 'Jabodetabek', '', '', 'Rumah', '', '', '', 0, '', '', 'Ya', 'YA', 'Ya', 'Ya', 'Ya', 'Diizinkan Oleh Owner', 'Diizinkan Oleh Owner', 'Diizinkan oleh Developer', '', '', '', '', '2023-05-22', '', '', '', ''),
(2, '', 0, '', '', 'Jabodetabek', '', '', 'Ruko', '', '', '', 0, '', '', 'Ya', 'YA', 'Ya', 'Ya', 'Ya', 'Diizinkan Oleh Owner', 'Diizinkan Oleh Owner', 'Diizinkan oleh Developer', '', '', '', '', '2023-05-22', '', '', '', ''),
(3, 'Oktober', 2024, 'Week 1', 'Dewi', 'Jabodetabek', 'Jakarta Barat', 'Kebon Jeruk', 'Ruko', 'Didi', '81586255757', '400.000.000', 323, '500', 'Mahal', 'Ya', 'YA', 'Ya', 'Ya', 'Ya', '', '', '', '', 'https://www.rumah123.com/properti/jakarta-barat/shr4335805/', '', '', '2023-05-22', '', '', '', ''),
(4, '', 0, '', '', 'Jabodetabek', '', '', 'Ruko', '', '', '', 0, '', '', '', 'YA', '', 'Ya', 'Ya', 'Diizinkan Oleh Owner', '', '', 'https://goo.gl/maps/HKxTctewvxXXTCa1A', 'https://www.rumah123.com/properti/jakarta-barat/shr4229301/', '', '', '2023-05-22', '', '', '', ''),
(5, '', 0, '', '', 'Jabodetabek', '', '', 'Ruko', 'Noni Yosepha', '8993081200', '225.000.000', 314, '640', 'Murah', 'Tidak', '', 'Ya', 'Ya', 'Ya', 'Diizinkan Oleh Owner', '', '', 'https://maps.app.goo.gl/8YX262PSU5tyZoZCA', 'https://www.rumah123.com/properti/jakarta-pusat/shr3731192/', '', '', '2023-05-22', '', '', '', ''),
(6, '', 0, '', '', 'Jabodetabek', '', '', 'Ruko', '', '', '', 0, '', '', 'Ya', 'YA', '', '', '', '', '', '', '', '', '', '', '2023-05-22', '', '', '', ''),
(7, '', 0, '', '', 'Jabodetabek', '', '', 'Ruang Usaha', '', '', '', 0, '', '', 'Ya', 'YA', 'Ya', 'Ya', 'Ya', 'Diizinkan Oleh Owner', '', '', '', '', '', '', '2023-05-22', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `hub` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL,
  `code` varchar(25) NOT NULL,
  `location` varchar(25) NOT NULL,
  `brand` varchar(25) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stock`
--

INSERT INTO `stock` (`idbarang`, `hub`, `item`, `code`, `location`, `brand`, `stock`, `is_deleted`, `deleted_at`, `restored_at`) VALUES
(11, 'SMM Kemang Pratama - Bekasi 2', 'Wastafel ', 'SMM-FU-001', 'Facade', 'Informa', 403, 0, NULL, NULL),
(12, 'SMM Cilandak - Jakarta Selatan 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', 'Consulting Room', 'LG', 110, 0, NULL, NULL),
(13, 'SMM Grogol - Jakarta Barat 1', 'Kursi', 'SMM-FU-005', 'Toilet', 'Ikea', 118, 0, NULL, NULL),
(16, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', '', '', '', '', 0, 0, NULL, NULL),
(17, 'SMM Eduverse - Bandung 1', '', '', '', '', 0, 0, NULL, NULL),
(18, 'SMM Pandu Raya - Bogor 1', '', '', '', '', 0, 0, NULL, NULL),
(19, 'SMM Prawirotaman - Yogyakarta 1', '', '', '', '', 0, 0, NULL, NULL),
(20, 'SMM Ciputat - Tangerang Selatan 4', '', '', '', '', 0, 0, NULL, NULL),
(21, 'SMM Pondok Cabe - Tangerang Selatan 5', '', '', '', '', 0, 0, NULL, NULL),
(22, 'SMM JGC Cakung - Jakarta Timur 3', '', '', '', '', 0, 0, NULL, NULL),
(23, 'SMM Agus Salim - Bekasi 4', '', '', '', '', 0, 0, NULL, NULL),
(24, 'SMM Kota Barat - Solo 1', '', '', '', '', 0, 0, NULL, NULL),
(25, 'SMM Raya Langsep - Malang 1', '', '', '', '', 0, 0, NULL, NULL),
(26, 'SMM Gajah Mada - Medan 1', '', '', '', '', 0, 0, NULL, NULL),
(27, 'SMM Tebet - Jakarta Selatan 4', '', '', '', '', 0, 0, NULL, NULL),
(28, 'SMM Cibubur - Depok 2', '', '', '', '', 0, 0, NULL, NULL),
(29, 'SMM Denpasar Timur - Denpasar 1', '', '', '', '', 0, 0, NULL, NULL),
(30, 'SMM Bojongsari - Depok 3', '', '', '', '', 0, 0, NULL, NULL),
(31, 'SMM Jatiasih - Bekasi 5', '', '', '', '', 0, 0, NULL, NULL),
(32, 'SMM Kelapa Gading - Jakarta Utara 1', '', '', '', '', 0, 0, NULL, NULL),
(33, 'SMM Jagakarsa - Jakarta Selatan 5', '', '', '', '', 0, 0, NULL, NULL),
(34, 'SMM Cinere - Depok 4', '', '', '', '', 0, 0, NULL, NULL),
(35, 'SMM Kota Wisata - Bogor 2', '', '', '', '', 0, 0, NULL, NULL),
(36, 'SMM Cikarang - Bekasi 6', '', '', '', '', 0, 0, NULL, NULL),
(37, 'SMM Sentul City - Bogor 3', '', '', '', '', 0, 0, NULL, NULL),
(38, 'SMM Sriwijaya - Semarang 1', '', '', '', '', 0, 0, NULL, NULL),
(39, 'SMM Batu Putih - Makassar 1', '', '', '', '', 0, 0, NULL, NULL),
(40, 'SMM Rumah Perubahan - Bekasi 7', '', '', '', '', 0, 0, NULL, NULL),
(41, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', '', '', '', '', 0, 0, NULL, NULL),
(42, 'SMM Joglo - Jakarta Barat 2', '', '', '', '', 0, 0, NULL, NULL),
(43, 'SMM Setu Pamulang - Tangerang Selatan 3', '', '', '', '', 0, 0, NULL, NULL),
(44, 'SMM Depok Jaya - Depok 1', '', '', '', '', 0, 0, NULL, NULL),
(45, 'SMM Duren Sawit - Jakarta Timur 2', '', '', '', '', 0, 0, NULL, NULL),
(46, 'SMM Airlangga - Surabaya 2', '', '', '', '', 0, 0, NULL, NULL),
(47, 'SMM BSD City - Tangerang 2', '', '', '', '', 0, 0, NULL, NULL),
(48, 'SMM Margonda - Depok 5', '', '', '', '', 0, 0, NULL, NULL),
(49, 'SMM Galuh Mas - Karawang 1', '', '', '', '', 0, 0, NULL, NULL),
(50, 'SMM Kotabaru - Yogyakarta 2', '', '', '', '', 0, 0, NULL, NULL),
(51, 'SMM Matraman - Jakarta Timur 4', '', '', '', '', 0, 0, NULL, NULL),
(52, 'SMM Cipto Mangunkusumo - Cirebon 1', '', '', '', '', 0, 0, NULL, NULL),
(53, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', '', '', '', '', 0, 0, NULL, NULL),
(54, 'SMM Harapan Indah - Bekasi 1', '', '', '', '', 0, 0, NULL, NULL),
(55, 'SMM Sukajadi - Bandung 2', '', '', '', '', 0, 0, NULL, NULL),
(56, 'SMM Condet - Jakarta Timur 1', '', '', '', '', 0, 0, NULL, NULL),
(57, 'SMM Pajajaran - Bogor 4', '', '', '', '', 0, 0, NULL, NULL),
(58, 'SMM Ciledug - Tangerang 3', '', '', '', '', 0, 0, NULL, NULL),
(59, 'SMM Kemang Pratama - Bekasi 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(60, 'SMM Kemang Pratama - Bekasi 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(61, 'SMM Kemang Pratama - Bekasi 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(62, 'SMM Kemang Pratama - Bekasi 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(63, 'SMM Kemang Pratama - Bekasi 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(64, 'SMM Kemang Pratama - Bekasi 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(65, 'SMM Kemang Pratama - Bekasi 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(66, 'SMM Kemang Pratama - Bekasi 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(67, 'SMM Kemang Pratama - Bekasi 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(68, 'SMM Kemang Pratama - Bekasi 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(69, 'SMM Kemang Pratama - Bekasi 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(70, 'SMM Kemang Pratama - Bekasi 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(71, 'SMM Cilandak - Jakarta Selatan 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(72, 'SMM Cilandak - Jakarta Selatan 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(73, 'SMM Cilandak - Jakarta Selatan 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(74, 'SMM Cilandak - Jakarta Selatan 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(75, 'SMM Cilandak - Jakarta Selatan 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(76, 'SMM Cilandak - Jakarta Selatan 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(77, 'SMM Cilandak - Jakarta Selatan 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(78, 'SMM Cilandak - Jakarta Selatan 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(79, 'SMM Cilandak - Jakarta Selatan 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(80, 'SMM Cilandak - Jakarta Selatan 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(81, 'SMM Cilandak - Jakarta Selatan 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(82, 'SMM Cilandak - Jakarta Selatan 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(83, 'SMM Grogol - Jakarta Barat 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(84, 'SMM Grogol - Jakarta Barat 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(85, 'SMM Grogol - Jakarta Barat 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(86, 'SMM Grogol - Jakarta Barat 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(87, 'SMM Grogol - Jakarta Barat 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(88, 'SMM Grogol - Jakarta Barat 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(89, 'SMM Grogol - Jakarta Barat 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(90, 'SMM Grogol - Jakarta Barat 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(91, 'SMM Grogol - Jakarta Barat 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(92, 'SMM Grogol - Jakarta Barat 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(93, 'SMM Grogol - Jakarta Barat 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(94, 'SMM Grogol - Jakarta Barat 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(95, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(96, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(97, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(98, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(99, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(100, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(101, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(102, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(103, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(104, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(105, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(106, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(107, 'SMM Bintaro Sektor IX - Tangerang Selatan 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(108, 'SMM Eduverse - Bandung 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(109, 'SMM Eduverse - Bandung 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(110, 'SMM Eduverse - Bandung 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(111, 'SMM Eduverse - Bandung 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(112, 'SMM Eduverse - Bandung 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(113, 'SMM Eduverse - Bandung 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(114, 'SMM Eduverse - Bandung 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(115, 'SMM Eduverse - Bandung 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(116, 'SMM Eduverse - Bandung 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(117, 'SMM Eduverse - Bandung 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(118, 'SMM Eduverse - Bandung 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(119, 'SMM Eduverse - Bandung 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(120, 'SMM Eduverse - Bandung 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(121, 'SMM Pandu Raya - Bogor 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(122, 'SMM Pandu Raya - Bogor 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(123, 'SMM Pandu Raya - Bogor 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(124, 'SMM Pandu Raya - Bogor 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(125, 'SMM Pandu Raya - Bogor 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(126, 'SMM Pandu Raya - Bogor 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(127, 'SMM Pandu Raya - Bogor 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(128, 'SMM Pandu Raya - Bogor 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(129, 'SMM Pandu Raya - Bogor 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(130, 'SMM Pandu Raya - Bogor 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(131, 'SMM Pandu Raya - Bogor 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(132, 'SMM Pandu Raya - Bogor 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(133, 'SMM Pandu Raya - Bogor 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(134, 'SMM Prawirotaman - Yogyakarta 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(135, 'SMM Prawirotaman - Yogyakarta 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(136, 'SMM Prawirotaman - Yogyakarta 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(137, 'SMM Prawirotaman - Yogyakarta 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(138, 'SMM Prawirotaman - Yogyakarta 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(139, 'SMM Prawirotaman - Yogyakarta 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(140, 'SMM Prawirotaman - Yogyakarta 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(141, 'SMM Prawirotaman - Yogyakarta 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(142, 'SMM Prawirotaman - Yogyakarta 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(143, 'SMM Prawirotaman - Yogyakarta 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(144, 'SMM Prawirotaman - Yogyakarta 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(145, 'SMM Prawirotaman - Yogyakarta 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(146, 'SMM Prawirotaman - Yogyakarta 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(147, 'SMM Ciputat - Tangerang Selatan 4', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(148, 'SMM Ciputat - Tangerang Selatan 4', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(149, 'SMM Ciputat - Tangerang Selatan 4', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(150, 'SMM Ciputat - Tangerang Selatan 4', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(151, 'SMM Ciputat - Tangerang Selatan 4', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(152, 'SMM Ciputat - Tangerang Selatan 4', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(153, 'SMM Ciputat - Tangerang Selatan 4', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(154, 'SMM Ciputat - Tangerang Selatan 4', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(155, 'SMM Ciputat - Tangerang Selatan 4', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(156, 'SMM Ciputat - Tangerang Selatan 4', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(157, 'SMM Ciputat - Tangerang Selatan 4', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(158, 'SMM Ciputat - Tangerang Selatan 4', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(159, 'SMM Ciputat - Tangerang Selatan 4', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(160, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(161, 'SMM Pondok Cabe - Tangerang Selatan 5', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(162, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(163, 'SMM Pondok Cabe - Tangerang Selatan 5', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(164, 'SMM Pondok Cabe - Tangerang Selatan 5', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(165, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(166, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(167, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(168, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(169, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(170, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(171, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(172, 'SMM Pondok Cabe - Tangerang Selatan 5', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(173, 'SMM JGC Cakung - Jakarta Timur 3', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(174, 'SMM JGC Cakung - Jakarta Timur 3', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(175, 'SMM JGC Cakung - Jakarta Timur 3', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(176, 'SMM JGC Cakung - Jakarta Timur 3', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(177, 'SMM JGC Cakung - Jakarta Timur 3', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(178, 'SMM JGC Cakung - Jakarta Timur 3', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(179, 'SMM JGC Cakung - Jakarta Timur 3', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(180, 'SMM JGC Cakung - Jakarta Timur 3', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(181, 'SMM JGC Cakung - Jakarta Timur 3', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(182, 'SMM JGC Cakung - Jakarta Timur 3', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(183, 'SMM JGC Cakung - Jakarta Timur 3', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(184, 'SMM JGC Cakung - Jakarta Timur 3', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(185, 'SMM JGC Cakung - Jakarta Timur 3', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(186, 'SMM Agus Salim - Bekasi 4', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(187, 'SMM Agus Salim - Bekasi 4', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(188, 'SMM Agus Salim - Bekasi 4', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(189, 'SMM Agus Salim - Bekasi 4', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(190, 'SMM Agus Salim - Bekasi 4', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(191, 'SMM Agus Salim - Bekasi 4', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(192, 'SMM Agus Salim - Bekasi 4', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(193, 'SMM Agus Salim - Bekasi 4', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(194, 'SMM Agus Salim - Bekasi 4', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(195, 'SMM Agus Salim - Bekasi 4', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(196, 'SMM Agus Salim - Bekasi 4', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(197, 'SMM Agus Salim - Bekasi 4', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(198, 'SMM Agus Salim - Bekasi 4', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(199, 'SMM Kota Barat - Solo 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(200, 'SMM Kota Barat - Solo 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(201, 'SMM Kota Barat - Solo 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(202, 'SMM Kota Barat - Solo 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(203, 'SMM Kota Barat - Solo 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(204, 'SMM Kota Barat - Solo 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(205, 'SMM Kota Barat - Solo 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(206, 'SMM Kota Barat - Solo 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(207, 'SMM Kota Barat - Solo 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(208, 'SMM Kota Barat - Solo 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(209, 'SMM Kota Barat - Solo 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(210, 'SMM Kota Barat - Solo 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(211, 'SMM Kota Barat - Solo 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(212, 'SMM Raya Langsep - Malang 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(213, 'SMM Raya Langsep - Malang 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(214, 'SMM Raya Langsep - Malang 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(215, 'SMM Raya Langsep - Malang 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(216, 'SMM Raya Langsep - Malang 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(217, 'SMM Raya Langsep - Malang 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(218, 'SMM Raya Langsep - Malang 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(219, 'SMM Raya Langsep - Malang 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(220, 'SMM Raya Langsep - Malang 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(221, 'SMM Raya Langsep - Malang 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(222, 'SMM Raya Langsep - Malang 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(223, 'SMM Raya Langsep - Malang 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(224, 'SMM Raya Langsep - Malang 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(225, 'SMM Gajah Mada - Medan 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(226, 'SMM Gajah Mada - Medan 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(227, 'SMM Gajah Mada - Medan 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(228, 'SMM Gajah Mada - Medan 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(229, 'SMM Gajah Mada - Medan 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(230, 'SMM Gajah Mada - Medan 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(231, 'SMM Gajah Mada - Medan 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(232, 'SMM Gajah Mada - Medan 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(233, 'SMM Gajah Mada - Medan 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(234, 'SMM Gajah Mada - Medan 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(235, 'SMM Gajah Mada - Medan 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(236, 'SMM Gajah Mada - Medan 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(237, 'SMM Gajah Mada - Medan 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(238, 'SMM Tebet - Jakarta Selatan 4', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(239, 'SMM Tebet - Jakarta Selatan 4', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(240, 'SMM Tebet - Jakarta Selatan 4', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(241, 'SMM Tebet - Jakarta Selatan 4', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(242, 'SMM Tebet - Jakarta Selatan 4', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(243, 'SMM Tebet - Jakarta Selatan 4', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(244, 'SMM Tebet - Jakarta Selatan 4', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(245, 'SMM Tebet - Jakarta Selatan 4', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(246, 'SMM Tebet - Jakarta Selatan 4', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(247, 'SMM Tebet - Jakarta Selatan 4', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(248, 'SMM Tebet - Jakarta Selatan 4', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(249, 'SMM Tebet - Jakarta Selatan 4', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(250, 'SMM Tebet - Jakarta Selatan 4', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(251, 'SMM Cibubur - Depok 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(252, 'SMM Cibubur - Depok 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(253, 'SMM Cibubur - Depok 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(254, 'SMM Cibubur - Depok 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(255, 'SMM Cibubur - Depok 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(256, 'SMM Cibubur - Depok 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(257, 'SMM Cibubur - Depok 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(258, 'SMM Cibubur - Depok 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(259, 'SMM Cibubur - Depok 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(260, 'SMM Cibubur - Depok 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(261, 'SMM Cibubur - Depok 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(262, 'SMM Cibubur - Depok 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(263, 'SMM Cibubur - Depok 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(264, 'SMM Denpasar Timur - Denpasar 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(265, 'SMM Denpasar Timur - Denpasar 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(266, 'SMM Denpasar Timur - Denpasar 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(267, 'SMM Denpasar Timur - Denpasar 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(268, 'SMM Denpasar Timur - Denpasar 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(269, 'SMM Denpasar Timur - Denpasar 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(270, 'SMM Denpasar Timur - Denpasar 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(271, 'SMM Denpasar Timur - Denpasar 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(272, 'SMM Denpasar Timur - Denpasar 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(273, 'SMM Denpasar Timur - Denpasar 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(274, 'SMM Denpasar Timur - Denpasar 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(275, 'SMM Denpasar Timur - Denpasar 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(276, 'SMM Denpasar Timur - Denpasar 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(277, 'SMM Bojongsari - Depok 3', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(278, 'SMM Bojongsari - Depok 3', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(279, 'SMM Bojongsari - Depok 3', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(280, 'SMM Bojongsari - Depok 3', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(281, 'SMM Bojongsari - Depok 3', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(282, 'SMM Bojongsari - Depok 3', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(283, 'SMM Bojongsari - Depok 3', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(284, 'SMM Bojongsari - Depok 3', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(285, 'SMM Bojongsari - Depok 3', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(286, 'SMM Bojongsari - Depok 3', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(287, 'SMM Bojongsari - Depok 3', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(288, 'SMM Bojongsari - Depok 3', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(289, 'SMM Bojongsari - Depok 3', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(290, 'SMM Jatiasih - Bekasi 5', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(291, 'SMM Jatiasih - Bekasi 5', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(292, 'SMM Jatiasih - Bekasi 5', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(293, 'SMM Jatiasih - Bekasi 5', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(294, 'SMM Jatiasih - Bekasi 5', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(295, 'SMM Jatiasih - Bekasi 5', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(296, 'SMM Jatiasih - Bekasi 5', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(297, 'SMM Jatiasih - Bekasi 5', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(298, 'SMM Jatiasih - Bekasi 5', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(299, 'SMM Jatiasih - Bekasi 5', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(300, 'SMM Jatiasih - Bekasi 5', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(301, 'SMM Jatiasih - Bekasi 5', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(302, 'SMM Jatiasih - Bekasi 5', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(303, 'SMM Kelapa Gading - Jakarta Utara 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(304, 'SMM Kelapa Gading - Jakarta Utara 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(305, 'SMM Kelapa Gading - Jakarta Utara 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(306, 'SMM Kelapa Gading - Jakarta Utara 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(307, 'SMM Kelapa Gading - Jakarta Utara 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(308, 'SMM Kelapa Gading - Jakarta Utara 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(309, 'SMM Kelapa Gading - Jakarta Utara 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(310, 'SMM Kelapa Gading - Jakarta Utara 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(311, 'SMM Kelapa Gading - Jakarta Utara 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(312, 'SMM Kelapa Gading - Jakarta Utara 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(313, 'SMM Kelapa Gading - Jakarta Utara 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(314, 'SMM Kelapa Gading - Jakarta Utara 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(315, 'SMM Kelapa Gading - Jakarta Utara 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(316, 'SMM Jagakarsa - Jakarta Selatan 5', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(317, 'SMM Jagakarsa - Jakarta Selatan 5', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(318, 'SMM Jagakarsa - Jakarta Selatan 5', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(319, 'SMM Jagakarsa - Jakarta Selatan 5', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(320, 'SMM Jagakarsa - Jakarta Selatan 5', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(321, 'SMM Jagakarsa - Jakarta Selatan 5', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(322, 'SMM Jagakarsa - Jakarta Selatan 5', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(323, 'SMM Jagakarsa - Jakarta Selatan 5', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(324, 'SMM Jagakarsa - Jakarta Selatan 5', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(325, 'SMM Jagakarsa - Jakarta Selatan 5', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(326, 'SMM Jagakarsa - Jakarta Selatan 5', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(327, 'SMM Jagakarsa - Jakarta Selatan 5', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(328, 'SMM Jagakarsa - Jakarta Selatan 5', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(329, 'SMM Cinere - Depok 4', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(330, 'SMM Cinere - Depok 4', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(331, 'SMM Cinere - Depok 4', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(332, 'SMM Cinere - Depok 4', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(333, 'SMM Cinere - Depok 4', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(334, 'SMM Cinere - Depok 4', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(335, 'SMM Cinere - Depok 4', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(336, 'SMM Cinere - Depok 4', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(337, 'SMM Cinere - Depok 4', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(338, 'SMM Cinere - Depok 4', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(339, 'SMM Cinere - Depok 4', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(340, 'SMM Cinere - Depok 4', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(341, 'SMM Cinere - Depok 4', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(342, 'SMM Kota Wisata - Bogor 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(343, 'SMM Kota Wisata - Bogor 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(344, 'SMM Kota Wisata - Bogor 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(345, 'SMM Kota Wisata - Bogor 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(346, 'SMM Kota Wisata - Bogor 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(347, 'SMM Kota Wisata - Bogor 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(348, 'SMM Kota Wisata - Bogor 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(349, 'SMM Kota Wisata - Bogor 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(350, 'SMM Kota Wisata - Bogor 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(351, 'SMM Kota Wisata - Bogor 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(352, 'SMM Kota Wisata - Bogor 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(353, 'SMM Kota Wisata - Bogor 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(354, 'SMM Kota Wisata - Bogor 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(355, 'SMM Cikarang - Bekasi 6', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(356, 'SMM Cikarang - Bekasi 6', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(357, 'SMM Cikarang - Bekasi 6', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(358, 'SMM Cikarang - Bekasi 6', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(359, 'SMM Cikarang - Bekasi 6', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(360, 'SMM Cikarang - Bekasi 6', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(361, 'SMM Cikarang - Bekasi 6', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(362, 'SMM Cikarang - Bekasi 6', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(363, 'SMM Cikarang - Bekasi 6', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(364, 'SMM Cikarang - Bekasi 6', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(365, 'SMM Cikarang - Bekasi 6', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(366, 'SMM Cikarang - Bekasi 6', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(367, 'SMM Cikarang - Bekasi 6', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(368, 'SMM Sentul City - Bogor 3', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(369, 'SMM Sentul City - Bogor 3', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(370, 'SMM Sentul City - Bogor 3', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(371, 'SMM Sentul City - Bogor 3', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(372, 'SMM Sentul City - Bogor 3', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(373, 'SMM Sentul City - Bogor 3', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(374, 'SMM Sentul City - Bogor 3', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(375, 'SMM Sentul City - Bogor 3', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(376, 'SMM Sentul City - Bogor 3', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(377, 'SMM Sentul City - Bogor 3', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(378, 'SMM Sentul City - Bogor 3', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(379, 'SMM Sentul City - Bogor 3', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(380, 'SMM Sentul City - Bogor 3', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(381, 'SMM Sriwijaya - Semarang 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(382, 'SMM Sriwijaya - Semarang 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(383, 'SMM Sriwijaya - Semarang 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(384, 'SMM Sriwijaya - Semarang 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(385, 'SMM Sriwijaya - Semarang 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(386, 'SMM Sriwijaya - Semarang 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(387, 'SMM Sriwijaya - Semarang 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(388, 'SMM Sriwijaya - Semarang 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(389, 'SMM Sriwijaya - Semarang 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(390, 'SMM Sriwijaya - Semarang 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(391, 'SMM Sriwijaya - Semarang 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(392, 'SMM Sriwijaya - Semarang 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(393, 'SMM Sriwijaya - Semarang 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(394, 'SMM Batu Putih - Makassar 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(395, 'SMM Batu Putih - Makassar 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(396, 'SMM Batu Putih - Makassar 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(397, 'SMM Batu Putih - Makassar 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(398, 'SMM Batu Putih - Makassar 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(399, 'SMM Batu Putih - Makassar 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(400, 'SMM Batu Putih - Makassar 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(401, 'SMM Batu Putih - Makassar 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(402, 'SMM Batu Putih - Makassar 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(403, 'SMM Batu Putih - Makassar 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(404, 'SMM Batu Putih - Makassar 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(405, 'SMM Batu Putih - Makassar 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(406, 'SMM Batu Putih - Makassar 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(407, 'SMM Rumah Perubahan - Bekasi 7', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(408, 'SMM Rumah Perubahan - Bekasi 7', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(409, 'SMM Rumah Perubahan - Bekasi 7', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(410, 'SMM Rumah Perubahan - Bekasi 7', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(411, 'SMM Rumah Perubahan - Bekasi 7', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(412, 'SMM Rumah Perubahan - Bekasi 7', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(413, 'SMM Rumah Perubahan - Bekasi 7', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(414, 'SMM Rumah Perubahan - Bekasi 7', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(415, 'SMM Rumah Perubahan - Bekasi 7', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(416, 'SMM Rumah Perubahan - Bekasi 7', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(417, 'SMM Rumah Perubahan - Bekasi 7', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(418, 'SMM Rumah Perubahan - Bekasi 7', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(419, 'SMM Rumah Perubahan - Bekasi 7', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(420, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(421, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(422, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(423, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(424, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(425, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(426, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(427, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(428, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(429, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(430, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(431, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(432, 'SMM Banjar Wijaya Cipondoh - Tangerang Selatan 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(433, 'SMM Joglo - Jakarta Barat 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(434, 'SMM Joglo - Jakarta Barat 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(435, 'SMM Joglo - Jakarta Barat 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(436, 'SMM Joglo - Jakarta Barat 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(437, 'SMM Joglo - Jakarta Barat 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(438, 'SMM Joglo - Jakarta Barat 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(439, 'SMM Joglo - Jakarta Barat 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(440, 'SMM Joglo - Jakarta Barat 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(441, 'SMM Joglo - Jakarta Barat 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(442, 'SMM Joglo - Jakarta Barat 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(443, 'SMM Joglo - Jakarta Barat 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(444, 'SMM Joglo - Jakarta Barat 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(445, 'SMM Joglo - Jakarta Barat 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(446, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(447, 'SMM Setu Pamulang - Tangerang Selatan 3', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(448, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(449, 'SMM Setu Pamulang - Tangerang Selatan 3', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(450, 'SMM Setu Pamulang - Tangerang Selatan 3', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(451, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(452, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(453, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(454, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(455, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(456, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(457, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(458, 'SMM Setu Pamulang - Tangerang Selatan 3', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(459, 'SMM Depok Jaya - Depok 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(460, 'SMM Depok Jaya - Depok 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(461, 'SMM Depok Jaya - Depok 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(462, 'SMM Depok Jaya - Depok 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(463, 'SMM Depok Jaya - Depok 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(464, 'SMM Depok Jaya - Depok 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(465, 'SMM Depok Jaya - Depok 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(466, 'SMM Depok Jaya - Depok 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(467, 'SMM Depok Jaya - Depok 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(468, 'SMM Depok Jaya - Depok 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(469, 'SMM Depok Jaya - Depok 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(470, 'SMM Depok Jaya - Depok 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(471, 'SMM Depok Jaya - Depok 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(472, 'SMM Duren Sawit - Jakarta Timur 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(473, 'SMM Duren Sawit - Jakarta Timur 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(474, 'SMM Duren Sawit - Jakarta Timur 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(475, 'SMM Duren Sawit - Jakarta Timur 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(476, 'SMM Duren Sawit - Jakarta Timur 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(477, 'SMM Duren Sawit - Jakarta Timur 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(478, 'SMM Duren Sawit - Jakarta Timur 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(479, 'SMM Duren Sawit - Jakarta Timur 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(480, 'SMM Duren Sawit - Jakarta Timur 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(481, 'SMM Duren Sawit - Jakarta Timur 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(482, 'SMM Duren Sawit - Jakarta Timur 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(483, 'SMM Duren Sawit - Jakarta Timur 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(484, 'SMM Duren Sawit - Jakarta Timur 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(485, 'SMM Airlangga - Surabaya 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(486, 'SMM Airlangga - Surabaya 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(487, 'SMM Airlangga - Surabaya 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(488, 'SMM Airlangga - Surabaya 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(489, 'SMM Airlangga - Surabaya 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(490, 'SMM Airlangga - Surabaya 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(491, 'SMM Airlangga - Surabaya 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(492, 'SMM Airlangga - Surabaya 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(493, 'SMM Airlangga - Surabaya 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(494, 'SMM Airlangga - Surabaya 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(495, 'SMM Airlangga - Surabaya 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(496, 'SMM Airlangga - Surabaya 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(497, 'SMM Airlangga - Surabaya 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(498, 'SMM BSD City - Tangerang 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(499, 'SMM BSD City - Tangerang 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(500, 'SMM BSD City - Tangerang 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(501, 'SMM BSD City - Tangerang 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(502, 'SMM BSD City - Tangerang 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(503, 'SMM BSD City - Tangerang 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(504, 'SMM BSD City - Tangerang 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(505, 'SMM BSD City - Tangerang 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(506, 'SMM BSD City - Tangerang 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(507, 'SMM BSD City - Tangerang 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(508, 'SMM BSD City - Tangerang 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(509, 'SMM BSD City - Tangerang 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(510, 'SMM BSD City - Tangerang 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(511, 'SMM Margonda - Depok 5', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(512, 'SMM Margonda - Depok 5', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(513, 'SMM Margonda - Depok 5', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(514, 'SMM Margonda - Depok 5', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(515, 'SMM Margonda - Depok 5', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(516, 'SMM Margonda - Depok 5', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(517, 'SMM Margonda - Depok 5', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(518, 'SMM Margonda - Depok 5', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(519, 'SMM Margonda - Depok 5', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(520, 'SMM Margonda - Depok 5', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(521, 'SMM Margonda - Depok 5', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(522, 'SMM Margonda - Depok 5', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(523, 'SMM Margonda - Depok 5', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(524, 'SMM Galuh Mas - Karawang 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(525, 'SMM Galuh Mas - Karawang 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(526, 'SMM Galuh Mas - Karawang 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(527, 'SMM Galuh Mas - Karawang 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(528, 'SMM Galuh Mas - Karawang 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(529, 'SMM Galuh Mas - Karawang 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(530, 'SMM Galuh Mas - Karawang 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(531, 'SMM Galuh Mas - Karawang 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(532, 'SMM Galuh Mas - Karawang 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(533, 'SMM Galuh Mas - Karawang 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(534, 'SMM Galuh Mas - Karawang 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(535, 'SMM Galuh Mas - Karawang 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(536, 'SMM Galuh Mas - Karawang 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(537, 'SMM Kotabaru - Yogyakarta 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(538, 'SMM Kotabaru - Yogyakarta 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(539, 'SMM Kotabaru - Yogyakarta 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(540, 'SMM Kotabaru - Yogyakarta 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(541, 'SMM Kotabaru - Yogyakarta 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(542, 'SMM Kotabaru - Yogyakarta 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(543, 'SMM Kotabaru - Yogyakarta 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(544, 'SMM Kotabaru - Yogyakarta 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(545, 'SMM Kotabaru - Yogyakarta 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(546, 'SMM Kotabaru - Yogyakarta 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(547, 'SMM Kotabaru - Yogyakarta 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(548, 'SMM Kotabaru - Yogyakarta 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(549, 'SMM Kotabaru - Yogyakarta 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(550, 'SMM Matraman - Jakarta Timur 4', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL);
INSERT INTO `stock` (`idbarang`, `hub`, `item`, `code`, `location`, `brand`, `stock`, `is_deleted`, `deleted_at`, `restored_at`) VALUES
(551, 'SMM Matraman - Jakarta Timur 4', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(552, 'SMM Matraman - Jakarta Timur 4', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(553, 'SMM Matraman - Jakarta Timur 4', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(554, 'SMM Matraman - Jakarta Timur 4', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(555, 'SMM Matraman - Jakarta Timur 4', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(556, 'SMM Matraman - Jakarta Timur 4', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(557, 'SMM Matraman - Jakarta Timur 4', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(558, 'SMM Matraman - Jakarta Timur 4', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(559, 'SMM Matraman - Jakarta Timur 4', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(560, 'SMM Matraman - Jakarta Timur 4', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(561, 'SMM Matraman - Jakarta Timur 4', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(562, 'SMM Matraman - Jakarta Timur 4', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(563, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(564, 'SMM Cipto Mangunkusumo - Cirebon 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(565, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(566, 'SMM Cipto Mangunkusumo - Cirebon 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(567, 'SMM Cipto Mangunkusumo - Cirebon 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(568, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(569, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(570, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(571, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(572, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(573, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(574, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(575, 'SMM Cipto Mangunkusumo - Cirebon 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(576, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(577, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(578, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(579, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(580, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(581, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(582, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(583, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(584, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(585, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(586, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(587, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(588, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(589, 'SMM Harapan Indah - Bekasi 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(590, 'SMM Harapan Indah - Bekasi 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(591, 'SMM Harapan Indah - Bekasi 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(592, 'SMM Harapan Indah - Bekasi 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(593, 'SMM Harapan Indah - Bekasi 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(594, 'SMM Harapan Indah - Bekasi 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(595, 'SMM Harapan Indah - Bekasi 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(596, 'SMM Harapan Indah - Bekasi 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(597, 'SMM Harapan Indah - Bekasi 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(598, 'SMM Harapan Indah - Bekasi 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(599, 'SMM Harapan Indah - Bekasi 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(600, 'SMM Harapan Indah - Bekasi 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(601, 'SMM Harapan Indah - Bekasi 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(602, 'SMM Sukajadi - Bandung 2', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(603, 'SMM Sukajadi - Bandung 2', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(604, 'SMM Sukajadi - Bandung 2', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(605, 'SMM Sukajadi - Bandung 2', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(606, 'SMM Sukajadi - Bandung 2', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(607, 'SMM Sukajadi - Bandung 2', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(608, 'SMM Sukajadi - Bandung 2', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(609, 'SMM Sukajadi - Bandung 2', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(610, 'SMM Sukajadi - Bandung 2', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(611, 'SMM Sukajadi - Bandung 2', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(612, 'SMM Sukajadi - Bandung 2', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(613, 'SMM Sukajadi - Bandung 2', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(614, 'SMM Sukajadi - Bandung 2', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(615, 'SMM Condet - Jakarta Timur 1', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(616, 'SMM Condet - Jakarta Timur 1', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(617, 'SMM Condet - Jakarta Timur 1', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(618, 'SMM Condet - Jakarta Timur 1', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(619, 'SMM Condet - Jakarta Timur 1', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(620, 'SMM Condet - Jakarta Timur 1', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(621, 'SMM Condet - Jakarta Timur 1', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(622, 'SMM Condet - Jakarta Timur 1', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(623, 'SMM Condet - Jakarta Timur 1', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(624, 'SMM Condet - Jakarta Timur 1', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(625, 'SMM Condet - Jakarta Timur 1', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(626, 'SMM Condet - Jakarta Timur 1', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(627, 'SMM Condet - Jakarta Timur 1', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(628, 'SMM Pajajaran - Bogor 4', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(629, 'SMM Pajajaran - Bogor 4', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(630, 'SMM Pajajaran - Bogor 4', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(631, 'SMM Pajajaran - Bogor 4', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(632, 'SMM Pajajaran - Bogor 4', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(633, 'SMM Pajajaran - Bogor 4', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(634, 'SMM Pajajaran - Bogor 4', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(635, 'SMM Pajajaran - Bogor 4', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(636, 'SMM Pajajaran - Bogor 4', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(637, 'SMM Pajajaran - Bogor 4', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(638, 'SMM Pajajaran - Bogor 4', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(639, 'SMM Pajajaran - Bogor 4', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(640, 'SMM Pajajaran - Bogor 4', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(641, 'SMM Ciledug - Tangerang 3', 'Wastafel', 'SMM-SU-001', '', '', 0, 0, NULL, NULL),
(642, 'SMM Ciledug - Tangerang 3', 'CCTV Outdoor', 'SMM-SU-002', '', '', 0, 0, NULL, NULL),
(643, 'SMM Ciledug - Tangerang 3', 'Tanaman Lidah Mertua', 'SMM-SU-003', '', '', 0, 0, NULL, NULL),
(644, 'SMM Ciledug - Tangerang 3', 'AC 2,5 PK', 'SMM-SU-004', '', '', 0, 0, NULL, NULL),
(645, 'SMM Ciledug - Tangerang 3', 'CCTV Indoor', 'SMM-SU-005', '', '', 0, 0, NULL, NULL),
(646, 'SMM Ciledug - Tangerang 3', 'Meja Resepsionis', 'SMM-FU-001', '', '', 0, 0, NULL, NULL),
(647, 'SMM Ciledug - Tangerang 3', 'Kursi Resepsionis', 'SMM-FU-002', '', '', 0, 0, NULL, NULL),
(648, 'SMM Ciledug - Tangerang 3', 'Kursi Tamu Resepsionis', 'SMM-FU-003', '', '', 0, 0, NULL, NULL),
(649, 'SMM Ciledug - Tangerang 3', 'Kursi Tamu', 'SMM-FU-004', '', '', 0, 0, NULL, NULL),
(650, 'SMM Ciledug - Tangerang 3', 'Wifi Extender', 'SMM-SU-006', '', '', 0, 0, NULL, NULL),
(651, 'SMM Ciledug - Tangerang 3', 'Bangku Panjang', 'SMM-FU-005', '', '', 0, 0, NULL, NULL),
(652, 'SMM Ciledug - Tangerang 3', 'Smart TV', 'SMM-SU-007', '', '', 0, 0, NULL, NULL),
(653, 'SMM Ciledug - Tangerang 3', 'Braket TV', 'SMM-SU-008', '', '', 0, 0, NULL, NULL),
(654, 'TES', '123', '123', '123', '123', 1, 1, '2024-11-23 15:13:55', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visualisasi`
--

CREATE TABLE `visualisasi` (
  `idvisualisasi` int(11) NOT NULL,
  `hub` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visualisasi`
--

INSERT INTO `visualisasi` (`idvisualisasi`, `hub`) VALUES
(1, 'SMM Kemang Pratama - Bekasi 2'),
(2, 'SMM Bintaro Sektor IX - Tangerang Selatan 1'),
(3, 'SMM Cilandak - Jakarta Selatan 2'),
(4, 'SMM Eduverse - Bandung 1'),
(5, 'SMM Pandu Raya - Bogor 1'),
(6, 'SMM Grogol - Jakarta Barat 1'),
(7, 'SMM Prawirotaman - Yogyakarta 1'),
(8, 'SMM Ciputat - Tangerang Selatan 4'),
(9, 'SMM Pondok Cabe - Tangerang Selatan 5'),
(10, 'SMM JGC Cakung - Jakarta Timur 3'),
(11, 'SMM Agus Salim - Bekasi 4'),
(12, 'SMM Kota Barat - Solo 1'),
(13, 'SMM Raya Langsep - Malang 1'),
(14, 'SMM Gajah Mada - Medan 1'),
(15, 'SMM Tebet - Jakarta Selatan 4'),
(16, 'SMM Cibubur - Depok 2'),
(17, 'SMM Denpasar Timur - Denpasar 1'),
(18, 'SMM Bojongsari - Depok 3'),
(19, 'SMM Jatiasih - Bekasi 5'),
(20, 'SMM Kelapa Gading - Jakarta Utara 1'),
(21, 'SMM Jagakarsa - Jakarta Selatan 5'),
(22, 'SMM Cinere - Depok 4'),
(23, 'SMM Kota Wisata - Bogor 2'),
(24, 'SMM Cikarang - Bekasi 6'),
(25, 'SMM Sentul City - Bogor 3'),
(26, 'SMM Sriwijaya - Semarang 1'),
(27, 'SMM Batu Putih - Makassar 1'),
(28, 'SMM Rumah Perubahan - Bekasi 7'),
(29, 'SMM Banjar Wijaya Cipondoh - Tangerang 1'),
(30, 'SMM Joglo - Jakarta Barat 2'),
(31, 'SMM Setu Pamulang - Tangerang Selatan 3'),
(32, 'SMM Depok Jaya - Depok 1'),
(33, 'SMM Duren Sawit - Jakarta Timur 2'),
(34, 'SMM Airlangga - Surabaya 2'),
(35, 'SMM BSD City - Tangerang 2'),
(36, 'SMM Margonda - Depok 5'),
(37, 'SMM Galuh Mas - Karawang 1'),
(38, 'SMM Kotabaru - Yogyakarta 2'),
(39, 'SMM Matraman - Jakarta Timur 4'),
(40, 'SMM Cipto Mangunkusumo - Cirebon 1'),
(41, 'SMM CBD Emerald Bintaro - Tangerang Selatan 7'),
(42, 'SMM Harapan Indah - Bekasi 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visualisasi_foto`
--

CREATE TABLE `visualisasi_foto` (
  `id` int(11) NOT NULL,
  `idvisualisasi` int(11) NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visualisasi_foto`
--

INSERT INTO `visualisasi_foto` (`id`, `idvisualisasi`, `judul`, `foto`) VALUES
(1, 1, 'Gambar 1', 'uploads/629d8378d164259adc300681e8c97075.jpg'),
(2, 2, 'Gambar 1', 'uploads/629d8378d164259adc300681e8c97075.jpg'),
(5, 1, 'Gambar 2', 'uploads/629d8378d164259adc300681e8c97075.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datahub`
--
ALTER TABLE `datahub`
  ADD PRIMARY KEY (`iddatahub`);

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indeks untuk tabel `realisasi`
--
ALTER TABLE `realisasi`
  ADD PRIMARY KEY (`idrealisasi`);

--
-- Indeks untuk tabel `realisasi_foto`
--
ALTER TABLE `realisasi_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `risetpasar`
--
ALTER TABLE `risetpasar`
  ADD PRIMARY KEY (`idrisetpasar`);

--
-- Indeks untuk tabel `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indeks untuk tabel `visualisasi`
--
ALTER TABLE `visualisasi`
  ADD PRIMARY KEY (`idvisualisasi`);

--
-- Indeks untuk tabel `visualisasi_foto`
--
ALTER TABLE `visualisasi_foto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datahub`
--
ALTER TABLE `datahub`
  MODIFY `iddatahub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `realisasi`
--
ALTER TABLE `realisasi`
  MODIFY `idrealisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `realisasi_foto`
--
ALTER TABLE `realisasi_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `risetpasar`
--
ALTER TABLE `risetpasar`
  MODIFY `idrisetpasar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT untuk tabel `visualisasi`
--
ALTER TABLE `visualisasi`
  MODIFY `idvisualisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `visualisasi_foto`
--
ALTER TABLE `visualisasi_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
