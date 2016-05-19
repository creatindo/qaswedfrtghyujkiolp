-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Mei 2016 pada 15.56
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_koreksi_esai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_ujian`
--

CREATE TABLE `d_ujian` (
  `detail_id` int(11) NOT NULL,
  `ujian_kode` varchar(20) DEFAULT NULL,
  `siswa_kode` varchar(20) DEFAULT NULL,
  `siswa_jawaban` text,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `d_ujian`
--

INSERT INTO `d_ujian` (`detail_id`, `ujian_kode`, `siswa_kode`, `siswa_jawaban`, `nilai`) VALUES
(1, 'UK1BHS1X102', '1A1210867', 'FSDJFHJKSHJFD', 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jabatan`
--

CREATE TABLE `m_jabatan` (
  `jabatan_id` int(11) NOT NULL,
  `jabatan_nama` varchar(255) DEFAULT NULL,
  `jabatan_active` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `m_jabatan`
--

INSERT INTO `m_jabatan` (`jabatan_id`, `jabatan_nama`, `jabatan_active`) VALUES
(1, 'Guru', 'y'),
(2, 'Admin', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jurusan`
--

CREATE TABLE `m_jurusan` (
  `jurusan_id` varchar(11) NOT NULL,
  `jurusan_nama` varchar(255) DEFAULT NULL,
  `jurusan_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `m_jurusan`
--

INSERT INTO `m_jurusan` (`jurusan_id`, `jurusan_nama`, `jurusan_aktif`) VALUES
('A', 'IPA', 'y'),
('S', 'IPS', 'y'),
('x', 'X', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kelas`
--

CREATE TABLE `m_kelas` (
  `kelas_id` varchar(11) NOT NULL,
  `kelas_nama` varchar(255) DEFAULT NULL,
  `kelas_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `m_kelas`
--

INSERT INTO `m_kelas` (`kelas_id`, `kelas_nama`, `kelas_aktif`) VALUES
('101', 'X-1', 'y'),
('102', 'X-2', 'y'),
('103', 'X-3', 'y'),
('104', 'X-4', 'y'),
('105', 'X-5', 'y'),
('111', 'XI-1', 'y'),
('112', 'XI-2', 'y'),
('113', 'XI-3', 'y'),
('114', 'XI-4', 'y'),
('115', 'XI-5', 'y'),
('121', 'XII-1', 'y'),
('122', 'XII-2', 'y'),
('123', 'XII-3', 'y'),
('124', 'XII-4', 'y'),
('125', 'XII-5', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mapel`
--

CREATE TABLE `m_mapel` (
  `mapel_id` varchar(11) NOT NULL,
  `mapel_nama` varchar(50) DEFAULT NULL,
  `mapel_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`mapel_id`, `mapel_nama`, `mapel_aktif`) VALUES
('BHS', 'Bahasa Indonesia', 'y'),
('bhsa', 'bahasa arab', 'y'),
('fsk', 'Fisikaa', 'y'),
('MTK', 'Matematika', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pegawai`
--

CREATE TABLE `m_pegawai` (
  `pegawai_nip` varchar(50) NOT NULL,
  `pegawai_password` varchar(255) DEFAULT NULL,
  `pegawai_nama` varchar(50) DEFAULT NULL,
  `pegawai_alamat` varchar(255) DEFAULT NULL,
  `pegawai_jk` varchar(1) DEFAULT NULL,
  `pegawai_jenis` int(1) DEFAULT NULL,
  `pegawai_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `m_pegawai`
--

INSERT INTO `m_pegawai` (`pegawai_nip`, `pegawai_password`, `pegawai_nama`, `pegawai_alamat`, `pegawai_jk`, `pegawai_jenis`, `pegawai_aktif`) VALUES
('110411100035', '110411100035', 'Faiz Andy Kusuma', 'Sumenep', 'l', 2, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_semester`
--

CREATE TABLE `m_semester` (
  `semester_id` int(11) NOT NULL,
  `semester_nama` varchar(10) DEFAULT NULL,
  `semester_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `m_semester`
--

INSERT INTO `m_semester` (`semester_id`, `semester_nama`, `semester_aktif`) VALUES
(1, 'Semester 1', 'y'),
(2, 'Semester 2', 'y'),
(3, 'Semester 3', 'y'),
(4, 'Semester 4', 'y'),
(5, 'Semester 5', 'y'),
(6, 'Semester 6', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_siswa`
--

CREATE TABLE `m_siswa` (
  `siswa_nis` varchar(11) NOT NULL,
  `siswa_password` varchar(255) DEFAULT NULL,
  `siswa_nama` varchar(255) DEFAULT NULL,
  `siswa_jk` varchar(255) DEFAULT NULL,
  `siswa_alamat` varchar(255) DEFAULT NULL,
  `create_date` year(4) DEFAULT NULL,
  `siswa_aktif` varchar(255) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `m_siswa`
--

INSERT INTO `m_siswa` (`siswa_nis`, `siswa_password`, `siswa_nama`, `siswa_jk`, `siswa_alamat`, `create_date`, `siswa_aktif`) VALUES
('0867', '0867', 'ABDUL MUISs', 'L', 'Bangkalan', NULL, 'y'),
('0868', '0868', 'ABDUL MUKSID', 'L', 'Bangkalan', NULL, 'y'),
('0869', '0869', 'ACHMAD HISYAM KADAFI', 'L', 'Bangkalan', NULL, 'y'),
('0870', '0870', 'ACHMAD RONI UBAIDILLAH', 'L', 'Bangkalan', NULL, 'y'),
('0871', '0871', 'AFIDA SULFIA', 'P', 'Bangkalan', NULL, 'y'),
('0872', '0872', 'AHMAD FIRMANSYAH', 'L', 'Bangkalan', NULL, 'y'),
('0874', '0874', 'AISA', 'P', 'Bangkalan', NULL, 'y'),
('0875', '0875', 'AISYA MAULINDA', 'P', 'Bangkalan', NULL, 'y'),
('0876', '0876', 'ALAIKA NASRULLAH', 'L', 'Bangkalan', NULL, 'y'),
('0877', '0877', 'ALFIATUL JANNAH', 'P', 'Bangkalan', NULL, 'y'),
('0878', '0878', 'ALIYA DWIYANTI', 'P', 'Denpasar', NULL, 'y'),
('0879', '0879', 'AMINATUR ROHMAH', 'P', 'Bangkalan', NULL, 'y'),
('0881', '0881', 'ANISA FITRIYA', 'P', 'Surabaya', NULL, 'y'),
('0883', '0883', 'ASRAFIAN RIZQI', 'L', 'Bangkalan', NULL, 'y'),
('0884', '0884', 'ATIK SHOLEHA', 'P', 'Bangkalan', NULL, 'y'),
('0885', '0885', 'ATIMAH', 'P', 'Bangkalan', NULL, 'y'),
('0886', '0886', 'AYU WANDIRA', 'P', 'Bangkalan', NULL, 'y'),
('0887', '0887', 'AYYUM', 'P', 'Bangkalan', NULL, 'y'),
('0888', '0888', 'BADRUS SAMSI', 'L', 'Bangkalan', NULL, 'y'),
('0889', '0889', 'DAHLIA AGUSTINA RH.', 'P', 'Bangkalan', NULL, 'y'),
('0890', '0890', 'DALILATUL KUTSYIYAH', 'P', 'Bangkalan', NULL, 'y'),
('0891', '0891', 'DEVI JAUHAROTUL MUNAWAROH', 'P', 'Bangkalan', NULL, 'y'),
('0892', '0892', 'DEWI NUR AINI', 'P', 'Bangkalan', NULL, 'y'),
('0894', '0894', 'DIYANA NADHIFAH', 'P', 'Bangkalan', NULL, 'y'),
('0895', '0895', 'ELDA FATIM SOLINI', 'P', 'Bangkalan', NULL, 'y'),
('0896', '0896', 'ERNA', 'P', 'Surabaya', NULL, 'y'),
('0897', '0897', 'FADRIYAN SYAHMI', 'L', 'Bangkalan', NULL, 'y'),
('0899', '0899', 'FAIZIN NR', 'L', 'Bangkalan', NULL, 'y'),
('0900', '0900', 'FARADILA JANNAH', 'P', 'Surabaya', NULL, 'y'),
('0901', '0901', 'FARIDA', 'P', 'Bangkalan', NULL, 'y'),
('0902', '0902', 'FARIDATUL JANNAH', 'P', 'Bangkalan', NULL, 'y'),
('0904', '0904', 'FATIMATUS ZAHROH', 'P', 'Bangkalan', NULL, 'y'),
('0905', '0905', 'FATIMATUZ ZAHROH', 'P', 'Bangkalan', NULL, 'y'),
('0906', '0906', 'FAUZAN NR.', 'L', 'Bangkalan', NULL, 'y'),
('0907', '0907', 'FAWAID', 'L', 'Bangkalan', NULL, 'y'),
('0908', '0908', 'FIQQIH AMRULLOH', 'L', 'Bangkalan', NULL, 'y'),
('0909', '0909', 'FIRA ELVIANI', 'P', 'Bangkalan', NULL, 'y'),
('0910', '0910', 'FITRIAH', 'P', 'Jakarta', NULL, 'y'),
('0911', '0911', 'FITRIYAH', 'P', 'Bangkalan', NULL, 'y'),
('0912', '0912', 'FITROTUL HIDAYATI', 'P', 'Bangkalan', NULL, 'y'),
('0913', '0913', 'HABIBAH', 'P', 'Bangkalan', NULL, 'y'),
('0914', '0914', 'HABIBUR ROHMAN', 'L', 'Bangkalan', NULL, 'y'),
('0915', '0915', 'HAFIDA', 'P', 'Bangkalan', NULL, 'y'),
('0917', '0917', 'HASANAH', 'P', 'Bangkalan', NULL, 'y'),
('0918', '0918', 'HASNAH', 'P', 'Bangkalan', NULL, 'y'),
('0920', '0920', 'HIKMIYATIN NISA''', 'P', 'Bangkalan', NULL, 'y'),
('0921', '0921', 'HOIRUL ANAM', 'L', 'Bangkalan', NULL, 'y'),
('0923', '0923', 'IFAYATUL MAHMUDAH', 'P', 'Surabaya', NULL, 'y'),
('0924', '0924', 'ILHAM ROBBY', 'L', 'Pamekasan', NULL, 'y'),
('0925', '0925', 'IMAM BUKHORI', 'L', 'Bangkalan', NULL, 'y'),
('0926', '0926', 'IMAM NAWAWI', 'L', 'Bangkalan', NULL, 'y'),
('0927', '0927', 'IMROATUS SOLEHAH', 'P', 'Bangkalan', NULL, 'y'),
('0928', '0928', 'INDAH RAMADHANI', 'P', 'Bangkalan', NULL, 'y'),
('0929', '0929', 'INDAH SARI', 'P', 'Bangkalan', NULL, 'y'),
('0930', '0930', 'INDRA BAITUL AKBAR', 'L', 'Bangkalan', NULL, 'y'),
('0931', '0931', 'INTAN DEWI PRAMITA', 'P', 'Sampang', NULL, 'y'),
('0932', '0932', 'IQBAL HIDAYATULLAH', 'L', 'Bangkalan', NULL, 'y'),
('0933', '0933', 'ISMAWATI DEWI', 'P', 'Bangkalan', NULL, 'y'),
('0934', '0934', 'ISMI MUFLIHAH', 'P', 'Bangkalan', NULL, 'y'),
('0935', '0935', 'ISNAINIL MUKARROMAH', 'P', 'Bangkalan', NULL, 'y'),
('0937', '0937', 'ISTIQOMAH', 'P', 'Bangkalan', NULL, 'y'),
('0938', '0938', 'ISYANTI', 'P', 'Bangkalan', NULL, 'y'),
('0939', '0939', 'JAMALUDIN', 'L', 'Jakarta', NULL, 'y'),
('0940', '0940', 'JAMILAH', 'P', 'Bangkalan', NULL, 'y'),
('0942', '0942', 'HALIMATUS ZAKDIYAH', 'P', 'Bangkalan', NULL, 'y'),
('0944', '0944', 'KAMILIA FAHMI AG.', 'P', 'Bangkalan', NULL, 'y'),
('0945', '0945', 'KHILDA SEPTAFINA', 'P', 'Bangkalan', NULL, 'y'),
('0946', '0946', 'KHOIRUL ANAM', 'L', 'Bekasi', NULL, 'y'),
('0947', '0947', 'KHUSNUL KHOTIMAH', 'P', 'Bangkalan', NULL, 'y'),
('0948', '0948', 'KURNIAWAN', 'L', 'Bangkalan', NULL, 'y'),
('0949', '0949', 'KUROTUL AENI', 'P', 'Bekasi', NULL, 'y'),
('0950', '0950', 'LAILATUL BAROKAH', 'P', 'Bangkalan', NULL, 'y'),
('0951', '0951', 'LAILATUL NURONIA', 'P', 'Bangkalan', NULL, 'y'),
('0952', '0952', 'LIANA PUSPITA SARI', 'P', 'Gresik', NULL, 'y'),
('0953', '0953', 'LUKMAN HIDAYAT', 'L', 'Bangkalan', NULL, 'y'),
('0954', '0954', 'LINATUL AISIYAH', 'P', 'Bangkalan', NULL, 'y'),
('0956', '0956', 'LUDIANA ASTUTIK', 'P', 'Bangkalan', NULL, 'y'),
('0957', '0957', 'LULUK LATIFAH', 'P', 'Bangkalan', NULL, 'y'),
('0958', '0958', 'LULUK ROHMAWATI', 'P', 'Bangkalan', NULL, 'y'),
('0959', '0959', 'LUTFIN NURAINIL HIJRIYAH', 'P', 'Bangkalan', NULL, 'y'),
('0960', '0960', 'LUTVIAH HANI', 'P', 'Bangkalan', NULL, 'y'),
('0961', '0961', 'M. IMRON', 'L', 'Bangkalan', NULL, 'y'),
('0962', '0962', 'M. RIZKI ARIFIN', 'L', 'Bangkalan', NULL, 'y'),
('0963', '0963', 'MABRUROH', 'P', 'Bangkalan', NULL, 'y'),
('0964', '0964', 'MAHMUDA', 'P', 'Bangkalan', NULL, 'y'),
('0965', '0965', 'MAHMUDI', 'L', 'Bangkalan', NULL, 'y'),
('0966', '0966', 'MAISAROH', 'P', 'Bangkalan', NULL, 'y'),
('0967', '0967', 'MAKRUFAH', 'P', 'Bangkalan', NULL, 'y'),
('0968', '0968', 'MANZILATUL MUBAROKAH', 'P', 'Bangkalan', NULL, 'y'),
('0969', '0969', 'MARIA ULFA', 'P', 'Bangkalan', NULL, 'y'),
('0970', '0970', 'MAWARDAH', 'P', 'Bangkalan', NULL, 'y'),
('0971', '0971', 'MELYNDA ANANDITA', 'P', 'Bangkalan', NULL, 'y'),
('0972', '0972', 'MIA NUR AFNI', 'P', 'Bangkalan', NULL, 'y'),
('0973', '0973', 'MILA NUR AINI', 'P', 'Bangkalan', NULL, 'y'),
('0974', '0974', 'MOCH. ROCHIM', 'L', 'Bangkalan', NULL, 'y'),
('0977', '0977', 'MOH. ALKOMIN', 'L', 'Bangkalan', NULL, 'y'),
('0978', '0978', 'MOH. AMINULLO', 'L', 'Bangkalan', NULL, 'y'),
('0980', '0980', 'MOH. HENDRI', 'L', 'Bangkalan', NULL, 'y'),
('0981', '0981', 'MOH. HOFI', 'L', 'Bangkalan', NULL, 'y'),
('0982', '0982', 'MOH. LU''AY KHOIRONI', 'L', 'Bangkalan', NULL, 'y'),
('0983', '0983', 'MOH. ROCHMAN', 'L', 'Bangkalan', NULL, 'y'),
('0984', '0984', 'MOH. SAID', 'L', 'Bangkalan', NULL, 'y'),
('0985', '0985', 'MOH. ZAKARIA', 'L', 'Bangkalan', NULL, 'y'),
('0987', '0987', 'MUFARROHA', 'P', 'Sidoarjo', NULL, 'y'),
('0988', '0988', 'MUFARROHAH', 'P', 'Bangkalan', NULL, 'y'),
('0989', '0989', 'MUHAMMAD ARDIAN MAULANA', 'L', 'Surabaya', NULL, 'y'),
('0990', '0990', 'MUNAWAROTUL AFIFA', 'P', 'Kediri', NULL, 'y'),
('0991', '0991', 'MUSDALIFAH', 'P', 'Bangkalan', NULL, 'y'),
('0992', '0992', 'MUSDALIVAH', 'P', 'Bangkalan', NULL, 'y'),
('0993', '0993', 'MUSTAQIM', 'L', 'Bangkalan', NULL, 'y'),
('0994', '0994', 'MUYESSAROH', 'P', 'Bangkalan', NULL, 'y'),
('0995', '0995', 'MUZAMMIL', 'L', 'Bangkalan', NULL, 'y'),
('0996', '0996', 'NADIA KOMARIAH', 'P', 'Bangkalan', NULL, 'y'),
('0997', '0997', 'NADIROTUS ZAINAB', 'P', 'Bangkalan', NULL, 'y'),
('0998', '0998', 'NANDA SITI MAIMUNA', 'P', 'Gresik', NULL, 'y'),
('0999', '0999', 'NIATUS SOFA', 'P', 'Bangkalan', NULL, 'y'),
('1000', '1000', 'NOVI ANGRAINI', 'P', 'Bangkalan', NULL, 'y'),
('1001', '1001', 'NUR AROFAH', 'P', 'Bangkalan', NULL, 'y'),
('1002', '1002', 'NUR DIANAH', 'P', 'Bangkalan', NULL, 'y'),
('1003', '1003', 'NUR SYAMSYIAH', 'P', 'Bangkalan', NULL, 'y'),
('1004', '1004', 'NURUL FADILAH', 'P', 'Bangkalan', NULL, 'y'),
('1005', '1005', 'NURUL HASANAH', 'P', 'Bangkalan', NULL, 'y'),
('1006', '1006', 'NURUL HIDAYATUL JANNAH', 'P', 'Bangkalan', NULL, 'y'),
('1007', '1007', 'NURUL KOMARIYAH', 'P', 'Bangkalan', NULL, 'y'),
('1008', '1008', 'NURUL KOMARIYAH', 'P', 'Bangkalan', NULL, 'y'),
('1010', '1010', 'PHILA UMNIATUS SOPHIA', 'P', 'Bangkalan', NULL, 'y'),
('1011', '1011', 'QISRON BISRI', 'L', 'Bangkalan', NULL, 'y'),
('1012', '1012', 'QUL YAKIN', 'L', 'Bangkalan', NULL, 'y'),
('1013', '1013', 'REZA HUMAIDI', 'L', 'Bangkalan', NULL, 'y'),
('1014', '1014', 'RIANTI', 'P', 'Bangkalan', NULL, 'y'),
('1015', '1015', 'RISKA NURUL HOTIMAH', 'P', 'Bangkalan', NULL, 'y'),
('1017', '1017', 'RIZKI AINUL YAKIN', 'L', 'Bangkalan', NULL, 'y'),
('1018', '1018', 'ROBIATUL ADAWIYAH', 'P', 'Bangkalan', NULL, 'y'),
('1020', '1020', 'SAHRIYAH', 'P', 'Bangkalan', NULL, 'y'),
('1021', '1021', 'SAYYIDAH AMIRATUS SOLICHAH', 'P', 'Bangkalan', NULL, 'y'),
('1022', '1022', 'SHODIK', 'L', 'Bangkalan', NULL, 'y'),
('1023', '1023', 'SIASATUL KARIMAH', 'P', 'Bangkalan', NULL, 'y'),
('1024', '1024', 'SILVIA DEVI', 'P', 'Bangkalan', NULL, 'y'),
('1025', '1025', 'SITI ISLAMIATI', 'P', 'Bangkalan', NULL, 'y'),
('1026', '1026', 'SITI AFIFAH', 'P', 'Bangkalan', NULL, 'y'),
('1027', '1027', 'SITI AISAH', 'P', 'Bangkalan', NULL, 'y'),
('1028', '1028', 'SITI AISYAH', 'P', 'Bangkalan', NULL, 'y'),
('1029', '1029', 'SITI AISYAH', 'P', 'Bangkalan', NULL, 'y'),
('1030', '1030', 'SITI AROFA', 'P', 'Bangkalan', NULL, 'y'),
('1031', '1031', 'SITI BADRIYAH', 'P', 'Bangkalan', NULL, 'y'),
('1032', '1032', 'SITI KALSUM', 'P', 'Bangkalan', NULL, 'y'),
('1033', '1033', 'ST. MAHSUSIYAH', 'P', 'Bangkalan', NULL, 'y'),
('1035', '1035', 'SITI NOER HALIZA', 'P', 'Surabaya', NULL, 'y'),
('1036', '1036', 'SITI NUR FADHILA', 'P', 'Bangkalan', NULL, 'y'),
('1037', '1037', 'SITI ROMLAH', 'P', 'Bangkalan', NULL, 'y'),
('1038', '1038', 'SITI ZULAIHA ARDIANA', 'P', 'Bangkalan', NULL, 'y'),
('1040', '1040', 'SOFIA ALAINA', 'P', 'Bangkalan', NULL, 'y'),
('1041', '1041', 'SOLEHA', 'P', 'Tangerang', NULL, 'y'),
('1042', '1042', 'SOPIAH', 'P', 'Sambas', NULL, 'y'),
('1043', '1043', 'SRI KOMARIYAH', 'P', 'Bangkalan', NULL, 'y'),
('1044', '1044', 'SUFIATI', 'P', 'Bangkalan', NULL, 'y'),
('1045', '1045', 'SUMRIYAH', 'P', 'Bangkalan', NULL, 'y'),
('1046', '1046', 'SYAIFUL ANWAR', 'L', 'Bangkalan', NULL, 'y'),
('1047', '1047', 'SYAIFUL ISLAM', 'L', 'Bangkalan', NULL, 'y'),
('1048', '1048', 'SYAHRUDDIN', 'L', 'Bangkalan', NULL, 'y'),
('1049', '1049', 'UBAIDILLAH', 'L', 'Bangkalan', NULL, 'y'),
('1050', '1050', 'ULFATUL JANNAH', 'P', 'Bangkalan', NULL, 'y'),
('1051', '1051', 'UMMU KULSUM', 'P', 'Bangkalan', NULL, 'y'),
('1052', '1052', 'USIATUS ZAHROH', 'P', 'Bangkalan', NULL, 'y'),
('1053', '1053', 'USWATUN HASANAH', 'P', 'Bangkalan', NULL, 'y'),
('1055', '1055', 'WULANDARI', 'P', 'Bangkalan', NULL, 'y'),
('1056', '1056', 'YULIANA', 'P', 'Bangkalan', NULL, 'y'),
('1057', '1057', 'YUYUN', 'P', 'Bangkalan', NULL, 'y'),
('1058', '1058', 'ZAHROTUN NIHAYAH', 'P', 'Surabaya', NULL, 'y'),
('1059', '1059', 'ZAINAL ABIDIN', 'L', 'Bangkalan', NULL, 'y'),
('1060', '1060', 'MUNADHIMATUS SILMI', 'P', 'Pasuruan', NULL, 'y'),
('1061', '1061', 'JANNATU ZUMARO', 'P', 'Bangkalan', NULL, 'y'),
('1062', '1062', 'FIRDAYATUL LAILIL FIRDAUS', 'P', 'Bogor', NULL, 'y'),
('1063', '1063', 'DESI PUSPITA SARI', 'P', 'Madura', NULL, 'y'),
('1260', '1260', 'MUDAKKIR', 'L', 'Bangkalan', NULL, 'y'),
('1263', '1263', 'EVI LAILIYAH', 'P', 'Sumenep', NULL, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_ujian`
--

CREATE TABLE `m_ujian` (
  `ujian_id` varchar(11) NOT NULL,
  `ujian_nama` varchar(255) DEFAULT NULL,
  `ujian_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `m_ujian`
--

INSERT INTO `m_ujian` (`ujian_id`, `ujian_nama`, `ujian_aktif`) VALUES
('UAS', 'UAS', 'y'),
('UH1', 'Ulangan Harian 1', 'y'),
('UH2', 'Ulangan Harian 2', 'y'),
('UH3', 'Ulangan Harian 3', 'y'),
('UH4', 'Ulangan Harian 4', 'y'),
('UK1', 'kuis 1', 'y'),
('UK2', 'Kuis 2', 'y'),
('uk3', 'klfljsdkf', 'y'),
('UTS', 'UTS', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE `t_siswa` (
  `siswa_kode` varchar(20) NOT NULL,
  `siswa_nis` varchar(255) DEFAULT NULL,
  `kelas_id` varchar(11) DEFAULT NULL,
  `jurusan_id` varchar(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `t_siswa_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`siswa_kode`, `siswa_nis`, `kelas_id`, `jurusan_id`, `semester_id`, `t_siswa_aktif`) VALUES
('1A1110874', '0874', '111', 'a', 4, 'y'),
('1A1210867', '0867', '121', 'a', 1, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_soal`
--

CREATE TABLE `t_soal` (
  `soal_id` int(11) NOT NULL,
  `ujian_kode` varchar(20) DEFAULT NULL,
  `soal` text,
  `jawaban` text,
  `soal_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `t_soal`
--

INSERT INTO `t_soal` (`soal_id`, `ujian_kode`, `soal`, `jawaban`, `soal_aktif`) VALUES
(2, 'UK1BHS1X102', 'FHASJKFHDK', 'SDJFKHSD', 'y'),
(3, 'UK1BHS1X102', 'SKJFHDJK', 'DHFJKSHD', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_ujian`
--

CREATE TABLE `t_ujian` (
  `ujian_kode` varchar(20) NOT NULL,
  `ujian_id` varchar(11) DEFAULT NULL,
  `pegawai_nip` varchar(50) DEFAULT NULL,
  `mapel_id` varchar(11) DEFAULT NULL,
  `kelas_id` varchar(11) DEFAULT NULL,
  `jurusan_id` varchar(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `ujian_aktif` varchar(1) DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `t_ujian`
--

INSERT INTO `t_ujian` (`ujian_kode`, `ujian_id`, `pegawai_nip`, `mapel_id`, `kelas_id`, `jurusan_id`, `semester_id`, `ujian_aktif`) VALUES
('UH3MTK3x103', 'UH3', NULL, 'MTK', '103', 'x', 3, 'y'),
('UK1BHS1X102', 'UK2', NULL, 'bhsa', '102', 'x', 1, 'y');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pegawai`
--
CREATE TABLE `v_pegawai` (
`pegawai_nip` varchar(50)
,`pegawai_password` varchar(255)
,`pegawai_nama` varchar(50)
,`pegawai_alamat` varchar(255)
,`pegawai_jk` varchar(1)
,`pegawai_aktif` varchar(1)
,`jabatan_id` int(11)
,`jabatan_nama` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_siswa`
--
CREATE TABLE `v_siswa` (
`siswa_kode` varchar(20)
,`siswa_nis` varchar(11)
,`siswa_nama` varchar(255)
,`kelas_nama` varchar(255)
,`jurusan_nama` varchar(255)
,`semester_nama` varchar(10)
,`semester_id` int(11)
,`kelas_id` varchar(11)
,`jurusan_id` varchar(11)
,`t_siswa_aktif` varchar(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ujian`
--
CREATE TABLE `v_ujian` (
`ujian_kode` varchar(20)
,`ujian_aktif` varchar(1)
,`semester_id` int(11)
,`semester_nama` varchar(10)
,`kelas_id` varchar(11)
,`kelas_nama` varchar(255)
,`ujian_id` varchar(11)
,`ujian_nama` varchar(255)
,`mapel_id` varchar(11)
,`mapel_nama` varchar(50)
,`jurusan_id` varchar(11)
,`jurusan_nama` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_pegawai`
--
DROP TABLE IF EXISTS `v_pegawai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pegawai`  AS  select `m_pegawai`.`pegawai_nip` AS `pegawai_nip`,`m_pegawai`.`pegawai_password` AS `pegawai_password`,`m_pegawai`.`pegawai_nama` AS `pegawai_nama`,`m_pegawai`.`pegawai_alamat` AS `pegawai_alamat`,`m_pegawai`.`pegawai_jk` AS `pegawai_jk`,`m_pegawai`.`pegawai_aktif` AS `pegawai_aktif`,`m_jabatan`.`jabatan_id` AS `jabatan_id`,`m_jabatan`.`jabatan_nama` AS `jabatan_nama` from (`m_pegawai` left join `m_jabatan` on((`m_pegawai`.`pegawai_jenis` = `m_jabatan`.`jabatan_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_siswa`
--
DROP TABLE IF EXISTS `v_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_siswa`  AS  select `t_siswa`.`siswa_kode` AS `siswa_kode`,`m_siswa`.`siswa_nis` AS `siswa_nis`,`m_siswa`.`siswa_nama` AS `siswa_nama`,`m_kelas`.`kelas_nama` AS `kelas_nama`,`m_jurusan`.`jurusan_nama` AS `jurusan_nama`,`m_semester`.`semester_nama` AS `semester_nama`,`m_semester`.`semester_id` AS `semester_id`,`m_kelas`.`kelas_id` AS `kelas_id`,`m_jurusan`.`jurusan_id` AS `jurusan_id`,`t_siswa`.`t_siswa_aktif` AS `t_siswa_aktif` from ((((`t_siswa` left join `m_siswa` on((`t_siswa`.`siswa_nis` = `m_siswa`.`siswa_nis`))) left join `m_semester` on((`t_siswa`.`semester_id` = `m_semester`.`semester_id`))) left join `m_kelas` on((`t_siswa`.`kelas_id` = `m_kelas`.`kelas_id`))) left join `m_jurusan` on((`t_siswa`.`jurusan_id` = `m_jurusan`.`jurusan_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_ujian`
--
DROP TABLE IF EXISTS `v_ujian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ujian`  AS  select `t_ujian`.`ujian_kode` AS `ujian_kode`,`t_ujian`.`ujian_aktif` AS `ujian_aktif`,`m_semester`.`semester_id` AS `semester_id`,`m_semester`.`semester_nama` AS `semester_nama`,`m_kelas`.`kelas_id` AS `kelas_id`,`m_kelas`.`kelas_nama` AS `kelas_nama`,`m_ujian`.`ujian_id` AS `ujian_id`,`m_ujian`.`ujian_nama` AS `ujian_nama`,`m_mapel`.`mapel_id` AS `mapel_id`,`m_mapel`.`mapel_nama` AS `mapel_nama`,`m_jurusan`.`jurusan_id` AS `jurusan_id`,`m_jurusan`.`jurusan_nama` AS `jurusan_nama` from (((((`t_ujian` left join `m_ujian` on((`t_ujian`.`ujian_id` = `m_ujian`.`ujian_id`))) left join `m_semester` on((`t_ujian`.`semester_id` = `m_semester`.`semester_id`))) left join `m_mapel` on((`t_ujian`.`mapel_id` = `m_mapel`.`mapel_id`))) left join `m_kelas` on((`t_ujian`.`kelas_id` = `m_kelas`.`kelas_id`))) left join `m_jurusan` on((`t_ujian`.`jurusan_id` = `m_jurusan`.`jurusan_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d_ujian`
--
ALTER TABLE `d_ujian`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `soal_id` (`siswa_kode`) USING BTREE,
  ADD KEY `ujian_id` (`ujian_kode`) USING BTREE;

--
-- Indexes for table `m_jabatan`
--
ALTER TABLE `m_jabatan`
  ADD PRIMARY KEY (`jabatan_id`);

--
-- Indexes for table `m_jurusan`
--
ALTER TABLE `m_jurusan`
  ADD PRIMARY KEY (`jurusan_id`);

--
-- Indexes for table `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`mapel_id`);

--
-- Indexes for table `m_pegawai`
--
ALTER TABLE `m_pegawai`
  ADD PRIMARY KEY (`pegawai_nip`),
  ADD KEY `pegawai_jenis` (`pegawai_jenis`) USING BTREE;

--
-- Indexes for table `m_semester`
--
ALTER TABLE `m_semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD PRIMARY KEY (`siswa_nis`);

--
-- Indexes for table `m_ujian`
--
ALTER TABLE `m_ujian`
  ADD PRIMARY KEY (`ujian_id`);

--
-- Indexes for table `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`siswa_kode`),
  ADD KEY `siswa_nis` (`siswa_nis`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- Indexes for table `t_soal`
--
ALTER TABLE `t_soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `jenis_id` (`ujian_kode`) USING BTREE;

--
-- Indexes for table `t_ujian`
--
ALTER TABLE `t_ujian`
  ADD PRIMARY KEY (`ujian_kode`),
  ADD KEY `jenis_id` (`ujian_id`) USING BTREE,
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `jurusan_id` (`jurusan_id`),
  ADD KEY `mapel_id` (`mapel_id`),
  ADD KEY `pegawai_nip` (`pegawai_nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d_ujian`
--
ALTER TABLE `d_ujian`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `m_jabatan`
--
ALTER TABLE `m_jabatan`
  MODIFY `jabatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `m_semester`
--
ALTER TABLE `m_semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `t_soal`
--
ALTER TABLE `t_soal`
  MODIFY `soal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `d_ujian`
--
ALTER TABLE `d_ujian`
  ADD CONSTRAINT `d_ujian_ibfk_1` FOREIGN KEY (`ujian_kode`) REFERENCES `t_ujian` (`ujian_kode`),
  ADD CONSTRAINT `d_ujian_ibfk_2` FOREIGN KEY (`siswa_kode`) REFERENCES `t_siswa` (`siswa_kode`);

--
-- Ketidakleluasaan untuk tabel `m_pegawai`
--
ALTER TABLE `m_pegawai`
  ADD CONSTRAINT `m_pegawai_ibfk_1` FOREIGN KEY (`pegawai_jenis`) REFERENCES `m_jabatan` (`jabatan_id`);

--
-- Ketidakleluasaan untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD CONSTRAINT `t_siswa_ibfk_1` FOREIGN KEY (`siswa_nis`) REFERENCES `m_siswa` (`siswa_nis`),
  ADD CONSTRAINT `t_siswa_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `m_semester` (`semester_id`),
  ADD CONSTRAINT `t_siswa_ibfk_5` FOREIGN KEY (`kelas_id`) REFERENCES `m_kelas` (`kelas_id`),
  ADD CONSTRAINT `t_siswa_ibfk_6` FOREIGN KEY (`jurusan_id`) REFERENCES `m_jurusan` (`jurusan_id`);

--
-- Ketidakleluasaan untuk tabel `t_soal`
--
ALTER TABLE `t_soal`
  ADD CONSTRAINT `t_soal_ibfk_1` FOREIGN KEY (`ujian_kode`) REFERENCES `t_ujian` (`ujian_kode`);

--
-- Ketidakleluasaan untuk tabel `t_ujian`
--
ALTER TABLE `t_ujian`
  ADD CONSTRAINT `t_ujian_ibfk_1` FOREIGN KEY (`ujian_id`) REFERENCES `m_ujian` (`ujian_id`),
  ADD CONSTRAINT `t_ujian_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `m_semester` (`semester_id`),
  ADD CONSTRAINT `t_ujian_ibfk_5` FOREIGN KEY (`kelas_id`) REFERENCES `m_kelas` (`kelas_id`),
  ADD CONSTRAINT `t_ujian_ibfk_6` FOREIGN KEY (`jurusan_id`) REFERENCES `m_jurusan` (`jurusan_id`),
  ADD CONSTRAINT `t_ujian_ibfk_7` FOREIGN KEY (`mapel_id`) REFERENCES `m_mapel` (`mapel_id`),
  ADD CONSTRAINT `t_ujian_ibfk_8` FOREIGN KEY (`pegawai_nip`) REFERENCES `m_pegawai` (`pegawai_nip`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
