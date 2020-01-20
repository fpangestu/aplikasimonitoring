-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2020 pada 14.47
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mopen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda_kegiatan`
--

CREATE TABLE `agenda_kegiatan` (
  `id_agenda_kegiatan` int(11) NOT NULL,
  `nama_agenda_kegiatan` varchar(100) NOT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `created_at` date NOT NULL,
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agenda_kegiatan`
--

INSERT INTO `agenda_kegiatan` (`id_agenda_kegiatan`, `nama_agenda_kegiatan`) VALUES
(1, 'SEMINAR' ),
(2, 'FGD' ),
(3, 'KONSINYERING' ),
(4, 'RAPAT KANTOR' ),
(5, 'PENGUMPULAN DATA LAPANGAN' ),
(6, 'PUBLIKASI KEGIATAN' ),
(7, 'PUBLIKASI PENELITIAN' ),
(8, 'PUBLIKASI' );

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `nama_dokumen` varchar(100) NOT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `created_at` date NOT NULL,
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumens` (`id_dokumen`, `nama_dokumen`) VALUES
(1, 'NOTULENSI dan FOTO' L),
(2, 'UNDANGAN dan AGENDA' ),
(3, 'SPT' ),
(4, 'DAFTAR HADIR' ),
(5, 'MATERI NARASUMBER' ),
(6, 'MATERI KOORDINATOR' ),
(7, 'LAPGAS' ),
(8, 'TOR' ),
(9, 'INFOGRAFIS' ),
(10, 'LAPORAN AKHIR' ),
(11, 'LAPORAN KAPUS' ),
(12, 'SAMBUTAN' ),
(13, 'REKAMAN' ),
(14, 'MONEV' );

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id_dokumentasi` int(11) NOT NULL,
  `kode_penelitian` varchar(20) NOT NULL,
  `kode_kegiatan_penelitian` varchar(100) NOT NULL,
  `nama_dokumen` varchar(100) NOT NULL,
  `kebutuhan` varchar(100) NOT NULL,
  `tanggung_jawab` varchar(100) NOT NULL,
  `etc` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `created_at` date NOT NULL,
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumentasi`
--

INSERT INTO `dokumentasi` (`id_dokumentasi`, `kode_penelitian`, `kode_kegiatan_penelitian`, `nama_dokumen`, `kebutuhan`, `tanggung_jawab`, `etc`, `user`, `status_aktif`, `created_at`, `modify_at`) VALUES
(1, '2019_PTIK', 'KONSINYERING-1', 'UNDANGAN dan AGENDA', 'INTERNAL', '', NULL, NULL, 1, '2019-11-01', NULL),
(2, '2019_PTIK', 'KONSINYERING-1', 'SPT', 'INTERNAL', '', NULL, NULL, 1, '2019-11-01', NULL),
(3, '2019_PTIK', 'KONSINYERING-1', 'MATERI KOORDINATOR', 'INTERNAL', '', NULL, NULL, 1, '2019-11-01', NULL),
(4, '2019_PTIK', 'KONSINYERING-1', 'NOTULENSI dan FOTO', 'INTERNAL', '', NULL, NULL, 1, '2019-11-01', NULL),
(5, '2019_PTIK', 'KONSINYERING-1', 'LAPGAS', 'INTERNAL', '', NULL, NULL, 1, '2019-11-01', NULL),
(6, '2019_PTIK', 'KONSINYERING-1', 'DAFTAR HADIR', 'INTERNAL', '', NULL, NULL, 1, '2019-11-01', NULL),
(7, '2019_PDP', 'KONSINYERING-1', 'UNDANGAN dan AGENDA', '', 'DR. IR BASUKI YUSUF ISKANDAR MA', 'revisi undangan seminar survei PTIKL 2019.pdf', 'LIDYA AGUSTINA', 1, '2019-11-25', NULL),
(8, '2019_PDP', 'KONSINYERING-1', 'SPT', '', 'SUNARNO', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(9, '2019_PDP', 'KONSINYERING-1', 'MATERI KOORDINATOR', '', 'LIDYA AGUSTINA', 'audit internal august 2018.pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(10, '2019_PDP', 'KONSINYERING-1', 'NOTULENSI dan FOTO', '', 'AHMAD BUDI SETIAWAN ST, MTI', 'Notulensi_2019_03_06.doc', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(11, '2019_PDP', 'KONSINYERING-1', 'LAPGAS', '', 'INDAH MAHARANI', 'Sharing Knowledge Puslitbang Aptika.pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(12, '2019_PDP', 'KONSINYERING-1', 'DAFTAR HADIR', '', 'FAIQ WILDANA', '2019_03_20_10_53_07.pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(13, '2019_PDP', 'FGD-1', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(14, '2019_PDP', 'FGD-1', 'SPT', '', '', 'Notulensi_2019_03_05.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(15, '2019_PDP', 'FGD-1', 'MATERI KOORDINATOR', '', '', 'Notulensi_2019_03_06.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(16, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', '', '', '441 persyaratan pengangkatan CPNS menjadi PNS.pdf', 'LIDYA AGUSTINA', 0, '2019-11-25', NULL),
(17, '2019_PDP', 'FGD-1', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(18, '2019_PDP', 'FGD-1', 'LAPGAS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(19, '2019_PDP', 'FGD-1', 'DAFTAR HADIR', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(20, '2019_PDP', 'FGD-1', 'LAPORAN KAPUS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(21, '2019_PDP', 'FGD-1', 'SAMBUTAN', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(22, '2019_PDP', 'FGD-1', 'TOR', '', '', 'Undangan FGD Fintech.pdf', 'AHMAD BUDI SETIAWAN ST, MTI', 0, '2019-11-26', NULL),
(38, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', 'Dr. Ika Karlina Idris', '', '441 persyaratan pengangkatan CPNS menjadi PNS.pdf', 'LIDYA AGUSTINA', 0, '2019-11-25', NULL),
(39, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', 'Dr. Muhammad Suryanegara, S.T., M.Sc', '', NULL, NULL, 0, '0000-00-00', NULL),
(40, '2019_PTIK', 'FGD-1', 'MATERI NARASUMBER', 'Yudhie Andriyana, M.Sc., Ph.D', '', NULL, NULL, 1, '0000-00-00', NULL),
(53, '2019_PDP', 'SEMINAR-1', 'UNDANGAN & AGENDA', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(54, '2019_PDP', 'SEMINAR-1', 'SPT', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(55, '2019_PDP', 'SEMINAR-1', 'MATERI KOORDINATOR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(56, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(57, '2019_PDP', 'SEMINAR-1', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(58, '2019_PDP', 'SEMINAR-1', 'LAPGAS', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(59, '2019_PDP', 'SEMINAR-1', 'DAFTAR HADIR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(60, '2019_PDP', 'SEMINAR-1', 'LAPORAN KAPUS', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(61, '2019_PDP', 'SEMINAR-1', 'SAMBUTAN', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(62, '2019_PDP', 'SEMINAR-1', 'TOR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(69, '2019_PDP', 'FGD-1', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(70, '2019_PDP', 'FGD-1', 'SPT', '', '', 'Notulensi_2019_03_05.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(71, '2019_PDP', 'FGD-1', 'MATERI KOORDINATOR', '', '', 'Notulensi_2019_03_06.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(72, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', '', '', '441 persyaratan pengangkatan CPNS menjadi PNS.pdf', 'LIDYA AGUSTINA', 0, '2019-11-25', NULL),
(73, '2019_PDP', 'FGD-1', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(74, '2019_PDP', 'FGD-1', 'LAPGAS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(75, '2019_PDP', 'FGD-1', 'DAFTAR HADIR', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(76, '2019_PDP', 'FGD-1', 'LAPORAN KAPUS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(77, '2019_PDP', 'FGD-1', 'SAMBUTAN', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(78, '2019_PDP', 'FGD-1', 'TOR', '', '', 'Undangan FGD Fintech.pdf', 'AHMAD BUDI SETIAWAN ST, MTI', 0, '2019-11-26', NULL),
(89, '2019_PDP', 'KONSINYERING-2', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(90, '2019_PDP', 'KONSINYERING-2', 'SPT', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(91, '2019_PDP', 'KONSINYERING-2', 'MATERI KOORDINATOR', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(92, '2019_PDP', 'KONSINYERING-2', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(93, '2019_PDP', 'KONSINYERING-2', 'LAPGAS', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(94, '2019_PDP', 'KONSINYERING-2', 'DAFTAR HADIR', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(115, '2019_PDP', 'KONSINYERING-2', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(116, '2019_PDP', 'KONSINYERING-2', 'SPT', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(117, '2019_PDP', 'KONSINYERING-2', 'MATERI KOORDINATOR', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(118, '2019_PDP', 'KONSINYERING-2', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(119, '2019_PDP', 'KONSINYERING-2', 'LAPGAS', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(120, '2019_PDP', 'KONSINYERING-2', 'DAFTAR HADIR', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(121, '2019_PDP', 'FGD-1', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(122, '2019_PDP', 'FGD-1', 'SPT', '', '', 'Notulensi_2019_03_05.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(123, '2019_PDP', 'FGD-1', 'MATERI KOORDINATOR', '', '', 'Notulensi_2019_03_06.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(124, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', '', '', '441 persyaratan pengangkatan CPNS menjadi PNS.pdf', 'LIDYA AGUSTINA', 0, '2019-11-25', NULL),
(125, '2019_PDP', 'FGD-1', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(126, '2019_PDP', 'FGD-1', 'LAPGAS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(127, '2019_PDP', 'FGD-1', 'DAFTAR HADIR', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(128, '2019_PDP', 'FGD-1', 'LAPORAN KAPUS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(129, '2019_PDP', 'FGD-1', 'SAMBUTAN', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(130, '2019_PDP', 'FGD-1', 'TOR', '', '', 'Undangan FGD Fintech.pdf', 'AHMAD BUDI SETIAWAN ST, MTI', 0, '2019-11-26', NULL),
(131, '2019_PDP', 'FGD-1', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(132, '2019_PDP', 'FGD-1', 'SPT', '', '', 'Notulensi_2019_03_05.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(133, '2019_PDP', 'FGD-1', 'MATERI KOORDINATOR', '', '', 'Notulensi_2019_03_06.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(134, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', '', '', '441 persyaratan pengangkatan CPNS menjadi PNS.pdf', 'LIDYA AGUSTINA', 0, '2019-11-25', NULL),
(135, '2019_PDP', 'FGD-1', 'NOTULENSI & FOTO', '', '', 'Notulensi_Master.doc', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(136, '2019_PDP', 'FGD-1', 'LAPGAS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(137, '2019_PDP', 'FGD-1', 'DAFTAR HADIR', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(138, '2019_PDP', 'FGD-1', 'LAPORAN KAPUS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(139, '2019_PDP', 'FGD-1', 'SAMBUTAN', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 0, '2019-11-24', NULL),
(140, '2019_PDP', 'FGD-1', 'TOR', '', '', 'Undangan FGD Fintech.pdf', 'AHMAD BUDI SETIAWAN ST, MTI', 0, '2019-11-26', NULL),
(141, '2019_PDP', 'KONSINYERING-2', 'UNDANGAN & AGENDA', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(142, '2019_PDP', 'KONSINYERING-2', 'SPT', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(143, '2019_PDP', 'KONSINYERING-2', 'MATERI KOORDINATOR', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(144, '2019_PDP', 'KONSINYERING-2', 'NOTULENSI & FOTO', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(145, '2019_PDP', 'KONSINYERING-2', 'LAPGAS', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(146, '2019_PDP', 'KONSINYERING-2', 'DAFTAR HADIR', '', '', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(147, '2019_PDP', 'FGD-1', 'UNDANGAN & AGENDA', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(148, '2019_PDP', 'FGD-1', 'SPT', '', '', 'Notulensi_2019_03_05.doc', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(149, '2019_PDP', 'FGD-1', 'MATERI KOORDINATOR', '', '', 'Notulensi_2019_03_06.doc', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(150, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', '', '', '441 persyaratan pengangkatan CPNS menjadi PNS.pdf', 'LIDYA AGUSTINA', 0, '2019-11-25', NULL),
(151, '2019_PDP', 'FGD-1', 'NOTULENSI & FOTO', '', '', 'Notulensi_Master.doc', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(152, '2019_PDP', 'FGD-1', 'LAPGAS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(153, '2019_PDP', 'FGD-1', 'DAFTAR HADIR', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(154, '2019_PDP', 'FGD-1', 'LAPORAN KAPUS', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(155, '2019_PDP', 'FGD-1', 'SAMBUTAN', '', '', '153Rapat Monitoring dan Evaluasi tahap triwulan I 29 maret (2).pdf', 'LIDYA AGUSTINA', 1, '2019-11-24', NULL),
(156, '2019_PDP', 'FGD-1', 'TOR', '', '', 'Undangan FGD Fintech.pdf', 'AHMAD BUDI SETIAWAN ST, MTI', 1, '2019-11-26', NULL),
(157, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', 'Dr. Ika Karlina Idris', '', '441 persyaratan pengangkatan CPNS menjadi PNS.pdf', 'LIDYA AGUSTINA', 0, '2019-11-25', NULL),
(158, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', 'Dr. Muhammad Suryanegara, S.T., M.Sc', '', NULL, NULL, 0, '0000-00-00', NULL),
(159, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', 'Dr. Muhammad Suryanegara, S.T., M.Sc', '', NULL, NULL, 0, '0000-00-00', NULL),
(160, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', 'Irwansyah', '', NULL, NULL, 0, '0000-00-00', NULL),
(161, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', 'Yudhie Andriyana, M.Sc., Ph.D', '', NULL, NULL, 0, '0000-00-00', NULL),
(162, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', 'Jojo Suharjo', '', NULL, NULL, 0, '0000-00-00', NULL),
(163, '2019_PDP', 'FGD-2', 'UNDANGAN & AGENDA', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(164, '2019_PDP', 'FGD-2', 'SPT', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(165, '2019_PDP', 'FGD-2', 'MATERI KOORDINATOR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(166, '2019_PDP', 'FGD-2', 'MATERI NARASUMBER', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(167, '2019_PDP', 'FGD-2', 'NOTULENSI & FOTO', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(168, '2019_PDP', 'FGD-2', 'LAPGAS', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(169, '2019_PDP', 'FGD-2', 'DAFTAR HADIR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(170, '2019_PDP', 'FGD-2', 'LAPORAN KAPUS', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(171, '2019_PDP', 'FGD-2', 'SAMBUTAN', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(172, '2019_PDP', 'FGD-2', 'TOR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(173, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', 'Dr. Ika Karlina Idris', '', NULL, NULL, 1, '0000-00-00', NULL),
(174, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', 'Dr. Muhammad Suryanegara, S.T., M.Sc', '', NULL, NULL, 1, '0000-00-00', NULL),
(175, '2019_PDP', 'FGD-1', 'MATERI NARASUMBER', 'Rodi Hartono', '', NULL, NULL, 1, '0000-00-00', NULL),
(656, '2020_IOT', 'KONSINYERING-1', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(657, '2020_IOT', 'KONSINYERING-1', 'SPT', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(658, '2020_IOT', 'KONSINYERING-1', 'MATERI KOORDINATOR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(659, '2020_IOT', 'KONSINYERING-1', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(660, '2020_IOT', 'KONSINYERING-1', 'LAPGAS', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(661, '2020_IOT', 'KONSINYERING-1', 'DAFTAR HADIR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(662, '2020_IOT', 'FGD-1', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(663, '2020_IOT', 'FGD-1', 'SPT', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(664, '2020_IOT', 'FGD-1', 'MATERI KOORDINATOR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(665, '2020_IOT', 'FGD-1', 'MATERI NARASUMBER', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(666, '2020_IOT', 'FGD-1', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(667, '2020_IOT', 'FGD-1', 'LAPGAS', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(668, '2020_IOT', 'FGD-1', 'DAFTAR HADIR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(669, '2020_IOT', 'FGD-1', 'LAPORAN KAPUS', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(670, '2020_IOT', 'FGD-1', 'SAMBUTAN', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(671, '2020_IOT', 'FGD-1', 'TOR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(672, '2020_IOT', 'RAPAT-1', 'UNDANGAN dan AGENDA', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(673, '2020_IOT', 'RAPAT-1', 'MATERI KOORDINATOR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(674, '2020_IOT', 'RAPAT-1', 'NOTULENSI dan FOTO', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(675, '2020_IOT', 'RAPAT-1', 'DAFTAR HADIR', '', '', NULL, 'Siapa Aja Boleh', 1, '0000-00-00', NULL),
(676, '2019_PDP', 'LAPANGAN-1', 'SPT', '', 'AHMAD BUDI SETIAWAN ST, MTI', 'revisi undangan seminar survei PTIKL 2019.pdf', 'AHMAD BUDI SETIAWAN ST, MTI', 1, '2019-11-28', NULL),
(677, '2019_PDP', 'LAPANGAN-1', 'LAPGAS', '', 'BADAR AGUNG NUGROHO', NULL, 'Siapa Aja Boleh', 0, '0000-00-00', NULL),
(685, '2019_PDP', 'LAPANGAN-1', 'LAPGAS', 'Medan', 'BADAR AGUNG NUGROHO', NULL, NULL, 0, '0000-00-00', NULL),
(686, '2019_PDP', 'LAPANGAN-1', 'LAPGAS', 'Bandung', 'BADAR AGUNG NUGROHO', NULL, NULL, 0, '0000-00-00', NULL),
(687, '2019_PDP', 'LAPANGAN-1', 'LAPGAS', 'Medan', 'BADAR AGUNG NUGROHO', NULL, NULL, 0, '0000-00-00', NULL),
(688, '2019_PDP', 'LAPANGAN-1', 'LAPGAS', 'Jakarta', 'BADAR AGUNG NUGROHO', NULL, NULL, 0, '0000-00-00', NULL),
(689, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', 'Dr. Muhammad Suryanegara, S.T., M.Sc', '', NULL, NULL, 1, '0000-00-00', NULL),
(690, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', 'Irwansyah', '', NULL, NULL, 1, '0000-00-00', NULL),
(691, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', 'Yudhie Andriyana, M.Sc., Ph.D', '', NULL, NULL, 1, '0000-00-00', NULL),
(692, '2019_PDP', 'SEMINAR-1', 'MATERI NARASUMBER', 'Jojo Suharjo', '', NULL, NULL, 1, '0000-00-00', NULL),
(693, '2019_PDP', 'LAPANGAN-1', 'LAPGAS', 'Cimahi', 'BADAR AGUNG NUGROHO', '441 persyaratan pengangkatan CPNS menjadi PNS.pdf', 'BADAR AGUNG NUGROHO', 1, '2019-11-28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen_kegiatan`
--

CREATE TABLE `dokumen_kegiatan` (
  `id_dokumen_kegiatan` int(11) NOT NULL,
  `id_agenda_kegiatan` int(11) NOT NULL,
  `id_dokumen` int(11) NOT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `created_at` date NOT NULL,
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen_kegiatan`
--

INSERT INTO `dokumen_kegiatans` (`id_agenda_kegiatan`, `id_dokumen`) VALUES
( 1, 2),
( 1, 3 ),
( 1, 6 ),
( 1, 5 ),
( 1, 1 ),
( 1, 7 ),
( 1, 4 ),
( 1, 11 ),
( 1, 12 ),
( 1, 8 ),
( 2, 2 ),
( 2, 3 ),
( 2, 6 ),
( 2, 5 ),
( 2, 1 ),
( 2, 7 ),
( 2, 4 ),
( 2, 11 ),
( 2, 12 ),
( 2, 8 ),
( 3, 2 ),
( 3, 3 ),
( 3, 6 ),
( 3, 1 ),
( 3, 7 ),
( 3, 4 ),
( 4, 2 ),
( 4, 6 ),
( 4, 1 ),
( 4, 4 ),
( 5, 3 ),
( 5, 7 ),
( 8, 1 ),
( 8, 2 ),
(2, 1 ),
( 2, 2 ),
( 2, 3 ),
( 2, 4 ),
( 2, 5 ),
( 2, 6 ),
( 2, 7 ),
( 2, 8 ),
( 2, 11 ),
( 2, 12),
( 2, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan_penelitian`
--

CREATE TABLE `kegiatan_penelitian` (
  `id_kegiatan` int(11) NOT NULL,
  `kode_penelitian` varchar(20) NOT NULL,
  `id_agenda_kegiatan` int(11) NOT NULL,
  `kode_kegiatan_penelitian` varchar(100) NOT NULL,
  `agenda` varchar(100) DEFAULT NULL,
  `urutan` int(2) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `status_kegiatan` tinyint(1) DEFAULT '0',
  `user` varchar(100) NOT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `created_at` date NOT NULL,
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan_penelitian`
--

INSERT INTO `kegiatan_penelitian` (`id_kegiatan`, `kode_penelitian`, `id_agenda_kegiatan`, `kode_kegiatan_penelitian`, `agenda`, `urutan`, `tempat`, `tgl_mulai`, `tgl_selesai`, `status_kegiatan`, `user`, `status_aktif`, `created_at`, `modify_at`) VALUES
(1, '2019_PTIK', 3, 'KONSINYERING-1', 'PENYUSUNAN RISET DESAIN', 1, NULL, '2019-03-31', '2019-01-01', 1, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(2, '2019_PTIK', 1, 'SEMINAR-1', 'SEMINAR PROPOSAL', 2, NULL, '2019-03-01', '2019-03-31', 1, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(3, '2019_PTIK', 2, 'FGD-1', 'PENYEMPURNAAN INSTRUMEN PENELITIAN', 3, NULL, '2019-05-31', '2019-04-01', 1, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(4, '2019_PTIK', 5, 'PENGUMPULAN DATA-1', 'PRE TEST', 4, NULL, '2019-05-31', '2019-04-01', 1, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(5, '2019_PTIK', 2, 'FGD-2', 'PERBAIKAN INSTRUMEN PENELITIAN', 5, NULL, '2019-05-31', '2019-04-01', 1, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(6, '2019_PTIK', 5, 'PENGUMPULAN DATA-2', 'PENGUMPULAN DATA', 6, NULL, '2019-06-30', '2019-05-01', 1, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(7, '2019_PTIK', 3, 'KONSINYERING-2', 'PENGOLAHAN DAN ANALISA DATA', 7, NULL, '2019-08-31', '2019-06-01', 1, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(8, '2019_PTIK', 2, 'FGD-3', 'PENYUSUNAN DRAFT LAPORAN AKHIR', 8, NULL, '2019-08-31', '2019-06-01', 1, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(9, '2019_PTIK', 1, 'SEMINAR-2', 'SEMINAR AKHIR', 9, NULL, '2019-09-30', '2019-09-01', 0, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(10, '2019_PTIK', 3, 'KONSINYERING-3', 'PENYEMPURNAAN LAPORAN AKHIR', 10, NULL, '2019-12-31', '2019-09-01', 0, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(11, '2019_PTIK', 4, 'RAPAT KANTOR-1', 'PUBLIKASI PENELITIAN', 11, NULL, '2019-12-31', '2019-12-01', 0, 'BADAR AGUNG NUGROHO', 1, '2019-11-01', NULL),
(12, '2019_INDEKS', 3, 'KONSINYERING-1', 'Penyusunan Proposal', 1, NULL, '2019-01-01', '2019-01-31', 0, '', 0, '2019-11-22', NULL),
(13, '2019_INDEKS', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 0, '', 0, '2019-11-22', NULL),
(14, '2019_INDEKS', 2, 'FGD-1', 'Penyusunan Instrumen', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-22', NULL),
(15, '2019_INDEKS', 3, 'KONSINYERING-3', 'Tahap Persiapan, pembentukan Tim Penelitian ', 4, NULL, '2019-04-01', '2019-04-30', 0, '', 0, '2019-11-22', NULL),
(16, '2019_INDEKS', 3, 'KONSINYERING-1', 'Penyusunan Proposal', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 1, '2019-11-22', NULL),
(17, '2019_INDEKS', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 0, '', 1, '2019-11-22', NULL),
(18, '2019_INDEKS', 2, 'FGD-1', 'Penyusunan Instrumen', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 1, '2019-11-22', NULL),
(19, '2019_INDEKS', 3, 'KONSINYERING-3', 'Tahap Persiapan, pembentukan Tim Penelitian ', 4, NULL, '2019-04-30', '2019-04-01', 0, '', 1, '2019-11-22', NULL),
(20, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 0, '', 0, '2019-11-23', NULL),
(21, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 0, '', 0, '2019-11-23', NULL),
(22, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(23, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(24, '2019_PDP', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(25, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 0, '2019-11-23', NULL),
(26, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(27, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(28, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(29, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(30, '2019_PDP', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(31, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 0, '2019-11-23', NULL),
(32, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(33, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(34, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(35, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(36, '2019_PDP', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(37, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 0, '2019-11-23', NULL),
(38, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(39, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(40, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(41, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(42, '2019_PDP', 1, 'SEMINAR-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(43, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 0, '2019-11-23', NULL),
(44, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(45, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(46, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(47, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(48, '2019_PDP', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(49, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 0, '2019-11-23', NULL),
(50, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(51, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(52, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(53, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(54, '2019_PDP', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(55, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 0, '2019-11-23', NULL),
(56, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(57, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(58, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(59, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(60, '2019_PDP', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(61, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 0, '2019-11-23', NULL),
(62, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(63, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(64, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(65, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(66, '2019_PDP', 3, 'KONSINYERING-2', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(67, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 0, '', 0, '2019-11-23', NULL),
(68, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(69, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(70, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 0, '', 0, '2019-11-23', NULL),
(71, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-23', NULL),
(72, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-23', NULL),
(73, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 1, '', 0, '2019-11-23', NULL),
(74, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 0, '2019-11-23', NULL),
(75, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 0, '2019-11-23', NULL),
(76, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-01', '2019-03-31', 1, '', 0, '2019-11-23', NULL),
(77, '2019_PDP', 2, 'FGD-2', 'Penyusunan Instrumen', 4, NULL, '2019-04-30', '2019-04-01', 0, '', 0, '2019-11-23', NULL),
(78, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-31', '2019-01-01', 1, '', 0, '2019-11-25', NULL),
(79, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-28', '2019-02-01', 1, '', 0, '2019-11-25', NULL),
(80, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, NULL, '2019-03-31', '2019-03-01', 1, '', 0, '2019-11-25', NULL),
(81, '2019_PDP', 2, 'FGD-2', 'Penyusunan Instrumen', 4, NULL, '2019-04-01', '2019-04-30', 1, '', 0, '2019-11-25', NULL),
(130, '2020_IOT', 3, 'KONSINYERING-1', 'Penyusunan dan pembahasan  TOR', 1, NULL, '2019-01-01', '2019-01-04', 0, '', 0, '2019-11-26', NULL),
(131, '2020_IOT', 2, 'FGD-1', 'Penyusunan Instrumen', 2, NULL, '2019-01-07', '2019-01-11', 0, '', 0, '2019-11-26', NULL),
(132, '2020_IOT', 3, 'KONSINYERING-1', 'Penyusunan dan pembahasan  TOR', 1, NULL, '2020-01-04', '2020-01-01', 1, '', 1, '2019-11-26', NULL),
(133, '2020_IOT', 2, 'FGD-1', 'Penyusunan Instrumen', 2, NULL, '2020-01-11', '2020-01-07', 0, '', 1, '2019-11-26', NULL),
(134, '2020_IOT', 4, 'RAPAT-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 3, NULL, '2020-01-18', '2020-01-14', 0, '', 1, '2019-11-26', NULL),
(135, '2019_PDP', 3, 'KONSINYERING-1', 'Tahap Persiapan, pembentukan Tim Penelitian ', 1, NULL, '2019-01-01', '2019-01-31', 1, '', 1, '2019-11-27', NULL),
(136, '2019_PDP', 2, 'FGD-1', 'Penyusunan dan pembahasan  TOR', 2, NULL, '2019-02-01', '2019-02-28', 1, '', 1, '2019-11-27', NULL),
(137, '2019_PDP', 1, 'SEMINAR-1', 'Seminar Proposal', 3, 'Bogor', '2019-03-01', '2019-03-31', 1, '', 1, '2019-11-27', NULL),
(138, '2019_PDP', 2, 'FGD-2', 'Penyusunan Instrumen', 4, NULL, '2019-04-30', '2019-04-01', 1, '', 1, '2019-11-27', NULL),
(139, '2019_PDP', 5, 'LAPANGAN-1', 'Pengambilan Data Lapangan', 5, 'Cimahi', '2019-02-28', '2019-02-01', 0, '', 1, '2019-11-27', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `narasumber`
--

CREATE TABLE `narasumber` (
  `id_narasumber` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bidang` varchar(100) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `narasumber`
--

INSERT INTO `narasumber` (`id_narasumber`, `nama`, `bidang`, `instansi`, `no_tlp`) VALUES
(1, 'Yudhie Andriyana, M.Sc., Ph.D', 'Statistika', 'Universitas Padjajaran', ''),
(2, 'Deddy Hermawan ', 'Komunikasi', 'Kemkominfo - Chief RA', '0818899088'),
(3, 'Jojo Suharjo', 'Komunikasi', 'APRI', '+62172347070'),
(4, 'Dr. Ika Karlina Idris', 'Komunikasi', 'Universitas Paramadina', '08212283774'),
(5, 'Dr. Muhammad Suryanegara, S.T., M.Sc', 'Telekomunikasi', 'Universitas Indonesia', '08129518440'),
(6, 'I Gede Nyoman Mindra', 'Statistik', 'Universitas Padjajaran', '08180931997' ),
(7, 'Irwansyah', 'Komunikasi / Sosial', 'Universitas Indonesia', '08151191118' );

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(18) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `email`, `password`, `no_tlp`, `jabatan`) VALUES
('000000000000000000', 'ADMINISTRATOR', 'adminprogram@kominfo.go.id', 'programpuslitbang', '081221487464', 'ADMINISTRATOR'),
('195408131983121001', 'SOMO ARIFIANTO', 'sari021@kominfo.go.id', 'sari021', '-', 'PENELITI UTAMA'),
('195509211983121001', 'DJOKO WALUJO', 'djok016@kominfo.go.id', 'djok016', '-', 'PENELITI UTAMA' ),
('195809221984032001', 'PROF. DR. GATI GAYATRI MA', 'gati001@kominfo.go.id', 'gati001', '-', 'PENELITI UTAMA' ),
('195912261980031004', 'BAMBANG MUDJIYANTO', 'bamb037@kominfo.go.id', 'bamb037', '-', 'PENELITI UTAMA' ),
('196006051980031003', 'SUNARNO', 'suna016@kominfo.go.id', 'suna016', '-', 'KEPALA PUSAT PENELITIAN DAN PENGEMBANGAN APLIKASI ' ),
('196010221989031002', 'DR. IR BASUKI YUSUF ISKANDAR MA', 'basu007@kominfo.go.id', 'basu007', '-', 'KEPALA BADAN PENELITIAN DAN PENGEMBANGAN SUMBER DA' ),
('196204201984032002', 'TRIKO IRIANTI', 'trik004@kominfo.go.id', 'trik004', '-', 'TEKNISI LITKAYASA PENYELIA' ),
('196205241989031003', 'SUKIRDI S.SOS', 'suki006@kominfo.go.id', 'suki006', '-', 'PUSAT PENELITIAN DAN PENGEMBANGAN SUMBER DAYA, PER' ),
('196304121989031002', 'RAMON', 'ramo001@kominfo.go.id', 'ramo001', '-', 'KEPALA BIDANG PENJAMINAN MUTU DAN PENDAYAGUNAAN HA' ),
('196307041986031006', 'BAHRUM', 'bahr005@kominfo.go.id', 'bahr005', '-', 'JFU ANALIS MONITORING, EVALUASI DAN PELAPORAN' ),
('196506251994031002', 'SUJARWO S.PD., MM', 'suja009@kominfo.go.id', 'suja009', '-', 'KEPALA SUBBIDANG PENDAYAGUNAAN HASIL (PUSLITBANG A' ),
('196608301986032001', 'SRI KUSHARTATI', 'srik003@kominfo.go.id', 'srik003', '-', 'JFU ANALIS RENCANA PROGRAM DAN KEGIATAN' ),
('197411111994031003', 'AMRI DUNAN SE,M.SI, PH.D', 'amri007@kominfo.go.id', 'amri007', '-', 'PENELITI MUDA' ),
('197505032014072004', 'INDAH MAHARANI', 'inda012@kominfo.go.id', 'inda012', '-', 'JFU ANALIS PENJAMIN MUTU' ),
('198010062006042003', 'FITRI WIDYANINGSIH', 'fitr002@kominfo.go.id', 'fitr002', '-', 'KEPALA SUBBAGIAN TATA USAHA (PUSLITBANG APTIKA IKP' ),
('198207042008031001', 'AHMAD BUDI SETIAWAN ST, MTI', 'ahma003@kominfo.go.id', 'ahma003', '-', 'PENELITI MADYA' ),
('198212262011011008', 'KARMAN', 'karm003@kominfo.go.id', 'karm003', '-', 'PENELITI MUDA' ),
('198306152009122002', 'RIEKA MUSTIKA', 'riek001@kominfo.go.id', 'riek001', '-', 'PENELITI MUDA' ),
('198401052008032002', 'YAN ANDRIARIZA AS', 'yana001@kominfo.go.id', 'yana001', '-', '  PENELITI MUDA' ),
('198412122009012002', 'MAULIA JAYANTINA ISLAMI', 'maul005@kominfo.go.id', 'maul005', '-', 'KEPALA SUBBIDANG EVALUASI DAN PELAPORAN (PUSLITBAN' ),
('198501202008032001', 'EMYANA RUTH ERITHA SIRAIT', 'emya001@kominfo.go.id', 'emya001', '-', 'KEPALA BIDANG PENYELENGGARAAN PENELITIAN (PUSLITBA' ),
('198501222011012012', 'VIENCE MUTIARA RUMATA', 'vien001@kominfo.go.id', 'vien001', '-', 'PENELITI MUDA' ),
('198511032014031001', 'ANDRY RIVAN SUMARA S.KOM, M.SI', 'andr018@kominfo.go.id', 'andr018', '-', 'BALAI PELATIHAN DAN PENGEMBANGAN TEKNOLOGI INFORMA' ),
('198609062009122004', 'ARGASI SUSENNA', 'arga001@kominfo.go.id', 'arga001', '-', 'KEPALA SUBBIDANG PENJAMINAN MUTU (PUSLITBANG APTIK' ),
('198609142014032001', 'OLIVIA NELAR', 'oliv001@kominfo.go.id', 'oliv001', '-', 'JFU ANALIS PENJAMIN MUTU' ),
('198612242009011002', 'BADAR AGUNG NUGROHO', 'bada001@kominfo.go.id', 'bada001', '-', 'KEPALA SUBBIDANG PROGRAM DAN KERJA SAMA (PUSLITBAN' ),
('198704252011011013', 'BIMA HARIAPUTRA A.MD.', 'bima001@kominfo.go.id', 'bima001', '-', 'JFU ANALIS SUMBER DAYA MONITORING SPEKTRUM FREKUEN' ),
('198801172011011005', 'ONNY RAFIZAN', 'onny002@kominfo.go.id', 'onny002', '-', 'JFU ANALIS MONITORING, EVALUASI DAN PELAPORAN' ),
('198810252014032003', 'QUR&#39;ANI DEWI KUSUMAWARDANI', 'qura002@kominfo.go.id', 'qura002', '-', 'PENELITI MUDA' ),
('198911222014032004', 'DITA KUSUMASARI', 'dita001@kominfo.go.id', 'dita001', '-', 'JFU PENYUSUN PROGRAM PUBLIKASI ILMIAH' ),
('199006052014031001', 'FAIQ WILDANA', 'faiq001@kominfo.go.id', 'faiq001', '-', 'JFU PENYUSUN PROGRAM PUBLIKASI ILMIAH' ),
('199011022014032003', 'CUT MEDIKA ZELLATIFANNY', 'cutm001@kominfo.go.id', 'cutm001', '-', 'PENELITI PERTAMA' ),
('199108012014032002', 'LIDYA AGUSTINA', 'lidy001@kominfo.go.id', 'lidy001', '-', 'PENELITI MUDA' ),
('199501192019022006', 'ANNISA MUTHIA YANA ARIYANTI S.KOM', 'anni013@kominfo.go.id', 'anni013', '-', 'JFU PENELITI' ),
('199510142019021000', 'Power Ranger Merah', 'fleqsy_afc@yahoo.com', '313pol00', '081221487464', 'Hokade Desa Kunagakure' ),
('199510142019021002', 'FEKI PANGESTU WIJAYA S.KOM', 'feki001@kominfo.go.id', 'feki001', '-', 'JFU PENELITI' ),
('393276021108730004', 'DARMA HENDRA HARAHAP', 'darm023@fellow.kominfo.go.id', 'darm023', '-', 'LAINNYA' ),
('393312152007970001', 'BAYU YUDO NUMBORO', 'bayu004@fellow.kominfo.go.id', 'bayu004', '-', 'LAINNYA' ),
('393674031706850003', 'IWAN SETYAWAN', 'iwan016@fellow.kominfo.go.id', 'iwan016', '-', 'LAINNYA' );

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelitian`
--

CREATE TABLE `penelitian` (
  `kode_penelitian` varchar(20) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `proposal` varchar(100) DEFAULT NULL,
  `tor` varchar(100) DEFAULT NULL,
  `laporan_akhir` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `status_aktif` tinyint(1) DEFAULT '1',
  `created_at` date NOT NULL,
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penelitian`
--

INSERT INTO `penelitian` (`kode_penelitian`, `judul`, `tgl_mulai`, `tgl_selesai`, `proposal`, `tor`, `laporan_akhir`, `status`, `status_aktif`, `created_at`, `modify_at`) VALUES
('2019_INDEKS', 'Penelitian Indeks Pengelolaan Informasi dan Komunikasi Publik  di Lingkungan Instansi Pemerintah Pus', '2019-01-01', '2019-12-31', NULL, NULL, NULL, 0, 1, '2019-11-22', NULL),
('2019_PDP', 'Perlindungan Data Pribadi', '2019-01-01', '2019-12-31', 'Daftar Hadir 05-03-2019.pdf', 'FEKI PANGESTU WIJAYA.pdf', '256standar kompetensi jabatan fungsional peneliti.pdf', 0, 1, '2019-11-23', NULL),
('2019_PTIK', 'SURVEI PENGGUNAAN TIK SERTA IMPLIKASINYA TERHADAP ASPEK SOSIAL, BUDAYA DAN EKONOMI MASYARAKAT', '2019-01-01', '2019-12-31', NULL, NULL, NULL, 0, 1, '2019-11-01', NULL),
('2020_IOT', 'IOT DI MASYARAKAT', '2020-01-01', '2020-05-31', NULL, NULL, NULL, 0, 1, '2019-11-26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tim_peneliti`
--

CREATE TABLE `tim_peneliti` (
  `id_tim_peneliti` int(11) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `kode_penelitian` varchar(20) NOT NULL,
  `peran` varchar(50) DEFAULT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `created_at` date NOT NULL,
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tim_peneliti`
--

INSERT INTO `tim_peneliti` (`id_tim_peneliti`, `nip`, `kode_penelitian`, `peran`, `status_aktif`, `created_at`, `modify_at`) VALUES
(1, '196010221989031002', '2019_PTIK', 'PENGARAH', 1, '2019-11-18', NULL),
(2, '196006051980031003', '2019_PTIK', 'PENANGGUNG JAWAB', 1, '2019-11-18', NULL),
(3, '198612242009011002', '2019_PTIK', 'KOORDINATOR', 1, '2019-11-18', NULL),
(4, '195809221984032001', '2019_PTIK', 'PENELITI', 1, '2019-11-18', NULL),
(5, '195408131983121001', '2019_PTIK', 'PENELITI', 1, '2019-11-18', NULL),
(6, '195509211983121001', '2019_PTIK', 'PENELITI', 1, '2019-11-18', NULL),
(7, '195912261980031004', '2019_PTIK', 'PENELITI', 1, '2019-11-18', NULL),
(8, '199011022014032003', '2019_PTIK', 'PENELITI', 1, '2019-11-18', NULL),
(9, '198401052008032002', '2019_PTIK', 'PENELITI', 1, '2019-11-18', NULL),
(10, '198511032014031001', '2019_PTIK', 'PENELITI', 1, '2019-11-18', NULL),
(11, '199510142019021002', '2019_PTIK', 'PENELITI', 1, '2019-11-18', NULL),
(12, '196304121989031002', '2019_PTIK', 'PEMBANTU PENELITI', 1, '2019-11-18', NULL),
(13, '196205241989031003', '2019_PTIK', 'PEMBANTU PENELITI', 1, '2019-11-18', NULL),
(14, '198609062009122004', '2019_PTIK', 'PEMBANTU PENELITI', 1, '2019-11-18', NULL),
(15, '198704252011011013', '2019_PTIK', 'PEMBANTU PENELITI', 1, '2019-11-18', NULL),
(16, '198501202008032001', '2019_PTIK', 'SEKRETARIAT', 1, '2019-11-18', NULL),
(17, '198412122009012002', '2019_PTIK', 'SEKRETARIAT', 1, '2019-11-18', NULL),
(18, '198010062006042003', '2019_PTIK', 'SEKRETARIAT', 1, '2019-11-18', NULL),
(19, '197505032014072004', '2019_PTIK', 'SEKRETARIAT', 1, '2019-11-18', NULL),
(33, '198207042008031001', '2019_INDEKS', 'PENGARAH', 1, '2019-11-23', NULL),
(34, '197411111994031003', '2019_INDEKS', 'PENANGGUNG JAWAB', 1, '2019-11-23', NULL),
(35, '198511032014031001', '2019_INDEKS', 'KOORDINATOR', 1, '2019-11-23', NULL),
(36, '199501192019022006', '2019_INDEKS', 'PENELITI', 1, '2019-11-23', NULL),
(37, '198609062009122004', '2019_INDEKS', 'PEMBANTU PENELITI', 1, '2019-11-23', NULL),
(38, '198612242009011002', '2019_INDEKS', 'SEKRETARIAT', 1, '2019-11-23', NULL),
(46, '196010221989031002', '2019_PDP', 'PENGARAH', 1, '2019-11-26', NULL),
(47, '196006051980031003', '2019_PDP', 'PENANGGUNG JAWAB', 1, '2019-11-26', NULL),
(48, '199108012014032002', '2019_PDP', 'KOORDINATOR', 1, '2019-11-26', NULL),
(49, '198207042008031001', '2019_PDP', 'PENELITI', 1, '2019-11-26', NULL),
(50, '197505032014072004', '2019_PDP', 'SEKRETARIAT', 1, '2019-11-26', NULL),
(51, '199006052014031001', '2019_PDP', 'PENELITI', 1, '2019-11-26', NULL),
(52, '198612242009011002', '2019_PDP', 'PENELITI', 1, '2019-11-26', NULL),
(101, '196010221989031002', '2020_IOT', 'Pengarah', 1, '2019-11-26', NULL),
(102, '196006051980031003', '2020_IOT', 'Penanggung Jawab', 1, '2019-11-26', NULL),
(103, '198207042008031001', '2020_IOT', 'Koordinator', 1, '2019-11-26', NULL),
(104, '197411111994031003', '2020_IOT', 'Peneliti', 1, '2019-11-26', NULL),
(105, '198010062006042003', '2020_IOT', 'Pembantu Peneliti', 1, '2019-11-26', NULL),
(106, '197505032014072004', '2020_IOT', 'Sekretariat', 1, '2019-11-26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `undangan_narasumber`
--

CREATE TABLE `undangan_narasumber` (
  `id_undangan` int(11) NOT NULL,
  `kode_penelitian` varchar(20) NOT NULL,
  `kode_kegiatan_penelitian` varchar(100) NOT NULL,
  `id_narasumber` int(11) NOT NULL,
  `status_aktif` tinyint(1) DEFAULT '1',
  `modify_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `undangan_narasumber`
--

INSERT INTO `undangan_narasumber` (`id_undangan`, `kode_penelitian`, `kode_kegiatan_penelitian`, `id_narasumber`, `status_aktif`, `modify_at`) VALUES
(9, '2019_PDP', 'FGD-1', 2, 0, NULL),
(10, '2019_PDP', 'FGD-1', 4, 0, NULL),
(11, '2019_PDP', 'FGD-1', 5, 0, NULL),
(12, '2019_PTIK', 'FGD-1', 1, 1, NULL),
(13, '2019_PDP', 'FGD-1', 4, 0, NULL),
(14, '2019_PDP', 'FGD-1', 5, 0, NULL),
(15, '2019_PDP', 'SEMINAR-1', 5, 0, NULL),
(16, '2019_PDP', 'SEMINAR-1', 7, 0, NULL),
(17, '2019_PDP', 'SEMINAR-1', 1, 0, NULL),
(18, '2019_PDP', 'SEMINAR-1', 3, 0, NULL),
(19, '2019_PDP', 'FGD-1', 4, 1, NULL),
(20, '2019_PDP', 'FGD-1', 5, 1, NULL),
(21, '2019_PDP', 'FGD-1', 8, 1, NULL),
(22, '2019_PDP', 'SEMINAR-1', 5, 1, NULL),
(23, '2019_PDP', 'SEMINAR-1', 7, 1, NULL),
(24, '2019_PDP', 'SEMINAR-1', 1, 1, NULL),
(25, '2019_PDP', 'SEMINAR-1', 3, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda_kegiatan`
--
ALTER TABLE `agenda_kegiatan`
  ADD PRIMARY KEY (`id_agenda_kegiatan`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indeks untuk tabel `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`id_dokumentasi`),
  ADD KEY `dokumentasi_ibfk_1` (`kode_penelitian`);

--
-- Indeks untuk tabel `dokumen_kegiatan`
--
ALTER TABLE `dokumen_kegiatan`
  ADD PRIMARY KEY (`id_dokumen_kegiatan`);

--
-- Indeks untuk tabel `kegiatan_penelitian`
--
ALTER TABLE `kegiatan_penelitian`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `kegiatan_penelitian_ibfk_1` (`kode_penelitian`),
  ADD KEY `kegiatan_penelitian_ibfk_2` (`id_agenda_kegiatan`);

--
-- Indeks untuk tabel `narasumber`
--
ALTER TABLE `narasumber`
  ADD PRIMARY KEY (`id_narasumber`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`kode_penelitian`);

--
-- Indeks untuk tabel `tim_peneliti`
--
ALTER TABLE `tim_peneliti`
  ADD PRIMARY KEY (`id_tim_peneliti`),
  ADD KEY `tim_peneliti_ibfk_1` (`nip`),
  ADD KEY `tim_peneliti_ibfk_2` (`kode_penelitian`);

--
-- Indeks untuk tabel `undangan_narasumber`
--
ALTER TABLE `undangan_narasumber`
  ADD PRIMARY KEY (`id_undangan`),
  ADD KEY `undangan_narasumber_ibfk_1` (`kode_penelitian`),
  ADD KEY `undangan_narasumber_ibfk_2` (`id_narasumber`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda_kegiatan`
--
ALTER TABLE `agenda_kegiatan`
  MODIFY `id_agenda_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id_dokumentasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=694;

--
-- AUTO_INCREMENT untuk tabel `dokumen_kegiatan`
--
ALTER TABLE `dokumen_kegiatan`
  MODIFY `id_dokumen_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_penelitian`
--
ALTER TABLE `kegiatan_penelitian`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `narasumber`
--
ALTER TABLE `narasumber`
  MODIFY `id_narasumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tim_peneliti`
--
ALTER TABLE `tim_peneliti`
  MODIFY `id_tim_peneliti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `undangan_narasumber`
--
ALTER TABLE `undangan_narasumber`
  MODIFY `id_undangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD CONSTRAINT `dokumentasi_ibfk_1` FOREIGN KEY (`kode_penelitian`) REFERENCES `penelitian` (`kode_penelitian`);

--
-- Ketidakleluasaan untuk tabel `kegiatan_penelitian`
--
ALTER TABLE `kegiatan_penelitian`
  ADD CONSTRAINT `kegiatan_penelitian_ibfk_1` FOREIGN KEY (`kode_penelitian`) REFERENCES `penelitian` (`kode_penelitian`),
  ADD CONSTRAINT `kegiatan_penelitian_ibfk_2` FOREIGN KEY (`id_agenda_kegiatan`) REFERENCES `agenda_kegiatan` (`id_agenda_kegiatan`);

--
-- Ketidakleluasaan untuk tabel `tim_peneliti`
--
ALTER TABLE `tim_peneliti`
  ADD CONSTRAINT `tim_peneliti_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`),
  ADD CONSTRAINT `tim_peneliti_ibfk_2` FOREIGN KEY (`kode_penelitian`) REFERENCES `penelitian` (`kode_penelitian`);

--
-- Ketidakleluasaan untuk tabel `undangan_narasumber`
--
ALTER TABLE `undangan_narasumber`
  ADD CONSTRAINT `undangan_narasumber_ibfk_1` FOREIGN KEY (`kode_penelitian`) REFERENCES `penelitian` (`kode_penelitian`),
  ADD CONSTRAINT `undangan_narasumber_ibfk_2` FOREIGN KEY (`id_narasumber`) REFERENCES `narasumber` (`id_narasumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
