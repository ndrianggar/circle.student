-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 31 Jul 2018 pada 08.34
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `circle`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dapodiksiswa`
--

CREATE TABLE IF NOT EXISTS `dapodiksiswa` (
  `nipd` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `lahir` varchar(50) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `aslskl` varchar(60) DEFAULT NULL,
  `kelamin` char(1) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `rt` varchar(2) DEFAULT NULL,
  `rw` varchar(2) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kodepos` varchar(5) DEFAULT NULL,
  `jnstgl` varchar(30) DEFAULT NULL,
  `transport` varchar(30) DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `hp` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `noskhun` varchar(30) DEFAULT NULL,
  `trmkps` varchar(5) DEFAULT NULL,
  `nokps` varchar(20) DEFAULT NULL,
  `srijazh` varchar(30) DEFAULT NULL,
  `nmibu` varchar(50) DEFAULT NULL,
  `thnibu` year(4) DEFAULT NULL,
  `jobibu` varchar(20) DEFAULT NULL,
  `pndkibu` varchar(20) DEFAULT NULL,
  `hslibu` double DEFAULT NULL,
  `nikibu` varchar(20) DEFAULT NULL,
  `nmayh` varchar(50) DEFAULT NULL,
  `thnayh` year(4) DEFAULT NULL,
  `jobayh` varchar(20) DEFAULT NULL,
  `pndkayh` varchar(20) DEFAULT NULL,
  `hslayh` double DEFAULT NULL,
  `nikayh` varchar(20) DEFAULT NULL,
  `nmwali` varchar(50) DEFAULT NULL,
  `thnwali` year(4) DEFAULT NULL,
  `jobwali` varchar(20) DEFAULT NULL,
  `pndkwali` varchar(20) DEFAULT NULL,
  `hslwali` double DEFAULT NULL,
  `nikwali` varchar(20) DEFAULT NULL,
  `npun` varchar(30) DEFAULT NULL,
  `trmkip` varchar(5) DEFAULT NULL,
  `nokip` varchar(20) DEFAULT NULL,
  `nmkip` varchar(50) DEFAULT NULL,
  `nokks` varchar(20) DEFAULT NULL,
  `noregakta` varchar(30) DEFAULT NULL,
  `nmbank` varchar(30) DEFAULT NULL,
  `norek` varchar(30) DEFAULT NULL,
  `nmrek` varchar(30) DEFAULT NULL,
  `pipst` varchar(5) DEFAULT NULL,
  `pipnote` varchar(50) DEFAULT NULL,
  `khusus` varchar(5) DEFAULT NULL,
  `anakke` varchar(2) DEFAULT NULL,
  `kelas` varchar(2) DEFAULT NULL,
  `subkls` varchar(1) DEFAULT NULL,
  `asrm` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dapodiksiswa`
--

INSERT INTO `dapodiksiswa` (`nipd`, `nama`, `tgllahir`, `lahir`, `nik`, `agama`, `aslskl`, `kelamin`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kodepos`, `jnstgl`, `transport`, `telp`, `hp`, `email`, `nisn`, `noskhun`, `trmkps`, `nokps`, `srijazh`, `nmibu`, `thnibu`, `jobibu`, `pndkibu`, `hslibu`, `nikibu`, `nmayh`, `thnayh`, `jobayh`, `pndkayh`, `hslayh`, `nikayh`, `nmwali`, `thnwali`, `jobwali`, `pndkwali`, `hslwali`, `nikwali`, `npun`, `trmkip`, `nokip`, `nmkip`, `nokks`, `noregakta`, `nmbank`, `norek`, `nmrek`, `pipst`, `pipnote`, `khusus`, `anakke`, `kelas`, `subkls`, `asrm`) VALUES
('151607008', '	FARADJ FARIZI', '2002-02-04', '	Purwakarta', '3214100403020006', 'Islam', 'SDIT AL BINA PURWAKARTA', NULL, 'Kp. Pasirkiniang 012/005Lebak Anyar Pasawanan', '0', '0', '', 'Lebak Anyar', '\r\n												Kec. Pasawahan', '41172', 'Asrama', '', '', '', '', '0026354847', 'DN-02 Dd 0643837    ', 'Tidak', '', '\r\n												', 'Faizah', 1980, 'Lainnya', 'SMA / sederajat', 0, '3214106301800002', '\r\n												Muksin Ridwan', 1968, 'Wiraswasta', 'SMA / sederajat', 0, '3214101503680007', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-02 Dd 0653393', 'Tidak', '', '', '', '385/Um/2002', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('161707113', 'AARON ALEXANDER', '2004-02-22', 'Bekasi', '', 'Islam', 'SMP AL-TAQWA COLLEGE INDONESIA', NULL, 'Taman Laguna I/51, Cibubur', '0', '0', '', 'cibubur', '\r\n												Kec. Ciracas', '', 'Bersama orang tua', '', '', '0818393908', '', '0042365468', 'DN- 02 Dd 0285121   ', 'Tidak', '', '\r\n												', 'TRISUCI WIDHY NAWANGWULAN', 1974, 'Lainnya', 'S2', 0, '3275106009740023', '\r\n												ISKANDAR ZULKARNAEN', 1956, 'Wiraswasta', 'S2', 0, '3275102107560010', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1-16-', 'DN-02 Dd/06 0284950', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807001', 'ABDAD FARZANA MUHAMMAD', '2005-01-24', 'Surabaya', '3578222401050001', 'Islam', '', NULL, 'Gayungsari III/32-B', '3', '4', '', 'Gayungan', '\r\n												Kec. Gayungan', '60234', 'Asrama', '', '', '08123456619', '', '0051656284', '', 'Tidak', '', '\r\n												', 'NOVIANI RAMADIYANTI', 1969, 'Lainnya', 'S1', 0, '', '\r\n												AGUS DHARMES TANTIYONO', 1969, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '2220/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807002', 'ABDILLAH MUHAMMAD AZFAHANI', '2005-04-12', 'BANDUNG', '', 'Islam', 'SD ISLAM PLUS UMMUL MUKMININ', NULL, 'TERS KOPO GG. H.SOBANDI', '2', '3', '', 'MARGAHAYU SELATAN', '\r\n												Kec. Margahayu', '', 'Asrama', '', '', '', '', '0052359572', 'DN-02 Dd 10671023   ', 'Tidak', '', '\r\n												', 'NURATRY AMBARWATI', 1975, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '\r\n												AEP SAEPUDIN', 1964, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1-17-', 'DN-02 Dd/13 0014487', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707001', 'ABDIRRAHMAN AZIZI HUDZAIFA YAMANI', '2004-10-29', 'JAKARTA', '3175032910040004', 'Islam', '', NULL, 'CIPINANG MUARA NO.8', '1', '5', '', 'CIPINANG MUARA', '\r\n												Kec. Jatinegara', '', '', '', '', '', '', '0041555848', 'DN-01 Dd 0043128    ', 'Tidak', '', '\r\n												', 'SUSILO ARUM HANDAYANINGSIH', 1971, 'Karyawan Swasta', 'S1', 0, '', '\r\n												ZAKI YAMANI', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1-16-', 'DN-01 Dd/06 0071061', 'Tidak', '', '', '', '31.648/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807003', 'ABDUL BARRI', '2005-09-22', 'BEKASI', '3275042209050001', 'Islam', '', NULL, 'JL ENGGANG RAYA NO 73', '4', '3', '', 'KAYURINGIN JAYA', '\r\n												Kec. Bekasi Selatan', '17144', 'Asrama', 'Mobil pribadi', '', '', '', '0054310190', '', 'Tidak', '', '\r\n												', 'RINA NIRAWATI', 1981, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												IIP SARIPUDIN', 1975, '', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('171807004', 'ABDURROHMAN AL-HILMY', '2004-10-23', 'Bekasi', '', 'Islam', '', NULL, 'Villa Mutiara Wanasari Blok L.22/32', '9', '34', '', 'Wanasari', '\r\n												Kec. Cibitung', '', '', '', '', '', '', '0058738348', 'DN-02 Dd 12-18-1572 ', 'Tidak', '', '\r\n												', 'MUSRIFAH', 2000, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												JUNIYANTO', 1978, '', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1-17-', 'DN-02 Dd/06 0273799', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707003', 'ABYYU ABDUL AZHIM RAIHAN', '2004-07-03', 'JAKARTA', '3176090307040004', 'Islam', '', NULL, 'JL.USMAN NO.8', '11', '4', '', 'KELAPA DUA WETAN', '\r\n												Kec. Ciracas', '', '', '', '', '', '', '0040972947', '', 'Tidak', '', '\r\n												', 'NADIYAH BAHMID', 1973, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												DANI', 2000, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '15.890/DISP/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707005', 'ACHMAD NADHMI ARFA', '2005-01-14', 'Medan', '3174081401051001', 'Islam', '', NULL, 'Green Palace Kalibata City Unit N/10/CF Jl.Kalibata Raya No 1', '9', '4', '', 'Rajawati', '\r\n												Kec. Pancoran', '', '', '', '', '', '', '0050396152', '', 'Tidak', '', '\r\n												', 'YULIA FARICHAH SAHLY', 1975, 'Lainnya', 'S1', 0, '', '\r\n												ARIEF ZULKARNAIN', 1971, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '17.255/2006', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607001', 'ADAM RIZKY PUTRA ROSENO', '2003-02-05', 'Sanggatta', '6265497656562321', 'Islam', '', NULL, 'Gg. Damai No.97 Poros', '0', '0', '', 'Sangatta Utara', '\r\n												Kec. Sangatta Utara', '', 'Asrama', '', '', '', '', '0031515445', '', 'Tidak', '', '\r\n												', 'Rusnawati', 1981, 'Lainnya', '', 0, '', '\r\n												Roseno', 1981, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607072', 'ADIB ACHMAD', '2002-12-24', 'Jakarta', '3175032412020004', 'Islam', '', NULL, 'Jl. Catur Tunggal 83 Cipinang Muara Jakarta Timur', '0', '0', '', 'Cipinang', '\r\n												Kec. Muara Gembong', '', '', '', '', '', '', '0026852741', '', 'Tidak', '', '\r\n												', 'Khotijah Lahji', 1962, '', '', 0, '', '\r\n												Dr. ACHMAD ABDULLAH', 1954, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607002', 'AFKAAR MUHAMMAD', '2003-02-12', 'JAKARTA', '3671131202030003', 'Islam', 'SDS JAKARTA ISLAMIC SCHOOL KEMBANGAN', NULL, 'JL. PINUS 1 NO.36 KOMP PURI BETA CILEDUG', '0', '0', '', 'CILEDUG', '\r\n												Kec. Ciledug', '', '', '', '', '', '', '0031992108', 'DN-01 Dd 0040878    ', 'Tidak', '', '\r\n												', 'WINCE SINDRIA', 1975, 'Lainnya', '', 0, '', '\r\n												SABARUDDIN ASPIL', 1970, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-02 Dd 0039691', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807006', 'AFLAH ZAIN JAPAMEL', '2005-05-05', 'JAYAPURA', '9171020505050003', 'Islam', 'SDIT PERMATA HATI JAYAPURA', NULL, 'PERUMAHAN PEMDA I ENTROP', '3', '3', '', 'ENTROP', '\r\n												Kec. Jayapura Selatan', '', 'Asrama', 'Lainnya', '', '', '', '0052098849', 'DN-25 D 0001614     ', 'Tidak', '', '\r\n												', 'YENI SUNDIARTI', 1970, 'Lainnya', 'S1', 0, '9171026206700002', '\r\n												PRIBOWO ADNAN', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1-17-', 'DN-25 Dd/06 0003013', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807007', 'AHMAD ATHHAR AWLIYA', '2005-08-30', 'PANGKALAN BRANDAN', '', 'Islam', '', NULL, 'SEVILLA BLOK CG/30 SEKT.XII BSD CITY', '3', '13', '', 'RAWAMEKAR JAYA', '\r\n												Kec. Serpong', '', 'Asrama', '', '', '', '', '0062560586', '', 'Tidak', '', '\r\n												', 'NITA HAYATI', 1980, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												AHMAD HANAFI', 1980, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607003', 'AHMAD FARHAN IBRAHIM', '2003-02-07', 'JAKARTA', '3173010702030002', 'Islam', 'SDIT A BA TA', NULL, 'Jl. Dahlia IV Blok AA No.04 KAPUK Cengkareng', '0', '0', '', 'kapuk', '\r\n												Kec. Cengkareng', '', '', '', '', '', '', '0034504492', 'DN-01 Dd 0040537    ', 'Tidak', '', '\r\n												', 'Dina Aryani', 1977, 'Lainnya', '', 0, '', '\r\n												Dedy Adrianto', 1970, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-01 Dd 0039350', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('151607037', 'AHMAD GASIM BALWEEL', '2002-11-27', 'MATARAM', '3276021107020007', 'Islam', '', NULL, 'Jln. Kapling DKI Blok K No.22 Ceger Cipayung', '0', '0', '', 'Ceger', '\r\n												Kec. Cipayung', '', '', '', '', '', '', '0031955119', '', 'Tidak', '', '\r\n												', 'fathiyah fetty salim', 1968, 'Lainnya', '', 0, '', '\r\n												GASIM AHMAD', 1974, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'DN-01 Dd 0108764', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807008', 'AHMAD MUMTAZ', '2005-04-26', 'SOLOK', '', 'Islam', '', NULL, 'PONDOK DAMAI A.5/7', '2', '12', '', 'CILEUNGSI KIDUL', '\r\n												Kec. Cileungsi', '', '', '', '', '', '', '0051558550', '', 'Tidak', '', '\r\n												', 'NIKE SUFIANI', 1977, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												YUDI HARZI', 1973, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('161707006', 'AHMAD NAUFAL', '2004-08-29', 'Depok', '3276022908040006', 'Islam', '', NULL, 'Komp.Dep.Koperasi Blok C.104', '6', '9', '', 'Curug', '\r\n												Kec. Cimanggis', '', '', '', '', '', '', '0042095575', '', 'Tidak', '', '\r\n												', 'EVI KURNIAWATI', 1978, 'Karyawan Swasta', 'S1', 0, '', '\r\n												HENRY PURNAMA', 1971, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '7021/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707007', 'AHMAD NUR SYAFIQ AGUNG', '2004-06-12', 'BONTANG', '6474021206040002', 'Islam', '', NULL, 'PC V NO.73 A PT BADAK', '0', '0', '', 'SATIMPO', '\r\n												Kec. Bontang Selatan', '', '', '', '', '', '', '0040853231', '', 'Tidak', '', '\r\n												', 'TIAN DESIANA', 1978, 'Lainnya', 'D3', 0, '', '\r\n												AGUNG PAMUJI IRJAYANTOPUTRA', 1974, 'PNS/TNI/Polri', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807009', 'AHMAD RASYID ATTHORIQ', '2004-12-07', 'BOGOR', '', 'Islam', '', NULL, 'KP.KAUM NO.30', '2', '11', '', 'CIPARIGI', '\r\n												Kec. Kota Bogor Utara', '', '', '', '', '', '', '0045011851', '', 'Tidak', '', '\r\n												', 'DEBY ROSMAYANTI', 1983, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '\r\n												SHONY', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807010', 'AHMAD SYARIF', '2005-08-18', 'DEPOK', '', 'Islam', '', NULL, 'JL DADAP RAYA DALAM', '7', '1', '', 'MEKARJAYA', '\r\n												Kec. Sukmajaya', '', 'Asrama', '', '', '', '', '0051850108', '', 'Tidak', '', '\r\n												', 'NANDA SARI NUR ASIH', 2000, 'Wiraswasta', 'Tidak sekolah', 0, '', '\r\n												HERMAN', 2000, 'Wiraswasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707008', 'AHMAD THORIQ AFIF HUTAGALUNG', '2003-12-15', 'JAKARTA', '3174071512030001', 'Islam', '', NULL, 'JL.SUNGAI PAWAN NO 4', '5', '4', '', 'KRAMAT PELA', '\r\n												Kec. Kebayoran Baru', '', '', '', '', '', '', '0036972564', '', 'Tidak', '', '\r\n												', 'RIETA FARIA FUAD', 1967, '', 'Tidak sekolah', 0, '', '\r\n												LUTHFY B HUTAGALUNG', 1967, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807011', 'AHMED DAFFA AL GHIFARY', '2004-12-11', 'JAKARTA', '', 'Islam', '', NULL, 'KP.BAHARI GG.II NO.238', '5', '6', '', 'TANJUNG PRIOK', '\r\n												Kec. Tanjung Priok', '', '', '', '', '', '', '171807011', '', 'Tidak', '', '\r\n												', 'ETTY YULIASTUTI', 1980, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												DENNY IRWANSYAH', 1978, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807012', 'AIDAN ARASYAH', '2005-09-29', 'BATAM', '', 'Islam', '', NULL, 'PERUM TAMAN MEKAR SARI BLOK C NO.14', '1', '5', '', 'MELAYU KOTA PIRING', '\r\n												Kec. Tanjung Pinang Timur', '', 'Asrama', 'Lainnya', '', '', '', '0057413366', '', 'Tidak', '', '\r\n												', 'NOVI SUSANTI', 2000, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '\r\n												AMRAN HALIM', 2000, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607004', 'AKBAR RIZKY RAMADHAN', '2003-11-10', 'JAKARTA', '6201021011030007', 'Islam', 'SDN 1 SIDOREJO ARUT SELATAN, KOTAWARINGIN', NULL, 'Jl. Sudirman SH nO 24', '3', '0', '', 'SIDOREJO', '\r\n												Kec. Sidorejo', '', '', '', '', '', '', '0038673453', 'DN-14 Dd 0005414    ', 'Tidak', '', '\r\n												', 'Gita Setiarini', 1984, 'Lainnya', '', 0, '', '\r\n												Untung Efendi', 1977, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-14 Dd 0004892', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('161707115', 'AKHMAD FARHAN ATHALLAH NASRUM', '2004-04-17', 'KENDARI', '7471101704040002', 'Islam', 'SMP-TQ MUADZ BIN JABAL KENDARI', NULL, 'JL PROF DR ABD RAUF TARIMANA NO.17', '20', '7', '', 'KAMBU', '\r\n												Kec. Kambu', '', 'Asrama', '', '', '', '', '0044660161', '', 'Tidak', '', '\r\n												', 'SRI SETIAWATI SANGGULA BALAKA', 1977, 'Lainnya', 'S1', 0, '', '\r\n												ANDI AKHMAD NASRUM', 1975, 'Karyawan Swasta', 'S1', 0, '7471100307750002', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807013', 'AKIRA CHIKO BELVASKA', '2005-06-01', 'Jakarta', '3172020106050004', 'Islam', 'SDN RAWA BADAK UTARA 01 PAGI', NULL, 'Jl. Swasembada Timur VIII No.34', '9', '10', '', 'Kebon Bawang', '\r\n												Kec. Tanjung Priok', '', 'Asrama', '', '', '087780896660', 'amelianduth@yahoo.com', '0049199786', 'DN-01 Dd 0024088    ', 'Tidak', '', '\r\n												', 'ADE AMELIA', 1975, 'Karyawan Swasta', 'S1', 0, '', '\r\n												DANI PALAPA EGA PUTRA', 1975, 'Wiraswasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'DN-01 Dd/13 0001485', 'Tidak', '', '', '', '7690/JU/KLT/2008', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807014', 'AKMAL ABDURRASYID', '2005-05-24', 'JAKARTA', '', 'Islam', '', NULL, 'TPC BLOK A10 NO.21', '1', '14', '', 'JAKA MULYA', '\r\n												Kec. Bekasi Selatan', '', '', '', '', '', '', '0059671129', '', 'Tidak', '', '\r\n												', 'ENNY YULIANINGSIH', 1972, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												HERI ZATMANTO', 1972, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('151607038', 'AKMAL MUHAMMAD FADHILAH', '2003-02-27', 'JAKARTA', '3275122702030006', 'Islam', 'SDS AL AZHAR 20', NULL, 'GRIYA JATI MURNI BLOK D/10 KEL. JATIMURNI KEC. PONDOK MELATI', '0', '0', '', 'Jati Murni', '\r\n												Kec. Pondok Melati', '', '', '', '', '', '', '0031279727', 'DN-01 Dd 0109243    ', 'Tidak', '', '\r\n												', 'Alita Suryani', 1965, '', '', 0, '', '\r\n												ACHMADI', 1964, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-01 Dd 0104288', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607039', 'AKMAL MULKI MADANI', '2003-11-19', 'DEPOK', '3201021911030012', 'Islam', 'SDS AL JANNAH', NULL, 'Legenda Wisata Zona Eintein R9 /27 Cibubur', '0', '0', '', 'Gunung Putri', '\r\n												Kec. Cileungsi', '', '', '', '', '', '', '0033913578', 'DN-01 Dd 0113592    ', 'Tidak', '', '\r\n												', 'dewi giantikawati', 1976, '', 'D3', 0, '3201024103760018', '\r\n												AEP KUSMAWAN', 1971, 'Karyawan Swasta', 'S1', 0, '3201021201710012', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-01 Dd 0108636', 'Tidak', '', '', '', '19/2004', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807015', 'ALEXANDER MUHAMMAD NAABIL', '2005-01-10', 'JAKARTA', '', 'Islam', '', NULL, 'JL KAYU PUTIH UTR III D/14', '2', '8', '', 'PULO GADUNG', '\r\n												Kec. Pulo Gadung', '', '', '', '', '', '', '0057171135', '', 'Tidak', '', '\r\n												', 'GIRI PROBOWATI', 2000, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '\r\n												SATRIYO BUDI JATMIKO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607073', 'ALIF ABYAN AL-HAQI', '2003-07-07', 'JAKARTA', '3276010707030014', 'Islam', '', NULL, 'JL MELON BLOK A5/12', '7', '10', '', 'RANGKAPAN JAYA', '\r\n												Kec. Pancoran Mas', '', '', '', '', '', '', '0031956688', '', 'Tidak', '', '\r\n												', 'RAHMAH SABHANI', 2000, '', '', 0, '', '\r\n												ANTON YUDHANTO', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607074', 'ALIF DAFA RAMADHAN', '2003-10-28', 'Jakarta', '3172045007790006', 'Islam', 'SDIT AL MUHAJIRIN', NULL, 'Jl. Derek Komp. Perum. PT. PELINDO II', '0', '0', '', 'Rawabadak', '\r\n												Kec. Cibadak', '', '', '', '', '', '', '0033256724', '', 'Tidak', '', '\r\n												', 'Rachmah widyastut', 1979, '', '', 0, '', '\r\n												DJEFRI HERLANDI', 1975, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-01 Dd 0140558', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707010', 'ANANDHITTA RAFIF MUSYAFFA', '2004-04-24', 'Depok', '3276052404040006', 'Islam', '', NULL, 'Depok Mulya 2 Blok .AA No.12 A', '7', '2', '', 'Beji', '\r\n												Kec. Beji', '', '', '', '', '', '', '0046958785', '', 'Tidak', '', '\r\n												', 'SITTA DEWI ALFIYANI', 1976, 'Karyawan Swasta', 'S1', 0, '', '\r\n												ANDI PRIYONO', 1976, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '2936/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807016', 'ANANDHITTA RAFIQ AKMAL', '2005-09-07', 'KEDAH', '', 'Islam', '', NULL, 'DEPOK MULYA 2 BLOK AA NO.12 A', '7', '2', '', 'BEJI', '\r\n												Kec. Beji', '', '', '', '', '', '', '0056445707', '', 'Tidak', '', '\r\n												', 'SITTA DEWI ALFIYANI', 1976, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												ANDI PRIYONO', 1976, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('161707011', 'ANAS GHIFARI KEMAPUTRA', '2004-01-20', 'Jakarta', '3276022001040011', 'Islam', '', NULL, 'Pondok Cibubur Blok F3 No. 9', '3', '8', '', 'Cisalak Pasar', '\r\n												Kec. Cimanggis', '', '', '', '', '', '', '0043231714', '', 'Tidak', '', '\r\n												', 'MAYA SITA DARLINA', 1974, 'Karyawan Swasta', 'S1', 0, '', '\r\n												PURWAJI', 1970, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '1724/U/JB/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607005', 'ANDI MUHAMMAD FAWWAZ AHNAF', '2003-05-11', 'JAKARTA', '3172021105030009', 'Islam', 'SDIT AL AMANAH TANJUNG PRIOK', NULL, 'Jl. Yos Sudarso Kebon bawang I No.7', '5', '7', '', 'Kebon Bawang', '\r\n												Kec. Tanjung Priok', '', 'Asrama', '', '', '', '', '0032454870', 'DN-01 Dd 0024040    ', 'Tidak', '', '\r\n												', 'HJ YANI NILAWATI', 1970, '', '', 0, '', '\r\n												Andi Muh Yusuf', 1968, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-01 Dd 0023639', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807005', 'ANDRAZA MALIKA YUSRIL', '2005-01-12', 'JAKARTA', '', 'Islam', '', NULL, 'JL CHRYSAN J2/9 TAMAN GALAXY BEKASI 6', '0', '0', '', 'JAKA MULYA', '\r\n												Kec. Bekasi Selatan', '', 'Asrama', '', '', '', '', '0051844883', '', 'Tidak', '', '\r\n												', 'RACHMA YULIARIZA', 2000, 'Lainnya', 'S1', 0, '', '\r\n												RAMA FIRDAUSI YUSRIL', 2000, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807017', 'AQIEL SYAFIQ RAHMAN', '2005-09-13', 'PEKANBARU', '', 'Islam', '', NULL, 'KOMP.DPR JL.PALA BLOK J.3/1', '17', '6', '', 'PULO GEBANG', '\r\n												Kec. Cakung', '', '', '', '', '', '', '0057171135', '', 'Tidak', '', '\r\n												', 'RAHMAWATI', 1973, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '\r\n												SEPTYAN GUSMAN', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'DN-01 Dd/06 0121045', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707012', 'ARIEF RIZQI ABDURRAHMAN', '2005-04-17', 'JAKARTA', '3175011704050002', 'Islam', '', NULL, 'JL.PISANGAN BARU UTARA', '13', '13', '', 'PISANGAN UTARA', '\r\n												Kec. Matraman', '', '', '', '', '', '', '0055406200', '', 'Tidak', '', '\r\n												', 'DARNELA', 1973, 'Lainnya', 'S1', 0, '', '\r\n												EDY SUHENDRA', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807018', 'ARIQ ROZANDHIYA', '2005-06-20', 'JAKARTA', '', 'Islam', '', NULL, 'VILLA BOGOR INDAH 3 BLOK BA. 4 NO.3', '3', '15', '', 'KEDUNGHALANG', '\r\n												Kec. Kota Bogor Utara', '', '', '', '', '', '', '0053651570', '', 'Tidak', '', '\r\n												', 'DIDAH SUPARIDAH', 1978, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												YANYAN SURVIYANA', 1974, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('151607006', 'ARKA NABIEL RANUKUMBALA', '2003-03-14', 'TANGERANG', '3276111403030003', 'Islam', '', NULL, 'PAMULANG ELOK M2 NO.8', '0', '0', '', 'PAMULANG', '\r\n												Kec. Pamulang', '', '', '', '', '', '', '0033319212', 'DN-30 Dd 0063499    ', 'Tidak', '', '\r\n												', 'FARAIDA NAFIRI', 1973, '', '', 0, '', '\r\n												NOFRIZAL', 1975, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-30 Dd 0063499', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707013', 'ARKAN DIWANTO EKA PUTRA', '2003-10-23', 'TANGERANG', '3674032310030010', 'Islam', '', NULL, 'PONDOK AREN', '3', '5', '', 'PONDOK KACANG TIMUR', '\r\n												Kec. Pondok Aren', '', '', '', '', '', '', '0034893909', '', 'Tidak', '', '\r\n												', 'DIAN ARIFITRI', 1981, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												MISWANTO', 1974, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '474.1/10156-DKCS/2003', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607109', 'ARKANDHIA IHSAN', '2004-01-09', 'Surabaya', '3578220901040001', 'Islam', '', NULL, 'Jl.Gayungsari 11/44', '2', '5', '', 'Gayungan', '\r\n												Kec. Gayungan', '60235', '', '', '', '', '', '0041795458', '', 'Tidak', '', '\r\n												', 'ETI SUNDARI', 1977, 'Lainnya', 'S1', 0, '3578225608770004', '\r\n												YUDHA BRAMANTIA', 1973, 'Karyawan Swasta', 'S1', 0, '3578221801730004', '', 2000, '', 'Tidak sekolah', 0, '', 'IX - C (pa)', '1-15-', 'DN-05 Dd 0016598', 'Tidak', '', '', '', '2034/2004', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807019', 'ATARIZAL RAHMADIAR AZHAR', '2005-10-23', 'SURAKARTA', '', 'Islam', 'SD NURUL ISLAM KELAPA DUA TANGERANG', NULL, 'JL.PAJAJARAN BARAT 01 NO.55', '3', '17', '', 'SUMBER', '\r\n												Kec. Banjarsari', '', '', '', '', '', '', '0056540305', 'DN-30 Dd 0180974    ', 'Tidak', '', '\r\n												', 'RESTY IRFIANI', 1980, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												IBNU KURNIAWAN', 1979, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'DN-30 Dd/06 0168880', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607007', 'AZHAR SIDIK WIDYATNA', '2003-09-21', 'JAKARTA', '3175012109031001', 'Islam', '', NULL, 'JL. Lapangan Tembak Jakarta', '0', '0', '', 'Cibubur', '\r\n												Kec. Ciracas', '', '', '', '', '', '', '0030898980', '', 'Tidak', '', '\r\n												', 'EKA MEIFRINA SURMANINGSIH', 1973, '', '', 0, '', '\r\n												ERWIN FIRDAUS', 1969, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707014', 'BAGINDA RAHMAT P.HARAHAP', '2004-07-17', 'Jeddah', '3174071707041002', 'Islam', '', NULL, 'Jl.Sungai Pawan No.4', '5', '7', '', 'Kramat Pela', '\r\n												Kec. Kebayoran Baru', '', '', '', '', '', '', '0044143548', '', 'Tidak', '', '\r\n												', 'NINA MUSDALIFA HUTAGALUNG', 1974, 'Lainnya', 'S1', 0, '', '\r\n												MUHAMMAD YUNUS', 1966, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607108', 'BELLY ANPASEMA RAHMAT', '2003-03-11', 'Bandarlampung', '5999323284478153', 'Islam', '', NULL, 'JL. SOEKARNO HATTA KOTYA BUMI LAMPUNG UTARA', '0', '0', '', 'kota bumi', '\r\n												Kec. Abung Selatan', '', 'Asrama', 'Lainnya', '', '', '', '0039319400', '', 'Tidak', '', '\r\n												', 'WIWID DYAH PURWANTI', 2000, '', '', 0, '', '\r\n												syamsuardi', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707015', 'BIDTAMA ARNO FEBRIYAN', '2004-01-31', 'NGANJUK', '3201063101040008', 'Islam', '', NULL, 'CITRA INDAH BUKIT CEMPAKA Y-12/17', '5', '8', '', 'SUKAMAJU', '\r\n												Kec. Jonggol', '', 'Asrama', '', '', '', '', '0041931767', '', 'Tidak', '', '\r\n												', 'YUNI WULANDARI', 1982, 'Wiraswasta', 'SMA / sederajat', 0, '', '\r\n												YUNARNO', 1979, 'PNS/TNI/Polri', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '4477/D/2010', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607075', 'BILAL FIKRY', '2003-08-06', 'Jakarta', '3174010608030003', 'Islam', '', NULL, 'Jl. Cipinang Cempedak II No. IIB', '0', '0', '', 'Cipinang', '\r\n												Kec. Jatinegara', '', '', '', '', '', '', '0033431390', '', 'Tidak', '', '\r\n												', 'FATIMAH GHOZI HARHARAH', 1981, 'Lainnya', 'S1', 0, '', '\r\n												FIKRY ABDULLAH SAID', 1971, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807020', 'BIMA ANANTA DIANDARU', '2005-05-28', 'BANYUWANGI', '5102040805050002', 'Islam', '', NULL, 'JL I GUSTI NGURAH RAI BTN TAWANJUKA BLOK F 11', '1', '2', '', 'TAWANJUKA', '\r\n												Kec. Tatanga', '', 'Asrama', '', '', '', '', '0054326193', '', 'Tidak', '', '\r\n												', 'IKA PURWANTINI', 1981, 'Lainnya', 'S1', 0, '', '\r\n												TUTUNG SUPRIANTO', 1981, '', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '2777/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807021', 'CHAISAL FARABI', '2005-04-07', 'JAKARTA', '', 'Islam', '', NULL, 'JL.JATI PADANG I/9', '5', '3', '', 'JATI PADANG', '\r\n												Kec. Pasar Minggu', '', '', '', '', '', '', '0052678277', '', 'Tidak', '', '\r\n												', 'SILVI YUNARNI', 1970, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '\r\n												SUMARTONO', 1969, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607076', 'CLARENCE GERARD LESMANA', '2003-06-18', 'Bekasi', '3171061806031001', 'Islam', 'SDN PONDOK LABU 05 PAGI', NULL, 'Perumahan Puri Cirnere Jl. Ciater Blok D3 No.15', '0', '0', '', 'Cirnere', '\r\n												Kec. Ciater', '', '', '', '', '', '', '0036803188', 'DN-01 Dd 0079555    ', 'Tidak', '', '\r\n												', 'Bunga Kurnia M.P', 1982, '', '', 0, '', '\r\n												Yosaphat Dwi Lesmana', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-01 Dd 0076124', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807022', 'DAFA AKHDAN ABDULLAH', '2005-06-03', 'JAKARTA', '', 'Islam', '', NULL, 'TEBET BARAT DALAM 7B', '0', '0', '', 'TEBET', '\r\n												Kec. Tebet', '', 'Asrama', '', '', '', '', '0053217127', '', 'Tidak', '', '\r\n												', 'AYU BANOWATI', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												ABDUL ROHIM', 2000, 'Wiraswasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707016', 'DAFFA NAUFALDIYAN', '2004-03-12', 'Jakarta', '3271051203040005', 'Islam', '', NULL, 'Villa Bogor Indah 3 Blok BA.4 No.3', '3', '15', '', 'Kedunghalang', '\r\n												Kec. Kota Bogor Utara', '', 'Asrama', '', '', '', '', '0040879854', '', 'Tidak', '', '\r\n												', 'DIDAH SUPARIDAH', 1978, 'Lainnya', 'S1', 0, '', '\r\n												YAN YAN SURVIYANA', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '6.512/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607077', 'DAVIN AFZAAL SYAH', '2003-11-29', 'Kendal', '3275102911030004', 'Islam', '', NULL, 'Cibubur Villa I Kranggan', '0', '0', '', 'Cibubur', '\r\n												Kec. Jatiasih', '', '', '', '', '', '', '0030898987', '', 'Tidak', '', '\r\n												', 'Diah Mastuti Ningrum', 1975, '', '', 0, '', '\r\n												Hanif Harits Syah', 1975, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807023', 'DIANDRA RAMADHAN DWIPUTRA SETIAWAN', '2005-10-13', 'PALEMBANG', '', 'Islam', '', NULL, 'JL AROEPALA HARTASNING BARU KOMPLEK PERMATA HIJAU LESTARI BLOK P15 NO 1', '0', '0', '', 'KASSI-KASSI', '\r\n												Kec. Rappocini', '', 'Asrama', '', '', '', '', '0057352920', '', 'Tidak', '', '\r\n												', 'SRI WAHYUNINGSIH', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												ABROR SETIAWAN', 2000, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707039', 'DIDAN NAUFAL HAKIM', '2003-11-29', 'Jakarta', '3172022911030009', 'Islam', '', NULL, 'Jl.Swasembada Barat III No.43', '23', '9', '', 'Kebon Bawang', '\r\n												Kec. Tanjung Priok', '', 'Asrama', '', '', '', '', '0034998325', 'DN-01 Dd 0123312    ', 'Tidak', '', '\r\n												', 'IRNA ISTANTI', 1973, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												TEGUH BUDI ISMANTO', 1972, 'PNS/TNI/Polri', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1-16-', '', 'Tidak', '', '', '', '12174/U/JU/2003', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807024', 'DIMAS FACHRII POETRA', '2017-07-10', 'Kediri', '', 'Islam', '', NULL, 'Jl. Lubuk Kasih T No.11', '1', '5', 'Jatiwaringin', 'Jatiwaringin', '\r\n												Kec. Pondokgede', '17411', 'Asrama', '', '', '', '', '171807024', '', 'Tidak', '', '\r\n												', 'MEITA VRIDIYANTI', 1975, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '\r\n												HADI MULYANTO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '4476/III/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807025', 'DIMAS MAULANA HARTOYO', '2005-02-13', 'BEKASI', '', 'Islam', '', NULL, 'CIKIWUL', '4', '6', '', 'CIKIWUL', '\r\n												Kec. Bantargebang', '', '', '', '', '', '', '0057547312', '', 'Tidak', '', '\r\n												', 'TUTIK SUSANTI', 1974, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												HARTOYO', 1967, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('171807026', 'DIMAS RAFI ADHIPRAMANA', '2005-05-04', 'Jakarta', '3172030405050005', 'Islam', 'SD BARUNAWATI IV-JAKARTA', NULL, 'Jl.Alur Laut 488', '2', '1', '', 'Rawa Badak Utara', '\r\n												Kec. Koja', '14230', 'Asrama', '', '', '081311511729', '', '0059590464', 'DN-01 Dd 0026525    ', 'Tidak', '', '\r\n												', 'TRIA SWARASTIARI', 1975, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												DARMUJI', 1972, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1-17-', '', 'Tidak', '', '', '', '5916/U/JU/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807027', 'DIRGHAM MALIK BUDIMAN', '2005-02-04', 'DEPOK', '', 'Islam', '', NULL, 'PERMATA DEPOK SEKTOR NILAM F10-9', '7', '7', '', 'PODOK JAYA', '\r\n												Kec. Cipayung', '', '', '', '', '', '', '0052290332', '', 'Tidak', '', '\r\n												', 'LINDA AGUSTINA', 1973, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '\r\n												ARIEF BUDIMAN', 1976, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707017', 'DYLON PUTRO SETIAWAN', '2004-08-17', 'Jakarta', '3671091708040003', 'Islam', '', NULL, 'Jl.Mina Blok I-III No.11', '3', '12', '', 'Panunggangan Barta', '\r\n												Kec. Cibodas', '', '', '', '', '', '', '0043591839', '', 'Tidak', '', '\r\n												', 'DWI RESANTI', 1973, 'Karyawan Swasta', 'S1', 0, '', '\r\n												IWAN SETIAWAN', 1973, 'Wiraswasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '12558/U/JB/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807028', 'DZAKWAN FARREL KUSUMA', '2005-05-14', 'YOGYAKARTA', '', 'Islam', '', NULL, 'KADIPATEN KIDUL 57/01', '6', '2', '', 'KADIPATEN', '\r\n												Kec. Kraton', '', '', '', '', '', '', '0059069592', '', 'Tidak', '', '\r\n												', 'SITA NURMARI PUTRI UTAMI', 1980, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												IWAN PERMADI KUSUMA', 1980, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607040', 'DZAKY AL WAFI NASIR', '2003-05-18', 'Jakarta', '3175101805030001', 'Islam', 'SDIT AL IKHLAS PONDOK MELATI', NULL, 'Taman Jati Sari Permai Cluster Bali', '0', '0', '', 'JATI SARI', '\r\n												Kec. Jatiasih', '', '', '', '', '', '', '0039777288', 'DN-02 Dd 0080407    ', 'Tidak', '', '\r\n												', 'Elis Haryati', 1976, '', 'SMA / sederajat', 0, '3175104101760020', '\r\n												Ikhwanul Arif', 1978, 'Karyawan Swasta', 'SMA / sederajat', 0, '3175100301780001', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'DN-02 Dd 0080584', 'Tidak', '', '', '', '16.584', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707018', 'DZAKY RAHMAN', '2004-04-13', 'Jakarta', '3175091304041002', 'Islam', '', NULL, 'Jl.Al Husnah No.71', '4', '1', '', 'Kelapa Dua Wetan', '\r\n												Kec. Ciracas', '', '', '', '', '', '', '0041890283', '', 'Tidak', '', '\r\n												', 'LINDA DAMAYANTI', 1976, 'Karyawan Swasta', 'D3', 0, '', '\r\n												AHMAD YANI', 1968, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '12.194/Disp/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707019', 'EMIR FARELL KURNIAWAN', '2003-11-15', 'Jakarta', '3273011511030003', 'Islam', '', NULL, 'Sarijadi Blok 10 No.96', '4', '4', '', 'Sarijadi', '\r\n												Kec. Sukasari', '40151', 'Asrama', '', '', '', '', '0035252493', '', 'Tidak', '', '\r\n												', 'NUKE RISQIANA', 1976, 'Lainnya', 'S1', 0, '', '\r\n												FAJRUL KURNIAWAN', 1973, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '28781/U/JS/2003', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607078', 'FADHIL NADJIB HARHARAH', '2003-03-16', 'Jakarta', '3175031603030006', 'Islam', 'SDIT AL-IMAN', NULL, 'Jl. Asuransi No.7 Otista 3', '0', '0', '', 'Jatinegara', '\r\n												Kec. Jatinegara', '', '', '', '', '', '', '0033431380', 'DN-02 Dd 0125458    ', 'Tidak', '', '\r\n												', 'Azizah Husein', 1969, 'Lainnya', '', 0, '', '\r\n												Nadjib Harharah', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-02 Dd 0120497', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807029', 'FADHLI MOHAMMAD RIZQI', '2005-12-08', 'DEPOK', '', 'Islam', '', NULL, 'JL KWINTANG VII BLOK L-30', '32', '9', '', 'SETIADARMA', '\r\n												Kec. Tambun Selatan', '', '', '', '', '', '', '171807029', '', 'Tidak', '', '\r\n												', 'MIEKE KARYATI', 1972, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												FATHAN MOHAMMAD NOOR', 1968, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807030', 'FAIZ ARHANDI RACHMAN', '2004-10-27', 'JAKARTA', '', 'Islam', '', NULL, 'JL. PANCA WARNA I/5', '1', '11', '', 'KAYU PUTIH', '\r\n												Kec. Pulo Gadung', '', '', '', '', '', '', '0045097431', '', 'Tidak', '', '\r\n												', 'WULAN CAHYANI', 1968, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												CHARLES SUJUDI RACHMAN', 1967, '', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('151607041', 'FAKHRI M. AHSAN', '2003-08-24', 'Denpasar', '5103052408030002', 'Islam', '', NULL, 'Jl. Pondok Betung Raya, Kav 84 Green Linea B5', '0', '0', '', 'Bintaro', '\r\n												Kec. Pesanggrahan', '', '', '', '', '', '', '0031563051', '', 'Tidak', '', '\r\n												', 'Tipluk rizuli redati', 1974, '', 'S1', 0, '5103056612740005', '\r\n												Moh. Arsyad Syahria', 1972, 'Karyawan Swasta', 'S2', 0, '3174030511720005', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '75/RPM/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607079', 'FALAH ALGHIFFARI RIZQI', '2003-08-06', 'JAKARTA', '3674060608030007', 'Islam', '', NULL, 'Jl. Karyawan No.28', '10', '17', '', 'Kedaung', '\r\n												Kec. Pamulang', '15415', '', '', '', '', '', '0037067393', '', 'Tidak', '', '\r\n												', 'Nadewi', 1973, 'Wiraswasta', 'S1', 0, '3674066412730011', '\r\n												Ekky Mokhamad Rizqi', 1972, 'Wiraswasta', 'S1', 0, '3674062706700008', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '474.1/257-DKCS/CSK/2004', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707020', 'FALAH RAZAN HIBRIZI', '2004-02-06', 'Jakarta', '3173010602041005', 'Islam', '', NULL, 'Rawa Buaya', '6', '1', '', 'Rawa Buaya', '\r\n												Kec. Cengkareng', '', 'Asrama', '', '', '', '', '0042375957', '', 'Tidak', '', '\r\n												', 'SRI MULYANI', 1982, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '\r\n												LUTFI KAMALUDIN', 1978, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807031', 'FARIQ NABIL ARIF', '2005-08-28', 'TANGERANG', '', 'Islam', '', NULL, 'KP BUARAN ARMAYA', '16', '4', '', 'TEGAL KUNIR KIDUL', '\r\n												Kec. Mauk', '', 'Asrama', '', '', '', '', '0055997560', 'DN-30 Dd 0011818    ', 'Tidak', '', '\r\n												', 'DEWI MAYANTIKA', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												ARIP SYARIP FIRDAUS', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'MI-06 280011848', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807032', 'FARIS RAMADHAN HARIANANDA', '2005-10-14', 'JAKARTA', '', 'Islam', 'SDS AL AZHAR 8 KEMBANGAN', NULL, 'JL.BAMBU KUNING IX NO.5', '11', '3', '', 'CENGKARENG BARAT', '\r\n												Kec. Cengkareng', '', '', '', '', '', '', '0053512572', 'DN-01 Dd 0037794    ', 'Tidak', '', '\r\n												', 'DEWI SAFITRI', 1974, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												DARRYL HARIANANDA', 1972, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1-17-', 'DN-01 Dd/06 0033898', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('161707021', 'FARRAS DARY FIRDAUS HUSAIN', '2005-01-27', 'Jakarta', '3674042701050001', 'Islam', '', NULL, 'Villa Jombang Baru Blok D 4/3', '14', '3', '', 'Jombang', '\r\n												Kec. Ciputat', '15414', '', '', '', '', '', '0051344053', '', 'Tidak', '', '\r\n												', 'KRISSY TRIANA DEWI', 1971, 'Karyawan Swasta', 'S1', 0, '3674044404710001', '\r\n												MAHAWARMAN HUSAIN A', 1970, 'Karyawan Swasta', 'SMA / sederajat', 0, '3674041704700001', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '3151/U/JS/2005', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807033', 'FATHAN RAFIF ADHRIANO', '2005-06-06', 'DEPOK', '', 'Islam', '', NULL, 'JL.LAKSANA UJUNG PERMATA', '10', '2', '', 'LIMBUNGAN BARU', '\r\n												Kec. Rumbai Pesisir', '', '', '', '', '', '', '0056244132', '', 'Tidak', '', '\r\n												', 'RIALITA HAYATI', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												WILLY ADHRIANO', 2000, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607043', 'FATUR ARRAHMAN', '2003-01-12', 'BALIKPAPAN', '6471051201030002', 'Islam', 'SDN RAWAJATI 06 PAGI', NULL, 'JL. RAWAJATI BARAT 012/004 Kalibata City Tower Gaha', '0', '0', '', 'Kalibata', '\r\n												Kec. Pancoran', '', '', '', '', '', '', '0033999981', 'DN-02 Dd 0095696    ', 'Tidak', '', '\r\n												', 'Roswaty Mochtar', 1978, '', 'SMA / sederajat', 0, '6471056207780005', '\r\n												PANDU SETA AJI', 1977, 'Karyawan Swasta', 'S1', 0, '6471052310770003', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-02 Dd 0092259', 'Tidak', '', '', '', '137/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607080', 'FAUZAN ADRIYANTO', '2003-10-09', 'JAKARTA', '3172030910030010', 'Islam', 'MI AR-RASYIDIYYAH', NULL, 'KP. BENDUNGAN MELAYU RT. 005/005 KEL. TUGU SELATAN', '5', '5', '', 'TUGU SELATAN', '\r\n												Kec. Koja', '', '', '', '', '', '', '0031638526', 'DN-01 Dd 0001299    ', 'Tidak', '', '\r\n												', 'ferry haryati', 1979, 'Lainnya', 'S1', 0, '', '\r\n												AGUS SURYANTO', 1976, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'MI 110001298', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607113', 'FAUZAN FAJRI RIZQULLAH', '2003-01-30', 'Temanggung', '', 'Islam', 'MTs SABILUNNAJAH BANDUNG', NULL, 'Jl. Pondok Kopi II Blok C /16', '8', '9', '', 'Pondok Kopi', '\r\n												Kec. Duren Sawit', '', 'Asrama', '', '', '087877932113', '', '0030457526', '', 'Tidak', '', '\r\n												', 'IKE NURHAYA', 1964, 'Lainnya', 'S1', 0, '3175075012640011', '\r\n												M.CHAIDIR', 1959, 'Pensiunan', 'S1', 0, '3175071703590009', '', 2000, '', 'Tidak sekolah', 0, '', 'IX - A (pa)', '1-14-', 'DN-01 Dd 0121677', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607009', 'FAUZAN NADHIF', '2003-04-13', '	JAKARTA', '3175101304031002', 'Islam', 'MI PKP DKI JAKARTA', NULL, 'Cilangkap No.57', '2', '4', '', 'Cilangkap', '\r\n												Kec. Cipayung', '', '', '', '', '', '', '0158044303', '', 'Tidak', '', '\r\n												', 'Sriyani', 1980, '', '', 0, '', '\r\n												Abdullah', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'MI 110010544', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607081', 'FAUZUR RIZQIY', '2003-03-06', 'Merauke', '9101010603030003', 'Islam', '', NULL, 'Jl. Raya Mandala No.100 Merauke Papua', '0', '0', '', 'MERAUKE', '\r\n												Kec. Merauke', '', '', '', '', '', '', '0032947151', '', 'Tidak', '', '\r\n												', 'Rina el vita', 1977, '', '', 0, '', '\r\n												Sopardi RH', 1970, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707022', 'FAYYAZ FATTAN GHIFARI', '2004-09-15', 'BEKASI', '3275041509040004', 'Islam', '', NULL, 'PONDOK SURYA MANDALA BLOK N/8', '3', '13', '', 'JAKA MULYA', '\r\n												Kec. Bekasi Selatan', '', '', '', '', '', '', '0040457530', '', 'Tidak', '', '\r\n												', 'HENGGAR SETYO WENING', 1975, 'Karyawan Swasta', 'D3', 0, '', '\r\n												AGUS HERMAWAN', 1969, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '77/PC/I/2009---', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607044', 'FAZA AULIA MAZAYA', '2003-03-14', 'BEKASI', '3275081403030023', 'Islam', '', NULL, 'Jl. Kp. Kemang Jati cempaka Pondok Gede', '3', '2', '', 'Jati cempaka', '\r\n												Kec. Pondokgede', '', 'Asrama', '', '', '081286016403', '', '0037083005', '', 'Tidak', '', '\r\n												', 'Nurhayati', 1974, 'Karyawan Swasta', 'S2', 0, '', '\r\n												Tri iswachyono', 1970, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '9-14-', '', 'Tidak', '', '', '', '3308/2003', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807034', 'FERRIS ZULFA IBRAHIM', '2005-01-14', 'BREBES', '', 'Islam', '', NULL, 'JL.HARUN VII', '7', '3', '', 'TANJUNG BARAT', '\r\n												Kec. Jagakarsa', '', '', '', '', '', '', '0052319702', '', 'Tidak', '', '\r\n												', 'VIVIN WINDARI', 1980, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '\r\n												HERU AGUS WIDARTO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607045', 'FERZA NOVERI', '2003-02-21', 'JAKARTA', '3275022102030019', 'Islam', 'SD MUHAMMADIYAH 2 TAMAN', NULL, 'Perum. D Spring Of Tomorrow Sidoarjo Jawa Timur', '0', '0', '', 'Gedangan', '\r\n												Kec. Sidoarjo', '', 'Asrama', '', '', '', '', '0031673282', 'DN-02 D.sd 1109896  ', 'Tidak', '', '\r\n												', 'YUSANA', 1974, 'Lainnya', 'S1', 0, '', '\r\n												YHON NOVERI', 1969, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-05 Dd 0115309', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707030', 'FIRMANSYAH ALMER AZMI', '2004-12-23', 'YOGYAKARTA', '3217082312040010', 'Islam', '', NULL, 'KOTA WISATA COATES VILLE BLOK SC.6/25', '1', '44', '', 'CIANGSANA', '\r\n												Kec. Gunungputri', '', '', '', '', '', '', '0044870274', '', 'Tidak', '', '\r\n												', 'LENCANA FITRI', 1968, 'Karyawan Swasta', 'S1', 0, '3217084401680012', '\r\n												YERIKO AZMI', 1967, 'Karyawan Swasta', 'S1', 0, '3217080211670005', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1-16-', 'DN-02 Dd/13 0016667', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL);
INSERT INTO `dapodiksiswa` (`nipd`, `nama`, `tgllahir`, `lahir`, `nik`, `agama`, `aslskl`, `kelamin`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kodepos`, `jnstgl`, `transport`, `telp`, `hp`, `email`, `nisn`, `noskhun`, `trmkps`, `nokps`, `srijazh`, `nmibu`, `thnibu`, `jobibu`, `pndkibu`, `hslibu`, `nikibu`, `nmayh`, `thnayh`, `jobayh`, `pndkayh`, `hslayh`, `nikayh`, `nmwali`, `thnwali`, `jobwali`, `pndkwali`, `hslwali`, `nikwali`, `npun`, `trmkip`, `nokip`, `nmkip`, `nokks`, `noregakta`, `nmbank`, `norek`, `nmrek`, `pipst`, `pipnote`, `khusus`, `anakke`, `kelas`, `subkls`, `asrm`) VALUES
('161707023', 'FURQON ARRAHIM', '2004-05-16', 'Balikpapan', '6471051605040005', 'Islam', '', NULL, 'Apt Kalibata City Unit B/12/CA Jl.TMP Kalibata', '1', '4', '', 'Rajawati', '\r\n												Kec. Pancoran', '', '', '', '', '', '', '0041376685', '', 'Tidak', '', '\r\n												', 'ROSWATY MOCHTAR', 1978, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												PANDU SETA AJI', 1977, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707024', 'GANANG ABIMANYU', '2004-04-19', 'Jakarta', '3671061904040002', 'Islam', '', NULL, 'Perum Mahkota Simprug Blok A11-14', '4', '15', '', 'Paninggilan Utara', '\r\n												Kec. Ciledug', '15153', '', '', '', '', '', '0041311983', '', 'Tidak', '', '\r\n												', 'Maryani', 1977, 'Karyawan Swasta', 'S1', 0, '3671064403770003', '\r\n												Samsul', 1968, 'Karyawan Swasta', 'S1', 0, '3671063012680002', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1-16-', 'DN-30 Dd/06 0025311', 'Tidak', '', '', '', '7456/U/JB/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707025', 'GATAR ANDARU ADHIMAKAYASA', '2004-02-26', 'Malang', '3671112602040003', 'Islam', '', NULL, 'Jl.Anggrek Catteleya C.315 PGP', '5', '6', '', 'Pinang', '\r\n												Kec. Pinang', '', '', '', '', '', '', '0041273670', '', 'Tidak', '', '\r\n												', 'ARDHIANA RISWARI', 1974, 'Karyawan Swasta', 'S2', 0, '', '\r\n												GATOT JATI KUSUMO', 1966, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '15313/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707114', 'GENTAR RAJA SUDIRO', '2004-02-10', 'JAKARTA', '3173071002040003', 'Islam', 'SMP ISLAM AL-AZHAR 4 KEMANDORAN', NULL, 'JL KEMANGGISAN ILIR V/79', '5', '13', '', 'PALMERAH', '\r\n												Kec. Palmerah', '11480', 'Asrama', '', '', '', '', '0048832111', 'DN-01 Dd 0132983    ', 'Tidak', '', '\r\n												', 'PRAKTI SERDANI', 1979, 'Lainnya', 'S1', 0, '', '\r\n												ARISONA SUDIRO', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1-16-', 'DN-01 Dd/13 0002997', 'Tidak', '', '', '', '3615/U/JP/2004', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607046', 'GHANI MAULA FATHAN', '2003-08-28', 'JAKARTA', '3674062808030002', 'Islam', 'SDI AZHARI LEBAK BULUS', NULL, 'VILLA CINERE MAS, JL. MATAHARI RAYA BLOK L2/18', '0', '0', '', 'CINERE', '\r\n												Kec. Cinere', '', '', '', '', '', '', '0033023369', 'DN-01 Dd 0081457    ', 'Tidak', '', '\r\n												', 'Yena Arenia', 1965, '', 'S1', 0, '3674054904550001', '\r\n												JUNAIDI', 1968, '', 'S1', 0, '3674050510680006', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-01 Dd 0078026', 'Tidak', '', '', '', '1498/U/JP/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607010', 'GHEITSA MUHAMMAD DAFFA DZIKRO', '2002-12-02', 'JAKARTA', '3175020212021003', 'Islam', 'SDN CIPINANG BESAR SELATAN 20 PG', NULL, 'THB Jl. Tulip Utama Blok B1/28', '0', '0', '', 'Pulogadung', '\r\n												Kec. Pulo Gadung', '', '', '', '', '', '', '0028863419', 'DN-01 Dd 0122514    ', 'Tidak', '', '\r\n												', 'Tatik Sutiyarsi', 1971, '', '', 0, '', '\r\n												Parmanto', 1967, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-01 Dd 0117555', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807035', 'GHIFAR RIZQI IVANDA', '2004-10-11', 'JAKARTA', '', 'Islam', '', NULL, 'PERMATA JASINDO LESTARI A6/18', '7', '4', '', 'MEKARSARI', '\r\n												Kec. Cimanggis', '', '', '', '', '', '', '0044916011', '', 'Tidak', '', '\r\n												', 'CUT NONI ANDALIA', 1981, 'Lainnya', 'S1', 0, '', '\r\n												ZULFAN MUCHTAR', 1975, '', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607011', 'GIBRAN JAFAR ABIMANYU', '2003-10-11', 'jAKARTA', '3201021110030009', 'Islam', 'SDS DAAR EL SALAM GUNUNG PUTRI', NULL, 'Kota Wisata', '0', '0', '', 'CILEUNGSI', '\r\n												Kec. Cileungsi', '', '', '', '', '', '', '0032114535', 'DN-02 Dd 0313001    ', 'Tidak', '', '\r\n												', 'Dessy Susanti', 1973, 'Lainnya', '', 0, '', '\r\n												Agung Prabowo', 1971, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'DN-02 Dd 0309817', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('151607012', 'GILANG FATHIR AHWADZI', '2003-01-24', 'JAKARTA', '3175082401030004', 'Islam', 'SDN MAKASAR 06 PG', NULL, 'Jl. Masjid al Munir nO.65 Kec. Makasar', '12', '3', '', 'makasar', '\r\n												Kec. Makasar', '', '', '', '', '', '', '0033351504', 'DN-01 Dd 0115805    ', 'Tidak', '', '\r\n												', 'ENI SUPRAPTI', 1979, 'Lainnya', '', 0, '', '\r\n												ROMELAN', 1971, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807036', 'HAEKAL FATHAN', '2004-12-19', 'JAKARTA', '', 'Islam', 'SD AL BAYAN ISLAMIC SCHOOL', NULL, 'JL. PURIBETA RAYA UTARA BLOK C.1 NO.59', '4', '12', '', 'LARANGAN UTARA', '\r\n												Kec. Larangan', '', '', '', '', '', '', '0045078223', 'DN-30 Dd 0025834    ', 'Tidak', '', '\r\n												', 'TRI LESTARI', 1978, 'Lainnya', 'S2', 0, '', '\r\n												DEDI MAHMUDI', 1976, '', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1-17-', 'DN-30 Dd/06 0024682', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707026', 'HAFIZ ARBI ARAFAT', '2004-11-20', 'Bekasi', '3275022011040005', 'Islam', '', NULL, 'Jl. Nusa Indah I C1 No.2', '3', '14', '', 'Kota Baru', '\r\n												Kec. Bekasi Barat', '', '', '', '', '', '', '0040791722', '', 'Tidak', '', '\r\n												', 'SAPTARIATI', 1979, 'Lainnya', 'SMA / sederajat', 0, '3275026210790015', '\r\n												HENDRA HIBRATA', 1962, 'Lainnya', 'S1', 0, '3275020205620027', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '1465/2005', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607082', 'HAFSUDDUURIY ABU HARITH', '2002-08-19', 'singapore', '', 'Islam', '', NULL, 'APT BLK 491 JURONG WEST AV', '0', '0', '', 'Singapore', '\r\n												Singapura', '', 'Asrama', 'Lainnya', '', '', '', '0029632004', '', 'Tidak', '', '\r\n												', 'Nur Azizah', 2000, '', '', 0, '', '\r\n												Mohd. SHarif', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '9-14-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707027', 'Hanief Achmad', '2004-04-27', 'Jakarta', '3175032704040001', 'Islam', '', NULL, 'Jl.Catur Tunggal 83', '12', '1', '', 'Cipinang Muara', '\r\n												Kec. Jatinegara', '13420', 'Bersama orang tua', '', '', '08128244196', '', '0041555829', 'SD-41555829         ', 'Tidak', '', '\r\n												', 'Khotijah Lahji', 1962, 'Lainnya', 'S1', 0, '3175036212620004', '\r\n												Achmad Abdullah', 1954, 'PNS/TNI/Polri', 'S1', 0, '3175031402540008', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1-6-0', 'DN-01 Dd/06 0107724', 'Tidak', '', '', '', '11051/U/JS/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807037', 'HANIF ALBANI SUDIRO', '2004-10-14', 'TANGERANG', '', 'Islam', '', NULL, 'JL.KENAIBAN NO.05', '2', '2', '', 'PABUARAN', '\r\n												Kec. Karawaci', '', '', '', '', '', '', '0041273814', '', 'Tidak', '', '\r\n												', 'TITIN FAJARWATI', 1979, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												DIMAS ANUGRAH SUDIRO', 1980, '', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807038', 'HANZHOLAH LOECA', '2005-11-14', 'CILACAP', '3216191411050004', 'Islam', '', NULL, 'JL KEMUNIING 2 NO.36 TAMAN LEMBAH HIJAU LIPPO CIKARANG', '4', '7', '', 'SERANG', '\r\n												Kec. Cikarang Selatan', '', 'Asrama', '', '', '', '', '0052895388', '', 'Tidak', '', '\r\n												', 'HERU TRISNANI', 1978, 'Lainnya', 'S1', 0, '', '\r\n												RUDY HENDARYANTO', 1970, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '38/2006', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('161707028', 'HAQQI MUHAMMAD IMRAN', '2004-06-26', 'Jakarta', '3173072606040003', 'Islam', '', NULL, 'Bukit Rivari D.4 No.9', '11', '13', '', 'Bedahan', '\r\n												Kec. Sawangan', '16519', '', '', '', '', '', '0041052640', '', 'Tidak', '', '\r\n												', 'PREISI ESTELA', 1974, 'Lainnya', 'S1', 0, '3173074207740010', '\r\n												AGASTIA', 1973, 'PNS/TNI/Polri', 'S1', 0, '3173073008730003', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '07-36', '', 'Tidak', '', '', '', '18589/DISP/JB/2006', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707029', 'HARITS ARKAAN PUTRANTO', '2003-11-07', 'Depok', '3276050711030004', 'Islam', '', NULL, 'Taman Cipayung Blok XXX No.313', '2', '27', '', 'Abadijaya', '\r\n												Kec. Sukmajaya', '16417', '', '', '', '', '', '0035539788', 'DN-02 Dd 0127358    ', 'Tidak', '', '\r\n												', 'ERNI MUKTI ASTUTI', 1972, 'Karyawan Swasta', 'D3', 0, '3276055703720014', '\r\n												TEDJO PUTRANTO', 1971, 'Karyawan Swasta', 'S1', 0, '327605301070009 ', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1-16-', 'DN-02 Dd/06 0118709', 'Tidak', '', '', '', '7170/2003', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807039', 'HAROLDY MAKARIM SIGERO', '2005-07-26', 'JAKARTA', '', 'Islam', '', NULL, 'JL.SIAGA I NO.38', '3', '5', '', 'PEJATEN BARAT', '\r\n												Kec. Pasar Minggu', '', '', '', '', '', '', '0052135208', '', 'Tidak', '', '\r\n												', 'SONDANG MEIRITA SIREGAR', 1967, 'PNS/TNI/Polri', 'S1', 0, '', '\r\n												HENDRI GUSRA', 1968, 'PNS/TNI/Polri', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807040', 'HAZEL VEDA MAULANA', '2005-07-04', 'BEKASI', '', 'Islam', '', NULL, 'JL. MAWAR MERAH II/33/243', '4', '1', '', 'PONDOK KOPI', '\r\n												Kec. Duren Sawit', '', 'Asrama', '', '', '', '', '0050935891', '', 'Tidak', '', '\r\n												', 'YUNITA TRISELLIA', 1972, 'Lainnya', 'S1', 0, '', '\r\n												ANDRE', 1971, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1-17-', 'DN-01 Dd/06 0107901', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807041', 'HILMI NUGRAHA WIRASAPUTRA', '2005-08-24', 'KUNINGAN', '', 'Islam', '', NULL, 'PERMATA DEPOK BERLIAN II H5/03', '9', '7', '', 'PONDOK JAYA', '\r\n												Kec. Cipayung', '', '', '', '', '', '', '0052293286', '', 'Tidak', '', '\r\n												', 'MEMEY MEILASWATI', 1977, 'Karyawan Swasta', 'S1', 0, '', '\r\n												HIDAYAT PRAWIRA', 1972, '', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807042', 'HIRZI FAKHRU DZAKI HIDAYAT', '2005-09-05', 'BALIKPAPAN', '3276020509050003', 'Islam', '', NULL, 'PERUMAHAN PERSADA DEPOK BLOK A6/17', '2', '18', '', 'CIMPAEUN', '\r\n												Kec. Tapos', '', 'Asrama', '', '', '', '', '171807042', '', 'Tidak', '', '\r\n												', 'ZULFIANY AZIZA', 1976, 'Lainnya', 'D3', 0, '', '\r\n												NOVAN ARIF HIDAYAT', 1975, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '2251/ 2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807043', 'I WAYAN GEDE RADITYA DARMA PUTRA', '2005-12-26', 'Gianyar', '3671122612050004', 'Islam', 'SD ISLAM AL HASANAH CILEDUG', NULL, 'Jl. Karyawan III/15', '1', '9', 'Karang Tengah', 'Karang Tengah', '\r\n												Kec. Karang Tengah', '15155', 'Asrama', '', '', '082221295250', '', '0058198834', 'DN-30 Dd 0014072    ', 'Tidak', '', '\r\n												', 'INDAH MASITTA TIKARINA', 1978, 'Wiraswasta', 'S1', 0, '3671124807780007', '\r\n												I MADE SUARDANA NOVIADI', 1978, 'Wiraswasta', 'S1', 0, '3671122611780001', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'DN-30 Dd/06 0013361', 'Tidak', '', '', '', '07/UM/2006', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607013', 'IBNU SAKHAA HISYAM', '2003-07-24', 'Jakarta', '3174022407030001', 'Islam', 'SDIT AL MUHAJIRIN PANCOANMAS', NULL, 'Menteng Wadas Barat No.48', '2', '12', '', 'Pasar Manggis', '\r\n												Kec. Setia Budi', '', 'Asrama', '', '', '', '', '0035539855', 'DN-02 Dd 0137450    ', 'Tidak', '', '\r\n												', 'Erika widyasari', 1977, 'Karyawan Swasta', 'SMA / sederajat', 0, '3174026102770002', '\r\n												Dedi Kriswanto', 1971, 'Karyawan Swasta', 'D3', 0, '3174021305710002', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-02 Dd 0134227', 'Tidak', '', '', '', '12.589/U/JP/2003', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('161707031', 'IBNU SYUHADA', '2004-02-08', 'Jakarta', '3174090802040002', 'Islam', '', NULL, 'JL.Agung Raya II', '5', '7', '', 'Lenteng Agung', '\r\n												Kec. Jagakarsa', '', '', '', '', '', '', '0045150427', 'DN-01 Dd 0045151    ', 'Tidak', '', '\r\n												', 'Ita Handayani', 1981, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												Azis Tone', 1976, 'Karyawan Swasta', 'SMA / sederajat', 0, '3174091912760002', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1-16-', 'DN-01 Dd/06 0062238', 'Tidak', '', '', '', '4616/U/JS/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707032', 'IDHAM MUHAMMAD RAIHAN', '2004-02-13', 'JAKARTA', '3175101302040005', 'Islam', '', NULL, 'JL.SWADAYA III NO.35', '5', '2', '', 'PONDOK RANGGON', '\r\n												Kec. Cipayung', '', '', '', '', '', '', '0041515777', 'DN-01 Dd 0077543    ', 'Tidak', '', '\r\n												', 'NUR AMALIA', 1978, 'Lainnya', 'S1', 0, '', '\r\n												DIDA PERMADI', 1967, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1-16-', 'DN-01 Dd/06 0097152', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707033', 'IRFAN ARSYAD', '2004-03-24', 'BOGOR', '3271022403040005', 'Islam', '', NULL, 'Jl.Cimanggis III No.11', '5', '5', '', 'Baranangsiang', '\r\n												Kec. Kota Bogor Timur', '', '', '', '', '', '', '0046182447', 'DN-02 Dd 0089470    ', 'Tidak', '', '\r\n												', 'ENDANG NASTIATI', 1971, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												ISBIN BASUKI', 1963, 'PNS/TNI/Polri', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1-16-', 'DN-02 Dd/06 0090566', 'Tidak', '', '', '', '1936/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807044', 'IRFAN FAKHRIYANTO', '2005-03-01', 'BEKASI', '', 'Islam', '', NULL, 'BJ RAWA LUMBU NO.146', '3', '40', '', 'BOJONG RAWA LUMBU', '\r\n												Kec. Rawalumbu', '', '', '', '', '', '', '0059684759', '', 'Tidak', '', '\r\n												', 'CHAMSUNARI', 1966, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												ARINOTO', 1962, 'PNS/TNI/Polri', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '4', 'VI', NULL, NULL),
('151607083', 'IRFAN HANIF ALAUDDIN AHMAD', '2004-02-21', 'Bekasi', '3216082102040001', 'Islam', 'SDIT DAARUL FIKRI BEKASI', NULL, 'Perumahan Telaga Sakinah Bekasi', '0', '0', '', 'TELAGA MURNI', '\r\n												Kec. Cibitung', '', '', '', '', '', '', '0043697564', 'DN-02 Dd 0278827    ', 'Tidak', '', '\r\n												', 'DEWI AMBAR KOSASIH', 1976, 'Lainnya', 'S1', 0, '', '\r\n												BURHANUDIN AHMAD', 1976, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-02 Dd 0276053', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'IX', NULL, NULL),
('151607084', 'IRSYAD MUHAMMAD FAWWAZ', '2003-06-04', 'JAKARTA', '3175070406030012', 'Islam', '', NULL, 'Lembah Aren VII K12/6 Pond Kelapa', '0', '0', '', 'PONDOK KELAPA', '\r\n												Kec. Duren Sawit', '13450', '', '', '', '', '', '0030453398', '', 'Tidak', '', '\r\n												', 'HARLIANA', 1972, '', '', 0, '', '\r\n												Andi Setia Buana', 1974, 'Karyawan Swasta', 'S2', 0, '3175073103740001', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '16.791/U/JT/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707034', 'IRVANANDA AL GHIFARY', '2004-02-25', 'Jakarta', '3671132502040002', 'Islam', '', NULL, 'Jl.Inpres XI/12.B', '3', '5', '', 'Gaga', '\r\n												Kec. Larangan', '15154', 'Asrama', '', '', '', '', '0041311974', '', 'Tidak', '', '\r\n												', 'RITA ROSITA ERNAWATI', 1971, 'Lainnya', 'S1', 0, '', '\r\n												PRAYUDI', 1968, 'Karyawan Swasta', 'S1', 0, '3671130810680001', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1    ', '', 'Tidak', '', '', '', '8473/U/JS/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607014', 'IRZA HANI AZHAR', '2003-04-07', 'SURABAYA', '3201020704030001', 'Islam', '', NULL, 'PESONA ORLANDO RB4/70 KOTA WISATA', '0', '0', '', 'cileungsi', '\r\n												Kec. Cileungsi', '', '', '', '', '', '', '0032114710', 'DN-02 Dd 0313378    ', 'Tidak', '', '\r\n												', 'HARLIANA', 1972, '', '', 0, '', '\r\n												Anang Suprianto', 1972, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-02 Dd 0309940', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807045', 'IZZA ARYDANI', '2005-08-01', 'JAKARTA', '', 'Islam', '', NULL, 'CANDRABAGA BLOK AQ 10/11', '26', '19', '', 'BAHAGIA', '\r\n												Kec. Babelan', '', '', '', '', '', '', '0053172806', '', 'Tidak', '', '\r\n												', 'IIN YUSMAINI INDRIATI', 1972, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												SYAMSU INDRA', 1971, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('151607015', 'IZZA RAMADHANI', '2003-11-10', 'JAKARTA', '3175081011030001', 'Islam', 'SDN MAKASAR 09 PAGI', NULL, 'MAKASAR RT 09/03 NO 8 AB', '0', '0', '', 'MAKASAR', '\r\n												Kec. Makasar', '', '', '', '', '', '', '0033474911', 'DN-02 Dd 0115976    ', 'Tidak', '', '\r\n												', 'FADJAR NILAH', 1974, 'Karyawan Swasta', 'S1', 0, '', '\r\n												SUTRISNO', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-01 Dd 0111020', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707035', 'IZZAT THARIQ MAULANA', '2003-12-01', 'Jakarta', '3175080112030006', 'Islam', '', NULL, 'JL.Kolatu No.29', '2', '13', '', 'Halim Perdana Kusumah', '\r\n												Kec. Makasar', '', 'Asrama', '', '', '', '', '0034896611', '', 'Tidak', '', '\r\n												', 'Herlina', 1968, 'Pensiunan', 'SMA / sederajat', 0, '', '\r\n												Ismail Manan', 1965, 'PNS/TNI/Polri', 'S1', 0, '3175081109650003', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1-16-', 'DN-01 Dd/06 0101115', 'Tidak', '', '', '', '34.917/U/JT/2003', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807046', 'JUNDI RIDHO PAMUNGKAS', '2004-12-16', 'BEKASI', '3216211612040008', 'Islam', '', NULL, 'PERUM MEGA REGENCY BLOK E', '10', '9', '', 'SUKA RAGAM', '\r\n												Kec. Serang Baru', '', 'Asrama', '', '', '', '', '0046754996', '', 'Tidak', '', '\r\n												', 'NOEHA SUPRIHANDAYANI', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												UNTUNG PAMUNGKAS', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1-17-', 'DN-02 Dd/06 0281891', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807047', 'KADIVAR GHAZALI AHMAD', '2005-08-20', 'TANGERANG', '', 'Islam', '', NULL, 'RAWA BAMBU B II/3', '8', '7', '', 'PASAR MINGGU', '\r\n												Kec. Pasar Minggu', '', '', '', '', '', '', '171807047', '', 'Tidak', '', '\r\n												', 'FADHILAH AMINY', 1979, 'Wiraswasta', 'S1', 0, '', '\r\n												AHMAD ZAKIE ARIFIN', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('151607016', 'KEMAL MUHAMMAD FIRSTY', '2003-04-26', 'PEKANBARU', '1471082604030084', 'Islam', 'SDIT LEADERSHIP BINTANG CENDEKIA', NULL, 'KAMPUNG DELIMA RESIDENCE BLOK E NO.16 WISMA PGRI', '0', '0', '', 'DELIMA RESIDENCE', '\r\n												Kec. Pekanbaru Kota', '', '', '', '', '', '', '0031911738', 'DN-09 Dd 0015130    ', 'Tidak', '', '\r\n												', 'WIWID ANGGRAINI', 1974, 'Lainnya', '', 0, '', '\r\n												Rahmed El Junaidi', 1974, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-09 Dd 0015159', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('161707111', 'KHANZA MUHAMMAD KISWORO', '2004-01-01', 'JAKARTA', '', 'Islam', 'SMP NEGERI 134', NULL, 'JL PENYELESAIAN TOMANG 3 BLOK 102/10', '0', '0', '', 'MERUYA UTARA', '\r\n												Kec. Kembangan', '', 'Asrama', '', '', '', '', '0042656486', 'DN-01 Dd 0099750    ', 'Tidak', '', '\r\n												', 'PISCESCARINI', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												DEDI KISWORO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1-16-', 'DN-01 Dd/06 0126555', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807048', 'KIAS HUMA DI STEPA', '2004-09-09', 'Jakarta', '3172020909040008', 'Islam', '', NULL, 'Jl. Sungai Bambu V D No.12', '5', '4', 'Sungai Bambu', 'Sungai Bambu', '\r\n												Kec. Tanjung Priok', '', 'Asrama', '', '', '08892608576', 'iin.nilawati74@gmail.com', '0045493561', '', 'Tidak', '', '\r\n												', 'IIN NILAWATI', 1974, 'Karyawan Swasta', 'S1', 0, '3172025701740012', '\r\n												BUDI SUSILO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '3211/DISP/JB/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607048', 'LA ODE IBRAH HAIKAL RACHMAN KADIR', '2003-03-18', 'tanggerang', '3674041803030004', 'Islam', '', NULL, 'Villa Dago Tol Blok 14 No. 10 Serua Ciputat Tangsel', '0', '0', '', 'bsd', '\r\n												Kec. Ciputat', '', '', '', '', '', '', '0037080197', '', 'Tidak', '', '\r\n												', 'WA ODE RAMA', 1968, 'Lainnya', '', 0, '', '\r\n												Abdul Rachman Kadir', 1968, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'MI 130007585', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807049', 'LUQMAN ARIF WIDIYANTO', '2005-07-07', 'BALIKPAPAN', '', 'Islam', '', NULL, 'BDS SEVILLA BLOK CA NO.5 SEKT.XII', '2', '9', '', 'RAWA MEKAR JAYA', '\r\n												Kec. Serpong', '', 'Asrama', '', '', '', '', '0044072375', 'DN-30 Dd 0060769    ', 'Tidak', '', '\r\n												', 'RATNA JUWITA', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												TARUNA WIDIYANTO', 2000, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'DN-30 Dd/13 0009532', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607049', 'LUTHFI HADI', '2003-04-29', 'bogor', '3201072904031001', 'Islam', 'SD MUHAMMADIYAH 1 CILEUNGSI', NULL, 'Metland Transyogi Gandaria 15 No.68', '0', '0', '', 'cileungsi kidul', '\r\n												Kec. Cileungsi', '', 'Asrama', '', '', '', '', '0030598421', 'DN-02 Dd 0330785    ', 'Tidak', '', '\r\n												', 'ISMAWATI', 1975, 'Lainnya', '', 0, '', '\r\n												Mochamad Soleh', 1974, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-02 Dd 0325896', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('151607052', 'MAHRUS FAZRI WIBOWO', '2003-05-19', 'Jakarta', '3275101905030003', 'Islam', '', NULL, 'Jl. Bandung 3 IC Komp. Masjid At Taqwa Kranggan Wetan', '1', '6', '', 'jatisampurna', '\r\n												Kec. Jati Sampurna', '17433', '', '', '', '', '', '0033913506', '', 'Tidak', '', '\r\n												', 'sonya afianti rosada', 1972, 'Wiraswasta', 'S1', 0, '3275104806720013', '\r\n												MUHAMMAD ISMAIL', 1958, 'Karyawan Swasta', 'S1', 0, '3275101809580002', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '2.492/DISP/JT/2006', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807053', 'MAULANA YUSUF', '2004-12-28', 'CILEGON', '', 'Islam', '', NULL, 'KOMP PERUM TITAN ARUM BLOK C.11 NO.12', '3', '13', '', 'DRANGONG', '\r\n												Kec. Taktakan', '', '', '', '', '', '', '0053535978', '', 'Tidak', '', '\r\n												', 'ERLIANI AFRIZA', 1978, 'Lainnya', 'S1', 0, '', '\r\n												HENDRA', 1976, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807054', 'MAULANA ZUHDI AMAANULLAH RAFI', '2005-07-23', 'JAKARTA', '', 'Islam', '', NULL, 'JL. KAKATUA 1 BLOK B-6/3', '4', '13', '', 'JATIBENING', '\r\n												Kec. Pondokgede', '', '', '', '', '', '', '171807054', '', 'Tidak', '', '\r\n												', 'ENNY ROCHAYATI', 1971, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												SIGIT WAHYU AJI SASONGKO', 1973, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807055', 'MIFTAHUL IHSAN', '2005-11-30', 'BANJARBARU', '', 'Islam', '', NULL, 'JL.PELITA KOMP.PINUS BARU BLOK C 01 BANJARBARU', '1', '1', '', 'MENTAOS', '\r\n												Kec. Banjarbaru Utara', '', '', '', '', '', '', '0050870313', '', 'Tidak', '', '\r\n												', 'NELLY AL AUDHAH', 1977, 'PNS/TNI/Polri', 'S2', 0, '', '\r\n												ZUHDY RAKHMATILLAH', 1971, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707043', 'MOAMMAR FAUZAN ALI', '2004-06-09', 'JAKARTA', '3175090906040003', 'Islam', '', NULL, 'JL.HERMAN SP II', '0', '0', '', 'SUSUKAN', '\r\n												Kec. Ciracas', '', 'Asrama', '', '', '', '', '0044135564', '', 'Tidak', '', '\r\n												', 'VONNY RETNOSARY A', 1977, '', 'Tidak sekolah', 0, '', '\r\n												DIDI RIYADI', 1977, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607085', 'MOCH. RIDHO BADAWI', '2003-07-06', 'PALU', '7271010607030004', 'Islam', '', NULL, 'Jl. Sugiono No.2 Palu Sulteng', '0', '0', '', 'PALU', '\r\n												Kec. Palu Barat', '', '', '', '', '', '', '0037382851', '', 'Ya', 'QNV93A', '\r\n												', 'Hesty Juliana', 1983, '', '', 0, '', '\r\n												Moch Imran badawi', 1983, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Ya', 'QNV93A', '', '', '', 'BANK BRI', '73160', 'MOCH  RIDHO\r\n												', '', '', 'IX', NULL, NULL),
('151607086', 'MOCHAMAD DHAFIN RAIF', '2004-01-27', 'bandung', '3603212701040001', 'Islam', '', NULL, 'Puspita Loka Blok G5/15', '0', '0', '', 'LENGKONG GUDANG', '\r\n												Kec. Serpong', '', 'Asrama', '', '', '', '', '0049904605', '', 'Tidak', '', '\r\n												', 'WAWAT KRISMAWATI', 1976, '', '', 0, '', '\r\n												UUS NOVIARDI', 1973, '', '', 0, '', '', 2000, '', '', 0, '', 'VIII - B (pa)', '9-14-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('', 'MOCHAMMAD IHZAMI RASHYID', '2004-01-01', 'JAKARTA', '', 'Islam', '', NULL, 'RAFFLES HILLS  M6 NO.5', '1', '5', '', 'sukatani', '\r\n												Kec. Tapos', '', '', '', '', '', '', '0043559076', '', 'Tidak', '', '\r\n												', 'ASIH SUKAESIH', 2000, '', 'Tidak sekolah', 0, '', '\r\n												MOCHAMMAD FAZRI YULIANTO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1    ', '', 'Tidak', '', '', '', '13204/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707044', 'MOHAMMAD AUFA FADHLULLAH', '2004-02-14', 'QATAR', '3604051402040002', 'Islam', '', NULL, 'Komp GSI Blok M.1 No.08', '3', '4', '', 'Serdang', '\r\n												Kec. Kramatwatu', '', '', '', '', '', '', '0047034086', '', 'Tidak', '', '\r\n												', 'ROSI TRIFYANI', 1976, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '\r\n												AGUS TRIANTO', 1968, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '11/kons/AK/Dh/II/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707045', 'MOHAMMAD DAFFA AKBAR', '2004-10-24', 'JAKARTA', '3172042410040008', 'Islam', '', NULL, 'JL.H.SUIT BB/33', '1', '6', '', 'SEMPER BARAT', '\r\n												Kec. Cilincing', '', '', '', '', '', '', '0041514096', '', 'Tidak', '', '\r\n												', 'RADEN AYU NURLINDA', 1970, 'Lainnya', 'S2', 0, '', '\r\n												MOHAMMAD RAYA', 1965, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '29.489/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('', 'MOHAMMAD EL RAZAK ATHAILLAH MIRDAL', '2004-06-21', 'JAKARTA', '3201022108040014', 'Islam', '', NULL, 'KOTA WISATA COATESVILLE', '22', '44', '', 'CIANGSANA', '\r\n												Kec. Gunungputri', '', 'Asrama', '', '', '', '', '0043559118', '', 'Tidak', '', '\r\n												', 'FARANIKA TENRILENGKA', 1977, '', 'Tidak sekolah', 0, '', '\r\n												MUHAMMAD MIRDAL AKIB', 1976, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707064', 'MOHAMMAD HAFIZH BUKHARIYANDA', '2004-08-26', 'JAKARTA', '3173052608040011', 'Islam', '', NULL, 'KOMP.YON HUB', '6', '4', '', 'KELAPA DUA', '\r\n												Kec. Kebon Jeruk', '', '', '', '', '', '', '0042229494', '', 'Tidak', '', '\r\n												', 'YULIA HAPSARI BUNGAWERO', 1977, 'Lainnya', 'S1', 0, '', '\r\n												YANUAR KURNIAWAN', 1977, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607019', 'MUCHAMAD DAVA NURSYAFA', '2003-01-09', 'BANDUNG', '3201010901030010', 'Islam', '', NULL, 'Jl. Raya Cijujung Kab bogor', '0', '0', '', 'sentul', '\r\n												Kec. Cibinong', '', '', '', '', '', '', '0030533563', '', 'Tidak', '', '\r\n												', 'Gessy Selvia', 1975, 'Karyawan Swasta', 'S1', 0, '', '\r\n												Bagoes Zulkarnaen', 2000, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607018', 'MUCHAMAD DIVA NURSYIFA', '2003-01-09', 'BANDUNG', '3201010901030010', 'Islam', '', NULL, 'Jl. Raya Cijujung Kab. Bogor', '0', '0', '', 'Sentul', '\r\n												Kec. Cibinong', '', '', '', '', '', '', '0030533562', '', 'Tidak', '', '\r\n												', 'GESSY SELVIA', 1975, 'Karyawan Swasta', 'S1', 0, '', '\r\n												Bagoes Zulkarnain', 2000, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807056', 'MUHAMAD FARIS RASYID', '2005-03-02', 'BEKASI', '3171030203050001', 'Islam', '', NULL, 'KP SERDANG', '10', '4', '', 'SERDANG', '\r\n												Kec. Kemayoran', '', '', '', '', '', '', '0055980225', '', 'Tidak', '', '\r\n												', 'KARYATI', 1972, 'PNS/TNI/Polri', 'D3', 0, '', '\r\n												DJOKO SUTIONO', 1964, 'PNS/TNI/Polri', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('151607054', 'MUHAMMAD ABDUL HALIM', '2002-08-10', 'Jakarta', '3175101008020006', 'Islam', '', NULL, 'Jl. Peternakan sapi perah Pondok Ranggon', '0', '0', '', 'pondok ranggon', '\r\n												Kec. Cipayung', '', 'Asrama', '', '', '', '', '0026820765', '', 'Tidak', '', '\r\n												', 'Namah Bt Nain', 2000, '', '', 0, '', '\r\n												M. Aminudin', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807057', 'MUHAMMAD AFIF NAUFAL', '2005-07-28', 'GORONTALO', '', 'Islam', '', NULL, 'JL.KENANGAN PERUM KAPUTIH INDAH BLOK C1 NO.6', '0', '0', '', 'DULALOWO TIMUR', '\r\n												Kec. Limboto', '', '', 'Lainnya', '', '', '', '0059588027', '', 'Tidak', '', '\r\n												', 'FATMAWATI AHMAD', 2000, 'Wiraswasta', 'Tidak sekolah', 0, '', '\r\n												MOCHAMMAD SOGHIR', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707048', 'MUHAMMAD AKHTAR YUSRON', '2004-04-13', 'JAKARTA', '3275091304040007', 'Islam', '', NULL, 'PERUM PONDOK INDAH JATISARI BLOK H NO.8', '9', '5', '', 'JATISARI', '\r\n												Kec. Jatiasih', '', '', '', '', '', '', '0041048337', '', 'Tidak', '', '\r\n												', 'JEANY CHOPERRINA', 1979, 'Lainnya', 'S1', 0, '', '\r\n												ERRES MAYENDRA', 1977, 'Karyawan Swasta', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '03-46', '', 'Tidak', '', '', '', '636/DISP/JS/2005/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807058', 'MUHAMMAD AL FARIZY', '2005-04-30', 'PONTIANAK', '3402163004050004', 'Islam', 'SDI IBNU HAJAR', NULL, 'PERUM MEGA ASRI NO.G.1', '9', '34', '', 'SARDONOHARJO', '\r\n												Kec. Ngaglik', '', 'Asrama', '', '', '', '', '0051019736', 'DN-01 Dd 0098516    ', 'Tidak', '', '\r\n												', 'SAFITRI WAZAR', 1965, 'Lainnya', 'S1', 0, '', '\r\n												TARUNA GUNAWAN', 1964, 'Pensiunan', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1-17-', 'DN-01 Dd/06 0091611', 'Tidak', '', '', '', '929/2005', '', '', '\r\n												', '', '4', 'VI', NULL, NULL),
('151607020', 'MUHAMMAD ALFARISYI', '2002-12-27', 'JAKARTA', '3276022712020001', 'Islam', '', NULL, 'Mahogany Residence Blok J/28 Alternatif Cibubur', '0', '0', '', 'Harjamukti', '\r\n												Kec. Cimanggis', '', '', '', '', '', '', '0027310633', '', 'Tidak', '', '\r\n												', 'Devi Dwirantih', 2000, '', '', 0, '', '\r\n												ACHMAD DJAMALILLEIL', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807060', 'MUHAMMAD ALGHIFARI TAUFIK', '2005-08-17', 'B0NTANG', '3276051708050008', 'Islam', 'SD DEMUT-SEMUT THE NATURAL SCHOOL', NULL, 'Bukit Cengkeh Berbunga Blok A-2 No. 6-7', '2', '24', '', 'Baktijaya', '\r\n												Kec. Sukmajaya', '16418', '', '', '', '', '', '0052365190', 'DN-02 Dd 07089069   ', 'Tidak', '', '\r\n												', 'SANDIYANA SAMANTHA', 1972, 'Karyawan Swasta', 'D3', 0, '3276054101720029', '\r\n												Taufik Hasbullah', 1970, '', 'Tidak sekolah', 0, '', 'SANDYANA SAMANTHA', 1972, '', 'D3', 0, '', 'VII - D (pa)', '1-17-', 'DN-02 Dd/06 0132500', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('151607050', 'MUHAMMAD ALI PRABU DARMAWAN', '2003-07-06', 'SURABAYA', '3578170607030010', 'Islam', '', NULL, 'Jl. Wibawa IV No.8 Komp. Cilandak Kko Jaksel', '0', '0', '', 'Cilandak', '\r\n												Kec. Cilandak', '', '', '', '', '', '', '0032250404', '', 'Tidak', '', '\r\n												', 'ade lestari', 1978, '', 'D3', 0, '3578044411780008', '\r\n												ILI DASILI', 1972, '', 'SMA / sederajat', 0, '3578040704720009', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'DN-01 Dd 0070651', 'Tidak', '', '', '', '13562/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707038', 'MUHAMMAD AMIRUL HABIBI', '2003-11-16', 'BONTANG', '6474021611030005', 'Islam', '', NULL, 'PC 4/76 KOMP.PT BADAK NGL', '6', '0', '', 'SATIMPO', '\r\n												Kec. Bontang Selatan', '', '', '', '', '', '', '0035138693', '', 'Tidak', '', '\r\n												', 'DESI IMAN JAYA', 1974, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												ISMAIL MARYANTO', 1974, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '676/IST/2005', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707112', 'MUHAMMAD AMMAR', '2003-05-31', 'Tangerang', '3671073105030003', 'Islam', '', NULL, 'Pondok Arum Blok B 9 No.03', '6', '2', '', 'Nambo Jaya', '\r\n												Kec. Karawaci', '15112', 'Asrama', '', '', '', '', '0035910591', 'DN-30 PA 0000371    ', 'Tidak', '', '\r\n												', 'SUWARNI', 1974, 'Lainnya', 'S1', 0, '3671076805740005', '\r\n												MUJIYONO', 1974, 'Lainnya', 'S1', 0, '3671071905740001', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', 'A.15-', 'DN-30 PA 0000353', 'Tidak', '', '', '', '814/477/2003', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707050', 'MUHAMMAD AMNI DIHYAH', '2004-09-14', 'Jakarta', '3172031409040015', 'Islam', '', NULL, 'Jl. Serdang Raya No/14', '5', '7', '', 'Kukusan', '\r\n												Kec. Beji', '', '', '', '', '', '', '0048838326', '', 'Tidak', '', '\r\n												', 'SUHERMI', 1972, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												AHMAD YAGUS', 1973, 'Lainnya', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '11035/U/JU/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807061', 'MUHAMMAD ANARGYA ERNANDA SETIAWAN', '2005-09-09', 'Jakarta', '3172021909050005', 'Islam', '', NULL, 'Jl. Sunter Jaya IV A No.37', '1', '3', '', 'Sunter Jaya', '\r\n												Kec. Tanjung Priok', '', 'Asrama', '', '+96590984675', '081908013430', 'ernadirham@yahoo.com', '0054042425', '', 'Tidak', '', '\r\n												', 'ERNAWATI', 1975, 'Karyawan Swasta', 'D3', 0, '', '\r\n												IWAN SETIAWAN', 1972, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '9821/JU/KLT/2008', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607087', 'MUHAMMAD ANDI ADITYA', '2002-12-13', 'Demak', '3201131312020009', 'Islam', '', NULL, 'Taman Firjiya Blok. GC No.1', '1', '3', '', 'Pondok Manggis', '\r\n												Kec. Bojong Gede', '', 'Asrama', '', '', '', '', '0027011180', '', 'Tidak', '', '\r\n												', 'Sulistari', 1969, 'Lainnya', '', 0, '', '\r\n												SUKISNO', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807062', 'MUHAMMAD ARDIANSYAH', '2004-11-17', 'JAYAPURA', '', 'Islam', '', NULL, 'PESONA OTTAWA BLOK UC 2 NO.10 KOTA WISATA', '0', '0', '', 'LIMUS NUNGGAL', '\r\n												Kec. Cileungsi', '', '', '', '', '', '', '171807062', '', 'Tidak', '', '\r\n												', 'ANITA AGUSTINA', 2000, 'Wiraswasta', 'Tidak sekolah', 0, '', '\r\n												MUHAMMAD NUR', 2000, 'Wiraswasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607088', 'MUHAMMAD AULIYA FAISAL', '2002-12-20', 'Purworejo', '3404022012020002', 'Islam', 'SD ISLAM AL FAUZIEN', NULL, 'Perum Pesona Khayangan Juanda Blok.BF No.8', '0', '0', '', 'Mekarjaya', '\r\n												Kec. Sukmajaya', '', '', '', '', '', '', '0025368124', 'DN-02 Dd 0137194    ', 'Tidak', '', '\r\n												', 'ZAINURROFIKOH', 1976, 'Lainnya', '', 0, '', '\r\n												Faisal', 1975, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807063', 'MUHAMMAD AVIN SENA', '2005-09-22', 'JAKARTA', '3175092209051003', 'Islam', '', NULL, 'JL. CIBUBUR INDAH III BLOK H NO.10', '5', '11', '', 'CIBUBUR', '\r\n												Kec. Ciracas', '', 'Pesantren', '', '', '', '', '171807063', '', 'Tidak', '', '\r\n												', 'AMALIA RIDHA', 1983, 'Lainnya', 'D3', 0, '', '\r\n												ALFIAN DARMAWAN', 1976, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '2265/U/JS/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807051', 'MUHAMMAD AZKA NAZHAN', '2005-10-10', 'MEDAN', '', 'Islam', '', NULL, 'JL.METEOROLOGI III NO.28 LKI', '0', '0', '', 'INDRA KASIH', '\r\n												Kec. Medan Tembung', '', '', '', '', '', '', '0054789538', '', 'Tidak', '', '\r\n												', 'SITI MAIMUNAH', 1979, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '\r\n												YUSDI HARIANTO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('161707051', 'MUHAMMAD AZZAM GHAZALI', '2004-02-22', 'Kediri', '3276052202040005', 'Islam', '', NULL, 'KKDR Anggrek -3 Blok B5 No.11', '4', '6', '', 'Tirtajaya', '\r\n												Kec. Sukmajaya', '', 'Asrama', '', '', '', '', '0041474888', '', 'Tidak', '', '\r\n												', 'ELLYA SORAYA', 1978, 'Lainnya', 'S1', 0, '', '\r\n												SUNARTO', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '3708/II/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807064', 'MUHAMMAD BINTANG ADJINEGORO', '2017-07-10', 'JAKARTA', '', 'Islam', '', NULL, 'JL.D 3 NO.39', '10', '4', '', 'KEBON BARU', '\r\n												Kec. Tebet', '', '', '', '', '', '', '171807064', '', 'Tidak', '', '\r\n												', 'FEBRIAN ORRY', 1976, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												ZULKIFLI', 1976, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607055', 'MUHAMMAD BRAMANDARU', '2003-08-08', 'jakarta', '3201010808030007', 'Islam', 'SD ISLAM AL AZHAR 27 BOGOR', NULL, 'Mutiara Sentul U2 Nanggewer', '0', '0', '', 'Nanggewer', '\r\n												Kec. Cibinong', '', 'Asrama', '', '', '', '', '0035624937', 'DN-02 Dd 0306985    ', 'Tidak', '', '\r\n												', 'Sumarni', 1971, 'Lainnya', 'D3', 0, '3201015404710014', '\r\n												Bambang Handhoro', 1949, 'Wiraswasta', 'S1', 0, '3201010508490004', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-02 Dd 0304409', 'Tidak', '', '', '', '13558/U/JP/2003', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('161707053', 'MUHAMMAD DAFFA AL-FARISI', '2003-10-24', 'Depok', '3276052410030011', 'Islam', '', NULL, 'Perum Sukmajaya Permata Blok.G/9', '5', '9', '', 'Sukmajaya', '\r\n												Kec. Sukmajaya', '16412', '', '', '', '', '', '0037297796', 'DN-01 Dd 0043128    ', 'Tidak', '', '\r\n												', 'Rufaida', 1970, 'Karyawan Swasta', 'S1', 0, '', '\r\n												Amar Sutisna', 1969, 'Karyawan Swasta', 'S1', 0, '3276051811690009', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1-16-', 'DN-01 D/d/06 0071061', 'Tidak', '', '', '', '14/K-2/2011', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('', 'MUHAMMAD DEFAWIANO', '2004-05-31', 'Jakarta', '3175013105040002', 'Islam', '', NULL, 'Jl. Nanas III/31', '4', '3', '', 'Utan Kayu Selatan', '\r\n												Kec. Matraman', '13120', 'Bersama orang tua', '', '', '', '', '0040395078', '', 'Tidak', '', '\r\n												', 'Dewi Agustina', 1972, 'Wiraswasta', 'S1', 0, '3175014808720006', '\r\n												Deden Prayitno', 1967, 'Karyawan Swasta', 'S2', 0, '3175011108670004', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', 'DN-01', '', 'Tidak', '', '', '', '18.792/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807065', 'MUHAMMAD DIAR ZHARIF', '2005-04-10', 'JAKARTA', '3175021004050005', 'Islam', 'SD MUHAMMADIYAH 2 PONTIANAK SELATAN', NULL, 'JL.PISANGAN LAMA III NO.21', '10', '2', '', 'PISANGAN TIMUR', '\r\n												Kec. Pulo Gadung', '13230', 'Pesantren', '', '', '', '', '0055252132', '', 'Tidak', '', '\r\n												', 'DITA AMALIA', 1981, 'Lainnya', 'S1', 0, '', '\r\n												ARIE WIBOWO', 1972, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-16-', 'DN-13 Dd/06 0004574', 'Tidak', '', '', '', '6.595/U/JT/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607056', 'MUHAMMAD DZAKIENDRA AMMARJUNDI', '2002-11-12', '	Madiun', '6408041211080001', 'Islam', '', NULL, 'Jl. Parkit H.196 TELUK Lingga Sanggata timur kutai', '0', '0', '', 'Teluk Lingga', '\r\n												Kec. Sangatta Utara', '', '', '', '', '', '', '0027404652', 'DN-16 Dd 0045068    ', 'Tidak', '', '\r\n												', '	Sari dewi rahmawati', 1978, 'Lainnya', '', 0, '', '\r\n												Ardi Andra margusano', 1979, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('151607021', 'MUHAMMAD DZAKWAN RAUHILLAH', '2003-07-18', 'BOGOR', '3674041806030002', 'Islam', '', NULL, 'NERADA ESTATE B6-14 CIPAYUNG CIPUTAT', '0', '0', '', 'CIPAYUNG', '\r\n												Kec. Ciputat', '', '', '', '', '', '', '0039276710', '', 'Tidak', '', '\r\n												', 'CUCU RUPINA', 1977, 'Karyawan Swasta', '', 0, '', '\r\n												WAHYU RUSDIANA', 1971, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707054', 'MUHAMMAD DZAKY', '2003-12-08', 'Jakarta', '3201070812030002', 'Islam', '', NULL, 'Limus Pratama Regency E.17/01', '8', '11', '', 'Limusnunggal', '\r\n												Kec. Cileungsi', '', '', '', '', '', '', '0038032311', '', 'Tidak', '', '\r\n												', 'LISTYO DEWI SUPRIYATININGSIH', 1973, 'Lainnya', 'D3', 0, '', '\r\n												AGOES PRASETYO', 1969, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '1353.CS/2007', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807066', 'MUHAMMAD DZAKY AFKAAR', '2005-04-04', 'SOLOK', '9101010404050012', 'Islam', '', NULL, 'JL RAYA MANDALA MULI', '12', '2', '', 'MANDALA', '\r\n												Kec. Merauke', '99616', 'Asrama', '', '', '', '', '0057004308', '', 'Tidak', '', '\r\n												', 'SILVIA MELINDA', 1980, 'Wiraswasta', 'D3', 0, '9101016405800003', '\r\n												ZULKIFLI', 1977, 'Wiraswasta', 'D3', 0, '9101011109770004', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '084/U/CSKS-2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807067', 'MUHAMMAD DZIKRI AGAM ABDUL HALIM', '2005-06-08', 'JAKARTA', '', 'Islam', '', NULL, 'JL WIBISANA16 BLOK LQ NO.30', '0', '0', '', 'TELUKJAMBE', '\r\n												Kec. Teluk Jambe Timur', '', 'Asrama', '', '', '', '', '171807067', '', 'Tidak', '', '\r\n												', 'OON FATONAH', 2000, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '\r\n												FREDY ABDUL HALIM', 2000, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607089', 'MUHAMMAD EMIRAL EL-HAQ', '2002-10-04', 'Bandung', '3515084812760004', 'Islam', 'SDN PUCANG IV SIDOARJO', NULL, 'Perum Istana Mentari Blok. C4 No.19', '0', '0', '', 'Mentari', '\r\n												Kec. Sidoarjo', '', '', '', '', '', '', '0021463131', 'DN-05 D.sd 1504934  ', 'Tidak', '', '\r\n												', 'ZAHROBAH AL KAFI', 1974, 'Tidak bekerja', 'S1', 0, '3510040127600040', '\r\n												ISKHAK', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-05 Dd 0095943', 'Tidak', '', '', '', '22644/2002', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707056', 'MUHAMMAD FADHIL', '2004-05-03', 'Jakarta', '3175020305040001', 'Islam', '', NULL, 'Jl.Waru No.2', '7', '7', '', 'Rawamangun', '\r\n												Kec. Pulo Gadung', '', 'Asrama', '', '', '', '', '0040393668', '', 'Tidak', '', '\r\n												', 'EKA WATI', 1979, 'Wiraswasta', 'SMA / sederajat', 0, '3175025410790001', '\r\n												YEKI PUTRA', 1976, 'Wiraswasta', 'SMA / sederajat', 0, '3175022401760004', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1-16-', 'DN-01 Dd/06 0120958', 'Tidak', '', '', '', '13.861/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607090', 'MUHAMMAD FAHMI AZIZ', '2003-05-07', 'Bontang', '6474020705030001', 'Islam', '', NULL, 'Jl. Mutiara PCv No.69a Komp. PT BADAK', '0', '0', '', 'Pasar Pagi', '\r\n												Kec. Samarinda Ilir', '', '', '', '', '', '', '0033370031', '', 'Tidak', '', '\r\n												', 'Ratna Juwita', 1970, '', '', 0, '', '\r\n												Yoris Hermawant', 1969, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL);
INSERT INTO `dapodiksiswa` (`nipd`, `nama`, `tgllahir`, `lahir`, `nik`, `agama`, `aslskl`, `kelamin`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kodepos`, `jnstgl`, `transport`, `telp`, `hp`, `email`, `nisn`, `noskhun`, `trmkps`, `nokps`, `srijazh`, `nmibu`, `thnibu`, `jobibu`, `pndkibu`, `hslibu`, `nikibu`, `nmayh`, `thnayh`, `jobayh`, `pndkayh`, `hslayh`, `nikayh`, `nmwali`, `thnwali`, `jobwali`, `pndkwali`, `hslwali`, `nikwali`, `npun`, `trmkip`, `nokip`, `nmkip`, `nokks`, `noregakta`, `nmbank`, `norek`, `nmrek`, `pipst`, `pipnote`, `khusus`, `anakke`, `kelas`, `subkls`, `asrm`) VALUES
('171807068', 'MUHAMMAD FAIZ AL GHAZY', '2004-12-10', 'TANGERANG', '3603351012040001', 'Islam', '', NULL, 'GRIYA ASRI BLOK D-9/05', '33', '7', '', 'JELUPANG', '\r\n												Kec. Serpong Utara', '', 'Pesantren', '', '', '', '', '171807068', '', 'Tidak', '', '\r\n												', 'PUJI ASTUTI', 1978, 'Karyawan Swasta', 'S1', 0, '', '\r\n												SUKARDI', 1975, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '474.1/1606-DKCSKB/CSK/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807069', 'MUHAMMAD FAIZ HAMZAH', '2005-02-20', 'JAKARTA', '3175102002050006', 'Islam', 'MI AL HAMID', NULL, 'JL.AS-SYAFI IYAH NO.36', '8', '3', '', 'CILANGKAP', '\r\n												Kec. Cipayung', '', 'Pesantren', '', '', '', '', '0056050271', 'DN-01 Dd 0014081    ', 'Tidak', '', '\r\n												', 'NURHAYATI', 1973, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												HESPATONI', 1969, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'MI-06 090013872', 'Tidak', '', '', '', '4.044/U/JT/2005', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('171807070', 'MUHAMMAD FAJAR RAMADHAN', '2005-10-18', 'DEPOK', '3276021810050005', 'Islam', '', NULL, 'KP TIPAR TENGAH', '3', '10', '', 'MEKARSARI', '\r\n												Kec. Cimanggis', '', 'Pesantren', '', '', '', '', '171807070', '', 'Tidak', '', '\r\n												', 'ESSY', 1974, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												ZAENAL FIRMANSYAH', 1973, 'Wiraswasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '6938/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807071', 'MUHAMMAD FAKHER', '2005-07-01', 'Jakarta', '3173030107050007', 'Islam', 'SD MAHATMA GANDHI', NULL, 'Jl.Kebun Jeruk XIII/30.B', '11', '5', '', 'Taman Sari', '\r\n												Kec. Taman Sari', '11150', 'Pesantren', '', '', '087880512300', 'cheese.2727@hotmail.com', '0052118292', 'DN-01 Dd 0001459    ', 'Tidak', '', '\r\n												', 'FAHRIZA', 1977, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '\r\n												FAISOL MUHAMAD THALIB', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'DN-01 Dd/06 0009879', 'Tidak', '', '', '', '15729/KLT/JB/2007', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607057', 'MUHAMMAD FAKHRI ABDULLAH', '2004-07-18', 'PALEMBANG', '3276021807040012', 'Islam', '', NULL, 'Mahogany Residence i/II', '0', '0', '', 'harjamukti', '\r\n												Kec. Cimanggis', '', '', '', '', '', '', '0040033149', '', 'Tidak', '', '\r\n												', 'Nyimas Subhandini', 1977, '', '', 0, '', '\r\n												TIFAN HADIANSYAH', 1976, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707057', 'MUHAMMAD FAKHRI ARKHAM', '2004-05-16', 'Depok', '3276011605040005', 'Islam', '', NULL, 'Kp.Kekupu', '4', '4', '', 'Rangkapan Jaya', '\r\n												Kec. Pancoran Mas', '16435', 'Asrama', '', '', '', '', '0041474907', 'DN-02 Dd 0127333    ', 'Tidak', '', '\r\n												', 'ETY YUNI ASTUTI', 1970, 'Lainnya', 'S1', 0, '3276015606700003', '\r\n												TUBAGUS HAMDI ARHAM', 1970, 'Wiraswasta', 'SMA / sederajat', 0, '3276012603700002', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1-16-', 'DN-02 Dd/06 0118684', 'Tidak', '', '', '', '9539/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707058', 'MUHAMMAD FALIH FIRDAUS APIA', '2004-05-11', 'DEPOK', '3275081105040007', 'Islam', '', NULL, 'KOMP DDN JL.BERINGIN VIII NO.34', '3', '10', '', 'JATIWARINGIN', '\r\n												Kec. Pondokgede', '', '', '', '', '', '', '0043310249', '', 'Tidak', '', '\r\n												', 'ELFERA DEVIANTI', 1973, 'Lainnya', 'S1', 0, '', '\r\n												APRIANTO', 1969, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1    ', '', 'Tidak', '', '', '', '13635/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607022', 'MUHAMMAD FARABI IZKA', '2003-04-03', 'Bekasi', '3275040304030005', 'Islam', '', NULL, 'Jl. Bintang 2 No. A 207', '5', '9', '', 'Jakasetia', '\r\n												Kec. Bekasi Selatan', '', 'Asrama', '', '', '', '', '0030304610', '', 'Tidak', '', '\r\n												', 'Dwiani Kanthi Lestari', 1979, 'Lainnya', 'S1', 0, '', '\r\n												Dr. Langgeng Raharjo', 1976, 'Karyawan Swasta', 'S3', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607023', 'MUHAMMAD FARID ZIA PRIDJIE', '2004-02-25', 'Jakarta', '3174042502040004', 'Islam', 'SDIT AMAL MULIA DEPOK', NULL, 'Jl. Jeruk IV No.13 Rt.07 Rw.18 Tapos Cimanggis', '0', '0', '', 'tapos', '\r\n												Kec. Cimanggis', '', 'Asrama', '', '', '', '', '0045664614', '', 'Tidak', '', '\r\n												', 'Apridwiyanti', 1967, 'Karyawan Swasta', 'S1', 0, '3174046904670001', '\r\n												Sudarmadi', 1971, 'Karyawan Swasta', 'SMA / sederajat', 0, '3174040909710003', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'DN-02 Dd 0142391', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807072', 'MUHAMMAD FARIS MURTAZA', '2005-06-13', 'SURABAYA', '3174091306050006', 'Islam', '', NULL, 'KP KALIBATA', '2', '6', '', 'SRENGSENG SAWAH', '\r\n												Kec. Jagakarsa', '', 'Pesantren', '', '', '', '', '171807072', '', 'Tidak', '', '\r\n												', 'ROSNALIA', 1976, 'Karyawan Swasta', 'S1', 0, '', '\r\n												NONO HARIYANTO', 1975, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '5776/DISP/JB/2006', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707036', 'MUHAMMAD FARIS RIFQI KUSUMADINATA', '2004-03-14', 'Jakarta', '', 'Islam', 'SMP PELITA BANGSA', NULL, 'Jl. Janur Elok VI QD 9 No.11', '9', '6', '', 'Kelapa Gading Barat', '\r\n												Kec. Kelapa Gading', '', 'Asrama', '', '', '088217727888', '', '0045517052', 'DN-02 Dd 0761351    ', 'Tidak', '', '\r\n												', 'FITRI KEUMALA DJABAR', 1977, 'Lainnya', 'S1', 0, '', '\r\n												Deden Kusumadinata', 1975, 'Sudah Meninggal', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1-16-', 'DN-02 Dd/06 0101292', 'Tidak', '', '', '', '', 'BANK BRI', '73160', 'MUHAMMAD FARIS RIFQI\r\n												', '', '', 'VI', NULL, NULL),
('161707059', 'MUHAMMAD FARRAS AL GHIFARI', '2004-06-21', 'Jakarta', '3171032106041003', 'Islam', '', NULL, 'Jl.Utan Panjang III', '11', '5', '', 'Utan Panjang', '\r\n												Kec. Kemayoran', '', '', '', '', '', '', '0042014179', 'DN-01 Dd 0110049    ', 'Tidak', '', '\r\n												', 'RAHMATUL KHAIRIYAH', 1978, 'Karyawan Swasta', 'S1', 0, '', '\r\n												SUNARYO', 1977, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1-16-', 'DN-01 Dd/06 0003336', 'Tidak', '', '', '', '9146/U/JP/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707060', 'MUHAMMAD FARREL AL GHIFARI', '2004-06-20', 'JAMBI', '1671122006040002', 'Islam', '', NULL, 'PERUM BUKIT SEJAHTERA BLOK CA NO.04', '12', '4', '', 'KARANG JAYA', '\r\n												Kec. Gandus', '', '', '', '', '', '', '0042604774', '', 'Tidak', '', '\r\n												', 'MEITY ABETSIA', 1974, 'Lainnya', 'S1', 0, '', '\r\n												MARWAN WAHYUDI', 1973, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1    ', '', 'Tidak', '', '', '', '4418/um-1920/2004.-', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807073', 'MUHAMMAD FATAHILLAH HADRI', '2005-04-24', 'MEDAN', '', 'Islam', '', NULL, 'DELI HIJAU NO.1 VILLA MALINA', '0', '0', '', 'TANJUNG SARI', '\r\n												Kec. Medan Selayang', '', 'Asrama', 'Lainnya', '', '', '', '171807073', '', 'Tidak', '', '\r\n												', 'YESSI WIRABUANA', 1982, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												HADRI SJAFII', 1980, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707040', 'MUHAMMAD FATHI IRSYAD', '2003-12-22', 'JAKARTA', '3172022212030001', 'Islam', '', NULL, 'JL.SWASEMBADA BARAT VI NO.29', '16', '9', '', 'KEBON BAWANG', '\r\n												Kec. Tanjung Priok', '', '', '', '', '', '', '0036834024', '', 'Tidak', '', '\r\n												', 'SITI AISYAH', 1977, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												MANSUR', 1970, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '3223/DISP/JU/2005', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607024', 'MUHAMMAD FATHUL ABRAR', '2003-10-24', 'Bekasi', '3275042410030002', 'Islam', 'SD ISLAM DARUSSALAM CIKUNIR', NULL, 'Jl. Cikunir Raya 2A Bekasi', '0', '0', '', 'Cikunir', '\r\n												Kec. Bekasi Selatan', '', '', '', '', '', '', '0030304687', 'DN-02 Dd 0063049    ', 'Tidak', '', '\r\n												', 'Anis Lutfiati', 1969, '', '', 0, '', '\r\n												Mohammad Zainal Fatah', 1966, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-02 Dd 0060508', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807074', 'MUHAMMAD FATHURRAHMAN SYUHADA', '2004-06-22', 'BENGKALIS', '', 'Islam', 'SDI IBNU HAJAR', NULL, 'PINANG RANTI', '16', '1', '', 'PINANGRANTI', '\r\n												Kec. Makasar', '', 'Pesantren', '', '', '', '', '171807074', '', 'Tidak', '', '\r\n												', 'SHARLY', 1979, 'Lainnya', 'S1', 0, '', '\r\n												DODO SYUHADA', 1975, 'Wiraswasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '51/U/2004-Md', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707061', 'MUHAMMAD FATTAH', '2004-02-08', 'BALIKPAPAN', '3674010802040007', 'Islam', '', NULL, 'BSD SEKTOR XII-5 BLOK V NO.5 KENCANA LOKA', '5', '5', '', 'CIATER', '\r\n												Kec. Serpong', '', '', '', '', '', '', '0041904309', '', 'Tidak', '', '\r\n												', 'SANTHY TRI ASTUTI', 1979, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '\r\n												SETYO PRANOWO', 1972, 'PNS/TNI/Polri', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607025', 'MUHAMMAD FAUDZIL ADZIM', '2003-12-22', 'Sanggata', '3270052212030009', 'Islam', 'SDN PONDOKCINA 1 BEJI DEPOK', NULL, 'Jl. M. Yusuf Komplek PK Munal 1 Depok', '0', '0', '', 'Munal', '\r\n												Kec. Depok', '', '', '', '', '', '', '0038662856', 'DN-02 Dd 0140957    ', 'Tidak', '', '\r\n												', 'Rosdiana', 1979, 'Lainnya', 'S1', 0, '3276055709790010', '\r\n												Muhammad Siri', 1970, 'Karyawan Swasta', 'S1', 0, '3276051912700000', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-02 Dd 0139360', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('151607091', 'MUHAMMAD FAUZI AKBAR', '2004-02-04', 'Jakarta', '3201070402042353', 'Islam', '', NULL, 'Limus Pratama Cileungsi D3/23', '0', '0', '', 'LIMUSNUNGGAL', '\r\n												Kec. Cileungsi', '', 'Asrama', '', '', '', '', '0040138022', '', 'Tidak', '', '\r\n												', 'Mulya Inggita', 1969, '', '', 0, '', '\r\n												Adhika Dwikora', 1964, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607017', 'MUHAMMAD FIRJA YASSAR L', '2003-04-03', 'BEKASI', '3275110304030001', 'Islam', 'SD AL-AZHAR SYIFA BUDI LEGENDA', NULL, 'PERUM. KOTA LEGENDA DUKUH ZAMRUD BLOK T/6NO.14', '0', '0', '', 'BANTAR GEBANG', '\r\n												Kec. Bantargebang', '', '', '', '', '', '', '0031880373', 'DN-02 Dd 0270090    ', 'Tidak', '', '\r\n												', 'LUTFIAH AZHARI', 1970, 'Karyawan Swasta', 'S1', 0, '', '\r\n												SADELI', 1969, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', 'DN-02 Dd 0268263', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607058', 'MUHAMMAD FIRYAL PRADANA', '2002-10-03', 'JAKARTA', '2136400498177178', 'Islam', '', NULL, 'Blok Gablog Rt.001 Rw.001 Tegallurung Kec. Balongan indramayu', '0', '0', '', 'Tegallurung', '\r\n												Kec. Balongan', '', '', '', '', '', '', '0028648269', '', 'Tidak', '', '\r\n												', 'Minawati', 2000, '', '', 0, '', '\r\n												Nanang Wirahadikusuma', 2000, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-02 Dd 0534990', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707062', 'MUHAMMAD GHAZA ATAILLAH', '2004-05-23', 'Jakarta', '3175032305041001', 'Islam', '', NULL, 'Jl.K Cipinang Muara No.6', '18', '3', '', 'Cipinang Muara', '\r\n												Kec. Jatinegara', '', 'Asrama', '', '', '', '', '0041555834', 'SD-41555834         ', 'Tidak', '', '\r\n												', 'WIWIT AZMI LESTARI', 1979, 'Wiraswasta', 'S1', 0, '3175034904790011', '\r\n												HELMI VANUS', 1975, 'Wiraswasta', 'S1', 0, '3171050303750005', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1-16-', 'DN-01 Dd/06 0107732', 'Tidak', '', '', '', '16.522/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807075', 'MUHAMMAD HAIDAR', '2005-01-19', 'CIREBON', '3275091901050002', 'Islam', '', NULL, 'JL.ANGGREK III/6 JATI KRAMAT INDAH I', '1', '3', '', 'JATIKRAMAT', '\r\n												Kec. Jatiasih', '17421', 'Pesantren', '', '', '', '', '171807075', '', 'Tidak', '', '\r\n												', 'HARNIE AGUSTINA', 1977, 'Karyawan Swasta', 'S1', 0, '', '\r\n												AHMAD MALAJAYA', 1978, 'PNS/TNI/Polri', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '5149/P/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807076', 'MUHAMMAD HANIF', '2005-04-24', 'QATAR', '3672022404050002', 'Islam', '', NULL, 'JL DAHLIA C-1 NO.15', '5', '4', '', 'CIWEDUS', '\r\n												Kec. Cilegon', '', 'Asrama', '', '', '', '', '171807076', '', 'Tidak', '', '\r\n												', 'LIA KOMALASARI', 1976, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												DIAN FHARULI', 1974, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '97/Kons/AK/Dh/V/2005', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('151607053', 'MUHAMMAD HANIF AZFAREZA', '2003-07-24', 'Bandung', '3214012487030003', 'Islam', 'SDN 5 CISEUREUH PURWAKARTA', NULL, 'Perumahan POJ Blok.B No.12 Rt.01 /009 Sadang Purwakarta', '0', '0', '', 'Jatiluhur', '\r\n												Kec. Purwakarta', '', '', '', '', '', '', '0032682029', 'DN-02 Dd 0642762    ', 'Tidak', '', '\r\n												', 'Susi Sukmawati', 1976, 'Lainnya', '', 0, '', '\r\n												Reza Abdi Hakim', 1976, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-02 Dd 0638980', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807077', 'MUHAMMAD HANIFASYAM AFIFENDRA', '2005-03-11', 'Madiun', '6408041103050001', 'Islam', '', NULL, 'Jl.Parkit H.196', '31', '0', 'Teluk Lingga', 'Teluk Lingga', '\r\n												Kec. Sangatta Utara', '75611', 'Asrama', '', '', '', '', '0052127482', '', 'Tidak', '', '\r\n												', 'SARI DEWI RAHMAWATI', 1978, 'Lainnya', 'S1', 0, '', '\r\n												ARDI ANDRA MARGUSANO', 1979, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '611/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('161707063', 'Muhammad Ihsan Nurhanif', '2004-10-02', 'Jakarta', '3175040210040008', 'Islam', '', NULL, 'Jl.SMP 126 N0 2A', '2', '3', '', 'TENGAH', '\r\n												Kec. Kramat Jati', '', '', '', '', '', '', '0042134378', 'DN-01 Dd 0067566    ', 'Tidak', '', '\r\n												', 'RETNO LESTARI', 1970, 'Lainnya', 'S3', 0, '3175045201700005', '\r\n												FAJAR REZA BUDIMAN', 1969, 'Wiraswasta', 'S1', 0, '3175041904690004', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1-16-', 'DN-01 Dd/06 0104166', 'Tidak', '', '', '', '28.713/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607092', 'MUHAMMAD IHSAN NURZAMAN', '2003-05-08', 'BONTANG', '6474020805030005', 'Islam', '', NULL, 'Jl. Salak PC 4 No.16 PT. Badak Bontang kaltim', '0', '0', '', 'Bontang', '\r\n												Kec. Bontang Selatan', '', '', '', '', '', '', '0033370032', '', 'Tidak', '', '\r\n												', 'YUANITA KUSUMANINGRUM', 1973, '', '', 0, '', '\r\n												Dadang suherman', 1967, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'DN-16 Dd 0025864', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707065', 'MUHAMMAD IKHLAS PUTRA EDRYAN', '2004-12-19', 'JAKARTA', '3201371907040004', 'Islam', '', NULL, 'PURA BOJONG GEDE BLOK D-7/12', '4', '20', '', 'TAJURHALANG', '\r\n												Kec. Tajurhalang', '', '', '', '', '', '', '0041545904', 'DN-02 Dd 0098680    ', 'Tidak', '', '\r\n												', 'MERY JULIANTI', 1971, 'Karyawan Swasta', 'D3', 0, '3201377107710003', '\r\n												YAN EDWAR', 1972, 'Karyawan Swasta', 'D3', 0, '3201371301720005', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1-16-', 'DN-02 Dd/06 0090414', 'Tidak', '', '', '', '20.927/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707066', 'MUHAMMAD IQBAL ARDHAFI', '2004-09-07', 'Jakarta', '1055030709041003', 'Islam', '', NULL, 'Taman Permata Cikunir', '2', '14', '', 'Jakamulya', '\r\n												Kec. Bekasi Selatan', '', 'Asrama', '', '', '', '', '0042436694', '', 'Tidak', '', '\r\n												', 'YULFI DIANTY', 1974, 'Karyawan Swasta', 'S1', 0, '', '\r\n												DONNY WARDHANA', 1971, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '24842/U/JS/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607059', 'MUHAMMAD IRFA NURUL ISLAM', '2003-11-20', '	Jakarta', '3175082011030006', 'Islam', '', NULL, 'Jl. SD Lama Ganceng No.72 Rt. 02/01 Pondok Rangon', '0', '0', '', 'Pondok Ranggon', '\r\n												Kec. Cipayung', '', 'Asrama', '', '', '', '', '0028860364', '', 'Tidak', '', '\r\n												', '	USWATUN KHASANAH', 1973, '', '', 0, '', '\r\n												Suwito', 1969, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607026', 'MUHAMMAD IRFAN SHAH SOFYAN', '2002-11-13', 'Jakarta', '3172041311020004', 'Islam', '', NULL, 'Komp. BPPU No.6', '4', '8', '', 'Gilimanuk', '\r\n												Kec. Sukapura', '', '', '', '', '', '', '0028069683', '', 'Tidak', '', '\r\n												', 'Lina Siska', 1976, 'Karyawan Swasta', 'S1', 0, '3172045204760016', '\r\n												Irwansyah Syofyan', 1971, 'Karyawan Swasta', 'S1', 0, '3172041447100080', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '18.410/U/JP/2002', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807078', 'MUHAMMAD KHIANZA ARSYA', '2004-11-25', 'TEGAL', '', 'Islam', '', NULL, 'NGAGEL TIRTO 3/24', '4', '8', '', 'NGAGELREJO', '\r\n												Kec. Wonokromo', '', '', '', '', '', '', '171807078', '', 'Tidak', '', '\r\n												', 'FIONA GARDENIA', 1978, 'Karyawan Swasta', 'S1', 0, '', '\r\n												HERI WIHARSONO', 1973, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807079', 'MUHAMMAD KIAN BAGASKARA SYAHRANDA', '2005-08-29', 'JAKARTA', '3174042908051001', 'Islam', '', NULL, 'PEJATEN TIMUR', '10', '9', '', 'PEJATEN TIMUR', '\r\n												Kec. Pasar Minggu', '12510', 'Pesantren', 'Mobil/bus antar jemput', '', '', '', '171807079', '', 'Tidak', '', '\r\n												', 'SULASTRIDA', 1974, 'Lainnya', 'D3', 0, '', '\r\n												SURANTO', 1974, 'Wiraswasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '2087/KLT/JP/2011', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607060', 'MUHAMMAD LAZUARDI HASSAN', '2003-09-04', 'Jakarta', '3671060409030002', 'Islam', '', NULL, 'Permata Callista Blok D.1 No.8 Bintaro', '0', '0', '', 'Bintaro', '\r\n												Kec. Pesanggrahan', '', 'Asrama', '', '', '', '', '0033380168', '', 'Tidak', '', '\r\n												', 'Lia Maria Pasah', 1979, 'Karyawan Swasta', 'S1', 0, '3671066503790006', '\r\n												Moch. Fuad Hasan Ashari', 1978, 'Karyawan Swasta', 'S1', 0, '3671060306780002', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '26.328/U/JT/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707069', 'MUHAMMAD MULLAH RAMADHAN', '2004-10-17', 'TANGERANG', '3674041710040001', 'Islam', '', NULL, 'Kp.Sawah Jl.Ciputat Baru', '1', '5', '', 'Sawah', '\r\n												Kec. Ciputat', '', '', '', '', '', '', '0041914661', '', 'Tidak', '', '\r\n												', 'ELY YANTI', 1969, 'Karyawan Swasta', 'S1', 0, '', '\r\n												FIRDAUS', 1970, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '20071/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707070', 'MUHAMMAD NADZARIO WIDYANTORO', '2004-08-27', 'Cirebon', '3172032708040009', 'Islam', '', NULL, 'Jl.Mahoni Blok E GG.III/23', '6', '15', '', 'Lagoa', '\r\n												Kec. Koja', '', '', '', '', '', '', '0042190760', '', 'Tidak', '', '\r\n												', 'WIDIA UTAMI', 1984, 'Lainnya', 'D3', 0, '', '\r\n												YUNANTORO RAKHMANDOKO', 1982, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '10824/UM.I/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607027', 'MUHAMMAD NAUFAL ILHAN ISWANDI', '2003-01-01', 'Jakarta', '3275040101030018', 'Islam', 'SD ISLAM DARUSSALAM CIKUNIR', NULL, 'Jl. Nakula, 6A Jakasetia Galaxi Bekasi Selatan', '0', '0', '', 'Jakasetia', '\r\n												Kec. Bekasi Selatan', '17147', 'Asrama', '', '', '', '', '0039549134', '', 'Tidak', '', '\r\n												', 'Dyah Silvana', 1968, '', 'D3', 0, '3275045201680003', '\r\n												Iswandi Muda', 1974, 'Karyawan Swasta', 'D3', 0, '3275041002740018', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'DN-02 Dd 0060509', 'Tidak', '', '', '', '1.881/U/JT/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807080', 'MUHAMMAD PANDYA HANIF RAMADHAN', '2004-10-21', 'JAKARTA', '3175072110040006', 'Islam', '', NULL, 'KOMP DKI BLOK G.11 NO.8', '11', '1', '', 'PONDOK KELAPA', '\r\n												Kec. Duren Sawit', '', 'Pesantren', 'Mobil/bus antar jemput', '', '', '', '171807080', '', 'Tidak', '', '\r\n												', 'SANTI DIAN LESTARI', 1977, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '\r\n												BAYU YUDHO PRAKOSO', 1975, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '1622/U/JB/2004', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807081', 'MUHAMMAD RAAZAN AVIANO HAMASI', '2005-06-29', 'JAKARTA', '3172022906050011', 'Islam', '', NULL, 'JL.SWASEMBADA TIMUR XIX/10B', '12', '5', '', 'KEBON BAWANG', '\r\n												Kec. Tanjung Priok', '', 'Pesantren', 'Ojek', '', '', '', '171807081', '', 'Tidak', '', '\r\n												', 'DESSY ANGGRAENI', 1975, 'PNS/TNI/Polri', 'D3', 0, '', '\r\n												MUHAMMAR MUCHTAR', 1973, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '6621/DISP/JP/2006', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607093', 'MUHAMMAD RADIFA ANMAR AYASI', '2002-10-28', 'Talang Padang', '1805122810020001', 'Islam', '', NULL, 'Jl. Poros Rawajitu Tulang Bawang B. Lampung', '0', '0', '', 'Tulang BAWANG', '\r\n												Kec. Tulang Bawang Udik', '', '', '', '', '', '', '0027155214', '', 'Tidak', '', '\r\n												', 'Sholihat', 1976, 'Karyawan Swasta', 'S1', 0, '', '\r\n												SUPRIYANTO', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807082', 'MUHAMMAD RAFA AL BANI', '2005-09-16', 'JAKARTA', '3172021609050002', 'Islam', '', NULL, 'JL PAPANGGO II GG DEWI SINTA NO 14B', '2', '3', 'PAPANGGO', 'PAPANGGO', '\r\n												Kec. Tanjung Priok', '14340', 'Asrama', '', '', '', '', '0054501379', '', 'Tidak', '', '\r\n												', 'LAELA MULIANA MASDJONG', 1979, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												TOTO WIDODO', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '10780/U/JU/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707072', 'MUHAMMAD RAFA NOVEL', '2003-08-29', 'Jakarta', '3275092908030001', 'Islam', '', NULL, 'Jl.Kresna No.26 Perum Pemda Bekasi', '2', '1', '', 'Jatiasih', '\r\n												Kec. Jatiasih', '', '', '', '', '', '', '0035944108', '', 'Tidak', '', '\r\n												', 'LATIFAH', 1956, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												PARAY SAID', 1949, 'Pensiunan', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '2473/PL/I/2011', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607028', 'MUHAMMAD RAFI AZMI KHAIRI', '2002-09-21', 'Jakarta', '3174082109020001', 'Islam', '', NULL, 'Jl. Pengadegan Utara I Rt/Rw 008/06, Jaksel', '8', '6', '', 'Jagakarsa', '\r\n												Kec. Jagakarsa', '', '', '', '', '', '', '0027039854', '', 'Tidak', '', '\r\n												', 'Vikriah Nofiantari', 1979, 'Karyawan Swasta', 'S1', 0, '', '\r\n												Mohamad Ridwan', 1969, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807050', 'MUHAMMAD RAFI FATHIA DZAKY', '2005-04-21', 'BEKASI', '', 'Islam', '', NULL, 'JL SURYA KENCANA I NO.35 LIPPO CKR', '2', '16', '', 'CIBATU', '\r\n												Kec. Cikarang Selatan', '', 'Asrama', '', '', '', '', '171807050', '', 'Tidak', '', '\r\n												', 'LIA CHRISTIANA', 1978, 'Karyawan Swasta', 'S1', 0, '', '\r\n												WUKIR SURANTO', 1977, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '1914/P/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807083', 'MUHAMMAD RAFI ZAKY RESTYPUTRA', '2005-07-03', 'TANGERANG', '3603220307050002', 'Islam', '', NULL, 'MEDANG LESTARI BLOK C.IV/A.63', '7', '3', '', 'MEDANG', '\r\n												Kec. Pagedangan', '15820', 'Asrama', '', '', '', '', '0052397501', '', 'Tidak', '', '\r\n												', 'ERNAWATI DWI ASTUTI', 1979, 'Karyawan Swasta', 'D3', 0, '', '\r\n												PARAN RESTIYONO', 1975, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '474.1/4533-DKCSKB/PKH/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607061', 'MUHAMMAD RAFLI', '2003-02-14', 'JAKARTA', '3174011402030003', 'Islam', '', NULL, 'JL. PERMATA HIJAU BLOK C7 SIRCON NO.79B', '0', '0', '', 'Kebayoran Lama', '\r\n												Kec. Kebayoran Lama', '', 'Asrama', '', '', '', '', '0033050322', '', 'Tidak', '', '\r\n												', 'Siska Rahmania', 1968, '', 'S1', 0, '3174015207690007', '\r\n												ACHMAD KARUNIA', 1965, '', 'S2', 0, '3174012503650006', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '1030/DISP/JS/2005/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707047', 'MUHAMMAD RAFLI SUHERLAN', '2003-09-05', 'Jakarta', '3175090509030008', 'Islam', '', NULL, 'Gg.Swakarya No.62.A', '1', '14', '', 'Cibubur', '\r\n												Kec. Ciracas', '', '', '', '', '', '', '0038342267', 'SD-0038342267       ', 'Tidak', '', '\r\n												', 'YANTIE MULYANTI', 1973, 'Lainnya', 'D3', 0, '', '\r\n												DICKY SUHERLAN', 1974, 'PNS/TNI/Polri', 'S2', 0, '3175092812740002', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '05-77', '', 'Tidak', '', '', '', '30.801/U/JT/2003', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707074', 'MUHAMMAD RAHMANANDA ARIEF WIBISONO', '2004-09-04', 'JAKARTA', '3173050409040002', 'Islam', '', NULL, 'JL.SALMAN GG.H USMAN NO.88A', '2', '3', '', 'KEBON JERUK', '\r\n												Kec. Kebon Jeruk', '', '', '', '', '', '', '0044531746', '', 'Tidak', '', '\r\n												', 'RIANA ENNY WIDAYANTI', 1971, 'Lainnya', 'S2', 0, '', '\r\n												SALMAN MAULANA', 1971, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '12501/U/JB/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707075', 'MUHAMMAD RAIHAN', '2004-10-18', 'Jakarta', '3173011810040005', 'Islam', '', NULL, 'Jl.Siantan No.23', '8', '1', '', 'Cengkareng Barat', '\r\n												Kec. Cengkareng', '', 'Asrama', 'Mobil pribadi', '', '', '', '0048190950', '', 'Tidak', '', '\r\n												', 'FATHIARANI', 1975, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												SUHAEMI', 1965, 'Karyawan Swasta', 'S1', 0, '3173010101650034', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1    ', '', 'Tidak', '', '', '', '15258/U/JB/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607110', 'MUHAMMAD RAIHAN TARUNAJAYA', '2003-11-05', 'Surabaya', '3578220511030002', 'Islam', 'SMP AL HIKMAH SURABAYA', NULL, 'Perum Sakura Regency F.11-12', '10', '3', '', 'Ketintang', '\r\n												Kec. Gayungan', '60231', '', '', '', '', '', '0038606879', '', 'Tidak', '', '\r\n												', 'AGUSTINA WENNY', 1969, 'Lainnya', 'S1', 0, '3578224608690001', '\r\n												ALI TARUNAJAYA', 1960, 'PNS/TNI/Polri', 'D3', 0, '3578222810600002', '', 2000, '', 'Tidak sekolah', 0, '', 'IX - B (pa)', '1-15-', 'DN-05 Dd 0035435', 'Tidak', '', '', '', '21436/2003', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('151607051', 'MUHAMMAD RAKHA SYARIEF ROSYID', '2003-09-01', 'JAKARTA', '3173050109030005', 'Islam', '', NULL, 'tJL. FILODENDRUM III / 45 SUKABUMI UTARA JAK-BAR', '0', '0', '', 'Kebon Jeruk', '\r\n												Kec. Kebon Jeruk', '', '', '', '', '', '', '0030976421', '', 'Tidak', '', '\r\n												', 'SUSILAWATI', 1975, '', '', 0, '', '\r\n												RONI HADINATA', 1974, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807085', 'MUHAMMAD RAMADHAN SHIDDIQ', '2004-11-08', 'JAKARTA', '3172020811040011', 'Islam', 'SDN KEBON BAWANG 6 TANJUNG PRIOK', NULL, 'JL.SWASEMBADA BARAT III NO.50', '13', '9', '', 'KEBON BAWANG', '\r\n												Kec. Tanjung Priok', '', 'Asrama', '', '', '', '', '0046658278', 'DN-01 Dd 0018318    ', 'Tidak', '', '\r\n												', 'RAFIKAH', 1977, 'Karyawan Swasta', 'D3', 0, '', '\r\n												ARDIANSYAH ACHIRUL PUTRA', 1976, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'DN-01 Dd/06 0016216', 'Tidak', '', '', '', '12427/U/JU/2004', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607094', 'MUHAMMAD RAYYAN GHIFARI', '2003-02-16', 'PALEMBANG', '3173051602030002', 'Islam', '', NULL, 'Komplek Yon Hub di Kelapa Dua, Kelurahan Kebon Jeruk', '0', '0', '', 'Kebon Jeruk', '\r\n												Kec. Kebon Jeruk', '', 'Asrama', 'Mobil pribadi', '', '', '', '0031554231', '', 'Tidak', '', '\r\n												', 'Yulia Hapsari Bungawero', 1977, '', '', 0, '', '\r\n												Yanuar Kurniawan', 1977, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807052', 'MUHAMMAD RESHAR FAREL PUTRA KANIGORO', '2005-01-19', 'Sigli', '', 'Islam', '', NULL, 'Aspol Toddopuli Blok A/7', '1', '8', 'Kassi-Kassi', 'Kassi-Kassi', '\r\n												Kec. Rappocini', '', '', '', '', '', '', '171807052', '', 'Tidak', '', '\r\n												', 'SRI WAHYU SALMAN', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												AGUNG KANIGORO NUSANTORO', 1978, 'PNS/TNI/Polri', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607095', 'MUHAMMAD REVALDI YULIANSYAH', '2003-09-23', 'JAKARTA', '3671062309030004', 'Islam', '', NULL, 'PERUM MAHKOTA SIMPONY Jl. MAHKOTA v bLOK.A4/15 Ciledug Tanggerang', '0', '0', '', 'Ciledug', '\r\n												Kec. Ciledug', '', '', '', '', '', '', '0033638865', '', 'Tidak', '', '\r\n												', 'SORAYA', 1978, 'Lainnya', 'S1', 0, '', '\r\n												Yudhi Yuliansyah', 1973, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('161707076', 'MUHAMMAD RIFQI', '2002-08-24', 'Pontianak', '6171052408020007', 'Islam', '', NULL, 'Jl. Bukit Barisan No.66', '2', '9', '', 'Sungai Jawi', '\r\n												Kec. Pontianak Kota', '78118', 'Asrama', 'Lainnya', '', '', '', '0021968387', '', 'Tidak', '', '\r\n												', 'MINTIANA', 1972, 'Lainnya', 'SMA / sederajat', 0, '6171056405720010', '\r\n												MUCHTAR MAJID', 1956, 'Pedagang Besar', 'SMA / sederajat', 0, '6171052409560007', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1-14-', 'MI 140000137', 'Tidak', '', '', '', '6171-LT-24012014-0055', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807086', 'MUHAMMAD RIFQI SUGIARTO', '2005-04-08', 'BEKASI', '3275090804050003', 'Islam', '', NULL, 'JL SAPHIRE NO.12 BLOK N TAMAN JATISARI PERMAI', '1', '20', '', 'JATISARI', '\r\n												Kec. Jatiasih', '17426', 'Asrama', '', '', '', '', '171807086', '', 'Tidak', '', '\r\n												', 'SRI HANDARYANI', 1978, 'PNS/TNI/Polri', 'SMA / sederajat', 0, '', '\r\n												EKO SUGIARTO', 1973, 'PNS/TNI/Polri', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '510/P/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('161707098', 'MUHAMMAD RIZAL IBRAHIM', '2004-03-03', 'JAKARTA', '3175020303040002', 'Islam', '', NULL, 'Jl.Pulo Asem Utara XI No.42', '13', '2', '', 'JATI', '\r\n												Kec. Pulo Gadung', '', '', '', '', '', '', '0041078731', 'DN-02 Dd 0073913    ', 'Tidak', '', '\r\n												', 'ARFIANA PURBOHADI', 1965, 'Lainnya', 'S2', 0, '', '\r\n												IQBAL', 1962, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1-16-', 'DN-02 Dd/06 0068056', 'Tidak', '', '', '', '4.888/DISP/JT/2006', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707037', 'MUHAMMAD RUSYDA HAFIZH GHIFARI', '2004-01-10', 'Jakarta', '3275011001040002', 'Islam', '', NULL, 'Jl.Menjangan 3 Blok B 3/15 Taman Permata Cikunir', '4', '14', '', 'Jaka Mulya', '\r\n												Kec. Bekasi Selatan', '', '', '', '', '', '', '0042634699', '', 'Tidak', '', '\r\n												', 'ISNA NURLAILA ROMADHON', 1975, 'PNS/TNI/Polri', 'S1', 0, '', '\r\n												SUNARYO', 1977, 'PNS/TNI/Polri', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '2400/U/JS/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807087', 'MUHAMMAD SABIQ HILMI', '2005-06-25', 'JAKARTA', '3175062506050017', 'Islam', 'SDI MUSLIM CENDEKIA', NULL, 'KP PISANGAN II', '17', '5', '', 'PENGGILINGAN', '\r\n												Kec. Cakung', '13940', 'Asrama', '', '', '', '', '0052090012', 'DN-30 Dd 0182504    ', 'Tidak', '', '\r\n												', 'WINDI SILVIA', 1978, 'Lainnya', 'D3', 0, '', '\r\n												HARRY NOVIARDY', 1973, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'DN-30 Dd/06 0137331', 'Tidak', '', '', '', '14.663/U/JT/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807088', 'MUHAMMAD SAKHA ZHAFIRA LAZULI', '2005-03-28', 'TANGERANG', '3671092803050004', 'Islam', '', NULL, 'BUMI MUTIARA BLOK JA 5/10', '4', '32', '', 'BOJONG KULUR', '\r\n												Kec. Gunungputri', '16969', 'Asrama', '', '', '', '', '171807088', '', 'Tidak', '', '\r\n												', 'DIAN ANGGRAINI RAFLIS', 1986, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												HEIKY LAZULI', 1983, 'PNS/TNI/Polri', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '6655/ 2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807089', 'MUHAMMAD SAMUDERA AL MATHURIDDY', '2005-01-16', 'BEKASI', '', 'Islam', 'SDI DARUSSALAM BEKASI', NULL, 'VILLA GALAXI JL LOTUS BARAT D3/32', '4', '19', '', 'JAKA SETIA', '\r\n												Kec. Bekasi Selatan', '17147', 'Asrama', '', '', '', '', '0058558252', 'DN-02 Dd 035160827  ', 'Tidak', '', '\r\n												', 'MUNIFA', 1971, 'Lainnya', 'S1', 0, '', '\r\n												MOCH ICHWAN EKA PUTRA', 1968, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'DN-02 Dd/06 0053347', 'Tidak', '', '', '', '6460/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807090', 'MUHAMMAD SHAQUILLE MUTTAQI', '2004-12-12', 'JAKARTA', '3174051212040009', 'Islam', 'SD AL BAYAN ISLAMIC SCHOOL', NULL, 'JL MURTADO', '5', '1', '', 'CIPULIR', '\r\n												Kec. Kebayoran Lama', '12230', 'Asrama', '', '', '', '', '0045078219', 'DN-30 Dd 0025818    ', 'Tidak', '', '\r\n												', 'NUNING HAYRANI', 1977, 'Karyawan Swasta', 'S1', 0, '', '\r\n												CHE GUAVARRA', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1-17-', 'DN-30 Dd/06 0024665', 'Tidak', '', '', '', '133/U/JS/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607029', 'MUHAMMAD SHIDIQ HASAN', '2003-12-26', 'Gorontalo', '7671062612030002', 'Islam', 'SD MUHAMMADIYAH UNGGULAN GORONTALO', NULL, 'Jl. KH Agussalim No.22 Kota Tengah Gorontalo', '0', '0', '', 'Kota Tengah', '\r\n												Kec. Asparaga', '', 'Asrama', 'Lainnya', '', '', '', '0034024711', '', 'Tidak', '', '\r\n												', 'Leni Sofyan', 1980, '', '', 0, '', '\r\n												Supriadi Hasan', 1980, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'MI 260000163', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707077', 'MUHAMMAD SULTTONI', '2003-10-15', 'Jakarta', '3674051510030008', 'Islam', '', NULL, 'Jl. Beruang II No.103.A', '1', '2', '', 'Pondok Ranji', '\r\n												Kec. Ciputat Timur', '15412', '', '', '', '', '', '0036558171', '', 'Tidak', '', '\r\n												', 'LISAH NOVITA SARI', 1980, 'Lainnya', 'S1', 0, '3674056112800002', '\r\n												RUDIYANTO', 1973, 'Karyawan Swasta', 'S1', 0, '3674052709730003', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '1-16-', 'DN-30 Dd/06 0060804', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807091', 'MUHAMMAD YUVA ATHALLAH', '2004-12-07', 'PEKANBARU', '3173070712041002', 'Islam', '', NULL, 'KOMP.POLRI PONDOK KARYA -BLOK I NO.48', '10', '4', 'PELA MAMPANG', 'PELA MAMPANG', '\r\n												Kec. Mampang Prapatan', '', 'Pesantren', '', '', '', '', '171807091', '', 'Tidak', '', '\r\n												', 'EVA YULI ASTUTI', 1978, 'Lainnya', 'S1', 0, '', '\r\n												BAMBANG YUDHANTARA SALAMUN', 1979, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707078', 'MUHAMMAD ZAIDAN FAIZA AZHAR', '2003-10-30', 'Bandung', '1050113010035001', 'Islam', '', NULL, 'Jl. Cikawao No.6', '1', '4', '', 'Cikawo', '\r\n												Kec. Lengkong', '40261', '', '', '', '', '', '0038339573', '', 'Tidak', '', '\r\n												', 'LEVIANA ELBA MAHARANI', 1970, 'Karyawan Swasta', 'S1', 0, '', '\r\n												WILDAN ICHSAN WIRAWAN', 1967, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '16834/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707079', 'MUHAMMAD ZAKI MARZUQ SETYAGRAHA', '2004-06-04', 'Jakarta', '3203280406040008', 'Islam', '', NULL, 'Kp.Pengkolan', '3', '2', '', 'Palasari', '\r\n												Kec. Cipanas', '', 'Asrama', 'Mobil pribadi', '', '', '', '0046742397', '', 'Tidak', '', '\r\n												', 'DELICIA SIRAPANDJI', 1976, 'Karyawan Swasta', 'S1', 0, '', '\r\n												WISNU SETIA GRAHA UTAMA', 1974, 'Wiraswasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '10276/U/JB/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707107', 'MUHAMMAD ZAKI RAMADHAN', '2004-10-03', 'Tangerang', '3603100310040002', 'Islam', '', NULL, 'Desa Pekayon', '2', '6', '', 'Pekayon', '\r\n												Kec. Sukadiri', '15529', '', '', '', '', '', '0041293230', '', 'Tidak', '', '\r\n												', 'ROSMIYATI', 1975, 'Lainnya', 'S1', 0, '3603104411750003', '\r\n												RUHIAT RUKMANA', 1973, 'Wiraswasta', 'S1', 0, '3603101203730006', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1-16-', 'MI 160005504', 'Tidak', '', '', '', '474.1/10524-DKCS/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807092', 'MUHAMMAD ZAKIY MUHTADI', '2005-11-09', 'PANGKALPINANG', '1971020911050001', 'Islam', '', NULL, 'JL. RE. MARTADINATA NO.246', '4', '1', '', 'OPAS INDAH', '\r\n												Kec. Taman Sari', '33129', 'Pesantren', 'Lainnya', '', '', '', '0055459702', '', 'Tidak', '', '\r\n												', 'RIANI DEVITA', 1972, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												MUHAMMAD RAIS', 1970, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1-16-', '', 'Tidak', '', '', '', '1358/2005', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('161707085', 'NABIEL ARIQ ALVARO TAMAM', '2004-03-09', 'Tangerang', '', 'Islam', '', NULL, 'Jl.Palem VI B-6 No.2', '2', '9', '', 'Uwung Jaya', '\r\n												Kec. Cibodas', '', 'Asrama', '', '', '', '', '0043591811', '', 'Tidak', '', '\r\n												', 'EMBANG ASIAH', 1978, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												HERMAN', 1975, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '4328/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607096', 'NABIEL HARYONO ARGADIN', '2003-04-10', 'Jakarta', '3674011004030006', 'Islam', 'SDS ALIA NURUL JIHADI KELAPA DUA TANGERANG', NULL, 'Jl. Angsana I Blok.15 No.17 Sektor I.I Griya Loka Bumi Serpong Damai LBSD', '0', '0', '', 'Serpong', '\r\n												Kec. Serpong', '', '', '', '', '', '', '0031670580', 'DN-30 Dd 0192567    ', 'Tidak', '', '\r\n												', 'Rina Nurlia', 1977, 'Lainnya', '', 0, '', '\r\n												Budi Haryono', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', 'DN-30 Dd 0191491', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('150607030', 'NABIL IZZATURRAHMAN', '2003-03-18', 'JAKARTA', '3172031803031002', 'Islam', '', NULL, 'KOMP. SEK NEG BLOK. O NO. 68 TUGU UTARA JAKUT', '0', '0', '', 'Tugu UTARA', '\r\n												Kec. Tanjung Priok', '', 'Asrama', 'Mobil pribadi', '', '', '', '0032454856', '', 'Tidak', '', '\r\n												', 'SITI NUR FAUZANI', 1977, '', '', 0, '', '\r\n												WAWAN KURNIAWAN', 1970, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707081', 'NAFTALI ALSHAD', '2004-11-13', 'Jakarta', '3174011311040001', 'Islam', '', NULL, 'Jl.I Kavling IV/4', '3', '14', '', 'Kebon Baru', '\r\n												Kec. Tebet', '12830', 'Asrama', '', '', '', '', '0042134394', '', 'Tidak', '', '\r\n												', 'Lin Astini', 1963, 'Lainnya', 'S1', 0, '3174015004630002', '\r\n												Nirwansyah Munir', 1960, 'Karyawan Swasta', 'S1', 0, '3174011904600004', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1-16-', 'DN-01 Dd/06 0104237', 'Tidak', '', '', '', '61/U/JS/2005', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607062', 'NAUFAL FAWAZ ZUHDI', '2003-04-17', 'SIDOARJO', '1671041704030007', 'Islam', '', NULL, 'Menara Mulia Jl. Gatot Subroto Jakarta selatan', '0', '0', '', 'Tegal Parang', '\r\n												Kec. Mampang Prapatan', '', 'Asrama', '', '', '', '', '0034672690', '', 'Tidak', '', '\r\n												', 'Rara Saroyini', 1976, '', '', 0, '1671046105760009', '\r\n												Novrianto M. Nur', 1976, 'Karyawan Swasta', 'S1', 0, '1671042011760010', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '006840/IST/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707082', 'NAUFAL NAYAKA RAHMAN', '2004-08-08', 'Jakarta', '3175070808040003', 'Islam', '', NULL, 'Jl. Ry Nusa Indah I Blk 39 No.6', '1', '4', '', 'Malaka Jaya', '\r\n												Kec. Duren Sawit', '13460', '', '', '', '', '', '0040490047', '', 'Tidak', '', '\r\n												', 'TRI WAHYUNI NUGRAHENI', 1977, 'Lainnya', 'S1', 0, '', '\r\n												ARIF RAHMAN', 1976, 'Wiraswasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '21.997/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607063', 'NAUFAL SHIDQI SUGIARTO', '2003-05-18', 'SURABAYA', '3275091805030003', 'Islam', '', NULL, 'Taman Jatisari Permai Blok N/12 Jatisari Jatiasih', '0', '0', '', 'Jatisari', '\r\n												Kec. Jatiasih', '', '', '', '', '', '', '0039104167', '', 'Tidak', '', '\r\n												', 'Sri Handaryani', 1978, '', 'S1', 0, '', '\r\n												Eko Sugiarto', 1972, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607097', 'OMAR AULIA RAHMAN', '2002-06-27', 'BANJARMASIN', '3174072706021001', 'Islam', 'SD MUHAMMADIYAH SAPEN I YOGYAKARTA', NULL, 'Perum Mega Asri G.1 KaliurangKM9,3 YOGYAKARTA', '0', '0', '', 'kaliurang', '\r\n												Kec. Bantul', '', '', '', '', '', '', '0025959520', 'DN-04 Dd 0001786    ', 'Tidak', '', '\r\n												', 'Safitri Wazar', 1965, 'Tidak bekerja', 'S1', 0, '', '\r\n												Drs. Taruna Gunawan', 1964, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-14-', 'DN-04 Dd 0001786', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'IX', NULL, NULL),
('171807093', 'PRANANDYA ABYAN CANIAGO', '2005-07-01', 'BEKASI', '', 'Islam', '', NULL, 'JL.PAKIS V BLOK BB25 NO.16 PONDOK PEKAYON INDAH', '5', '12', '', 'PEKAYON JAYA', '\r\n												Kec. Bekasi Selatan', '', '', '', '', '', '', '171807093', '', 'Tidak', '', '\r\n												', 'IRAWATI', 1978, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '\r\n												WELDIA PUTRA CANIAGO', 1976, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807110', 'RADEN MAS MUHAMMAD RAIHAN CAHYOAJI WIDIANTO', '2005-06-17', 'JAKARTA', '3175021706050004', 'Islam', '', NULL, 'JL.PRATAMA I NO.8', '16', '4', '', 'JATI', '\r\n												Kec. Pulo Gadung', '', 'Pesantren', '', '', '', '', '171807110', '', 'Tidak', '', '\r\n												', 'DESY WIDIASTUTI', 1974, 'Lainnya', 'D3', 0, '', '\r\n												RADEN MAS SURYO SURARJO DWITA DONNY ', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607098', 'RADEN MUHAMMAD KEVIN HARDIPUTRA DJUWAENI', '2003-05-12', 'cilegon', '3672061205030001', 'Islam', '', NULL, 'Perum LBS Blok B 02', '5', '1', '', 'Citangkil', '\r\n												Kec. Cilegon', '', '', '', '', '', '', '0032715000', '', 'Tidak', '', '\r\n												', 'Diah permatasari', 1974, '', 'D3', 0, '3672081406740002', '\r\n												Ir Harry Hariawan dj', 1966, '', 'S1', 0, '3672081406560001', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '1363/474-1/UM/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607099', 'RADFAN HARTSA', '2003-07-30', 'Jakarta', '3175033007030004', 'Islam', '', NULL, 'Cipinang Besar Utara No.5', '2', '14', '', 'Cipinang', '\r\n												Kec. Jatinegara', '13410', 'Asrama', '', '', '', '', '0033431387', '', 'Tidak', '', '\r\n												', 'Intan Diana', 1978, 'Karyawan Swasta', 'S1', 0, '3175035911780006', '\r\n												Agusti', 1970, 'Karyawan Swasta', 'SMA / sederajat', 0, '3175031001700002', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '24.466/U/JT/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807094', 'RADITHYA RAIHAN', '2005-09-11', 'Tangerang', '3674041109050001', 'Islam', '', NULL, 'Cluster Emerald Garden Blok G No.6', '3', '11', '', 'Parigi', '\r\n												Kec. Pondok Aren', '15227', 'Asrama', '', '', '', '', '171807094', '', 'Tidak', '', '\r\n												', 'DEWI IRAWATY', 1977, 'Lainnya', 'D3', 0, '', '\r\n												IMAN GANDI MIHARDJA', 1976, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '474.1/5852-DKCSKB/SPT/2005', '', '', '\r\n												', '', '3', 'VI', NULL, NULL);
INSERT INTO `dapodiksiswa` (`nipd`, `nama`, `tgllahir`, `lahir`, `nik`, `agama`, `aslskl`, `kelamin`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kodepos`, `jnstgl`, `transport`, `telp`, `hp`, `email`, `nisn`, `noskhun`, `trmkps`, `nokps`, `srijazh`, `nmibu`, `thnibu`, `jobibu`, `pndkibu`, `hslibu`, `nikibu`, `nmayh`, `thnayh`, `jobayh`, `pndkayh`, `hslayh`, `nikayh`, `nmwali`, `thnwali`, `jobwali`, `pndkwali`, `hslwali`, `nikwali`, `npun`, `trmkip`, `nokip`, `nmkip`, `nokks`, `noregakta`, `nmbank`, `norek`, `nmrek`, `pipst`, `pipnote`, `khusus`, `anakke`, `kelas`, `subkls`, `asrm`) VALUES
('', 'RADITYA ALIF ABIDIN', '2005-02-15', 'JAKARTA', '3201021502050002', 'Islam', '', NULL, 'LEGENDA WISATA GALILEO L.8/7', '2', '20', '', 'WANAHERANG', '\r\n												Kec. Gunungputri', '', '', '', '', '', '', '0047383613', '', 'Tidak', '', '\r\n												', 'SUSI SUSANTI', 1978, 'Lainnya', 'D3', 0, '', '\r\n												ABIDIN', 1968, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '3.436/U/JT/2005', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707086', 'RADITYO ATHALA AKBAR', '2005-02-22', 'MEDAN', '3216192202050005', 'Islam', '', NULL, 'JL.DAHLIA 1 NO.26 TLH.LIPPO CKR', '13', '7', '', 'SERANG', '\r\n												Kec. Cikarang Selatan', '', '', '', '', '', '', '0050512803', '', 'Tidak', '', '\r\n												', 'WIDYA MELISA', 1977, 'Karyawan Swasta', 'S1', 0, '', '\r\n												ARIO PANDJI', 1977, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '940/2005', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607031', 'RAFA FAUZAN BUDIMAN', '2003-02-27', 'JAKARTA', '3271052702030007', 'Islam', '', NULL, 'Perumahan Taman Soka Jl. Saoka III No.9', '0', '0', '', 'TANAH BARU', '\r\n												Kec. Kota Bogor Utara', '', 'Asrama', '', '', '', '', '0030370770', '', 'Tidak', '', '\r\n												', 'Rita Susanti', 1975, '', 'D3', 0, '3271056009750001', '\r\n												Rahmat Budiman', 1978, 'Karyawan Swasta', 'S1', 0, '3271050506780003', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '4173/U/JP/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607064', 'RAFI AHMAD SHIDQI', '2003-05-16', 'Jakarta', '3175101605031001', 'Islam', '', NULL, 'Jl.Dalang, Rt 12/05 No 49,Munjul Cipayung', '0', '0', '', 'Munjul', '\r\n												Kec. Cipayung', '', 'Asrama', '', '', '', '', '0030458959', '', 'Tidak', '', '\r\n												', 'Ros Imtinan', 1966, '', 'SMA / sederajat', 0, '3175105104660003', '\r\n												Dicky Baihaqi', 1965, '', 'S1', 0, '3175101001650003', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807095', 'RAFI ALGHIFFARI', '2005-09-12', 'JAKARTA', '3174011209050002', 'Islam', 'SD SWASTA ISLAM RPI', NULL, 'JL RASAMALA I NO.45', '15', '2', '', 'MENTENG DALAM', '\r\n												Kec. Tebet', '12870', 'Asrama', '', '', '', '', '0051859789', 'DN-01 Dd 0158497    ', 'Tidak', '', '\r\n												', 'HADANAH', 1970, 'Karyawan Swasta', 'D3', 0, '', '\r\n												RADEN ABDUL KODIR', 1966, 'Karyawan Swasta', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', '', 'Tidak', '', '', '', '20899/U/JS/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707088', 'RAFI AZFA GHANI', '2004-06-22', 'Depok', '3201012206040002', 'Islam', '', NULL, 'Nirwana Estate Blok RR No.10', '10', '13', '', 'Pakansari', '\r\n												Kec. Cibinong', '', '', '', '', '', '', '0042375999', '', 'Tidak', '', '\r\n												', 'LUSIANA DEWI', 1978, 'Karyawan Swasta', 'S1', 0, '', '\r\n												AMIR RIVANA', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '1044/2005', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707089', 'RAFI AZZAHRAN ABDUL AZIZ', '2004-09-03', 'Jakarta', '3171050309040001', 'Islam', '', NULL, 'Jl.Cempaka Putih Barat', '12', '5', '', 'Cempaka Putih Barat', '\r\n												Kec. Cempaka Putih', '', '', '', '', '', '', '0042692845', '', 'Tidak', '', '\r\n												', 'LEILA ASEANA', 1979, '', 'Tidak sekolah', 0, '', '\r\n												WISNU DESRANO', 1978, 'Karyawan Swasta', 'SMA / sederajat', 0, '3171051612780001', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '1-16-', 'DN-01 Dd/06 0003502', 'Tidak', '', '', '', '11338/U/JP/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807096', 'RAFIF ADDAFA IBADILLAH', '2005-02-19', 'Bontang', '6474021902050001', 'Islam', '', NULL, 'Jl. Tambora PC 6A No.46B Komp PT Badak NGL', '7', '0', '', 'Satimpo', '\r\n												Kec. Bontang Selatan', '75325', 'Bersama orang tua', '', '', '', '', '171807096', '', 'Tidak', '', '\r\n												', 'SRI WIDIASTUTI', 1979, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												NOVIE RENDRA', 1979, 'PNS/TNI/Polri', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '1793/IST/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607100', 'RAFIF AUFAJRI', '2003-05-21', 'Lubuklinggau', '1605122105030005', 'Islam', '', NULL, 'Desa Muara megang sakti kab musirawas sumsel', '0', '0', '', 'Megang Sakti', '\r\n												Kec. Megang Sakti', '31657', '', '', '', '', '', '0032401165', '', 'Tidak', '', '\r\n												', 'Yeni Purnama', 1979, '', 'D3', 0, '1695125600790004', '\r\n												Pajeri H. Komsik', 1982, '', 'SMA / sederajat', 0, '1606120856820006', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '1268/Tamb/2006', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707110', 'RAFII MANGGALA JAPAMEL', '2004-08-07', 'JAYAPURA', '9171020708040007', 'Islam', '', NULL, 'PERUMAHAN PEMDA I ENTROP', '3', '3', '', 'ENTROP', '\r\n												Kec. Jayapura Selatan', '', '', '', '', '', '', '0042712982', '', 'Tidak', '', '\r\n												', 'YENI SUNDIARTI', 1970, 'PNS/TNI/Polri', 'S1', 0, '', '\r\n												PRIBOWO ADNAN', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '474.1/576', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707090', 'RAFINDA ATAILLAH NUGROHO', '2004-06-24', 'Banjarmasin', '3175022406040004', 'Islam', '', NULL, 'Jl.Porselen IV No.7', '13', '3', '', 'Kayu Putih', '\r\n												Kec. Pulo Gadung', '13210', '', '', '', '', '', '0040379502', '', 'Tidak', '', '\r\n												', 'ROESMINDA SARI', 1979, 'Lainnya', 'S1', 0, '', '\r\n												JONI WAHYU NUGROHO', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '1640/U/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607065', 'RAFLY ANANDA VARDHAN', '2003-08-16', 'Jakarta', '3674041608030008', 'Islam', '', NULL, 'Permata Adora B12/3', '2', '18', '', 'JOMBANG', '\r\n												Kec. Ciputat', '', 'Asrama', 'Mobil pribadi', '', '', '', '0038097289', '', 'Tidak', '', '\r\n												', 'ASLIN N THAMRIN', 1974, '', '', 0, '', '\r\n												JANUAR SULIANTO', 1976, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707091', 'RAFLY MUHAMMAD RAMADHAN', '2004-11-01', 'Cilegon', '3674020111040006', 'Islam', '', NULL, 'Komp.Serpong Park B-7 No.11', '15', '5', '', 'Jelupang', '\r\n												Kec. Serpong Utara', '', '', '', '', '', '', '0043150761', '', 'Tidak', '', '\r\n												', 'IRMA YUSNIATI', 1976, 'Lainnya', 'S1', 0, '', '\r\n												HEDY HERDYANA', 1976, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '3112/474-1/UMUM/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807097', 'RAHADIAN YUSUF', '2005-05-05', 'Jakarta', '3174010505050010', 'Islam', 'SD ISLAM RPI', NULL, 'Jl. H Romli', '4', '3', '', 'Menteng Dalam', '\r\n												Kec. Tebet', '12870', 'Asrama', '', '', '081210668817', 'joggsuswati@yahoo.com', '0051347863', 'DN-01 Dd 0158498    ', 'Tidak', '', '\r\n												', 'SUSWATI', 1970, 'Karyawan Swasta', 'S1', 0, '', '\r\n												HUSADAN BUDI SANTOSO', 2000, '', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'DN-01 Dd/06 0084422', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707092', 'RAIHAN ABDUL MAJID', '2004-04-17', 'Bekasi', '3175051704040003', 'Islam', '', NULL, 'Jl.Pesona VII B No.210', '5', '5', '', 'Kalisari', '\r\n												Kec. Pasar Rebo', '', '', '', '', '', '', '0047934855', '', 'Tidak', '', '\r\n												', 'Yelly Afrita Ilyas', 1979, 'Lainnya', 'S2', 0, '3175055210790004', '\r\n												Asep Rusmana', 1976, 'Karyawan Swasta', 'S2', 0, '3175050504760008', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1-16-', 'DN-04 Dd/06 0037162', 'Tidak', '', '', '', '4951/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807098', 'RAIHAN MUHAMMAD NAUFAL', '2005-08-10', 'JAKARTA', '3175081008050006', 'Islam', '', NULL, 'JL KUDIN NO.12', '6', '3', '', 'MAKASAR', '\r\n												Kec. Makasar', '', 'Asrama', '', '', '', '', '171807098', '', 'Tidak', '', '\r\n												', 'ENI SUPRAPTI', 1978, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												ROMELAN', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '13.856/U/JT/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807099', 'RAIHAN OCTORIZA NUGROHO', '2005-10-13', 'BANJARMASIN', '3175021310050010', 'Islam', '', NULL, 'JL.KAYU TIMUR NO.33', '1', '5', '', 'KAYU PUTIH', '\r\n												Kec. Pulo Gadung', '13210', 'Asrama', '', '', '', '', '0050659070', 'DN-01 Dd 0129494    ', 'Tidak', '', '\r\n												', 'ROESMINDA SARI', 1979, 'Lainnya', 'S1', 0, '', '\r\n												JONI WAHYU NUGROHO', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'DN-01 Dd/06 0120929', 'Tidak', '', '', '', '2669/U/2005', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807100', 'RAKAN NABIL RAMADHAN', '2004-10-21', 'Tangerang', '', 'Islam', '', NULL, 'TAMAN ROYAL 2 JL. KERTANEGARA NO.27', '1', '16', '', 'PORIS PLAWAD INDAH', '\r\n												Kec. Cipondoh', '', '', '', '', '', '', '171807100', '', 'Tidak', '', '\r\n												', 'FAIQOH', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												IRIYANTO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707093', 'RAKAN NARENDRA MUNGGARAN', '2004-01-01', 'Banjar', '3275090101040010', 'Islam', '', NULL, 'Custer Bali 2 Blok A X 2 No.3', '9', '9', '', 'Jatisari', '\r\n												Kec. Jatiasih', '', '', '', '', '', '', '0043072521', '', 'Tidak', '', '\r\n												', 'ETIN NURYATIN', 1975, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '\r\n												FIRMAN PRIYATNA', 1975, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '55/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('150607032', 'RAMA THAZAFAYA ALGHIFFARI', '2003-11-10', 'Jakarta', '3174051011030003', 'Islam', '', NULL, 'Jl. Laut Banda No.10 Komplek Seskoal Cipulir', '0', '0', '', 'CIPULIR', '\r\n												Kec. Kebayoran Lama', '', 'Asrama', 'Mobil/bus antar jemput', '', '', '', '0031858124', '', 'Tidak', '', '\r\n												', 'Devi Erlita', 1975, '', 'S1', 0, '', '\r\n												Riduan', 1972, '', 'S1', 0, '3174051307720009', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '29379/U/JS/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607033', 'RANGGA MARSHAN BOLIVAR', '2003-08-25', 'JAKARTA', '3276022508030001', 'Islam', '', NULL, 'Mahogany Residence Kav. J No. 31', '0', '0', '', 'HARJAMUKTI', '\r\n												Kec. Cimanggis', '16951', 'Asrama', 'Mobil pribadi', '', '', '', '0033913538', '', 'Tidak', '', '\r\n												', 'Dian Rufaida', 1973, 'Karyawan Swasta', 'S1', 0, '3276025612750005', '\r\n												ATRI BOLIVAR', 1972, 'Karyawan Swasta', 'S1', 0, '3276021306720004', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '25012/U/JS/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707095', 'RASYA GHATFAN PUTRA PERMANA', '2004-09-07', 'Depok', '3276050709040005', 'Islam', '', NULL, 'Griya Kencana Blok AM No.18', '4', '30', '', 'Mekarjaya', '\r\n												Kec. Sukmajaya', '16411', 'Asrama', '', '', '', '', '0042316667', '', 'Tidak', '', '\r\n												', 'PRITA EKA PERTIWI', 1980, 'Karyawan Swasta', 'D3', 0, '', '\r\n												AGUNG NANA PERMANA', 1973, 'PNS/TNI/Polri', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607101', 'RAYI RAKA RAIHAN', '2003-09-16', 'jakarta', '3174011909030002', 'Islam', '', NULL, 'Jl. Anggrek 24 No. 1 AS 18', '0', '0', '', 'KRANGGAN', '\r\n												Kec. Jatiasih', '', '', '', '', '', '', '0030898978', '', 'Tidak', '', '\r\n												', 'FALIA CHITRA PERTIWI', 1966, 'Karyawan Swasta', 'SMA / sederajat', 0, '3174014407660007', '\r\n												SYARIF HIDAYATULLAH', 1965, 'Karyawan Swasta', 'S1', 0, '3174012411650002', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '27311/U/JS/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707096', 'RAYNARD HARYONO MOHANDES', '2004-08-17', 'Jakarta', '3674011708040004', 'Islam', '', NULL, 'Jl.Angsana Blok 1.5/17 Sektor 1-1 BSD', '7', '13', '', 'Rawabuntu', '\r\n												Kec. Serpong', '', '', '', '', '', '', '9018627815', 'DN-30 Dd 0187401    ', 'Tidak', '', '\r\n												', 'RINA NURLIA', 1977, 'Karyawan Swasta', 'S1', 0, '', '\r\n												BUDI HARYONO', 1972, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '1-16-', 'DN-30 Dd/06 0181002', 'Tidak', '', '', '', '24.372/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807101', 'RAYYAN', '2005-10-19', 'JAKARTA', '3174011910050005', 'Islam', '', NULL, 'JL.KP.MELAYU KECIL II/6', '4', '10', '', 'BUKIT DURI', '\r\n												Kec. Tebet', '', '', '', '', '', '', '0050796585', 'DN-01 Dd 0132386    ', 'Tidak', '', '\r\n												', 'FATIMAH GHOZI HARHARAH', 1980, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												FIKRY ABDULLAH SAID', 1971, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'DN-01 Dd/06 0105950', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807102', 'REDHA FAHLEVI NURDIN', '2005-01-29', 'JAKARTA', '', 'Islam', '', NULL, 'JL PESONA VI NO.165', '4', '5', 'KALISARI', 'KALISARI', '\r\n												Kec. Pasar Rebo', '', 'Asrama', '', '', '', '', '171807102', '', 'Tidak', '', '\r\n												', 'ZURAIDIATI', 2000, 'Wiraswasta', 'Tidak sekolah', 0, '', '\r\n												NURDIN', 2000, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '0', 'VI', NULL, NULL),
('151607107', 'RESAN ALMAS', '2003-05-24', 'jakarta', '0951052405030086', 'Islam', '', NULL, 'JL. BANGAU A1 NO.21 RT 1/6 SUKAPURA', '0', '0', '', 'Suka Pura', '\r\n												Kec. Cilincing', '', '', '', '', '', '', '0036272504', 'DN-01 Dd 0036664    ', 'Tidak', '', '\r\n												', 'Mimi Karminingsih', 1970, '', '', 0, '', '\r\n												RAHMAT KURNIADI', 1968, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', 'DN-01 Dd 0034811', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807103', 'REZA RHAMADHAN', '2004-10-21', 'JAKARTA', '', 'Islam', '', NULL, 'JL.KALIBARU TIMUR III NO.9', '5', '2', '', 'KALIBARU', '\r\n												Kec. Cilincing', '', '', '', '', '', '', '171807103', '', 'Tidak', '', '\r\n												', 'SUGIWATI', 1974, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												MOHAMAD CHOLIL', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807104', 'RIFANTAMA MUHAMMAD ILMAN', '2005-08-29', 'JAKARTA', '3174052908050005', 'Islam', '', NULL, 'JL JURAGANAN', '6', '7', '', 'GROGOL UTARA', '\r\n												Kec. Kebayoran Lama', '', 'Asrama', '', '', '', '', '171807104', '', 'Tidak', '', '\r\n												', 'KURNIA ANDARIE', 1977, 'Karyawan Swasta', 'S1', 0, '', '\r\n												SARIF HIDAYAT', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '21172/U/JS/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807105', 'RIFKI RYAPIAKU', '2005-03-11', 'JAKARTA', '', 'Islam', '', NULL, 'JL.KAYU MANIS II BARU NO.14 A', '8', '2', '', 'KAYU MANIS', '\r\n												Kec. Matraman', '', '', '', '', '', '', '0050932531', '', 'Tidak', '', '\r\n												', 'TIRAMIN MANURUNG', 1966, 'PNS/TNI/Polri', 'S1', 0, '', '\r\n												YAHYA LUBIS', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('171807106', 'RIFKY WAHYUANANTA', '2005-03-28', 'JAKARTA', '', 'Islam', '', NULL, 'PERUM DE GREEN MANSION NO.C 5', '1', '1', '', 'JATIBENING', '\r\n												Kec. Pondokgede', '', '', '', '', '', '', '0052095542', '', 'Tidak', '', '\r\n												', 'LUCKY RUSMAYASARI', 2000, 'Lainnya', 'Tidak sekolah', 0, '', '\r\n												MUHAMMAD AKBAR', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707097', 'RIVAN ABDIEL PRADANA SAMUDERA', '2003-06-04', 'Surabaya', '3172040406030008', 'Islam', '', NULL, 'Jl.Angin Brubu No.82 C', '6', '11', '', 'Semper Barat', '\r\n												Kec. Cilincing', '', '', '', '', '', '', '0035715481', 'DN-01 Dd 0094875    ', 'Tidak', '', '\r\n												', 'FITRIYAH INDAH SURYANI', 1977, 'Lainnya', 'D3', 0, '', '\r\n												DANIAL HERY SUSANTO', 1978, 'PNS/TNI/Polri', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '1-16-', 'DN-01 Dd/06 0132804', 'Tidak', '', '', '', '13460/2003', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807107', 'RIVANDY ALGHIFARI', '2005-07-26', 'BOGOR', '', 'Islam', '', NULL, 'BUKIT CIMANGGU VILLA BLOK S-2/5', '1', '14', '', 'CIBADAK', '\r\n												Kec. Tanah Sareal', '', '', '', '', '', '', '0055803799', 'DN-02 Dd 04130105   ', 'Tidak', '', '\r\n												', 'FEBRIYANTIN WIDYANINGSIH', 1973, 'Lainnya', 'D3', 0, '', '\r\n												DENI BAGOES DEWANTO', 2000, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'DN-02 Dd/06 0085968', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '4', 'VI', NULL, NULL),
('151607102', 'RIYADH ABU BAKAR', '2003-06-16', 'BANDUNG', '3175081605031001', 'Islam', '', NULL, 'Jl. Pondok Kelapa Indah Blok A2 No.4 Kalimalang Jakarta Timur', '0', '0', '', 'Pondok Kelapa', '\r\n												Kec. Duren Sawit', '', '', '', '', '', '', '0036118655', '', 'Tidak', '', '\r\n												', 'SEKAR ARUM ARIMBI POERBO WARDHANI', 1983, 'Karyawan Swasta', 'SMA / sederajat', 0, '3175086510831001', '\r\n												ADI NUGRAHA', 1982, 'Karyawan Swasta', 'S1', 0, '3175021610820003', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '14293/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807108', 'RIZAL FARHAN MAULANA', '2005-04-20', 'BANDUNG', '', 'Islam', '', NULL, 'NIRWANA ESTATE BLOK FF NO.03', '7', '13', '', 'PAKANSARI', '\r\n												Kec. Cibinong', '', '', '', '', '', '', '171807108', '', 'Tidak', '', '\r\n												', 'HENI ROHAENI', 1973, 'Lainnya', 'S1', 0, '', '\r\n												SAIRI', 1970, '', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('151607034', 'RIZQ ZEIN BEN HUSSAIN', '2003-05-08', 'Jakarta', '3674040805030001', 'Islam', '', NULL, 'Villa Jombang Baru Block D4/3 Jombang Tangerang', '0', '0', '', 'Gunung Lestari', '\r\n												Kec. Jombang', '', '', '', '', '', '', '0037368228', '', 'Tidak', '', '\r\n												', 'KRISSY TRIANA DEWIt', 1971, '', '', 0, '', '\r\n												Mahawarman Husain. A', 1970, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707099', 'RIZQI DWI GIOVANI', '2004-08-26', 'JAKARTA', '', 'Islam', '', NULL, 'RUSUN THP III LT.2/10', '6', '9', '', 'KEBON KOSONG', '\r\n												Kec. Kemayoran', '', '', '', '', '', '', '0040812026', '', 'Tidak', '', '\r\n												', 'SRI HARTATI', 1976, 'Karyawan Swasta', 'SMA / sederajat', 0, '', '\r\n												M.RUSTAM  A KAUNDUNG', 1965, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '24.189/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807109', 'RIZQULLAH NABIEL IBRAHIM MANAF', '2005-08-02', 'BEKASI', '', 'Islam', '', NULL, 'KOMP.PEMDA BLOK B I NO.18 JL.ARJUNA', '1', '1', '', 'JATIASIH', '\r\n												Kec. Jatiasih', '', '', '', '', '', '', '171807109', '', 'Tidak', '', '\r\n												', 'ZULMARDINA IMAYANTI', 1981, 'PNS/TNI/Polri', 'S1', 0, '', '\r\n												BUDI PRASTYO WINDARTO', 1976, 'PNS/TNI/Polri', 'S2', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '2', 'VI', NULL, NULL),
('151607035', 'ROFI NURANWAR NAPASA', '2002-10-09', 'bekasi', '3275060910020016', 'Islam', '', NULL, 'Bulevar Hijau C1 No.23 Pejuang Bekasi', '0', '0', '', 'medan satria', '\r\n												Kec. Bekasi Selatan', '', '', '', '', '', '', '0027858802', '', 'Tidak', '', '\r\n												', 'Nana Purnamawati', 1976, '', 'S1', 0, '3275065110760010', '\r\n												Subagio', 1982, 'Karyawan Swasta', 'D3', 0, '3275062007710017', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '9105/2002', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607103', 'SADDAM GHAZIE ARKAN', '2003-05-16', 'Bekasi', '3275011605030004', 'Islam', '', NULL, 'Jl. Sersan Hamzah Rt01/09', '1', '9', '', 'Margahayu', '\r\n												Kec. Bekasi Timur', '17113', '', '', '', '', '', '0033131180', '', 'Tidak', '', '\r\n												', 'Puji Harjanti', 1972, '', 'D3', 0, '3275016203720024', '\r\n												Ibnu Hadjar H', 1968, 'Karyawan Swasta', 'D3', 0, '3275011007680019', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '4690/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607066', 'SATYA ATHAYA DANISWARA', '2003-05-23', 'JAKARTA', '3172042305030013', 'Islam', 'SDN ROROTAN 07 PAGI CILINCING', NULL, 'KOMP. GREEN GARDEN BLOK A3 NO.17', '0', '0', '', 'KEMBANGAN', '\r\n												Kec. Kembangan', '', '', '', '', '', '', '0037723428', '', 'Tidak', '', '\r\n												', 'Deasy lisdayanti', 1973, '', '', 0, '', '\r\n												AGUS GUNAWAN RIANTO', 1975, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', 'DN-01 Dd 0034065', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807111', 'SHAUBIL HAQQI MAYDA PUTRA', '2004-12-09', 'JAKARTA', '', 'Islam', '', NULL, 'JL.TAWAKAL UJUNG B7', '16', '7', '', 'TOMANG', '\r\n												Kec. Grogol Petamburan', '', '', '', '', '', '', '171807111', '', 'Tidak', '', '\r\n												', 'DAMAYANI', 1977, 'Lainnya', 'S1', 0, '', '\r\n												DAVID MUSLIM', 1975, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807112', 'SHOLAHUDDIN AL AYUBI', '2005-04-29', 'BEKASI', '', 'Islam', '', NULL, 'JL CITANDUY IV BLOK P5/34 GRAHA ASRI', '0', '0', '', 'SIMPANGAN', '\r\n												Kec. Cikarang Utara', '', 'Asrama', '', '', '', '', '0053536725', 'DN-02 Dd            ', 'Tidak', '', '\r\n												', 'NORMA LOVITTA', 2000, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '\r\n												YOPI HERLIANSYAH', 2000, 'Karyawan Swasta', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - D (pa)', '1-17-', 'DN-02 Dd/06 0255930', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707100', 'SULTAN ISFANDYAR ALI FAISAL', '2004-07-23', 'JAKARTA', '3175052307040001', 'Islam', '', NULL, 'JL.GOTONG ROYONG', '7', '2', '', 'CIJANTUNG', '\r\n												Kec. Pasar Rebo', '', '', '', '', '', '', '0041799696', '', 'Tidak', '', '\r\n												', 'SHINTA SETIAWATI', 1976, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												MOHAMMAD FAISAL', 1976, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '24.745/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807113', 'SULTAN NAJTHAMI ALFAZPOETRO', '2005-04-22', 'Jakarta', '3201022204050007', 'Islam', 'SD SWASTA ISLAM IBNU HAJAR', NULL, 'TMN.KENARI NUSANTARA PN.3/20', '5', '18', '', 'Nagrak', '\r\n												Kec. Gunungputri', '16967', 'Asrama', '', '', '08129993192', 'doni.alfazri@yahoo.com', '0058691970', 'DN-01 Dd 0098504    ', 'Tidak', '', '\r\n												', 'HENY DARYANTI', 1981, 'Lainnya', 'S1', 0, '', '\r\n												DONI FAZRIYANTO', 1974, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', '', 'Tidak', '', '', '', '7934/U/JP/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607067', 'SULTHAN HANIF DWINUGRAHA', '2003-02-08', 'Surabaya', '3674040802030001', 'Islam', '', NULL, 'Cluster Emerald Garden Blok G No.16 Bintaro Jaya', '0', '0', '', 'Bintaro', '\r\n												Kec. Pesanggaran', '', '', '', '', '', '', '0034637534', '', 'Tidak', '', '\r\n												', 'Dewi irawaty', 1977, '', '', 0, '', '\r\n												Iman Gandi Mihardja', 1976, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607068', 'SUTA FAWWAZ INSANI TARIBI', '2003-02-03', 'pekanbaru', '3276062007990005', 'Islam', '', NULL, 'Jl. Palakali Raya Kukusan beji depok', '0', '0', '', 'KUKUSAN', '\r\n												Kec. Beji', '', '', '', '', '', '', '0039474256', '', 'Tidak', '', '\r\n												', 'susy yusnita', 1974, '', '', 0, '', '\r\n												Muhammad Tamin', 1972, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '9-14-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707101', 'SYAMIL', '2004-11-23', 'JAKARTA', '0954052311040129', 'Islam', '', NULL, 'CILILITAN KECIL', '1', '7', '', 'CILILITAN', '\r\n												Kec. Kramat Jati', '', '', '', '', '', '', '0047437118', '', 'Tidak', '', '\r\n												', 'VERA SALIM', 1984, 'Lainnya', 'SMA / sederajat', 0, '', '\r\n												NABIL', 1970, 'Wiraswasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '14.177/DISP/JT/2006', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607104', 'TEUKU MUHAMMAD FAJHRY SYAHPUTRA', '2002-09-10', 'SAMARINDA', '6471011009020001', 'Islam', '', NULL, 'PANCORAN RIVERSIDE LT. 19', '0', '0', '', 'Pancoran', '\r\n												Kec. Pancoran', '', '', '', '', '', '', '0024373964', '', 'Tidak', '', '\r\n												', 'WULANDARI', 1977, '', '', 0, '', '\r\n												TEUKU MARWANSYAH', 1963, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607069', 'TINTO MUNIF NUGRAHA', '2003-01-01', 'yogyakarta', '1603070101030005', 'Islam', '', NULL, 'Jl. Palm No.3 Tanjung enim sumatra selatan', '0', '0', '', 'Tanjung Enim', '\r\n												Kec. Lawang Kidul', '', '', '', '', '', '', '0031138508', '', 'Tidak', '', '\r\n												', 'wulandari Wijayanti', 1969, '', '', 0, '', '\r\n												Nugraha Nurtyansanta', 1969, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - A (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('151607036', 'UKASYAH TAFTAZANI KHOERI', '2003-03-21', 'JAKARTA', '3276022103030000', 'Islam', '', NULL, 'JL. GARUDA NO. 56 RT 03/14 LEMBAH HIJAU, MEKARSARI', '0', '0', '', 'mekarsari', '\r\n												Kec. Cimanggis', '', 'Asrama', '', '', '', '', '0032811169', '', 'Tidak', '', '\r\n												', 'Eka sulasmini', 1979, '', '', 0, '', '\r\n												tHERI CHOERI', 1974, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - B (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707102', 'UMARADITYA PANJI SURYADI', '2004-01-21', 'PURWOKERTO', '3276102101040001', 'Islam', '', NULL, 'Perum Jati Jajar Blok E.19 No.12 A', '5', '14', '', 'Jatijajar', '\r\n												Kec. Tapos', '', '', '', '', '', '', '0041474881', '', 'Tidak', '', '\r\n												', 'ANTENG CATUR PURBO CAHYANI', 1974, 'Karyawan Swasta', 'S1', 0, '', '\r\n												AKMAL SURYADI', 1975, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '3.807/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707103', 'WAN DAFARIZI RIZALDI', '2004-02-28', 'Jakarta', '3175072802040008', 'Islam', '', NULL, 'Jl.Semangka B.5/1', '11', '17', '', 'Duren Sawit', '\r\n												Kec. Duren Sawit', '', '', '', '', '', '', '0042252296', '', 'Tidak', '', '\r\n												', 'ARIKA SINTHIA AYU', 1976, 'Wiraswasta', 'S1', 0, '', '\r\n												HARRI SUPANGAT', 2000, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '0    ', '', 'Tidak', '', '', '', '9.795/U/JT/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807114', 'WILDANIL PASHA MUQAFFI', '2005-02-23', 'JAKARTA', '', 'Islam', '', NULL, 'KOMPLEK LEMIGAS A.17', '8', '9', '', 'CIPULIR', '\r\n												Kec. Kebayoran Lama', '', '', '', '', '', '', '171807114', '', 'Tidak', '', '\r\n												', 'IDA FIQRIAH', 1976, 'PNS/TNI/Polri', 'Tidak sekolah', 0, '', '\r\n												AHSANUL MUQAFFI', 1971, '', 'Tidak sekolah', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1    ', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('161707105', 'WZAMAH AL HUSSEIN', '2004-10-09', 'MALANG', '', 'Islam', '', NULL, 'GRAHA PUSPASARI 2 JL. PUSPA PERMAI', '1', '15', '', 'PUSPASARI', '\r\n												Kec. Citeureup', '', '', '', '', '', '', '0042035022', '', 'Tidak', '', '\r\n												', 'DEWI SOFYARTI', 1976, 'Karyawan Swasta', 'S1', 0, '', '\r\n												ASRIYON ROZA', 1976, 'Karyawan Swasta', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - C (pa)', '0    ', '', 'Tidak', '', '', '', '6193/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707106', 'YUSUF', '2004-03-06', 'TOBOALI', '1.90301060304E+15', 'Islam', '', NULL, 'JL.RAWA BANGUN', '2', '6', '', 'TOBOALI', '\r\n												Kec. Toboali', '', 'Asrama', '', '', '', '', '0041770261', '', 'Tidak', '', '\r\n												', 'SITI HAJIR', 1972, 'Lainnya', 'D3', 0, '', '\r\n												EDY SUMARDI', 1972, 'Wiraswasta', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - D (pa)', '0    ', '', 'Tidak', '', '', '', '29/U/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('151607070', 'YUSUF PRADITA', '2003-10-04', 'kudus', '3216070410030009', 'Islam', '', NULL, 'Permata Regency Bekasi', '0', '0', '', 'Wanasari', '\r\n												Kec. Cibitung', '', '', '', '', '', '', '0035849021', '', 'Tidak', '', '\r\n												', 'Pratiwi Wahyuningsih', 1972, '', '', 0, '', '\r\n												Nurwahedi', 1972, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - D (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('171807115', 'ZACHREL ELTANIN HAFIDZ', '2005-12-11', 'JAKARTA', '', 'Islam', 'SD ISLAM AL FAUZIEN', NULL, 'GEMA PESONA BLK.V NO.11', '6', '11', '', 'SUKMAJAYA', '\r\n												Kec. Sukmajaya', '', '', '', '', '', '', '0110121038', 'DN-02 Dd 07244024   ', 'Tidak', '', '\r\n												', 'TANNIA FITRI DAMAYANTI', 1980, 'Lainnya', 'S1', 0, '', '\r\n												TRIADHI DONNY NOVIANTO', 1976, '', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'DN-02 Dd/06 0122064', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807116', 'ZAKARIA NIAN NAYOTTAMA', '2004-11-29', 'BOGOR', '3201012911040003', 'Islam', 'SDIT AL HIDAYAH CIBINONG', NULL, 'NIRWANA ESTATE BLOK EE NO.29', '3', '13', '', 'PAKANSARI', '\r\n												Kec. Cibinong', '', '', '', '', '', '', '0044770786', 'DN-02 Dd 13069028   ', 'Tidak', '', '\r\n												', 'ARUM PRANANINGSIH', 1968, 'Karyawan Swasta', 'S1', 0, '', '\r\n												YULIANTO', 1968, 'PNS/TNI/Polri', 'S1', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - A (pa)', '1-17-', 'DN-02 Dd/06 0289835', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '3', 'VI', NULL, NULL),
('151607071', 'ZAKKY GHANI FAJARI THOYIB', '2003-10-10', 'Jakarta', '3175091010030008', 'Islam', '', NULL, 'Jl. Praji No. 63 Kelapa Dua Wetan', '0', '0', '', 'Praji', '\r\n												Kec. Kelapa Dua', '', '', '', '', '', '', '0033913557', '', 'Tidak', '', '\r\n												', 'Darmila', 1971, '', '', 0, '', '\r\n												THOYIB SANDI SAHMADI', 1963, '', '', 0, '', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '', 'IX', NULL, NULL),
('161707108', 'ZAYD ILYASA ABDURRAHMAN', '2004-08-30', 'Jakarta', '3175103008040004', 'Islam', '', NULL, 'Cempaka Putih Barat No.1', '12', '5', '', 'Cempaka Putih Barat', '\r\n												Kec. Cempaka Putih', '', '', '', '', '', '', '0041716561', '', 'Tidak', '', '\r\n												', 'ULFA ASEANI', 1979, 'Lainnya', 'D3', 0, '3175106802790004', '\r\n												YANOS OKTERANO', 1979, 'PNS/TNI/Polri', 'S1', 0, '3175102110790005', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - A (pa)', '01-22', 'DN-01 Dd 226-034-7', 'Tidak', '', '', '', '10898/U/JP/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('161707109', 'ZHANG DJOENDA', '2004-05-03', 'Jakarta', '3216190305040006', 'Islam', '', NULL, 'Jl.Kemuning 2 No.36 Taman Lembah Hijau Lippo Cikarang', '4', '7', '', 'Serang', '\r\n												Kec. Cikarang Selatan', '', '', '', '', '', '', '0044373459', '', 'Tidak', '', '\r\n												', 'HERU TRISNANI', 1978, 'Lainnya', 'S1', 0, '', '\r\n												RUDY HENDARYANTO', 1970, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VIII - B (pa)', '0    ', '', 'Tidak', '', '', '', '6525/U/JP/2004', '', '', '\r\n												', '', '', 'VI', NULL, NULL),
('171807117', 'ZIDAN RIZQI PRATAMA', '2003-06-15', 'BEKASI', '', 'Islam', 'SD SWASTA ISLAM IBNU HAJAR', NULL, 'BUMI CIANGSANA DAMAI BLOK B.9/7', '2', '43', '', 'CIANGSANA', '\r\n												Kec. Gunungputri', '', 'Asrama', '', '', '', '', '0039874875', '', 'Tidak', '', '\r\n												', 'NAINI NUR HIDAYATI', 1982, 'Lainnya', 'S2', 0, '', '\r\n												JUMADI', 1976, 'PNS/TNI/Polri', 'SMA / sederajat', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - B (pa)', '1-17-', 'DN-01 Dd/06 0091624', 'Tidak', '', '', '', '', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('171807118', 'ZIDANE MURANO MAVDIVIKA', '2004-12-15', 'JAKARTA', '3275121512040001', 'Islam', 'SDIT NUR HIKMAH PONDOK MELATI', NULL, 'KOMP PMI JL KELUD II BLOK A4 NO.1', '2', '5', '', 'JATIWARNA', '\r\n												Kec. Pondok Melati', '17415', 'Asrama', '', '', '', '', '0045792089', 'DN-02 Dd 036280249  ', 'Tidak', '', '\r\n												', 'GIAR SUNINGSIH', 1979, 'Karyawan Swasta', 'D3', 0, '', '\r\n												ROY SUMLANG', 1975, 'Karyawan Swasta', 'D3', 0, '', '', 2000, '', 'Tidak sekolah', 0, '', 'VII - C (pa)', '1-17-', 'DN-01 Dd/06 0071866', 'Tidak', '', '', '', '266/U/JU/2005', '', '', '\r\n												', '', '1', 'VI', NULL, NULL),
('151607105', 'ZUHAIR MUHAMMAD ABDULLAH', '2003-04-14', 'Bekasi', '3174051404031001', 'Islam', '', NULL, 'Jl. Suhodo II NO.10 Rt 003/10 Komplek PU Ps. Jumat', '3', '10', '', 'lebak Bulus', '\r\n												Kec. Cilandak', '', '', '', '', '', '', '0038899182', '', 'Tidak', '', '\r\n												', 'Ika Fatikah', 1976, '', 'S1', 0, '3275105103760007', '\r\n												Agus Sujatmoko', 1976, 'Karyawan Swasta', 'S2', 0, '3275103107760001', '', 2000, '', '', 0, '', 'IX - C (pa)', '1-15-', '', 'Tidak', '', '', '', '4696/2003', '', '', '\r\n												', '', '', 'IX', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `halamanstatis`
--

CREATE TABLE IF NOT EXISTS `halamanstatis` (
`id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `home` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `username`, `dibaca`, `jam`, `hari`, `home`) VALUES
(52, 'Selamat Datang di CIRCLE STUDENT', 'selamat-datang-di-circle-student', '<p>Mudahnya Belajar di &nbsp;CIRCLE STUDENT&nbsp; bisa dimana saja, kapan saja dengan materi terlengkap dan terjamin kualitasnya sesuai dengan kurikulum pendidikan nasional. Penyajian yang asyik dan menarik versi TEXT dan VIDEO</p>\r\n', '2018-05-04', '1', 0, '15:04:13', 'Jumat', 1),
(53, 'Belajar 24 jam', 'belajar-24-jam', '<p>Kalian siswa kelas (4,5,6 SD/ MI, 7,8,9 SMP/MTs, 10,11,12 SMA/MA) Sukses UTS , UAS, US/M, UN/USBN dan SBMPTN, dapat Kalian persiapkan setiap hari 24 jam non stop. Dengan cara belajar lebih mudah menyenangkan, kapan saja dan dimana saja.</p>\r\n', '2018-05-04', '1', 0, '15:04:36', 'Jumat', 2),
(54, 'Kuis dan Latihan', 'kuis-dan-latihan', '<p>Ingin menguji kemampuanmu? Ikuti latihan soal disetiap Sub-Bab dan Bab. Lengkap beserta video penjabaran dan ulasan. untuk kepentingan Sukses UTS , UAS, US/M, UN/USBN dan SBMPTN. Di lengkapi dengan puluhan ribu soal yang prediktif</p>\r\n', '2018-05-04', '1', 0, '15:04:53', 'Jumat', 3),
(55, 'Apa Manfaatnya?', 'apa-manfaatnya', '<p>Belajar di IHBS Akademik sangat bermanfaat membantu penguasaan teori dasar pelajaran dan membantu meningkatkan kompetensi akademik. Dengan mempelajari teori dan banyak berlatih mengerjakan soal, kompetensi akademik siswa.</p>\r\n', '2018-05-04', '1', 0, '15:05:07', 'Jumat', 4),
(56, 'Tentang Kami', 'tentang-kami', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#ff0000"><em>Belum ada data pada halaman ini...</em></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '2018-05-04', '1', 0, '15:06:45', 'Jumat', 0),
(57, 'Hubungi Kami', 'hubungi-kami', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#ff0000"><em>Belum ada data pada halaman ini...</em></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '2018-05-04', '1', 0, '15:07:02', 'Jumat', 0),
(58, 'Documentation', 'documentation', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="color:#ff0000"><em>Belum ada data pada halaman ini...</em></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n', '2018-05-04', '1', 0, '15:07:21', 'Jumat', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(8, 0, 'Hubungi Kami', 'index.php?view=detailhalaman&id=57', 'Ya', 'Top', 2),
(7, 0, 'Tentang Kami', 'index.php?view=detailhalaman&id=56', 'Ya', 'Top', 1),
(18, 0, 'Documentation', 'index.php?view=detailhalaman&id=56', 'Ya', 'Top', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_absensi_guru`
--

CREATE TABLE IF NOT EXISTS `rb_absensi_guru` (
`id_absensi_guru` int(5) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `kode_kehadiran` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_absensi_guru`
--

INSERT INTO `rb_absensi_guru` (`id_absensi_guru`, `kodejdwl`, `nip`, `kode_kehadiran`, `tanggal`, `waktu_input`) VALUES
(1, 46, '195801181985121001', 'H', '2018-04-26', '2018-04-26 15:54:49'),
(2, 45, '195801181985121001', 'H', '2018-04-26', '2018-04-26 15:54:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_absensi_siswa`
--

CREATE TABLE IF NOT EXISTS `rb_absensi_siswa` (
`id_absensi_siswa` int(5) NOT NULL,
  `id_journal` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kehadiran` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=476 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_absensi_siswa`
--

INSERT INTO `rb_absensi_siswa` (`id_absensi_siswa`, `id_journal`, `kodejdwl`, `nisn`, `kode_kehadiran`, `tanggal`, `waktu_input`) VALUES
(336, 0, 0, '0041273814', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(337, 0, 0, '0044072375', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(338, 0, 0, '0044770786', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(339, 0, 0, '0045011851', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(340, 0, 0, '0046658278', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(341, 0, 0, '0049199786', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(342, 0, 0, '0050796585', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(343, 0, 0, '0050932531', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(344, 0, 0, '0051347863', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(345, 0, 0, '0051656284', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(346, 0, 0, '0051844883', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(347, 0, 0, '0052127482', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(348, 0, 0, '0052293286', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(349, 0, 0, '0052678277', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(350, 0, 0, '0053172806', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(351, 0, 0, '0053535978', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(352, 0, 0, '0054042425', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(353, 0, 0, '0055252132', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(354, 0, 0, '0056050271', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(355, 0, 0, '0056244132', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(356, 0, 0, '0057547312', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(357, 0, 0, '0058558252', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(358, 0, 0, '0058691970', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(359, 0, 0, '0059588027', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(360, 0, 0, '171807029', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(361, 0, 0, '171807073', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(362, 0, 0, '171807081', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(363, 0, 0, '171807093', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(364, 0, 0, '171807109', 'H', '2018-04-13', '2018-04-13 10:30:25'),
(365, 0, 47, '0041273814', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(366, 0, 47, '0044072375', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(367, 0, 47, '0044770786', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(368, 0, 47, '0045011851', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(369, 0, 47, '0046658278', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(370, 0, 47, '0049199786', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(371, 0, 47, '0050796585', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(372, 0, 47, '0050932531', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(373, 0, 47, '0051347863', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(374, 0, 47, '0051656284', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(375, 0, 47, '0051844883', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(376, 0, 47, '0052127482', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(377, 0, 47, '0052293286', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(378, 0, 47, '0052678277', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(379, 0, 47, '0053172806', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(380, 0, 47, '0053535978', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(381, 0, 47, '0054042425', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(382, 0, 47, '0055252132', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(383, 0, 47, '0056050271', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(384, 0, 47, '0056244132', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(385, 0, 47, '0057547312', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(386, 0, 47, '0058558252', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(387, 0, 47, '0058691970', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(388, 0, 47, '0059588027', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(389, 0, 47, '171807029', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(390, 0, 47, '171807073', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(391, 0, 47, '171807081', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(392, 0, 47, '171807093', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(393, 0, 47, '171807109', 'H', '2018-04-13', '2018-04-13 10:32:22'),
(394, 0, 52, '0039874875', 'S', '2018-04-13', '2018-04-13 10:33:23'),
(395, 0, 52, '0045078219', 'I', '2018-04-13', '2018-04-13 10:33:23'),
(396, 0, 52, '0045097431', 'I', '2018-04-13', '2018-04-13 10:33:23'),
(397, 0, 52, '0046754996', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(398, 0, 52, '0051019736', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(399, 0, 52, '0051850108', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(400, 0, 52, '0052095542', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(401, 0, 52, '0052098849', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(402, 0, 52, '0052319702', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(403, 0, 52, '0052359572', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(404, 0, 52, '0052895388', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(405, 0, 52, '0053217127', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(406, 0, 52, '0053651570', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(407, 0, 52, '0054501379', 'I', '2018-04-13', '2018-04-13 10:33:23'),
(408, 0, 52, '0057004308', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(409, 0, 52, '0059590464', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(410, 0, 52, '0059671129', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(411, 0, 52, '171807042', 'I', '2018-04-13', '2018-04-13 10:33:23'),
(412, 0, 52, '171807050', 'I', '2018-04-13', '2018-04-13 10:33:23'),
(413, 0, 52, '171807054', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(414, 0, 52, '171807062', 'I', '2018-04-13', '2018-04-13 10:33:23'),
(415, 0, 52, '171807070', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(416, 0, 52, '171807074', 'I', '2018-04-13', '2018-04-13 10:33:23'),
(417, 0, 52, '171807078', 'S', '2018-04-13', '2018-04-13 10:33:23'),
(418, 0, 52, '171807086', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(419, 0, 52, '171807094', 'S', '2018-04-13', '2018-04-13 10:33:23'),
(420, 0, 52, '171807098', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(421, 0, 52, '171807102', 'H', '2018-04-13', '2018-04-13 10:33:23'),
(422, 0, 52, '171807110', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(423, 0, 52, '171807114', 'A', '2018-04-13', '2018-04-13 10:33:23'),
(424, 0, 46, '0026820765', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(425, 0, 46, '0028648269', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(426, 0, 46, '0028863419', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(427, 0, 46, '0030453398', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(428, 0, 46, '0030598421', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(429, 0, 46, '0030898987', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(430, 0, 46, '0031670580', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(431, 0, 46, '0031858124', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(432, 0, 46, '0032454870', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(433, 0, 46, '0032682029', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(434, 0, 46, '0032811169', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(435, 0, 46, '0032947151', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(436, 0, 46, '0033131180', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(437, 0, 46, '0033256724', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(438, 0, 46, '0033380168', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(439, 0, 46, '0033913506', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(440, 0, 46, '0034504492', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(441, 0, 46, '0034672690', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(442, 0, 46, '0037803548', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(443, 0, 46, '0038097289', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(444, 0, 46, '0038606879', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(445, 0, 46, '0039319400', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(446, 0, 46, '0039474256', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(447, 0, 46, '0040033149', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(448, 0, 46, '0040138022', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(449, 0, 46, '0043697564', 'H', '2018-04-26', '2018-04-26 15:55:00'),
(450, 0, 46, '0026820765', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(451, 0, 46, '0028648269', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(452, 0, 46, '0028863419', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(453, 0, 46, '0030453398', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(454, 0, 46, '0030598421', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(455, 0, 46, '0030898987', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(456, 0, 46, '0031670580', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(457, 0, 46, '0031858124', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(458, 0, 46, '0032454870', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(459, 0, 46, '0032682029', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(460, 0, 46, '0032811169', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(461, 0, 46, '0032947151', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(462, 0, 46, '0033131180', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(463, 0, 46, '0033256724', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(464, 0, 46, '0033380168', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(465, 0, 46, '0033913506', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(466, 0, 46, '0034504492', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(467, 0, 46, '0034672690', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(468, 0, 46, '0037803548', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(469, 0, 46, '0038097289', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(470, 0, 46, '0038606879', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(471, 0, 46, '0039319400', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(472, 0, 46, '0039474256', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(473, 0, 46, '0040033149', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(474, 0, 46, '0040138022', 'H', '2018-05-15', '2018-05-15 13:06:48'),
(475, 0, 46, '0043697564', 'H', '2018-05-15', '2018-05-15 13:06:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_agama`
--

CREATE TABLE IF NOT EXISTS `rb_agama` (
`id_agama` int(5) NOT NULL,
  `nama_agama` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_agama`
--

INSERT INTO `rb_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Hindu'),
(4, 'Budha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bab`
--

CREATE TABLE IF NOT EXISTS `rb_bab` (
`id_bab` int(11) NOT NULL,
  `nm_bab` varchar(100) NOT NULL,
  `sub_bab` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bab`
--

INSERT INTO `rb_bab` (`id_bab`, `nm_bab`, `sub_bab`) VALUES
(6, 'PEMROGRAMAN WEB', 'PHP'),
(9, 'PEMROGRAMAN WEB 3', 'fasfasdf'),
(10, 'PEMROGRAMAN WEB 4', 'fasfasd'),
(11, 'PEMROGRAMAN WEB 6', 'OPERASI TANDA'),
(12, 'PEMROGRAMAN WEB 8', 'fasfasd'),
(13, 'PEMROGRAMAN WEB 10', 'functionff'),
(20, 'CONCLUSI', 'OPERASI TANDA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bank_pertanyaan_essai`
--

CREATE TABLE IF NOT EXISTS `rb_bank_pertanyaan_essai` (
`id_bank_pertanyaan_essai` int(11) NOT NULL,
  `kode_pelajaran` varchar(20) NOT NULL,
  `pertanyaan_essai` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bank_pertanyaan_essai`
--

INSERT INTO `rb_bank_pertanyaan_essai` (`id_bank_pertanyaan_essai`, `kode_pelajaran`, `pertanyaan_essai`) VALUES
(1, 'MK02', 'Siapakah Nama Presiden ke 5 Indonesiaa ?'),
(2, 'MK02', 'Sebutkan Nama-nama Pahlawan Revolusi ?'),
(3, 'MK02', 'Dimanakah Terjadinya Perjanjian Linggarjati ?'),
(5, 'MK02', 'Sebutkan Arti Sila Ke 2 ?'),
(6, 'MK02', 'Siapa Nama Pencipta Lagu Indonesia Raya ?'),
(9, 'MK02', 'Siapa Nama Kepa Sekolah Kita ?'),
(10, 'MK02', '<b></b>Berapakah Hasil 234 + 125 ?'),
(11, 'MK02', 'kbkbkjbkjbkbk'),
(21, 'MK01', '<p>dimana sekolah sunnah?<br></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bank_pertanyaan_objektif`
--

CREATE TABLE IF NOT EXISTS `rb_bank_pertanyaan_objektif` (
`id_bank_pertanyaan_objektif` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `id_topiksoal` int(11) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kode_pelajaran` varchar(20) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawab_a` varchar(255) NOT NULL,
  `jawab_b` varchar(255) NOT NULL,
  `jawab_c` varchar(255) NOT NULL,
  `jawab_d` varchar(255) NOT NULL,
  `jawab_e` varchar(255) NOT NULL,
  `pembahasan` text NOT NULL,
  `bobot` varchar(10) NOT NULL,
  `kunci_jawaban` varchar(5) NOT NULL,
  `kategori_soal` enum('objektif','essay') NOT NULL DEFAULT 'objektif',
  `user` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bank_pertanyaan_objektif`
--

INSERT INTO `rb_bank_pertanyaan_objektif` (`id_bank_pertanyaan_objektif`, `id_materi`, `id_topiksoal`, `kode_kelas`, `kode_pelajaran`, `pertanyaan`, `jawab_a`, `jawab_b`, `jawab_c`, `jawab_d`, `jawab_e`, `pembahasan`, `bobot`, `kunci_jawaban`, `kategori_soal`, `user`) VALUES
(1, 0, 3, 'VII', 'MP0702', 'Gubernur Tertua di Sumbar ?', 'Udin Sedunia', 'Saipul Jamil', 'Roma Irama', 'Fauzi Bahar', '<p>Semua Benar</p>', '<p>\r\n\r\nGubernur Tertua di Sumbar?\r\n\r\nTinyMCE is an open source software project and we encourage developers to contribute patches and code for us to include in the main package of TinyMCE. However, there are a few rules and limitations when doing so and this page lists them.\r\n\r\n<br></p>', '5', 'A', 'objektif', ''),
(2, 0, 3, 'VII', 'MP0702', 'Nama-nama Pahlawan Indonesia ?', 'Robby Prihandaya', 'Taufik Hidayat', 'Ahmad Yani', 'Jokowi', '<p>Semua Benar</p>', '<p>\r\n\r\nNama-nama Pahlawan Indonesia\r\n\r\n\r\n\r\nTinyMCE is an open source software project and we encourage developers to contribute patches and code for us to include in the main package of TinyMCE. However, there are a few rules and limitations when doing so and this page lists them.\r\n\r\n<br></p>', '6', 'A', 'objektif', ''),
(3, 0, 3, 'VII', 'MP0702', 'Dimana Terjadinya Pembunuhan Sukarno ?', 'Padang', 'Payakumbuh', 'Bukit Tinggi', 'Semua Benar', '<p>Semua Benar</p>', '<p>\r\n\r\n\r\n\r\nDimana Terjadinya Pembunuhan Sukarno\r\n\r\nTinyMCE is an open source software project and we encourage developers to contribute patches and code for us to include in the main package of TinyMCE. However, there are a few rules and limitations when doing so and this page lists them.\r\n\r\n<br></p>', '9', 'A', 'objektif', ''),
(5, 0, 3, 'VII', 'MP0702', 'Sebutkan Arti Sila Ke 2 ?', 'Keadilan Bagi Indonedia', 'Kerakyatan yang dipimpin Ndeso', 'Berjuang Untuk Jadi Lebih Baik', 'Kemanusiaan yang adil dan Beradap', '<p>Semua Benar</p>', '<p>\r\n\r\nSebutkan Arti Sila Ke 2\r\n\r\n\r\n\r\nTinyMCE is an open source software project and we encourage developers to contribute patches and code for us to include in the main package of TinyMCE. However, there are a few rules and limitations when doing so and this page lists them.\r\n\r\n<br></p>', '8', 'A', 'objektif', ''),
(6, 0, 2, 'VII', 'MP0701', 'Siapa Nama Pencipta Lagu Indonesia Raya ?', 'Dewiit Safitri', 'Ahmad Dani', 'Aura Kasih', 'Wr.Supratman', '<p>Semua Benar</p>', '<p>\r\n\r\nSiapa Nama Pencipta Lagu Indonesia Raya\r\n\r\n\r\n\r\nTinyMCE is an open source software project and we encourage developers to contribute patches and code for us to include in the main package of TinyMCE. However, there are a few rules and limitations when doing so and this page lists them.\r\n\r\n<br></p>', '13', 'A', 'objektif', ''),
(8, 0, 2, 'VII', 'MP0701', 'Siapakah nama Presiden ke 2 Indonesia ?', 'Joko Widodo', 'Susilo Bambang Yudoyono', 'Abdulrahman Wahid', 'Megawati', 'Soehartooo', '<p>\r\n\r\nTinyMCE is an open source software project and we encourage developers to contribute patches and code for us to include in the main package of TinyMCE. However, there are a few rules and limitations when doing so and this page lists them.\r\n\r\n<br></p>', '15', 'A', 'objektif', ''),
(16, 0, 2, 'VII', 'MP0701', '<p><strong>Kata penghubung yang tepat</strong>&nbsp;untuk mengkapi paragraf tersebut adalah :<br></p>', '<p>\r\n\r\natau, sebab, karena itu\r\n\r\n<br></p>', '<p>\r\n\r\ndan, jika, walaupun begitu\r\n\r\n<br></p>', '<p>\r\n\r\natau, walaupun, akan tetapi\r\n\r\n<br></p>', '<p>\r\n\r\ndan, karena, namun\r\n\r\n<br></p>', '<p>\r\n\r\natau, walaupun, namun\r\n\r\n<br></p>', '<p>\r\n\r\n</p><p><strong>Sang Surya</strong></p><p>Karya Diah Hadaning</p><p>Di <em>bukit senyap</em><br>Ada jagat besar dan jagat bumi<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Di bawah tembang bumi<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Gemercik kali<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Terlukis isi hati</p><p></p>', '10', 'A', 'objektif', ''),
(21, 1, 0, 'VII', 'MP0701', '<p>\r\n\r\nTeks Bahasa Indonesia di atas tersebut mengenalkan ?<br></p>', '<p>\r\n\r\nKekuasaan di Banten\r\n\r\n<br></p>', '<p>\r\n\r\nKedatangan Belanda ke Banten<br></p>', '<p>\r\n\r\nOrang-orang Belanda bersikap kasar\r\n\r\n<br></p>', '<p>\r\n\r\nBelanda meninggalkan Banten\r\n\r\n<br></p>', '<p>\r\n\r\nPenguasa Banten membebaskan orang Belanda\r\n\r\n<br></p>', '<p>\r\n\r\nTeks sejarah tersebut mengenalkan <em>kedatangan Belanda ke Banten</em>. Kata kunci dari teks di atas adalah "kedatangan". Kalimat-kalimat berikutnya merupakan penjelasan dari proses kedatangan Belanda, diterimanya, hingga akhirnya Belanda keluar dari Banten.\r\n\r\n<br></p>', '10', 'A', 'objektif', '1'),
(23, 1, 0, 'VII', 'MP0701', '<p>\r\n\r\nKaidah bahasa yang menandai teks cerita sejarah tersebut adalah ....\r\n\r\n<br></p>', '<p>\r\n\r\nAdanya konjungsi temporal\r\n\r\n<br></p>', '<p>\r\n\r\nMenghadirkan latar waktu dan tempat dalam tiga kalimat sekaligus\r\n\r\n<br></p>', '<p>\r\n\r\nTerdapat penggunaan konjungsi pertentangan\r\n\r\n<br></p>', '<p>\r\n\r\nMenggunakan kalimat bermasa lampau dan konjungsi kausalitas\r\n\r\n<br></p>', '<p>\r\n\r\nDisusun dengan pola pertentangan dan kausalitas\r\n\r\n<br></p>', '<p>\r\n\r\nKaidah bahasa dalam teks sejarah meliputi: kalimat bermasa lampau, keterangan waktu, tempat, konjungsi temporal, konjungsi kausalitas, dan kata-kata tindakan. Kaidah bahasa yang menandai teks sejarah tersebut adalah adanya konjungsi temporal yang terdapat pada kalimat pertama (<em>Sejak kedatangan</em>)<br></p>', '10', 'A', 'objektif', '1'),
(25, 0, 3, 'VII', 'MP0702', '<p>Siapakah Nama Penemu Rumus Pitagoras?</p>', 'x', 'x', 'x', 'x', 'x', '<p>\r\n\r\nDalil Pythagoras |Dalil pythagoras sering dikenal dengan istilah teorema pythagoras . Kalimat pythagoras pasti sudah tidak asing lagi di telinga kita,karena sejak SD ketika pembelajaran matematika pasti kita tidak ketinggalan untuk mempelajari pytagoras . Rumus pythagoras merupakan  rumus yang ditemukan oleh ilmuwan yunani yang bernama pythagoras.<br><br>Pengertian dari teorema pythagoras atau dalil pythagoras yaitu bahwa sisi miring atau sisi terpanjang dalam segitiga siku â€“ siku sama dengan kuadrat sisi â€“ sisi lainnya\r\n<br></p>', '10', 'x', 'essay', '1'),
(26, 0, 3, 'VII', 'MP0702', '<p>Siapakah Nama Guru Matematika Indonesia?</p>', 'x', 'x', 'x', 'x', 'x', '', '12', 'C', 'essay', '1'),
(27, 1, 0, 'VII', 'MP0702', '<p>Siapa nama penemu menulis Persamaan Kuadrat Matematikaaaaa ?</p>\r\n', '<p>Zulfikar Nain</p>\r\n', '<p>Muhammad Arsenio</p>\r\n', '<p>Tommy Utama</p>\r\n', '<p>Willy Fernando</p>\r\n', '<p>Vicky Armitha</p>\r\n', '<p>Iyo bana nyo tu urang nyo..</p>\r\n', '10', 'A', 'objektif', '1'),
(31, 1, 0, 'VII', 'MP0702', '<p>Bagaimana Cara menulis akar persamaan kuadrat?<br></p>', '<p>Begitulah caranya<br></p>', '<p>Benar sekali begitu<br></p>', '<p>Cari dan hitung sendiri<br></p>', '<p>Hitung dengan rumus ini anu<br></p>', '<p>Silahkan dicobakan<br></p>', '<p>\r\n\r\nSaya lagi nyari partner untuk membuat web start up tentang hewan. Target deadline = 2 minggu sebelum deadline submit NextDev Jakarta. Database udah ada. Logikanya alurnya udah ada, tinggal implementasi ke web aja. Jujur saya ga paham php makanya saya cari programmer php\r\n\r\n<br></p>', '10', 'A', 'objektif', '1'),
(32, 6, 0, 'IX', 'MP0902', '<p>Apa itu rumus pitagoras?&nbsp;</p>', '<p>Dddd</p>', '<p>Hdhdhds</p>', '<p>Nsjsjss</p>', '<p>Jsjsjs</p>', '<p>Msnsjjsje</p>', '<p>Dnsjsjs</p>', '70', 'A', 'objektif', '1'),
(38, 0, 4, 'IX', 'MP0902', 'Ini adalah contoh pertanyaan 1', 'contoh jawab 1 a', 'contoh jawab 1 b', 'contoh jawab 1 c', 'contoh jawab 1 d', 'contoh jawab 1 e', 'Ini adalah contoh pembahasan  soal 1', '5', 'A', 'objektif', '1'),
(39, 0, 4, 'IX', 'MP0902', 'Ini adalah contoh pertanyaan 2', 'x', 'x', 'x', 'x', 'x', 'Ini adalah contoh pembahasan  soal 2', 'x', 'x', 'essay', '1'),
(40, 0, 4, 'IX', 'MP0902', 'Ini adalah contoh pertanyaan 3', 'contoh jawab 3 a', 'contoh jawab 3 b', 'contoh jawab 3 c', 'contoh jawab 3 d', 'contoh jawab 3 e', 'Ini adalah contoh pembahasan  soal 3', '15', 'A', 'objektif', '1'),
(41, 0, 4, 'IX', 'MP0902', 'Ini adalah contoh pertanyaan 4', 'contoh jawab 4 a', 'contoh jawab 4 b', 'contoh jawab 4 c', 'contoh jawab 4 d', 'contoh jawab 4 e', 'Ini adalah contoh pembahasan  soal 4', '20', 'C', 'objektif', '1'),
(42, 0, 4, 'IX', 'MP0902', 'Ini adalah contoh pertanyaan 5', 'x', 'x', 'x', 'x', 'x', 'Ini adalah contoh pembahasan  soal 5', 'x', 'x', 'essay', '1'),
(43, 1, 0, 'VII', 'MP0702', '<p>aaaa qqqw eqwe qweqe</p>\r\n', '<p>aaaaa</p>\r\n', '<p>bbbbb</p>\r\n', '<p>ccccc</p>\r\n', '<p>ddddd</p>\r\n', '<p>eeeee</p>\r\n', '<p>pembahasannn</p>\r\n', '12', 'B', 'objektif', '1'),
(44, 10, 0, 'VII', 'MP0704', '<p>apa itu ushul tsalatsah?</p>\r\n', '<p>gsdfgsd</p>\r\n', '<p>sdfgsdf</p>\r\n', '<p>sdfgsdf</p>\r\n', '<p>sdfgsdf</p>\r\n', '<p>sdfgsdf</p>\r\n', '<p>sdgfsdfg</p>\r\n', '40', 'A', 'objektif', '1'),
(45, 13, 0, 'VII', 'MP073', '<p>test</p>\r\n', '<p>tesat</p>\r\n', '<p>testa</p>\r\n', '<p>tesat</p>\r\n', '<p>teas</p>\r\n', '<p>teast</p>\r\n', '<p>teast</p>\r\n', '20', 'A', 'objektif', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bank_topiksoal`
--

CREATE TABLE IF NOT EXISTS `rb_bank_topiksoal` (
`id_topiksoal` int(11) NOT NULL,
  `kode_pelajaran` varchar(50) NOT NULL,
  `nama_topik` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bank_topiksoal`
--

INSERT INTO `rb_bank_topiksoal` (`id_topiksoal`, `kode_pelajaran`, `nama_topik`) VALUES
(1, 'MP0701', 'Implementasi Rumus Matematika'),
(2, 'MP0701', 'Zona Matematika Dasar'),
(3, 'MP0702', 'Rumus - Rumus Matematika'),
(4, 'MP0902', 'test'),
(5, 'MP0903', 'Tik soal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_elearning`
--

CREATE TABLE IF NOT EXISTS `rb_elearning` (
`id_elearning` int(10) NOT NULL,
  `id_kategori_elearning` int(5) NOT NULL,
  `kodejdwl` int(5) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `file_upload` text NOT NULL,
  `tanggal_tugas` datetime NOT NULL,
  `tanggal_selesai` datetime NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_elearning`
--

INSERT INTO `rb_elearning` (`id_elearning`, `id_kategori_elearning`, `kodejdwl`, `nama_file`, `file_upload`, `tanggal_tugas`, `tanggal_selesai`, `keterangan`) VALUES
(13, 1, 7, 'File Upload Materi 1', 'Contoh_Kasus_AHP.docx', '2015-12-09 08:07:15', '0000-00-00 00:00:00', ''),
(22, 2, 7, 'Tugas Untuk Siswa Kelompok yang Malas', 'cover_Pidana_korupsi.docx', '2015-12-09 22:37:51', '2015-12-23 13:07:09', 'Tolong Dikerjakan, Kalau Tidak Maka nilai Raport anda merah..'),
(23, 2, 7, 'Tugas Pertama ', 'Surat-Keterangan-Kepsek.docx', '2015-12-13 15:02:00', '2016-01-22 15:02:00', 'Selesaikan Secepatnya,..!'),
(24, 1, 5, 'Bahan Untuk Tugas Semester 1', 'journal_profile_matching_beasiswa.pdf', '2016-02-23 09:04:22', '2016-12-23 11:04:22', 'Bahan Untuk Tugas Semester 2 ini tolong dipelajari karena akan banyak keluar di ujian semester nanti.'),
(25, 2, 5, 'Tugas Semester 1 Tahun Ajaran 2015/2016', 'Metode-Profile-Matching.pdf', '2015-12-23 09:11:15', '2016-04-25 09:11:15', 'Silahkan Dijawab dan unutk jawaban di upload disini paling lambat sesuai tanggal selesai..'),
(26, 1, 13, 'Bahan Unutk Peljaran Besok', '20160311072304-Tugas_laura.docx', '2016-03-11 07:22:32', '2016-03-11 07:22:32', ''),
(27, 2, 13, 'Tugas Unutk Dikumpul Besok 12 Maret 2016', '20160311072502-Aturan Main Projects.docx', '2016-03-11 07:24:16', '2016-03-13 07:24:16', ''),
(28, 1, 13, 'kjbkjbkbk', '20160311143928-HITUNG NILAI RAPORT.docx', '2016-03-11 14:39:09', '2016-03-11 14:39:09', 'kjbkbk'),
(29, 1, 5, 'Bahan Ajar awal semester', '20160718060717-Central.Intelligence2016.720pHCWEBRip.srt', '2016-07-18 06:06:38', '2016-07-18 06:06:38', 'Silahkan di download,..'),
(30, 1, 35, 'test bahan', '20180213121302-Perte01-MP-3.ppt', '2018-02-13 12:12:31', '2018-02-13 12:12:50', 'silahka'),
(31, 0, 0, '', '', '2018-02-16 10:41:04', '2018-02-16 10:41:04', ''),
(32, 1, 36, 'test bahan', '20180216112332-Perte01-MP-3.ppt', '2018-02-16 11:23:15', '2018-02-16 11:25:15', 'sdf'),
(33, 1, 0, 'test bahan', '20180216112655-Perte06-MP.ppt', '2018-02-16 11:26:35', '2018-02-16 11:26:40', 'erertr'),
(34, 1, 36, 'test', '20180217192841-bee_soal_temp.xls', '2018-02-17 19:28:24', '2018-02-17 19:28:24', 'te'),
(36, 3, 37, 'test', '20180222093801-Tugas Kelompok Leadership final.pptx', '2018-02-22 09:37:28', '2018-02-22 09:37:28', ''),
(38, 4, 37, 'test', '20180222111243-ajax_kecamatan.pdf', '2018-02-22 11:12:31', '2018-02-22 11:12:31', 'te'),
(39, 1, 47, 'test bahan', '20180327161231-Mengenal kitab tajwid.docx', '2018-03-27 16:12:11', '2018-03-27 16:12:11', 'MATEMATIKA'),
(40, 1, 47, 'test bahan', '20180409091856-catatan coding.txt', '2018-04-09 09:18:42', '2018-04-09 09:18:42', 'test'),
(41, 1, 47, 'bahan 2', '20180409092531-url download video converter.txt', '2018-04-09 09:25:08', '2018-04-09 09:25:08', 'test 2'),
(42, 1, 47, 'bahan 4', '20180409093023-catatan besok.txt', '2018-04-09 09:28:36', '2018-04-09 09:28:36', 'test 4'),
(43, 1, 47, 'test bahan 5', '20180409093117-user guru.txt', '2018-04-09 09:31:01', '2018-04-09 09:31:01', 'test bahan 5'),
(44, 1, 47, 'test bahan 6', '20180409093147-url prime mobile.txt', '2018-04-09 09:31:28', '2018-04-09 09:31:28', 'test bahan 6'),
(45, 1, 47, 'bahan 7', '20180409093306-url download video converter.txt', '2018-04-09 09:32:48', '2018-04-09 09:32:48', 'test bahan 7'),
(47, 2, 49, 'tugas 1', '', '2018-04-09 09:34:47', '2018-04-09 09:34:47', 'tugas 1'),
(48, 1, 49, 'bahan 2', '20180409093541-catatan coding.txt', '2018-04-09 09:35:29', '2018-04-09 09:35:29', 'bahan 2'),
(49, 1, 49, 'BAHAN 4', '20180409093809-url download video converter.txt', '2018-04-09 09:37:58', '2018-04-09 09:37:58', 'BAHAN 4'),
(50, 1, 49, 'TEST BAHAN 5', '20180409093840-catatan coding.txt', '2018-04-09 09:38:24', '2018-04-09 09:38:24', 'BAHAN 5'),
(51, 1, 49, 'TEST BAHAN 5', '', '2018-04-09 09:38:47', '2018-04-09 09:38:47', 'BAHAN 5'),
(52, 1, 48, 'test bahan 1', '20180409093914-catatan coding.txt', '2018-04-09 09:39:05', '2018-04-09 09:39:05', 'test bahan 1'),
(53, 1, 55, 'irob', '20180424104311-affichage ablution en image.pdf', '2018-04-24 10:42:50', '2018-04-24 10:42:50', 'fasdf'),
(54, 1, 55, 'kamus', '20180424105852-affichage ablution en image.pdf', '2018-04-24 10:58:38', '2018-04-24 10:58:38', 'kamus'),
(55, 2, 55, 'buku ibadah', '20180424110105-Salerio.pptx', '2018-04-24 11:00:36', '2018-04-24 11:00:36', 'test buku ibadah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_elearning_jawab`
--

CREATE TABLE IF NOT EXISTS `rb_elearning_jawab` (
`id_elearning_jawab` int(5) NOT NULL,
  `id_elearning` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `file_tugas` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_elearning_jawab`
--

INSERT INTO `rb_elearning_jawab` (`id_elearning_jawab`, `id_elearning`, `nisn`, `keterangan`, `file_tugas`, `waktu`) VALUES
(3, 25, '9991268756', 'Ini buk Guru tugas dari saya, Tolong diperiksa,..', '20160309112015-Nilai_Siswa_9982679070.pdf', '2016-03-09 11:20:15'),
(4, 27, '9991268756', 'Ini Tugas saya buk..', '20160311072733-Pengembangan Members.txt', '2016-03-11 07:27:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_forum_komentar`
--

CREATE TABLE IF NOT EXISTS `rb_forum_komentar` (
`id_forum_komentar` int(10) NOT NULL,
  `id_forum_topic` int(10) NOT NULL,
  `nisn_nip` varchar(20) NOT NULL,
  `isi_komentar` text NOT NULL,
  `waktu_komentar` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_forum_komentar`
--

INSERT INTO `rb_forum_komentar` (`id_forum_komentar`, `id_forum_topic`, `nisn_nip`, `isi_komentar`, `waktu_komentar`) VALUES
(1, 3, '9980707189', 'Senangi dulu pelajaran yang diharapkan nilainya bagus. Tanpa menyenangi pelajaran tersebut, maka hasil yang diperoleh melalui belajar tidak akan maksimal. Paling tidak, jangan sampai membenci pelajarannya. Hal ini karena akan tidak mungkin seseorang bisa betah lama-lama belajar materi suatu mata pelajaran yang dibencinya, apalagi untuk memahaminya.', '2015-12-12 05:09:15'),
(7, 1, '9980722436', 'Hallo teman teman, Numpang share lowongan ya. lagi di butuhkan segera nih buat posisi Full Time Web Developer/ Web Programmer.', '2016-02-26 00:34:01'),
(13, 1, '9991268756', 'Kami hanya ingin berdoa, ingin beribadah dan menjalankan ibadat kami. Kami tidak pernah menggangu apalagi berusaha untuk mengganggu umat beragama lain apalagi melakukan kristenisasi. Berpikir untuk itu saja kami tidak pernah.', '2016-03-09 10:38:51'),
(12, 1, '195704111980032004', 'Kami cuma ingin memiliki rumah ibadat agar kami dapat berdoa kepada Tuhan kami dengan khusuk. Dosakah itu? apakah itu terlarang di negara yag berazaskan Pancasila ini? Dimanakah rasa damai dan keadilan itu? Masih adakah toleransi di negara ini?', '2016-03-09 10:36:22'),
(3, 3, '9980722436', 'Milikilah rasa ingin tahu yang besar, karena hanya orang-orang yang memiliki rasa ingin tahu yang besar dalam banyak hal lah yang akan selalu senang dalam belajar, dan selalu ingin mempelajari dan memahami hal-hal baru dan banyak hal yang ia temui.', '2015-12-11 17:09:55'),
(14, 4, '1', 'Komentari jika ada pertanyaan,..', '2016-07-18 06:30:20'),
(15, 5, '1', 'vvxzxc', '2018-02-13 09:52:25'),
(16, 5, '195801181985121001', 'administrator', '2018-02-19 11:38:35'),
(19, 15, '0044770786', 'Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ bersaksi tiada tuhan yang hak untuk di ibadahi kecuali allah', '2018-04-11 14:32:54'),
(20, 14, '2', '195801181985121001', '2018-04-25 10:16:30'),
(21, 8, '0026820765', 'mengimani adanya Allah dan hanya beribadah kepada Allah', '2018-04-26 12:59:56'),
(22, 14, '195801181985121001', '.kjlk', '2018-05-16 15:46:57'),
(23, 16, '1', 'test', '2018-07-31 08:46:05'),
(24, 16, '1', 'test', '2018-07-31 08:46:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_forum_topic`
--

CREATE TABLE IF NOT EXISTS `rb_forum_topic` (
`id_forum_topic` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `judul_topic` varchar(255) NOT NULL,
  `isi_topic` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_forum_topic`
--

INSERT INTO `rb_forum_topic` (`id_forum_topic`, `kodejdwl`, `judul_topic`, `isi_topic`, `waktu`) VALUES
(1, 33, 'Cara Unutk Memahami Rumus Pitagoras dengan mudah.', 'Dalam matematika, teorema Pythagoras adalah suatu keterkaitan dalam geometri Euklides antara tiga sisi sebuah segitiga siku-siku. Teorema ini dinamakan menurut nama filsuf dan matematikawan Yunani abad ke-6 SM, Pythagoras. . Pythagoras mendapat kredit karena ialah yang pertama membuktikan kebenaran universal dari teorema ini melalui pembuktian matematis.', '2015-12-11 08:08:18'),
(2, 7, 'Rumus untuk menghitung pendapatan perkapita', 'Pendapatan per kapita adalah jumlah (nilai) barang dan jasa rata-rata yang tersedia bagi setiap penduduk suatu negara pada suatu periode tertentu.\r\n\r\nPendapatan per kapita dapat digunakan untuk membandingkan kesejahteraan atau standar hidup suatu negara dari tahun ke tahun. Dengan melakukan perbandingan seperti itu, kita dapat mengamati apakah kesejahteraan masyarakat pada suatu negara secara rata-rata telah meningkat. Pendapatan per kapita yang meningkat merupakan salah satu tanda bahwa rata-rata kesejahteraan penduduk telah meningkat. Pendapatan per kapita menunjukkan pula apakah pembangunan yang telah dilaksanakan oleh pemerintah telah berhasil, berapa besar keberhasilan tersebut, dan akibat apa yang timbul oleh peningkatan tersebut.', '2015-12-12 13:13:27'),
(3, 7, 'Cara Mendapatkan Nilai Bagus Dan Menjadi Juara Kelas Di Sekolah', 'Bagaimana caranya agar nilai rapor mata pelajaran di sekolah hasilnya baik dan bagus sehingga syukur-syukur bisa menjadi juara kelas ? Ikuti tips di bawah ini yang didasarkan pada sebuah pengalaman nyata bertahun-tahun dari berbagai sumber. \r\n\r\nPerlu untuk digaris-bawahi, tak dibutuhkan otak yang pintar atau jenius untuk mendapatkan nilai yang bagus di sekolah ataupun untuk menjadi seorang juara kelas. Seseorang yang kemampuan otaknya biasa-biasa saja akan bisa memperoleh hasil yang bagus asalkan ia memiliki niat, kemauan, maupun sikap yang tepat dalam mewujudkan ambisinya.', '2015-12-11 16:20:51'),
(4, 5, 'Cara mendapatkan nilai bagus', 'Cara mendapatkan nilai bagus mata kuliah ini adalah dengan rajin datang / mengikuti pelajaran.', '2016-07-18 06:26:42'),
(5, 35, 'pembahasan nilai ', 'sdfadfa', '2018-02-13 08:21:01'),
(6, 46, 'test', 'apakah bumi itu bulat?', '2018-03-29 14:23:44'),
(7, 46, 'dimana Allah?', '', '2018-03-29 14:26:47'),
(8, 46, 'Apa Arti Shadat Laa illa Ha Illahu?', '', '2018-03-29 14:34:23'),
(9, 46, 'siapa tuhanmu?', '', '2018-03-29 14:45:44'),
(10, 46, 'dsfasdf', 'sadfsadf', '2018-03-29 14:49:16'),
(11, 46, 'DGHSDGH', 'DFGSDFG', '2018-03-29 14:57:15'),
(12, 46, 'fasdf', 'asdfasd', '2018-03-29 14:59:46'),
(13, 46, 'asdfsadfasdf', 'fsdafasd', '2018-03-29 15:00:19'),
(14, 46, 'fsadf', 'asdfasdf', '2018-03-29 15:15:55'),
(16, 50, 'introduction tik', 'BLA BLA', '2018-07-10 08:55:58'),
(18, 57, 'test', 'test', '2018-07-31 08:55:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_gedung`
--

CREATE TABLE IF NOT EXISTS `rb_gedung` (
  `kode_gedung` varchar(10) NOT NULL,
  `nama_gedung` varchar(100) NOT NULL,
  `jumlah_lantai` varchar(20) NOT NULL,
  `panjang` varchar(20) NOT NULL,
  `tinggi` varchar(20) NOT NULL,
  `lebar` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_gedung`
--

INSERT INTO `rb_gedung` (`kode_gedung`, `nama_gedung`, `jumlah_lantai`, `panjang`, `tinggi`, `lebar`, `keterangan`, `aktif`) VALUES
('G001', 'Gedung A', '3', '50', '25', '50', 'SMP', 'Y'),
('G002', 'Gedung B', '5 lantai', '50 Meter ', '25 Meter', '50 Meter', 'SMA', 'Y'),
('G003', 'Gedung C', '5', '50', '25', '50', 'SMA', 'Y'),
('G005', 'Gedung E', '5 lantai', '50 Meter', '20 meter', '50 Meter', 'SMA PUTRI', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_golongan`
--

CREATE TABLE IF NOT EXISTS `rb_golongan` (
`id_golongan` int(5) NOT NULL,
  `nama_golongan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_golongan`
--

INSERT INTO `rb_golongan` (`id_golongan`, `nama_golongan`, `keterangan`) VALUES
(1, 'IV/a', 'Golongan IV/a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_guru`
--

CREATE TABLE IF NOT EXISTS `rb_guru` (
  `nip` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_guru` varchar(150) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `niy_nigk` varchar(50) NOT NULL,
  `nuptk` varchar(50) NOT NULL,
  `id_status_kepegawaian` int(5) NOT NULL,
  `id_jenis_ptk` int(5) NOT NULL,
  `pengawas_bidang_studi` varchar(150) NOT NULL,
  `id_agama` int(5) NOT NULL,
  `alamat_jalan` varchar(255) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `nama_dusun` varchar(100) NOT NULL,
  `desa_kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tugas_tambahan` varchar(100) NOT NULL,
  `id_status_keaktifan` int(5) NOT NULL,
  `sk_cpns` varchar(150) NOT NULL,
  `tanggal_cpns` date NOT NULL,
  `sk_pengangkatan` varchar(150) NOT NULL,
  `tmt_pengangkatan` date NOT NULL,
  `lembaga_pengangkatan` varchar(150) NOT NULL,
  `id_golongan` int(5) NOT NULL,
  `keahlian_laboratorium` varchar(150) NOT NULL,
  `sumber_gaji` varchar(150) NOT NULL,
  `nama_ibu_kandung` varchar(100) NOT NULL,
  `id_status_pernikahan` int(5) NOT NULL,
  `nama_suami_istri` varchar(100) NOT NULL,
  `nip_suami_istri` varchar(30) NOT NULL,
  `pekerjaan_suami_istri` varchar(100) NOT NULL,
  `tmt_pns` date NOT NULL,
  `lisensi_kepsek` varchar(20) NOT NULL,
  `jumlah_sekolah_binaan` int(5) NOT NULL,
  `diklat_kepengawasan` varchar(20) NOT NULL,
  `mampu_handle_kk` varchar(20) NOT NULL,
  `keahlian_breile` varchar(20) NOT NULL,
  `keahlian_bahasa_isyarat` varchar(20) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_guru`
--

INSERT INTO `rb_guru` (`nip`, `password`, `nama_guru`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nik`, `niy_nigk`, `nuptk`, `id_status_kepegawaian`, `id_jenis_ptk`, `pengawas_bidang_studi`, `id_agama`, `alamat_jalan`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `kode_pos`, `telepon`, `hp`, `email`, `tugas_tambahan`, `id_status_keaktifan`, `sk_cpns`, `tanggal_cpns`, `sk_pengangkatan`, `tmt_pengangkatan`, `lembaga_pengangkatan`, `id_golongan`, `keahlian_laboratorium`, `sumber_gaji`, `nama_ibu_kandung`, `id_status_pernikahan`, `nama_suami_istri`, `nip_suami_istri`, `pekerjaan_suami_istri`, `tmt_pns`, `lisensi_kepsek`, `jumlah_sekolah_binaan`, `diklat_kepengawasan`, `mampu_handle_kk`, `keahlian_breile`, `keahlian_bahasa_isyarat`, `npwp`, `kewarganegaraan`, `foto`) VALUES
('195801181985121001', '123456', 'Indra Hermawan, ST, M.Pd', 1, 'Jakarta', '1985-08-28', '1374025104571989', '', '5450736639200002', 0, 2, 'TKJ', 1, 'jl munjul', '01', '', '04', 'munjul', 'Jakarta barat', 145210, '', '08999109596', 'indra@gmail.com', '', 1, '119/IV.E/KWPK-86', '1985-12-01', '3095/III/KWPK-98', '1989-09-01', 'Pemerintah Pusat', 1, '', 'APBD Kabupaten/Kota', 'Rukiah', 1, 'Meriza', '', 'Lainnya', '1987-02-01', 'TIDAK', 0, 'TIDAK', '0', 'TIDAK', 'TIDAK', '476470786202000', 'INDONESIA', '20180321111939-Logo-Web.png'),
('2116544654', '123456', 'hendri', 8, 'dfasdf', '0000-00-00', '', '', '', 0, 0, '', 2, '\r\n							        ', '', '', '', '', '', 0, '46645', '44444444', '', '\r\n									', 0, '', '0000-00-00', '\r\n								    ', '0000-00-00', '', 0, '', '', '', 0, '\r\n									', '', '', '0000-00-00', '', 0, '', '\r\n									', '', '', '', '', ''),
('5646546544', '12345', 'ISMAIL', 0, 'dfasdf', '0000-00-00', '', '', '', 0, 0, '', 2, '							        ', '', '', '', '', '', 0, '46645', '44444444', '', '									', 1, '', '0000-00-00', '								    ', '0000-00-00', '', 0, '', '', '', 0, '									', '', '', '0000-00-00', '', 0, '', '									', '', '', '', '', '20180427075828-558390-11FO8A1505384509.png'),
('4654654646', '6556456', 'FERRY', 8, 'dfasdf', '0000-00-00', '', '', '', 0, 0, '', 2, '\r\n							        ', '', '', '', '', '', 0, '46645', '44444444', '', '\r\n									', 0, '', '0000-00-00', '\r\n								    ', '0000-00-00', '', 0, '', '', '', 0, '\r\n									', '', '', '0000-00-00', '', 0, '', '\r\n									', '', '', '', '', ''),
('20180517', '123456', 'Ust Fauzy  Junaedi Lc', 1, 'dfasdf', '0000-00-00', '', '', '', 0, 2, '', 1, '							        ', '', '', '', '', '', 0, '46645', '44444444', '', '									', 0, '', '0000-00-00', '								    ', '0000-00-00', '', 0, '', '', '', 0, '									', '', '', '0000-00-00', '', 0, '', '									', '', '', '', '', '20180511074639-Vector Corel Tauhid by Desain-Islam blogspot com.png'),
('201383169222222', '201383169', 'hendra', 1, 'KUNINGAN', '0000-00-00', '', '', '', 0, 0, '', 1, '', '00', '00', '', '', '', 0, '', '', '', '', 1, '', '0000-00-00', '', '0000-00-00', '', 0, '', '', '', 0, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '20180427092904-251406-P4RJCN-90-01.png'),
('123', 'tesat', 'tesa', 1, 'tesa', '0000-00-00', '1', 'test', 'tessat', 1, 1, 'tesat', 1, 'test', 'test', '', 'test', 'test', 'tesat', 0, '123', 'wwed', 'test', 'teate', 1, '1', '0000-00-00', 'tesa', '0000-00-00', 'teas', 1, 'tea', 'tea', 'tea', 1, 'ta', 'tea', 'tea', '2018-12-10', 'tae', 0, 'teas', 'ates', 'tae', 'tae', 'ate', 'ta', ''),
('196209051987031007', 'test', 'test', 1, 'test', '0000-00-00', '', '', '', 0, 0, '', 1, '', '00', '00', '', '', '', 0, '', 'tesa', '', '', 0, '', '0000-00-00', '', '0000-00-00', '', 0, '', '', '', 0, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_guru_akses`
--

CREATE TABLE IF NOT EXISTS `rb_guru_akses` (
`id_guru_akses` int(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `id_modul` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_guru_akses`
--

INSERT INTO `rb_guru_akses` (`id_guru_akses`, `nip`, `id_modul`) VALUES
(1, '195806161984000001', 1),
(2, '195806161984000001', 3),
(4, '195806161984000001', 2),
(7, '201383169', 2),
(8, '201383169', 1),
(10, '123', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_halaman`
--

CREATE TABLE IF NOT EXISTS `rb_halaman` (
`id_halaman` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `judul_seo` varchar(255) NOT NULL,
  `isi_halaman` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` enum('psb','journal') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_halaman`
--

INSERT INTO `rb_halaman` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `username`, `status`) VALUES
(1, 'Selamat Datang di Sistem Pendaftaran Siswa Baru', 'selamat-datang-di-sistem-pendaftaran-siswa-baru', 'Sistem PSB online atau sistem informasi aplikasi penerimaan siswa baru online merupakan produk layanan aplikasi perangkat lunak  yang online real time dan 100%   berbasis web. Sistem   ini   berusaha   memenuhi kebutuhan   masyarakat khususnya  bagi orangtua  dan  calon  siswa  untuk  dapat melaksanakan  pendaftaran  ke sekolah dengan  aman  dan  tertib  dengan menyediakan  fitur  otomasi  proses penerimaan  siswa  baru secara  langsung  menggunakan  media internet,  mulai  dari proses pendaftaran, proses seleksi, hingga pengumuman hasil penerimaan siswa secara langsung nyata melalui internet.\r\n\r\nYayasan phpmu.com didirikan di Padang dengan Akte Notaris Leurentia Siti Nyoman tertanggal 6 Maret 1996.Pada tahun pertama ini dibukalah taman kanak-kanak dan plygroup dengan murid berjumlah 73 orang dan kampusnya berlokasi di jalan Thamrin No.22-25', 'admin', 'psb'),
(2, 'Prosedur Pendaftaran Siswa Baru', 'prosedur-pendaftaran-siswa-baru', 'Melakukan  pendaftaran secara online melalui website psb.dek.sch.id\nMembayar uang pendaftaran sebesar Rp 60.000,00 ke Rekening Sekolah :\nNo Rekening : xxxxxxxxxxxxxx\nAtas Nama : BPN 010 SMAK PADANG\nBRI UNIT PASAR BARU PADANG\n\n<b>Note : Bagi Bapak/Ibuk yang sudah melakukan pembayaran dan konfirmasi harap segera megirim pesan ke nomor 082384116431</b>\n\nUntuk Metode Tansfer.\ndengan format pesan : [jenis metode pembaran] [no_rekening] [nama anak/nama pesera] [nomor_konfirmasi]\nContoh Pesan Metode Transfer : Transfer 111112318923 Annisa Mardatilah QC401\n\nUntuk Metode Setoran.\nInvite/Add ID What''sApp dengan nomor 081267771344\ndengan format pesan : Kirim foto bukti slip setoran dan nama anak/peserta serta nomor konfirmasi\nContoh Format Pesan Whatsapp : [foto bukti slip setor] Annisa Mardatillah QC401\n\nMenyerahkan berkas dan ketentuan sebagai berikut apabila calon siswa dinyatakan lulus tes online.\nFoto kopi  rapor yang sudah dilegalisasi dari semester I - IV (1 rangkap)\nMemperlihatkan rapor asli\nSehat jasmani dan rohani (diperiksa di  SMK SMAK)\nTidak Buta Warna (diperiksa di SMK SMAK Padang)\nPas foto  warna terbaru ukuran 2x3 sebanyak 2 lembar dan 3X4 sebanyak 3 lembar', 'admin', 'psb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_identitas_sekolah`
--

CREATE TABLE IF NOT EXISTS `rb_identitas_sekolah` (
`id_identitas_sekolah` int(5) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `npsn` varchar(50) NOT NULL,
  `nss` varchar(50) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `kode_pos` int(7) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten_kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_identitas_sekolah`
--

INSERT INTO `rb_identitas_sekolah` (`id_identitas_sekolah`, `nama_sekolah`, `npsn`, `nss`, `alamat_sekolah`, `kode_pos`, `no_telpon`, `kelurahan`, `kecamatan`, `kabupaten_kota`, `provinsi`, `website`, `email`) VALUES
(1, 'MAHAD SMP IBNU HAJAR BOARDING SCHOOL', '10301989', '4232322', 'JL. Raya Munjul, Gg. Mushola Fathul Ulum RT03/02 No. 11 ', 13850, '021-8431-2279', 'Munjul', 'Cipayung', 'Jakarta Timur', 'Jakarta', 'https://ihbs.or.id', 'info@ihbs.or.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jadwal_pelajaran`
--

CREATE TABLE IF NOT EXISTS `rb_jadwal_pelajaran` (
`kodejdwl` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `id_kls_pararel` int(20) NOT NULL,
  `kode_pelajaran` varchar(10) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `paralel` varchar(10) NOT NULL,
  `jadwal_serial` varchar(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `hari` varchar(20) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jadwal_pelajaran`
--

INSERT INTO `rb_jadwal_pelajaran` (`kodejdwl`, `id_tahun_akademik`, `kode_kelas`, `id_kls_pararel`, `kode_pelajaran`, `kode_ruangan`, `nip`, `paralel`, `jadwal_serial`, `jam_mulai`, `jam_selesai`, `hari`, `aktif`) VALUES
(45, 20181, 'IX', 24, 'MP0902', 'R001', '195801181985121001', '', '', '14:43:17', '14:43:17', 'Jumat', 'Ya'),
(46, 20181, 'IX', 25, 'MP0902', 'R001', '195801181985121001', '', '', '16:42:27', '16:42:27', 'Sabtu', 'Ya'),
(47, 20181, 'VII', 34, 'MP0701', 'R002', '195801181985121001', '', '', '16:46:58', '16:46:58', 'Senin', 'Ya'),
(48, 20181, 'VIII', 30, 'MP0802', 'R002', '195801181985121001', '', '', '16:53:33', '16:53:33', 'Selasa', 'Ya'),
(49, 20181, 'VII', 34, 'MP0702', 'R001', '195801181985121001', '', '', '12:00:33', '12:00:33', 'Senin', 'Ya'),
(50, 20181, 'VII', 36, 'MP073', 'R003', '195801181985121001', '', '', '13:08:29', '13:08:29', 'Jumat', 'Ya'),
(52, 20181, 'VII', 35, 'MP073', 'R003', '195801181985121001', '', '', '13:20:47', '13:20:47', 'Rabu', 'Ya'),
(53, 20181, 'VII', 0, 'MP0704', 'R002', '195801181985121001', '', '', '16:21:43', '16:21:43', 'Jumat', 'Ya'),
(54, 20181, 'VII', 34, 'MP0704', 'R002', '195801181985121001', '', '', '16:22:10', '16:22:10', 'Jumat', 'Ya'),
(55, 20181, 'VII', 36, 'MP0704', 'R002', '3213212332', '', '', '11:15:55', '10:15:55', 'Selasa', 'Ya'),
(56, 20181, 'IX', 24, 'MP0903', 'R001', '195801181985121001', '', '', '08:11:45', '08:11:45', 'Kamis', 'Ya'),
(57, 20181, 'VII', 34, 'MP0702', 'R001', '5646546544', '', '', '07:00:00', '08:20:00', 'Senin', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jawaban_essai`
--

CREATE TABLE IF NOT EXISTS `rb_jawaban_essai` (
`id_jawaban_essai` int(5) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_pertanyaan_essai` int(10) NOT NULL,
  `jawaban_essai` text NOT NULL,
  `waktu_essay` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jawaban_essai`
--

INSERT INTO `rb_jawaban_essai` (`id_jawaban_essai`, `id_siswa`, `id_jadwal`, `id_pertanyaan_essai`, `jawaban_essai`, `waktu_essay`) VALUES
(3, 51656284, 1, 25, '<p>Roberto Pricarloso Hadisionso</p>\n', '2018-05-01 23:44:50'),
(5, 51844883, 1, 25, '<p>Leonardo Davinci</p>\r\n', '2018-05-02 00:47:21'),
(11, 41273814, 5, 25, '<p>hjkkjhkjhkj</p>\r\n', '2018-05-11 10:49:19'),
(12, 26354847, 6, 42, '<p>sdfadfsdfa</p>\r\n', '2018-05-17 10:20:54'),
(13, 26354847, 6, 39, 'fasdfda', '2018-05-17 10:20:54'),
(14, 44916011, 7, 25, '<p>ade</p>\r\n', '2018-05-29 14:10:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jawaban_essai_koreksi`
--

CREATE TABLE IF NOT EXISTS `rb_jawaban_essai_koreksi` (
`id_jawaban_essai_koreksi` int(11) NOT NULL,
  `id_jawaban_essai` int(11) NOT NULL,
  `nilai` enum('0','1') NOT NULL,
  `waktu_koreksi` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jawaban_essai_koreksi`
--

INSERT INTO `rb_jawaban_essai_koreksi` (`id_jawaban_essai_koreksi`, `id_jawaban_essai`, `nilai`, `waktu_koreksi`) VALUES
(3, 3, '0', '2018-05-02 00:12:24'),
(4, 4, '0', '2018-05-02 00:46:34'),
(6, 12, '0', '2018-05-20 14:57:16'),
(7, 13, '0', '2018-05-20 14:57:36'),
(8, 14, '1', '2018-05-29 14:11:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jawaban_objektif`
--

CREATE TABLE IF NOT EXISTS `rb_jawaban_objektif` (
`id_jawaban_objektif` int(5) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_pertanyaan_objektif` int(10) NOT NULL,
  `jawaban` varchar(2) NOT NULL,
  `waktu_objektif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jawaban_objektif`
--

INSERT INTO `rb_jawaban_objektif` (`id_jawaban_objektif`, `id_siswa`, `id_jadwal`, `id_pertanyaan_objektif`, `jawaban`, `waktu_objektif`) VALUES
(1, 51656284, 1, 1, 'A', '2018-05-01 23:00:02'),
(2, 51656284, 1, 2, 'A', '2018-05-01 23:00:02'),
(3, 51656284, 1, 3, 'A', '2018-05-01 23:00:02'),
(4, 51656284, 2, 5, 'A', '2018-05-01 23:00:23'),
(5, 51656284, 2, 27, 'A', '2018-05-01 23:00:23'),
(6, 51656284, 2, 1, 'A', '2018-05-01 23:00:23'),
(7, 51656284, 2, 2, 'A', '2018-05-01 23:00:23'),
(8, 51656284, 4, 1, 'A', '2018-05-02 00:32:05'),
(9, 51656284, 4, 2, 'B', '2018-05-02 00:32:05'),
(10, 51656284, 4, 3, 'A', '2018-05-02 00:32:05'),
(11, 51656284, 4, 5, 'C', '2018-05-02 00:32:05'),
(12, 51656284, 4, 27, 'A', '2018-05-02 00:32:05'),
(18, 51844883, 1, 3, 'B', '2018-05-02 00:47:21'),
(17, 51844883, 1, 2, 'A', '2018-05-02 00:47:21'),
(16, 51844883, 1, 1, 'A', '2018-05-02 00:47:21'),
(84, 51844883, 4, 27, '', '2018-05-03 07:41:59'),
(73, 51844883, 0, 27, '', '2018-05-03 07:41:59'),
(70, 51844883, 0, 21, 'A', '2018-05-02 08:18:21'),
(74, 51844883, 0, 31, '', '2018-05-03 07:41:59'),
(83, 51844883, 4, 5, 'B', '2018-05-02 09:23:40'),
(82, 51844883, 4, 3, 'A', '2018-05-02 09:23:40'),
(81, 51844883, 4, 2, 'A', '2018-05-02 09:23:40'),
(80, 51844883, 4, 1, 'A', '2018-05-02 09:23:40'),
(85, 51844883, 2, 5, 'A', '2018-05-02 11:08:41'),
(86, 51844883, 2, 27, '', '2018-05-03 07:41:59'),
(87, 51844883, 2, 1, 'A', '2018-05-02 11:08:41'),
(88, 51844883, 2, 2, 'A', '2018-05-02 11:08:41'),
(89, 33913578, 0, 32, 'A', '2018-05-07 19:42:34'),
(90, 0, 0, 27, 'A', '2018-05-10 11:12:46'),
(91, 0, 0, 31, 'A', '2018-05-10 11:12:46'),
(92, 0, 0, 43, 'B', '2018-05-10 11:12:46'),
(93, 44916011, 0, 44, 'A', '2018-05-10 17:45:30'),
(94, 41273814, 5, 1, 'A', '2018-05-11 10:49:19'),
(95, 41273814, 5, 2, 'B', '2018-05-11 10:49:19'),
(96, 41273814, 5, 3, 'B', '2018-05-11 10:49:19'),
(97, 26354847, 6, 38, 'A', '2018-05-17 10:20:54'),
(98, 26354847, 6, 32, 'A', '2018-05-17 10:20:54'),
(99, 44072375, 2, 5, 'D', '2018-05-20 18:47:39'),
(100, 44072375, 2, 1, 'D', '2018-05-20 18:47:39'),
(101, 44072375, 2, 27, 'D', '2018-05-20 18:47:39'),
(102, 44072375, 2, 2, 'D', '2018-05-20 18:47:39'),
(103, 44916011, 7, 1, 'D', '2018-05-29 14:10:30'),
(104, 44916011, 7, 3, 'C', '2018-05-29 14:10:30'),
(105, 44916011, 7, 2, 'D', '2018-05-29 14:10:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jenis_kelamin`
--

CREATE TABLE IF NOT EXISTS `rb_jenis_kelamin` (
`id_jenis_kelamin` int(5) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jenis_kelamin`
--

INSERT INTO `rb_jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jenis_ptk`
--

CREATE TABLE IF NOT EXISTS `rb_jenis_ptk` (
`id_jenis_ptk` int(5) NOT NULL,
  `jenis_ptk` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jenis_ptk`
--

INSERT INTO `rb_jenis_ptk` (`id_jenis_ptk`, `jenis_ptk`, `keterangan`) VALUES
(1, 'Tenaga Administrasi Sekolah', ''),
(2, 'Guru Mapel', ''),
(3, 'Guru BK', ''),
(4, 'Guru Kelas', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_journal_list`
--

CREATE TABLE IF NOT EXISTS `rb_journal_list` (
`id_journal` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_ke` varchar(50) NOT NULL,
  `materi` text NOT NULL,
  `keterangan` text NOT NULL,
  `waktu_input` datetime NOT NULL,
  `users` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_journal_list`
--

INSERT INTO `rb_journal_list` (`id_journal`, `kodejdwl`, `hari`, `tanggal`, `jam_ke`, `materi`, `keterangan`, `waktu_input`, `users`) VALUES
(8, 34, 'Kamis', '2016-07-16', '2', 'dadasdsd', 'asdasdasdasd', '2016-07-16 13:13:32', '1'),
(9, 5, 'Senin', '2016-07-18', '3', 'Ribuan orang berkumpul di Istanbul dan kota-kota lainnya setelah otoritas Turki', 'Indeks berita tempo terbaru dari politik hukum kriminal bisnis sepak bola olahraga gaya hidup selebriti foto video di Indonesia dan Dunia hari ini.', '2016-07-18 06:12:53', '195806161984000016'),
(10, 5, 'Selasa', '2016-07-19', '2', 'kabar terbaru seputar berita nasional maupun internasional online terkini.', 'Situs Berita harian terkini yang menyajikan berita hari ini dan kabar terbaru seputar politik hingga berita lifestyle dan olahraga.', '2016-07-19 15:57:28', '195806161984000016'),
(6, 33, 'Sabtu', '2016-07-16', '1', 'Contoh diatas masih menampilkan nama hari dalam bahasa inggris. Untuk menampilkan dalam format bahasa indonesia, buat variable array untuk konversi nama hari ke bahasa indonesiaaa.', 'Berikut ini merupakan potongan kode sederhana untuk menampilkan nama hari dari suatu tanggal dengan menggunakan PHP. Sebagai contoh misalkan diberikan tanggal 3 Juni 2015, kemudian kita ingin mengetahui hari apakah itu.', '2016-07-16 12:19:44', '195806161984000002'),
(7, 33, 'Minggu', '2016-07-17', '1', 'Psikolog anak, Roslina Verauli, MSc menjelaskan, bahwa gaya hidup sehat yang aktif, seperti berolahraga bisa membantu mewujudkan pertumbuhan dan perkembangan anak yang sehat secara fisik. ', 'Gaya hidup sehat dan aktivitas fisik dipercaya memberikan manfaat yang baik. Salah satunya untuk tumbuh kembang anak-anak pada usia sekolah. Namun agar mendapatkan manfaatnya, aktivitas fisik harus dikenalkan pada anak sejak dini.', '2016-07-16 12:44:16', '1'),
(11, 0, '2018-03-28', '0000-00-00', 'fsdfas', 'sadfsadf', '34', '2018-03-28 10:59:09', '195801181985121001'),
(12, 47, 'Rabu', '2018-03-28', '1', 'dsfasdf', 'sadfdasf', '2018-03-28 12:39:26', '1'),
(13, 48, 'Rabu', '2018-03-28', '1', 'fsdfa', 'asdfsadf', '2018-03-28 12:59:37', '195801181985121001'),
(14, 45, 'Rabu', '2018-03-28', '1', 'fsafa', 'asdfasdf', '2018-03-28 13:06:38', '195801181985121001'),
(15, 46, 'Kamis', '2018-04-05', '1', 'vxzcv', 'xzcvzxcv', '2018-04-05 10:20:58', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jurusan`
--

CREATE TABLE IF NOT EXISTS `rb_jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `nama_jurusan_en` varchar(255) NOT NULL,
  `bidang_keahlian` varchar(150) NOT NULL,
  `kompetensi_umum` varchar(150) NOT NULL,
  `kompetensi_khusus` varchar(150) NOT NULL,
  `pejabat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jurusan`
--

INSERT INTO `rb_jurusan` (`kode_jurusan`, `nama_jurusan`, `nama_jurusan_en`, `bidang_keahlian`, `kompetensi_umum`, `kompetensi_khusus`, `pejabat`, `jabatan`, `keterangan`, `aktif`) VALUES
('MIPA', 'Ilmu Pengetahuan Alam', '', 'Biologi, Fisika, kimia', 'Menguasai Semua Bidang Keahlian', 'Menguasai Semua Bidang Biologi', 'Hasan Bin Mail', 'Ketua Jurusan', '', 'Ya'),
('IPS', 'Ilmu Pengetahuan Sosial', 'ere', 'as', '', '', '', '', '', 'Ya'),
('BAHASA', 'Jurusan Bahasa', '', 'Bahasa Indonesia', '', '', '', '', '', 'Ya'),
('IBBU', 'Jurusan IBBU', '', '', '', '', '', '', '', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_elearning`
--

CREATE TABLE IF NOT EXISTS `rb_kategori_elearning` (
`id_kategori_elearning` int(5) NOT NULL,
  `nama_kategori_elearning` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_elearning`
--

INSERT INTO `rb_kategori_elearning` (`id_kategori_elearning`, `nama_kategori_elearning`) VALUES
(1, 'Bahan'),
(2, 'Tugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_quiz_ujian`
--

CREATE TABLE IF NOT EXISTS `rb_kategori_quiz_ujian` (
`id_kategori_quiz_ujian` int(5) NOT NULL,
  `kategori_quiz_ujian` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_quiz_ujian`
--

INSERT INTO `rb_kategori_quiz_ujian` (`id_kategori_quiz_ujian`, `kategori_quiz_ujian`) VALUES
(1, 'Quiz Online'),
(2, 'Ujian Online');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kehadiran`
--

CREATE TABLE IF NOT EXISTS `rb_kehadiran` (
  `kode_kehadiran` varchar(5) NOT NULL,
  `nama_kehadiran` varchar(20) NOT NULL,
  `nilai` int(2) NOT NULL,
  `bobot` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kehadiran`
--

INSERT INTO `rb_kehadiran` (`kode_kehadiran`, `nama_kehadiran`, `nilai`, `bobot`) VALUES
('H', 'Hadir', 1, '1'),
('I', 'Izin', 1, '0.5'),
('S', 'Sakit', 1, '0.5'),
('A', 'Alpa', 0, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kelas`
--

CREATE TABLE IF NOT EXISTS `rb_kelas` (
  `kode_kelas` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kelas`
--

INSERT INTO `rb_kelas` (`kode_kelas`, `nip`, `kode_jurusan`, `kode_ruangan`, `nama_kelas`, `aktif`) VALUES
('VII', '0', '0', '0', 'SMP kelas 7', 'Ya'),
('VIII', '0', '', 'R001', 'SMP kelas 8', 'Ya'),
('X', '0', '0', '0', 'SMA/MA IPA kelas 10 ', 'Ya'),
('IX', '0', '0', '0', 'SMP kelas 9', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kelompok_mata_pelajaran`
--

CREATE TABLE IF NOT EXISTS `rb_kelompok_mata_pelajaran` (
`id_kelompok_mata_pelajaran` int(5) NOT NULL,
  `jenis_kelompok_mata_pelajaran` varchar(50) NOT NULL,
  `nama_kelompok_mata_pelajaran` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kelompok_mata_pelajaran`
--

INSERT INTO `rb_kelompok_mata_pelajaran` (`id_kelompok_mata_pelajaran`, `jenis_kelompok_mata_pelajaran`, `nama_kelompok_mata_pelajaran`) VALUES
(1, 'A', 'Kelompok A (Umum)'),
(2, 'B', 'Kelompok B (Umum)'),
(3, 'C', 'Kelompok C (Peminatan)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keuangan_bayar`
--

CREATE TABLE IF NOT EXISTS `rb_keuangan_bayar` (
`id_keuangan_bayar` int(10) NOT NULL,
  `id_keuangan_jenis` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `id_kls_pararel` int(30) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `tahun_akademik` int(5) NOT NULL,
  `total_bayar` int(10) NOT NULL,
  `waktu_bayar` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keuangan_jenis`
--

CREATE TABLE IF NOT EXISTS `rb_keuangan_jenis` (
`id_keuangan_jenis` int(5) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL,
  `total_beban` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_keuangan_jenis`
--

INSERT INTO `rb_keuangan_jenis` (`id_keuangan_jenis`, `nama_jenis`, `total_beban`) VALUES
(1, 'SPP', 800000),
(6, 'Milad', 10000),
(5, 'Infak', 0),
(4, 'Seragam Sekolah', 450000),
(7, 'UTS', 25000),
(8, 'UAS', 50000),
(9, 'Syahriah', 450000),
(10, 'Kost Makan', 325000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kls_pararel`
--

CREATE TABLE IF NOT EXISTS `rb_kls_pararel` (
`id_kls_pararel` int(10) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `nm_pararel` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kls_pararel`
--

INSERT INTO `rb_kls_pararel` (`id_kls_pararel`, `kode_kelas`, `nm_pararel`) VALUES
(24, 'IX', 'IX - A (pa)'),
(25, 'IX', 'IX - B (pa)'),
(27, 'IX', 'IX - C (pa)'),
(29, 'IX', 'IX - D (pa)'),
(30, 'VIII', 'VIII - A (pa)'),
(31, 'VIII', 'VIII - B (pa)'),
(32, 'VIII', 'VIII - C (pa)'),
(33, 'VIII', 'VIII - D (pa)'),
(34, 'VII', 'VII - A (pa)'),
(35, 'VII', 'VII - B (pa)'),
(36, 'VII', 'VII - C (pa)'),
(37, 'VII', 'VII - D (pa)'),
(38, 'X', 'X IPA1'),
(39, 'X', 'X IPA 1 ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kompetensi_dasar`
--

CREATE TABLE IF NOT EXISTS `rb_kompetensi_dasar` (
`id_kompetensi_dasar` int(10) NOT NULL,
  `kode_pelajaran` varchar(20) NOT NULL,
  `kd` varchar(5) NOT NULL,
  `ranah` enum('pengetahuan','keterampilan','sikap') NOT NULL,
  `kompetensi_dasar` text NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kompetensi_dasar`
--

INSERT INTO `rb_kompetensi_dasar` (`id_kompetensi_dasar`, `kode_pelajaran`, `kd`, `ranah`, `kompetensi_dasar`, `waktu_input`) VALUES
(1, 'MK15', '1.1', 'pengetahuan', 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisannn.', '2016-07-03 08:10:13'),
(2, 'MK15', '1.2', 'keterampilan', 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisane.', '2016-07-03 09:44:36'),
(3, 'MK06', '1.1', 'pengetahuan', 'zxczxczxczxczx', '2016-07-16 13:13:10'),
(5, 'MK02', '1.1', 'pengetahuan', 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisan.', '2016-07-18 06:12:38'),
(7, 'MK02', '1.2', 'pengetahuan', 'Lembaran baru Manchester United bersama Jose Mourinho dimulai.', '2016-07-18 10:19:33'),
(8, 'MK02', '1.3', 'pengetahuan', 'Episode perjalanan Mourinho sebagai manajer Setan Merah, dimulai cukup gemilang.', '2016-07-18 10:19:52'),
(9, 'MK01', '1.1', 'pengetahuan', 'Selain tahi lalat dan jenggot di bagian tubuh terduga teroris yang tewas', '2016-07-19 07:42:37'),
(10, 'MK01', '1.2', 'pengetahuan', 'Ada alasan lain Kepolisian menduga bahwa yang tertembak pada Senin petang memang Santoso', '2016-07-19 07:43:10'),
(11, 'MK01', '1.3', 'pengetahuan', 'Pasalnya, penembakan terjadi terhadap lima orang yang dua orang diduga adalah perempuan', '2016-07-19 07:43:36'),
(12, 'MK03', '1.1', 'pengetahuan', 'Sementara yang diketahui biasa memboyong perempuan adalah Santoso.', '2016-07-19 07:44:07'),
(13, 'MK03', '1.2', 'pengetahuan', 'Ada tahi lalatnya dan ada wanita di sana ya karena kami dapat informasi bahwa Santoso', '2016-07-19 07:44:21'),
(14, 'MK03', '1.3', 'pengetahuan', 'Polisi akan melakukan identifikasi DNA terlebih dahulu sebelum memastikan bahwa terduga teroris', '2016-07-19 07:44:42'),
(17, 'MP0701', '01', 'pengetahuan', 'cerpen', '2018-03-28 14:57:51'),
(18, '46', 'penge', '', '103', '2018-04-04 13:46:55'),
(19, '46', '103', 'pengetahuan', 'BAHASA INDONESIA', '2018-04-04 13:47:37'),
(20, 'MP01002', '103', 'pengetahuan', 'PHP', '2018-04-04 13:48:58'),
(26, 'MP0702', '103', 'pengetahuan', 'aljabar', '2018-05-15 13:10:41'),
(22, 'MP01002', '1.23.', 'pengetahuan', 'sdfasfd', '2018-04-04 16:17:09'),
(24, 'MP0902', '213', 'keterampilan', 'cerpen', '2018-04-05 10:08:52'),
(27, '49', '104', 'pengetahuan', 'test', '2018-07-31 11:24:19'),
(28, '57', '1', 'pengetahuan', 'test', '2018-07-31 11:24:57'),
(29, '57', '', '', '', '2018-07-31 11:26:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kurikulum`
--

CREATE TABLE IF NOT EXISTS `rb_kurikulum` (
`kode_kurikulum` int(5) NOT NULL,
  `nama_kurikulum` varchar(255) NOT NULL,
  `status_kurikulum` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kurikulum`
--

INSERT INTO `rb_kurikulum` (`kode_kurikulum`, `nama_kurikulum`, `status_kurikulum`) VALUES
(10, 'Kurikulum 2019', 'Tidak'),
(11, 'kurikulum 2017', 'Tidak'),
(4, 'Kurikulum 2018', 'Ya'),
(6, 'Kurikulum 2020', 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_ledger`
--

CREATE TABLE IF NOT EXISTS `rb_ledger` (
`id_ledger` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `pengetahuan` int(5) NOT NULL,
  `keterampilan` int(5) NOT NULL,
  `sikap` varchar(5) NOT NULL,
  `desk_pengetahuan` text NOT NULL,
  `desk_keterampilan` text NOT NULL,
  `desk_sikap` text NOT NULL,
  `waktu_update` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_ledger`
--

INSERT INTO `rb_ledger` (`id_ledger`, `kodejdwl`, `nisn`, `kode_kelas`, `pengetahuan`, `keterampilan`, `sikap`, `desk_pengetahuan`, `desk_keterampilan`, `desk_sikap`, `waktu_update`) VALUES
(1, 49, '0039874875', 'VII', 0, 0, 'T', '', '', '', '2018-05-14 16:12:42'),
(2, 49, '0041273814', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(3, 49, '0044072375', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(4, 49, '0044770786', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(5, 49, '0044916011', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(6, 49, '0045011851', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(7, 49, '0045078219', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(8, 49, '0045078223', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(9, 49, '0045097431', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(10, 49, '0045493561', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(11, 49, '0045792089', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(12, 49, '0046658278', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(13, 49, '0046754996', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(14, 49, '0047520489', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(15, 49, '0049199786', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(16, 49, '0050659070', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(17, 49, '0050796585', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(18, 49, '0050870313', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(19, 49, '0050932531', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(20, 49, '0050935891', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(21, 49, '0051019736', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(22, 49, '0051347863', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(23, 49, '0051558550', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(24, 49, '0051656284', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(25, 49, '0051844883', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(26, 49, '0051850108', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(27, 49, '0051859789', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(28, 49, '0052090012', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(29, 49, '0052095542', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(30, 49, '0052098849', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(31, 49, '0052118292', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(32, 49, '0052127482', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(33, 49, '0052135208', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(34, 49, '0052290332', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(35, 49, '0052293286', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(36, 49, '0052319702', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(37, 49, '0052359572', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(38, 49, '0052365190', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(39, 49, '0052397501', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(40, 49, '0052678277', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(41, 49, '0052895388', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(42, 49, '0053172806', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(43, 49, '0053217127', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(44, 49, '0053512572', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(45, 49, '0053535978', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(46, 49, '0053536725', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(47, 49, '0053651570', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(48, 49, '0054042425', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(49, 49, '0054310190', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(50, 49, '0054326193', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(51, 49, '0054501379', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(52, 49, '0054789538', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(53, 49, '0054932599', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(54, 49, '0055252132', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(55, 49, '0055459702', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(56, 49, '0055803799', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(57, 49, '0055980225', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(58, 49, '0055997560', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(59, 49, '0056050271', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(60, 49, '0056244132', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(61, 49, '0056445707', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(62, 49, '0056540305', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(63, 49, '0057004308', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(64, 49, '0057171135', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(65, 49, '0057352920', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(66, 49, '0057413366', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(67, 49, '0057547312', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(68, 49, '0058198834', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(69, 49, '0058558252', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(70, 49, '0058691970', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(71, 49, '0058738348', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(72, 49, '0059069592', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(73, 49, '0059588027', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(74, 49, '0059590464', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(75, 49, '0059671129', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(76, 49, '0059684759', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(77, 49, '0062560586', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(78, 49, '0110121038', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(79, 49, '171807011', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(80, 49, '171807024', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(81, 49, '171807029', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(82, 49, '171807042', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(83, 49, '171807047', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(84, 49, '171807050', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(85, 49, '171807052', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(86, 49, '171807054', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(87, 49, '171807062', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(88, 49, '171807063', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(89, 49, '171807064', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(90, 49, '171807067', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(91, 49, '171807068', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(92, 49, '171807070', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(93, 49, '171807072', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(94, 49, '171807073', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(95, 49, '171807074', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(96, 49, '171807075', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(97, 49, '171807076', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(98, 49, '171807078', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(99, 49, '171807079', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(100, 49, '171807080', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(101, 49, '171807081', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(102, 49, '171807086', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(103, 49, '171807088', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(104, 49, '171807091', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(105, 49, '171807093', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(106, 49, '171807094', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(107, 49, '171807096', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(108, 49, '171807098', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(109, 49, '171807100', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(110, 49, '171807102', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(111, 49, '171807103', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(112, 49, '171807104', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(113, 49, '171807108', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(114, 49, '171807109', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(115, 49, '171807110', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(116, 49, '171807111', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42'),
(117, 49, '171807114', 'VII', 0, 0, '0', '', '', '', '2018-05-14 16:12:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_mata_pelajaran`
--

CREATE TABLE IF NOT EXISTS `rb_mata_pelajaran` (
  `kode_pelajaran` varchar(20) NOT NULL,
  `id_kelompok_mata_pelajaran` int(3) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `kode_kurikulum` int(5) NOT NULL,
  `namamatapelajaran` varchar(150) NOT NULL,
  `namamatapelajaran_en` varchar(150) NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kompetensi_umum` text NOT NULL,
  `kompetensi_khusus` text NOT NULL,
  `jumlah_jam` varchar(20) NOT NULL,
  `sesi` varchar(50) NOT NULL,
  `urutan` int(3) NOT NULL,
  `kkm` int(5) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_mata_pelajaran`
--

INSERT INTO `rb_mata_pelajaran` (`kode_pelajaran`, `id_kelompok_mata_pelajaran`, `kode_jurusan`, `nip`, `kode_kurikulum`, `namamatapelajaran`, `namamatapelajaran_en`, `tingkat`, `kompetensi_umum`, `kompetensi_khusus`, `jumlah_jam`, `sesi`, `urutan`, `kkm`, `aktif`) VALUES
('MP01202', 0, 'IPS', '195801181985121001', 4, 'MATEMATIKA', '', 'XII', '', '', '', '', 0, 0, 'Ya'),
('MP073', 0, 'IPS', '195801181985121001', 4, 'BAHASA INGGRIS', 'english language', 'VII', 'bahasa', 'percakapan', '24', '1', 1, 90, 'Ya'),
('MP01002', 0, '0', '0', 4, 'MATEMATIKA', '', 'X', '', '', '', '', 0, 0, 'Ya'),
('MP01102', 0, '0', '0', 4, 'MATEMATIKA', '', 'XI', '', '', '', '', 0, 0, 'Ya'),
('MP0802', 0, '0', '0', 4, 'MATEMATIKA', '', 'VIII', '', '', '', '', 0, 0, 'Ya'),
('MP0902', 0, '0', '0', 4, 'MATEMATIKA', '', 'IX', '', '', '', '', 0, 0, 'Ya'),
('MP01201', 0, '0', '195801181985121001', 4, 'BAHASA INDONESIA', '', 'XII', '', '', '', '', 0, 0, 'Ya'),
('MP0702', 0, '0', '0', 4, 'MATEMATIKA', '', 'VII', '', '', '', '', 0, 0, 'Ya'),
('MP01001', 0, '0', '0', 4, 'BAHASA INDONESIA', '', 'X', '', '', '', '', 0, 0, 'Ya'),
('MP01101', 0, '0', '0', 4, 'BAHASA INDONESIA', '', 'XI', '', '', '', '', 0, 0, 'Ya'),
('MP0901', 0, '0', '0', 4, 'BAHASA INDONESIA', '', 'IX', '', '', '', '', 0, 0, 'Ya'),
('MP0801', 0, '0', '0', 4, 'BAHASA INDONESIA', '', 'VIII', '', '', '', '', 0, 0, 'Ya'),
('MP0701', 0, '0', '0', 4, 'BAHASA INDONESIA', '', 'VII', '', '', '', '', 0, 0, 'Ya'),
('MP0704', 1, 'MIPA', '3213212332', 4, 'TAHUHID', '', 'VII', 'Tauhid Rububiyah, Tauhid Uluhiyah, Asma wa Sifat', 'Tauhid kepada allah dengan cara beribadah dengan benar', '2', '2', 3, 90, 'Ya'),
('MP0903', 2, '0', '0', 4, 'TIK', '', 'IX', 'MEMAHAMI SEJARAH TIK', 'MAMPU MENGUASAI PRAKTEK DAN TEORI', '2', '', 0, 70, 'Ya'),
('MP0705', 1, '0', '195801181985121001', 4, 'PPKN', '', 'VII', '', '', '', '', 0, 90, 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_materi`
--

CREATE TABLE IF NOT EXISTS `rb_materi` (
`id_materi` int(11) NOT NULL,
  `nm_materi` varchar(50) NOT NULL,
  `id_bab` int(20) NOT NULL,
  `kode_pelajaran` int(20) NOT NULL,
  `nm_bab` varchar(50) NOT NULL,
  `sub_bab` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_materi`
--

INSERT INTO `rb_materi` (`id_materi`, `nm_materi`, `id_bab`, `kode_pelajaran`, `nm_bab`, `sub_bab`) VALUES
(3, 'alhamdulillah', 0, 0, '', ''),
(4, 'alhamdulillah', 0, 0, '', ''),
(5, 'rgfdsgdf', 0, 0, '', ''),
(6, 'fasdfsd', 0, 0, '', ''),
(7, 'akhirnya berhas', 0, 0, '', ''),
(8, 'akhirnya berhas', 0, 0, '', ''),
(10, 'dicoba', 0, 0, '', ''),
(11, 'testtttt', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_menu`
--

CREATE TABLE IF NOT EXISTS `rb_menu` (
`id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `urutan` int(3) NOT NULL,
  `status` enum('psb','journal') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_menu`
--

INSERT INTO `rb_menu` (`id_menu`, `id_parent`, `nama_menu`, `icon`, `link`, `aktif`, `urutan`, `status`) VALUES
(1, 0, 'Beranda', 'home', 'index.mu', 'Ya', 1, 'psb'),
(2, 0, 'Aturan & Prosedur', 'th-list', 'halaman-prosedur-pendaftaran-siswa-baru.mu', 'Ya', 2, 'psb'),
(3, 0, 'Jadwal Pelaksanaan', 'calendar', '#', 'Ya', 3, 'psb'),
(4, 0, 'Alur Pendaftaran', 'retweet', '#', 'Ya', 4, 'psb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_modul`
--

CREATE TABLE IF NOT EXISTS `rb_modul` (
`id_modul` int(5) NOT NULL,
  `nama_modul` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_modul`
--

INSERT INTO `rb_modul` (`id_modul`, `nama_modul`, `url`, `aktif`) VALUES
(1, 'Kelompok Mapel', 'index.php?view=kelompokmapel', 'Ya'),
(2, 'Mata Pelajaran', 'index.php?view=matapelajaran', 'Ya'),
(3, 'Jenis Biaya', 'index.php?view=jeniskeuangan', 'Ya'),
(4, 'Pembayaran Siswa', 'index.php?view=pembayaransiswa', 'Tidak'),
(5, 'Laporan Nilai Siswa - Rapor UTS', 'index.php?view=raportuts', 'Ya'),
(6, 'Laporan Nilai Siswa - Capaian Hasil Belajar', 'index.php?view=capaianhasilbelajar', 'Ya'),
(7, 'Laporan Nilai Siswa - Input Ekstrakulikuler', 'index.php?view=extrakulikuler', 'Ya'),
(8, 'Laporan Nilai Siswa - Input Prestasi', 'index.php?view=prestasi', 'Ya'),
(9, 'Laporan Nilai Siswa - Rapor', 'index.php?view=raport', 'Ya'),
(10, 'Laporan Nilai Siswa - Ledger Mapel', 'index.php?view=ledgermapel', 'Ya'),
(11, 'Laporan Nilai Siswa - Ledger Kelas', 'index.php?view=ledgerkelas', 'Ya'),
(12, 'Laporan Nilai Siswa - Cetak Rapor', 'index.php?view=raportcetak', 'Ya'),
(13, 'Laporan Nilai Siswa - Cetak Rapor UTS', 'index.php?view=raportcetakuts', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_extrakulikuler`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_extrakulikuler` (
`id_nilai_extrakulikuler` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `id_kls_pararel` int(30) NOT NULL,
  `kegiatan` text NOT NULL,
  `nilai` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_keterampilan`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_keterampilan` (
`id_nilai_keterampilan` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kd` varchar(5) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `nilai3` float NOT NULL,
  `nilai4` float NOT NULL,
  `nilai5` float NOT NULL,
  `nilai6` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_keterampilan`
--

INSERT INTO `rb_nilai_keterampilan` (`id_nilai_keterampilan`, `kodejdwl`, `nisn`, `kd`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `nilai6`, `deskripsi`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', '4.1', 75, 70, 78, 85, 78, 72, 'Mengabstraksi teks cerita pendek, baik secara lisan maupun tulisan ', '1', '2016-04-11 18:26:32'),
(2, 5, '9998218087', '1', 88, 90, 98, 96, 0, 0, '', '1', '2016-04-11 18:26:32'),
(3, 5, '9998215055', '1', 67, 98, 76, 90, 0, 0, '', '1', '2016-04-11 18:26:32'),
(4, 5, '9998214335', '1', 87, 88, 0, 0, 0, 0, '', '1', '2016-04-11 18:26:32'),
(5, 5, '9998214151', '1', 89, 0, 0, 90, 0, 0, '', '1', '2016-04-11 18:26:32'),
(6, 5, '9997515863', '1', 89, 80, 88, 0, 0, 0, '', '1', '2016-04-11 18:26:32'),
(7, 5, '9991268756', '4.2', 87, 90, 94, 93, 88, 83, 'Mengabstraksi teks cerita ulang, baik secara lisan maupun tulisan ', '1', '2016-04-14 08:03:27'),
(8, 5, '9998218087', '2', 88, 93, 90, 99, 0, 0, '', '1', '2016-04-14 08:03:27'),
(9, 5, '9998215055', '2', 78, 87, 89, 79, 0, 0, '', '1', '2016-04-14 08:03:27'),
(10, 5, '9991268756', '4.3', 89, 89, 98, 95, 79, 77, 'Mengabstraksi teks pantun, baik secara lisan maupun tulisan', '1', '2016-04-14 08:03:57'),
(11, 5, '9998218087', '3', 78, 87, 89, 88, 0, 0, '', '1', '2016-04-14 08:03:57'),
(12, 5, '9998215055', '3', 70, 78, 87, 90, 0, 0, '', '1', '2016-04-14 08:03:57'),
(13, 5, '9991268756', '4.4', 90, 89, 87, 90, 85, 90, 'Menginterpretasi makna teks pantun, baik secara lisan maupun tulisan ', '1', '2016-04-14 08:04:20'),
(14, 5, '9998218087', '4', 87, 88, 83, 89, 0, 0, '', '1', '2016-04-14 08:04:20'),
(15, 5, '9991268756', '4.5', 99, 87, 98, 95, 96, 91, 'Menyunting teks cerita ulang, sesuai dengan struktur dan kaidah teks baik secara lisan maupun tulisan', '1', '2016-04-14 08:04:36'),
(17, 13, '9991268756', '4.1', 78, 80, 95, 78, 95, 60, 'Menganalisis teks pantun, baik melalui lisan maupun tulisan', '1', '2016-07-14 12:25:22'),
(18, 45, '0021463131', '80', 75, 75, 65, 78, 90, 80, 'bagus', '1', '2018-04-24 08:38:44'),
(19, 45, '0026354847', '80', 52, 62, 45, 56, 45, 56, 'bagus', '1', '2018-04-24 08:39:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_pengetahuan`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_pengetahuan` (
`id_nilai_pengetahuan` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `id_kompetensi_dasar` varchar(5) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_pengetahuan`
--

INSERT INTO `rb_nilai_pengetahuan` (`id_nilai_pengetahuan`, `kodejdwl`, `nisn`, `id_kompetensi_dasar`, `nilai1`, `nilai2`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', '5', 73, 80, '1', '2016-07-18 10:24:52'),
(2, 5, '9991268756', '7', 87, 95, '1', '2016-07-18 10:34:27'),
(4, 5, '9991268756', '8', 75, 82, '1', '2016-07-18 11:05:29'),
(5, 13, '9991268756', '9', 75, 68, '1', '2016-07-19 07:45:04'),
(6, 13, '9991268756', '10', 88, 82, '1', '2016-07-19 07:45:15'),
(7, 13, '9991268756', '11', 77, 75, '1', '2016-07-19 07:45:23'),
(8, 14, '9991268756', '12', 76, 77, '1', '2016-07-19 07:45:59'),
(9, 14, '9991268756', '13', 98, 78, '1', '2016-07-19 07:46:08'),
(10, 14, '9991268756', '14', 67, 89, '1', '2016-07-19 07:46:19'),
(11, 5, '0151379251', '5', 70, 83, '1', '2016-07-19 15:38:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_pengetahuan_semester`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_pengetahuan_semester` (
`id_nilai_pengetahuan_semester` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_pengetahuan_semester`
--

INSERT INTO `rb_nilai_pengetahuan_semester` (`id_nilai_pengetahuan_semester`, `kodejdwl`, `nisn`, `nilai1`, `nilai2`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', 85, 66, '1', '2016-07-18 10:24:52'),
(5, 13, '9991268756', 65, 59, '1', '2016-07-19 07:45:32'),
(4, 5, '0151379251', 83, 65, '1', '2016-07-18 11:57:08'),
(6, 14, '9991268756', 79, 60, '1', '2016-07-19 07:46:29'),
(7, 14, '0151379251', 67, 76, '1', '2016-07-19 09:32:52'),
(8, 46, '0021463131', 0, 0, '1', '2018-03-17 17:50:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_pertanyaan_essai`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_pertanyaan_essai` (
`id_nilai_pertanyaan_essai` int(5) NOT NULL,
  `id_quiz_ujian` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nilai_essai` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_pertanyaan_essai`
--

INSERT INTO `rb_nilai_pertanyaan_essai` (`id_nilai_pertanyaan_essai`, `id_quiz_ujian`, `nisn`, `nilai_essai`) VALUES
(1, 1, '0000261141', 80),
(2, 4, '0000240365', 80),
(4, 4, '9991268756', 75),
(5, 7, '9991268756', 70),
(6, 10, '0044770786', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_prestasi`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_prestasi` (
`id_nilai_prestasi` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `id_kls_pararel` int(30) NOT NULL,
  `jenis_kegiatan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_sikap`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_sikap` (
`id_nilai_sikap` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `positif` text NOT NULL,
  `negatif` text NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('spiritual','sosial') NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_sikap`
--

INSERT INTO `rb_nilai_sikap` (`id_nilai_sikap`, `kodejdwl`, `nisn`, `positif`, `negatif`, `deskripsi`, `status`, `user_akses`, `waktu`) VALUES
(1, 5, '9999152999', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-18 16:38:53'),
(2, 5, '9998218087', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-18 16:38:53'),
(3, 5, '9999152999', 'Nilai Sosial Posisitf,..', 'Nilai Sosial Negatif,..', 'Nilai Deskripsi Sosial,..', 'sosial', '1', '2016-04-18 16:39:53'),
(4, 5, '9998218087', 'Nilai Sosial Posisitf 2,..', 'Nilai Sosial Negatif 2,..', 'Nilai Deskripsi Sosial 2,..', 'sosial', '1', '2016-04-18 16:39:53'),
(5, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:12:48'),
(6, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:12:48'),
(7, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:05'),
(8, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:05'),
(9, 5, '9998218087', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:05'),
(10, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:34'),
(11, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:34'),
(12, 5, '9998218087', 'Isi dengan Nilai Positif,..', 'Isi dengan Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:34'),
(13, 5, '9999152999', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:34'),
(14, 5, '9991268756', 'Isi dengan Nilai Sosial Posisitf 2,..', 'Isi dengan Nilai Sosial Negatif 2,..', 'Isi dengan Nilai Deskripsi Sosial 2,..', 'sosial', '1', '2016-04-29 20:14:07'),
(15, 5, '9998218087', 'Nilai Sosial Posisitf 2,..', 'Nilai Sosial Negatif 2,..', '', 'sosial', '1', '2016-04-29 20:14:07'),
(16, 5, '9999152999', 'Nilai Sosial Posisitf,..', 'Nilai Sosial Negatif,..', 'Nilai Deskripsi Sosial,..', 'sosial', '1', '2016-04-29 20:14:07'),
(17, 45, '0021463131', 'asfdsdf', 'asdfasdf', 'asdf', 'spiritual', '1', '2018-04-24 08:46:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_sikap_indikator`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_sikap_indikator` (
  `kode_indikator` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_sikap_indikator`
--

INSERT INTO `rb_nilai_sikap_indikator` (`kode_indikator`, `keterangan`) VALUES
('T', 'Tinggi'),
('S', 'Sedang'),
('R', 'Rendah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_sikap_semester`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_sikap_semester` (
`id_nilai_sikap_semester` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `id_kls_pararel` int(30) NOT NULL,
  `spiritual_predikat` varchar(2) NOT NULL,
  `spiritual_deskripsi` text NOT NULL,
  `sosial_predikat` varchar(2) NOT NULL,
  `sosial_deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_sikap_semester`
--

INSERT INTO `rb_nilai_sikap_semester` (`id_nilai_sikap_semester`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `id_kls_pararel`, `spiritual_predikat`, `spiritual_deskripsi`, `sosial_predikat`, `sosial_deskripsi`, `user_akses`, `waktu_input`) VALUES
(4, 20181, '0021463131', 'IX', 24, 'B', 'baik', 'B', 'baik', '1', '2018-04-23 14:30:01'),
(5, 20181, '0026354847', 'IX', 24, 'C', 'harus di tingkatkan', 'C', 'harus di tingkatkan', '1', '2018-05-10 17:01:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_uts`
--

CREATE TABLE IF NOT EXISTS `rb_nilai_uts` (
`id_nilai_uts` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `angka_pengetahuan` float NOT NULL,
  `deskripsi_pengetahuan` text NOT NULL,
  `angka_keterampilan` float NOT NULL,
  `deskripsi_keterampilan` text NOT NULL,
  `waktu_input_uts` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_uts`
--

INSERT INTO `rb_nilai_uts` (`id_nilai_uts`, `kodejdwl`, `nisn`, `angka_pengetahuan`, `deskripsi_pengetahuan`, `angka_keterampilan`, `deskripsi_keterampilan`, `waktu_input_uts`) VALUES
(1, 5, '9991268756', 85, '', 90, '', '2016-04-15 17:54:05'),
(2, 5, '9998218087', 74, '', 83, '', '2016-04-15 17:54:05'),
(3, 13, '9999152999', 89, '', 90, '', '2016-04-21 18:52:57'),
(4, 14, '9999152999', 85, '', 79, '', '2016-04-21 18:53:14'),
(5, 46, '0021463131', 80, '', 80, '', '2018-04-16 08:54:14'),
(6, 46, '0024373964', 80, '', 80, '', '2018-04-16 08:54:14'),
(7, 46, '0026820765', 72, '', 50, '', '2018-04-16 09:04:11'),
(8, 46, '0028648269', 90, '', 0, '', '2018-04-16 09:05:53'),
(9, 46, '0028863419', 90, '', 0, '', '2018-04-16 09:05:53'),
(10, 46, '0030453398', 100, '', 0, '', '2018-04-16 09:07:31'),
(11, 47, '0041273814', 70, '', 0, '', '2018-05-11 10:59:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_peringkat`
--

CREATE TABLE IF NOT EXISTS `rb_peringkat` (
`id_peringkat` int(11) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `id_kls_pararel` int(30) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nilai_total` int(5) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=923 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_peringkat`
--

INSERT INTO `rb_peringkat` (`id_peringkat`, `nisn`, `kode_kelas`, `id_kls_pararel`, `id_tahun_akademik`, `nilai_total`, `rank`) VALUES
(479, '0026820765', 'IX ', 25, 20181, 0, 365),
(480, '0028648269', 'IX ', 25, 20181, 0, 366),
(481, '0028863419', 'IX ', 25, 20181, 0, 367),
(482, '0030453398', 'IX ', 25, 20181, 0, 368),
(483, '0030598421', 'IX ', 25, 20181, 0, 369),
(484, '0030898987', 'IX ', 25, 20181, 0, 370),
(485, '0031670580', 'IX ', 25, 20181, 0, 371),
(486, '0031858124', 'IX ', 25, 20181, 0, 372),
(487, '0032454870', 'IX ', 25, 20181, 0, 373),
(488, '0032682029', 'IX ', 25, 20181, 0, 374),
(489, '0032811169', 'IX ', 25, 20181, 0, 375),
(490, '0032947151', 'IX ', 25, 20181, 0, 376),
(491, '0033131180', 'IX ', 25, 20181, 0, 377),
(492, '0033256724', 'IX ', 25, 20181, 0, 378),
(493, '0033380168', 'IX ', 25, 20181, 0, 379),
(494, '0033913506', 'IX ', 25, 20181, 0, 380),
(495, '0034504492', 'IX ', 25, 20181, 0, 381),
(496, '0034672690', 'IX ', 25, 20181, 0, 382),
(497, '0037803548', 'IX ', 25, 20181, 0, 383),
(498, '0038097289', 'IX ', 25, 20181, 0, 384),
(499, '0038606879', 'IX ', 25, 20181, 0, 385),
(500, '0039319400', 'IX ', 25, 20181, 0, 386),
(501, '0039474256', 'IX ', 25, 20181, 0, 387),
(502, '0040033149', 'IX ', 25, 20181, 0, 388),
(503, '0040138022', 'IX ', 25, 20181, 0, 389),
(504, '0043697564', 'IX ', 25, 20181, 0, 390),
(505, '0026820765', 'IX ', 25, 20181, 0, 365),
(506, '0028648269', 'IX ', 25, 20181, 0, 366),
(507, '0028863419', 'IX ', 25, 20181, 0, 367),
(508, '0030453398', 'IX ', 25, 20181, 0, 368),
(509, '0030598421', 'IX ', 25, 20181, 0, 369),
(510, '0030898987', 'IX ', 25, 20181, 0, 370),
(511, '0031670580', 'IX ', 25, 20181, 0, 371),
(512, '0031858124', 'IX ', 25, 20181, 0, 372),
(513, '0032454870', 'IX ', 25, 20181, 0, 373),
(514, '0032682029', 'IX ', 25, 20181, 0, 374),
(515, '0032811169', 'IX ', 25, 20181, 0, 375),
(516, '0032947151', 'IX ', 25, 20181, 0, 376),
(517, '0033131180', 'IX ', 25, 20181, 0, 377),
(518, '0033256724', 'IX ', 25, 20181, 0, 378),
(519, '0033380168', 'IX ', 25, 20181, 0, 379),
(520, '0033913506', 'IX ', 25, 20181, 0, 380),
(521, '0034504492', 'IX ', 25, 20181, 0, 381),
(522, '0034672690', 'IX ', 25, 20181, 0, 382),
(523, '0037803548', 'IX ', 25, 20181, 0, 383),
(524, '0038097289', 'IX ', 25, 20181, 0, 384),
(525, '0038606879', 'IX ', 25, 20181, 0, 385),
(526, '0039319400', 'IX ', 25, 20181, 0, 386),
(527, '0039474256', 'IX ', 25, 20181, 0, 387),
(528, '0040033149', 'IX ', 25, 20181, 0, 388),
(529, '0040138022', 'IX ', 25, 20181, 0, 389),
(530, '0043697564', 'IX ', 25, 20181, 0, 390),
(531, '0026820765', 'IX ', 25, 20181, 0, 365),
(532, '0028648269', 'IX ', 25, 20181, 0, 366),
(533, '0028863419', 'IX ', 25, 20181, 0, 367),
(534, '0030453398', 'IX ', 25, 20181, 0, 368),
(535, '0030598421', 'IX ', 25, 20181, 0, 369),
(536, '0030898987', 'IX ', 25, 20181, 0, 370),
(537, '0031670580', 'IX ', 25, 20181, 0, 371),
(538, '0031858124', 'IX ', 25, 20181, 0, 372),
(539, '0032454870', 'IX ', 25, 20181, 0, 373),
(540, '0032682029', 'IX ', 25, 20181, 0, 374),
(541, '0032811169', 'IX ', 25, 20181, 0, 375),
(542, '0032947151', 'IX ', 25, 20181, 0, 376),
(543, '0033131180', 'IX ', 25, 20181, 0, 377),
(544, '0033256724', 'IX ', 25, 20181, 0, 378),
(545, '0033380168', 'IX ', 25, 20181, 0, 379),
(546, '0033913506', 'IX ', 25, 20181, 0, 380),
(547, '0034504492', 'IX ', 25, 20181, 0, 381),
(548, '0034672690', 'IX ', 25, 20181, 0, 382),
(549, '0037803548', 'IX ', 25, 20181, 0, 383),
(550, '0038097289', 'IX ', 25, 20181, 0, 384),
(551, '0038606879', 'IX ', 25, 20181, 0, 385),
(552, '0039319400', 'IX ', 25, 20181, 0, 386),
(553, '0039474256', 'IX ', 25, 20181, 0, 387),
(554, '0040033149', 'IX ', 25, 20181, 0, 388),
(555, '0040138022', 'IX ', 25, 20181, 0, 389),
(556, '0043697564', 'IX ', 25, 20181, 0, 390),
(557, '0026820765', 'IX ', 25, 20181, 0, 365),
(558, '0028648269', 'IX ', 25, 20181, 0, 366),
(559, '0028863419', 'IX ', 25, 20181, 0, 367),
(560, '0030453398', 'IX ', 25, 20181, 0, 368),
(561, '0030598421', 'IX ', 25, 20181, 0, 369),
(562, '0030898987', 'IX ', 25, 20181, 0, 370),
(563, '0031670580', 'IX ', 25, 20181, 0, 371),
(564, '0031858124', 'IX ', 25, 20181, 0, 372),
(565, '0032454870', 'IX ', 25, 20181, 0, 373),
(566, '0032682029', 'IX ', 25, 20181, 0, 374),
(567, '0032811169', 'IX ', 25, 20181, 0, 375),
(568, '0032947151', 'IX ', 25, 20181, 0, 376),
(569, '0033131180', 'IX ', 25, 20181, 0, 377),
(570, '0033256724', 'IX ', 25, 20181, 0, 378),
(571, '0033380168', 'IX ', 25, 20181, 0, 379),
(572, '0033913506', 'IX ', 25, 20181, 0, 380),
(573, '0034504492', 'IX ', 25, 20181, 0, 381),
(574, '0034672690', 'IX ', 25, 20181, 0, 382),
(575, '0037803548', 'IX ', 25, 20181, 0, 383),
(576, '0038097289', 'IX ', 25, 20181, 0, 384),
(577, '0038606879', 'IX ', 25, 20181, 0, 385),
(578, '0039319400', 'IX ', 25, 20181, 0, 386),
(579, '0039474256', 'IX ', 25, 20181, 0, 387),
(580, '0040033149', 'IX ', 25, 20181, 0, 388),
(581, '0040138022', 'IX ', 25, 20181, 0, 389),
(582, '0043697564', 'IX ', 25, 20181, 0, 390),
(583, '0021463131', 'IX ', 24, 20181, 0, 165),
(584, '0026354847', 'IX ', 24, 20181, 0, 166),
(585, '0027011180', 'IX ', 24, 20181, 0, 342),
(586, '0027155214', 'IX ', 24, 20181, 0, 343),
(587, '0027858802', 'IX ', 24, 20181, 0, 344),
(588, '0028860364', 'IX ', 24, 20181, 0, 345),
(589, '0030457526', 'IX ', 24, 20181, 0, 346),
(590, '0030458959', 'IX ', 24, 20181, 0, 347),
(591, '0031138508', 'IX ', 24, 20181, 0, 348),
(592, '0031673282', 'IX ', 24, 20181, 0, 349),
(593, '0031880373', 'IX ', 24, 20181, 0, 350),
(594, '0031956688', 'IX ', 24, 20181, 0, 351),
(595, '0032401165', 'IX ', 24, 20181, 0, 352),
(596, '0033050322', 'IX ', 24, 20181, 0, 353),
(597, '0033431380', 'IX ', 24, 20181, 0, 354),
(598, '0033431390', 'IX ', 24, 20181, 0, 355),
(599, '0033474911', 'IX ', 24, 20181, 0, 356),
(600, '0033638865', 'IX ', 24, 20181, 0, 357),
(601, '0033913578', 'IX ', 24, 20181, 0, 358),
(602, '0033999981', 'IX ', 24, 20181, 0, 359),
(603, '0035539855', 'IX ', 24, 20181, 0, 360),
(604, '0035624937', 'IX ', 24, 20181, 0, 361),
(605, '0036118655', 'IX ', 24, 20181, 0, 362),
(606, '0037083005', 'IX ', 24, 20181, 0, 363),
(607, '0037368228', 'IX ', 24, 20181, 0, 364),
(608, '0021463131', 'IX ', 24, 20181, 0, 165),
(609, '0026354847', 'IX ', 24, 20181, 0, 166),
(610, '0027011180', 'IX ', 24, 20181, 0, 342),
(611, '0027155214', 'IX ', 24, 20181, 0, 343),
(612, '0027858802', 'IX ', 24, 20181, 0, 344),
(613, '0028860364', 'IX ', 24, 20181, 0, 345),
(614, '0030457526', 'IX ', 24, 20181, 0, 346),
(615, '0030458959', 'IX ', 24, 20181, 0, 347),
(616, '0031138508', 'IX ', 24, 20181, 0, 348),
(617, '0031673282', 'IX ', 24, 20181, 0, 349),
(618, '0031880373', 'IX ', 24, 20181, 0, 350),
(619, '0031956688', 'IX ', 24, 20181, 0, 351),
(620, '0032401165', 'IX ', 24, 20181, 0, 352),
(621, '0033050322', 'IX ', 24, 20181, 0, 353),
(622, '0033431380', 'IX ', 24, 20181, 0, 354),
(623, '0033431390', 'IX ', 24, 20181, 0, 355),
(624, '0033474911', 'IX ', 24, 20181, 0, 356),
(625, '0033638865', 'IX ', 24, 20181, 0, 357),
(626, '0033913578', 'IX ', 24, 20181, 0, 358),
(627, '0033999981', 'IX ', 24, 20181, 0, 359),
(628, '0035539855', 'IX ', 24, 20181, 0, 360),
(629, '0035624937', 'IX ', 24, 20181, 0, 361),
(630, '0036118655', 'IX ', 24, 20181, 0, 362),
(631, '0037083005', 'IX ', 24, 20181, 0, 363),
(632, '0037368228', 'IX ', 24, 20181, 0, 364),
(633, '0021463131', 'IX ', 24, 20181, 0, 165),
(634, '0026354847', 'IX ', 24, 20181, 0, 166),
(635, '0027011180', 'IX ', 24, 20181, 0, 342),
(636, '0027155214', 'IX ', 24, 20181, 0, 343),
(637, '0027858802', 'IX ', 24, 20181, 0, 344),
(638, '0028860364', 'IX ', 24, 20181, 0, 345),
(639, '0030457526', 'IX ', 24, 20181, 0, 346),
(640, '0030458959', 'IX ', 24, 20181, 0, 347),
(641, '0031138508', 'IX ', 24, 20181, 0, 348),
(642, '0031673282', 'IX ', 24, 20181, 0, 349),
(643, '0031880373', 'IX ', 24, 20181, 0, 350),
(644, '0031956688', 'IX ', 24, 20181, 0, 351),
(645, '0032401165', 'IX ', 24, 20181, 0, 352),
(646, '0033050322', 'IX ', 24, 20181, 0, 353),
(647, '0033431380', 'IX ', 24, 20181, 0, 354),
(648, '0033431390', 'IX ', 24, 20181, 0, 355),
(649, '0033474911', 'IX ', 24, 20181, 0, 356),
(650, '0033638865', 'IX ', 24, 20181, 0, 357),
(651, '0033913578', 'IX ', 24, 20181, 0, 358),
(652, '0033999981', 'IX ', 24, 20181, 0, 359),
(653, '0035539855', 'IX ', 24, 20181, 0, 360),
(654, '0035624937', 'IX ', 24, 20181, 0, 361),
(655, '0036118655', 'IX ', 24, 20181, 0, 362),
(656, '0037083005', 'IX ', 24, 20181, 0, 363),
(657, '0037368228', 'IX ', 24, 20181, 0, 364),
(658, '0021463131', 'IX ', 24, 20181, 90, 165),
(659, '0026354847', 'IX ', 24, 20181, 62, 166),
(660, '0027011180', 'IX ', 24, 20181, 0, 342),
(661, '0027155214', 'IX ', 24, 20181, 0, 343),
(662, '0027858802', 'IX ', 24, 20181, 0, 344),
(663, '0028860364', 'IX ', 24, 20181, 0, 345),
(664, '0030457526', 'IX ', 24, 20181, 0, 346),
(665, '0030458959', 'IX ', 24, 20181, 0, 347),
(666, '0031138508', 'IX ', 24, 20181, 0, 348),
(667, '0031673282', 'IX ', 24, 20181, 0, 349),
(668, '0031880373', 'IX ', 24, 20181, 0, 350),
(669, '0031956688', 'IX ', 24, 20181, 0, 351),
(670, '0032401165', 'IX ', 24, 20181, 0, 352),
(671, '0033050322', 'IX ', 24, 20181, 0, 353),
(672, '0033431380', 'IX ', 24, 20181, 0, 354),
(673, '0033431390', 'IX ', 24, 20181, 0, 355),
(674, '0033474911', 'IX ', 24, 20181, 0, 356),
(675, '0033638865', 'IX ', 24, 20181, 0, 357),
(676, '0033913578', 'IX ', 24, 20181, 0, 358),
(677, '0033999981', 'IX ', 24, 20181, 0, 359),
(678, '0035539855', 'IX ', 24, 20181, 0, 360),
(679, '0035624937', 'IX ', 24, 20181, 0, 361),
(680, '0036118655', 'IX ', 24, 20181, 0, 362),
(681, '0037083005', 'IX ', 24, 20181, 0, 363),
(682, '0037368228', 'IX ', 24, 20181, 0, 364),
(683, '0021463131', 'IX ', 24, 20181, 90, 165),
(684, '0026354847', 'IX ', 24, 20181, 62, 166),
(685, '0027011180', 'IX ', 24, 20181, 0, 342),
(686, '0027155214', 'IX ', 24, 20181, 0, 343),
(687, '0027858802', 'IX ', 24, 20181, 0, 344),
(688, '0028860364', 'IX ', 24, 20181, 0, 345),
(689, '0030457526', 'IX ', 24, 20181, 0, 346),
(690, '0030458959', 'IX ', 24, 20181, 0, 347),
(691, '0031138508', 'IX ', 24, 20181, 0, 348),
(692, '0031673282', 'IX ', 24, 20181, 0, 349),
(693, '0031880373', 'IX ', 24, 20181, 0, 350),
(694, '0031956688', 'IX ', 24, 20181, 0, 351),
(695, '0032401165', 'IX ', 24, 20181, 0, 352),
(696, '0033050322', 'IX ', 24, 20181, 0, 353),
(697, '0033431380', 'IX ', 24, 20181, 0, 354),
(698, '0033431390', 'IX ', 24, 20181, 0, 355),
(699, '0033474911', 'IX ', 24, 20181, 0, 356),
(700, '0033638865', 'IX ', 24, 20181, 0, 357),
(701, '0033913578', 'IX ', 24, 20181, 0, 358),
(702, '0033999981', 'IX ', 24, 20181, 0, 359),
(703, '0035539855', 'IX ', 24, 20181, 0, 360),
(704, '0035624937', 'IX ', 24, 20181, 0, 361),
(705, '0036118655', 'IX ', 24, 20181, 0, 362),
(706, '0037083005', 'IX ', 24, 20181, 0, 363),
(707, '0037368228', 'IX ', 24, 20181, 0, 364),
(708, '0021463131', 'IX ', 24, 20181, 90, 165),
(709, '0026354847', 'IX ', 24, 20181, 62, 166),
(710, '0027011180', 'IX ', 24, 20181, 0, 342),
(711, '0027155214', 'IX ', 24, 20181, 0, 343),
(712, '0027858802', 'IX ', 24, 20181, 0, 344),
(713, '0028860364', 'IX ', 24, 20181, 0, 345),
(714, '0030457526', 'IX ', 24, 20181, 0, 346),
(715, '0030458959', 'IX ', 24, 20181, 0, 347),
(716, '0031138508', 'IX ', 24, 20181, 0, 348),
(717, '0031673282', 'IX ', 24, 20181, 0, 349),
(718, '0031880373', 'IX ', 24, 20181, 0, 350),
(719, '0031956688', 'IX ', 24, 20181, 0, 351),
(720, '0032401165', 'IX ', 24, 20181, 0, 352),
(721, '0033050322', 'IX ', 24, 20181, 0, 353),
(722, '0033431380', 'IX ', 24, 20181, 0, 354),
(723, '0033431390', 'IX ', 24, 20181, 0, 355),
(724, '0033474911', 'IX ', 24, 20181, 0, 356),
(725, '0033638865', 'IX ', 24, 20181, 0, 357),
(726, '0033913578', 'IX ', 24, 20181, 0, 358),
(727, '0033999981', 'IX ', 24, 20181, 0, 359),
(728, '0035539855', 'IX ', 24, 20181, 0, 360),
(729, '0035624937', 'IX ', 24, 20181, 0, 361),
(730, '0036118655', 'IX ', 24, 20181, 0, 362),
(731, '0037083005', 'IX ', 24, 20181, 0, 363),
(732, '0037368228', 'IX ', 24, 20181, 0, 364),
(733, '0021463131', 'IX ', 24, 20181, 90, 165),
(734, '0026354847', 'IX ', 24, 20181, 62, 166),
(735, '0027011180', 'IX ', 24, 20181, 0, 342),
(736, '0027155214', 'IX ', 24, 20181, 0, 343),
(737, '0027858802', 'IX ', 24, 20181, 0, 344),
(738, '0028860364', 'IX ', 24, 20181, 0, 345),
(739, '0030457526', 'IX ', 24, 20181, 0, 346),
(740, '0030458959', 'IX ', 24, 20181, 0, 347),
(741, '0031138508', 'IX ', 24, 20181, 0, 348),
(742, '0031673282', 'IX ', 24, 20181, 0, 349),
(743, '0031880373', 'IX ', 24, 20181, 0, 350),
(744, '0031956688', 'IX ', 24, 20181, 0, 351),
(745, '0032401165', 'IX ', 24, 20181, 0, 352),
(746, '0033050322', 'IX ', 24, 20181, 0, 353),
(747, '0033431380', 'IX ', 24, 20181, 0, 354),
(748, '0033431390', 'IX ', 24, 20181, 0, 355),
(749, '0033474911', 'IX ', 24, 20181, 0, 356),
(750, '0033638865', 'IX ', 24, 20181, 0, 357),
(751, '0033913578', 'IX ', 24, 20181, 0, 358),
(752, '0033999981', 'IX ', 24, 20181, 0, 359),
(753, '0035539855', 'IX ', 24, 20181, 0, 360),
(754, '0035624937', 'IX ', 24, 20181, 0, 361),
(755, '0036118655', 'IX ', 24, 20181, 0, 362),
(756, '0037083005', 'IX ', 24, 20181, 0, 363),
(757, '0037368228', 'IX ', 24, 20181, 0, 364),
(758, '0044916011', 'VII ', 36, 20181, 0, 312),
(759, '0045792089', 'VII ', 36, 20181, 0, 313),
(760, '0050659070', 'VII ', 36, 20181, 0, 314),
(761, '0050870313', 'VII ', 36, 20181, 0, 315),
(762, '0051859789', 'VII ', 36, 20181, 0, 316),
(763, '0052090012', 'VII ', 36, 20181, 0, 317),
(764, '0052118292', 'VII ', 36, 20181, 0, 318),
(765, '0052135208', 'VII ', 36, 20181, 0, 319),
(766, '0052290332', 'VII ', 36, 20181, 0, 320),
(767, '0052397501', 'VII ', 36, 20181, 0, 321),
(768, '0054310190', 'VII ', 36, 20181, 0, 322),
(769, '0054789538', 'VII ', 36, 20181, 0, 323),
(770, '0054932599', 'VII ', 36, 20181, 0, 324),
(771, '0055803799', 'VII ', 36, 20181, 0, 325),
(772, '0055997560', 'VII ', 36, 20181, 0, 326),
(773, '0056540305', 'VII ', 36, 20181, 0, 327),
(774, '0057171135', 'VII ', 36, 20181, 0, 328),
(775, '0057352920', 'VII ', 36, 20181, 0, 329),
(776, '0058198834', 'VII ', 36, 20181, 0, 330),
(777, '0062560586', 'VII ', 36, 20181, 0, 331),
(778, '0110121038', 'VII ', 36, 20181, 0, 332),
(779, '171807011', 'VII ', 36, 20181, 0, 333),
(780, '171807047', 'VII ', 36, 20181, 0, 334),
(781, '171807063', 'VII ', 36, 20181, 0, 335),
(782, '171807067', 'VII ', 36, 20181, 0, 336),
(783, '171807075', 'VII ', 36, 20181, 0, 337),
(784, '171807079', 'VII ', 36, 20181, 0, 338),
(785, '171807091', 'VII ', 36, 20181, 0, 339),
(786, '171807103', 'VII ', 36, 20181, 0, 340),
(787, '171807111', 'VII ', 36, 20181, 0, 341),
(788, '0044916011', 'VII ', 36, 20181, 0, 312),
(789, '0045792089', 'VII ', 36, 20181, 0, 313),
(790, '0050659070', 'VII ', 36, 20181, 0, 314),
(791, '0050870313', 'VII ', 36, 20181, 0, 315),
(792, '0051859789', 'VII ', 36, 20181, 0, 316),
(793, '0052090012', 'VII ', 36, 20181, 0, 317),
(794, '0052118292', 'VII ', 36, 20181, 0, 318),
(795, '0052135208', 'VII ', 36, 20181, 0, 319),
(796, '0052290332', 'VII ', 36, 20181, 0, 320),
(797, '0052397501', 'VII ', 36, 20181, 0, 321),
(798, '0054310190', 'VII ', 36, 20181, 0, 322),
(799, '0054789538', 'VII ', 36, 20181, 0, 323),
(800, '0054932599', 'VII ', 36, 20181, 0, 324),
(801, '0055803799', 'VII ', 36, 20181, 0, 325),
(802, '0055997560', 'VII ', 36, 20181, 0, 326),
(803, '0056540305', 'VII ', 36, 20181, 0, 327),
(804, '0057171135', 'VII ', 36, 20181, 0, 328),
(805, '0057352920', 'VII ', 36, 20181, 0, 329),
(806, '0058198834', 'VII ', 36, 20181, 0, 330),
(807, '0062560586', 'VII ', 36, 20181, 0, 331),
(808, '0110121038', 'VII ', 36, 20181, 0, 332),
(809, '171807011', 'VII ', 36, 20181, 0, 333),
(810, '171807047', 'VII ', 36, 20181, 0, 334),
(811, '171807063', 'VII ', 36, 20181, 0, 335),
(812, '171807067', 'VII ', 36, 20181, 0, 336),
(813, '171807075', 'VII ', 36, 20181, 0, 337),
(814, '171807079', 'VII ', 36, 20181, 0, 338),
(815, '171807091', 'VII ', 36, 20181, 0, 339),
(816, '171807103', 'VII ', 36, 20181, 0, 340),
(817, '171807111', 'VII ', 36, 20181, 0, 341),
(818, '0021463131', 'IX ', 24, 20181, 90, 165),
(819, '0026354847', 'IX ', 24, 20181, 62, 166),
(820, '0027011180', 'IX ', 24, 20181, 0, 342),
(821, '0027155214', 'IX ', 24, 20181, 0, 343),
(822, '0027858802', 'IX ', 24, 20181, 0, 344),
(823, '0028860364', 'IX ', 24, 20181, 0, 345),
(824, '0030457526', 'IX ', 24, 20181, 0, 346),
(825, '0030458959', 'IX ', 24, 20181, 0, 347),
(826, '0031138508', 'IX ', 24, 20181, 0, 348),
(827, '0031673282', 'IX ', 24, 20181, 0, 349),
(828, '0031880373', 'IX ', 24, 20181, 0, 350),
(829, '0031956688', 'IX ', 24, 20181, 0, 351),
(830, '0032401165', 'IX ', 24, 20181, 0, 352),
(831, '0033050322', 'IX ', 24, 20181, 0, 353),
(832, '0033431380', 'IX ', 24, 20181, 0, 354),
(833, '0033431390', 'IX ', 24, 20181, 0, 355),
(834, '0033474911', 'IX ', 24, 20181, 0, 356),
(835, '0033638865', 'IX ', 24, 20181, 0, 357),
(836, '0033913578', 'IX ', 24, 20181, 0, 358),
(837, '0033999981', 'IX ', 24, 20181, 0, 359),
(838, '0035539855', 'IX ', 24, 20181, 0, 360),
(839, '0035624937', 'IX ', 24, 20181, 0, 361),
(840, '0036118655', 'IX ', 24, 20181, 0, 362),
(841, '0037083005', 'IX ', 24, 20181, 0, 363),
(842, '0037368228', 'IX ', 24, 20181, 0, 364),
(843, '0026820765', 'IX ', 25, 20181, 0, 365),
(844, '0028648269', 'IX ', 25, 20181, 0, 366),
(845, '0028863419', 'IX ', 25, 20181, 0, 367),
(846, '0030453398', 'IX ', 25, 20181, 0, 368),
(847, '0030598421', 'IX ', 25, 20181, 0, 369),
(848, '0030898987', 'IX ', 25, 20181, 0, 370),
(849, '0031670580', 'IX ', 25, 20181, 0, 371),
(850, '0031858124', 'IX ', 25, 20181, 0, 372),
(851, '0032454870', 'IX ', 25, 20181, 0, 373),
(852, '0032682029', 'IX ', 25, 20181, 0, 374),
(853, '0032811169', 'IX ', 25, 20181, 0, 375),
(854, '0032947151', 'IX ', 25, 20181, 0, 376),
(855, '0033131180', 'IX ', 25, 20181, 0, 377),
(856, '0033256724', 'IX ', 25, 20181, 0, 378),
(857, '0033380168', 'IX ', 25, 20181, 0, 379),
(858, '0033913506', 'IX ', 25, 20181, 0, 380),
(859, '0034504492', 'IX ', 25, 20181, 0, 381),
(860, '0034672690', 'IX ', 25, 20181, 0, 382),
(861, '0037803548', 'IX ', 25, 20181, 0, 383),
(862, '0038097289', 'IX ', 25, 20181, 0, 384),
(863, '0038606879', 'IX ', 25, 20181, 0, 385),
(864, '0039319400', 'IX ', 25, 20181, 0, 386),
(865, '0039474256', 'IX ', 25, 20181, 0, 387),
(866, '0040033149', 'IX ', 25, 20181, 0, 388),
(867, '0040138022', 'IX ', 25, 20181, 0, 389),
(868, '0043697564', 'IX ', 25, 20181, 0, 390),
(869, '0041273814', 'VII ', 34, 20181, 0, 391),
(870, '0044072375', 'VII ', 34, 20181, 0, 392),
(871, '0044770786', 'VII ', 34, 20181, 0, 393),
(872, '0045011851', 'VII ', 34, 20181, 0, 394),
(873, '0046658278', 'VII ', 34, 20181, 0, 395),
(874, '0049199786', 'VII ', 34, 20181, 0, 396),
(875, '0050796585', 'VII ', 34, 20181, 0, 397),
(876, '0050932531', 'VII ', 34, 20181, 0, 398),
(877, '0051347863', 'VII ', 34, 20181, 0, 399),
(878, '0051656284', 'VII ', 34, 20181, 0, 400),
(879, '0051844883', 'VII ', 34, 20181, 0, 401),
(880, '0052127482', 'VII ', 34, 20181, 0, 402),
(881, '0052293286', 'VII ', 34, 20181, 0, 403),
(882, '0052678277', 'VII ', 34, 20181, 0, 404),
(883, '0053172806', 'VII ', 34, 20181, 0, 405),
(884, '0053535978', 'VII ', 34, 20181, 0, 406),
(885, '0054042425', 'VII ', 34, 20181, 0, 407),
(886, '0055252132', 'VII ', 34, 20181, 0, 408),
(887, '0056050271', 'VII ', 34, 20181, 0, 409),
(888, '0056244132', 'VII ', 34, 20181, 0, 410),
(889, '0057547312', 'VII ', 34, 20181, 0, 411),
(890, '0058558252', 'VII ', 34, 20181, 0, 412),
(891, '0058691970', 'VII ', 34, 20181, 0, 413),
(892, '0059588027', 'VII ', 34, 20181, 0, 414),
(893, '171807029', 'VII ', 34, 20181, 0, 415),
(894, '171807073', 'VII ', 34, 20181, 0, 416),
(895, '171807081', 'VII ', 34, 20181, 0, 417),
(896, '171807093', 'VII ', 34, 20181, 0, 418),
(897, '171807109', 'VII ', 34, 20181, 0, 419),
(898, '0021463131', 'IX ', 24, 20172, 90, 167),
(899, '0026354847', 'IX ', 24, 20172, 62, 168),
(900, '0027011180', 'IX ', 24, 20172, 0, 422),
(901, '0027155214', 'IX ', 24, 20172, 0, 423),
(902, '0027858802', 'IX ', 24, 20172, 0, 424),
(903, '0028860364', 'IX ', 24, 20172, 0, 425),
(904, '0030457526', 'IX ', 24, 20172, 0, 426),
(905, '0030458959', 'IX ', 24, 20172, 0, 427),
(906, '0031138508', 'IX ', 24, 20172, 0, 428),
(907, '0031673282', 'IX ', 24, 20172, 0, 429),
(908, '0031880373', 'IX ', 24, 20172, 0, 430),
(909, '0031956688', 'IX ', 24, 20172, 0, 431),
(910, '0032401165', 'IX ', 24, 20172, 0, 432),
(911, '0033050322', 'IX ', 24, 20172, 0, 433),
(912, '0033431380', 'IX ', 24, 20172, 0, 434),
(913, '0033431390', 'IX ', 24, 20172, 0, 435),
(914, '0033474911', 'IX ', 24, 20172, 0, 436),
(915, '0033638865', 'IX ', 24, 20172, 0, 437),
(916, '0033913578', 'IX ', 24, 20172, 0, 438),
(917, '0033999981', 'IX ', 24, 20172, 0, 439),
(918, '0035539855', 'IX ', 24, 20172, 0, 440),
(919, '0035624937', 'IX ', 24, 20172, 0, 441),
(920, '0036118655', 'IX ', 24, 20172, 0, 442),
(921, '0037083005', 'IX ', 24, 20172, 0, 443),
(922, '0037368228', 'IX ', 24, 20172, 0, 444);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_essai`
--

CREATE TABLE IF NOT EXISTS `rb_pertanyaan_essai` (
`id_pertanyaan_essai` int(11) NOT NULL,
  `id_quiz_ujian` int(11) NOT NULL,
  `id_bank_pertanyaan_essai` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_essai`
--

INSERT INTO `rb_pertanyaan_essai` (`id_pertanyaan_essai`, `id_quiz_ujian`, `id_bank_pertanyaan_essai`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 5),
(6, 2, 6),
(11, 5, 11),
(36, 4, 10),
(35, 4, 9),
(37, 8, 22),
(38, 11, 24),
(39, 10, 26),
(40, 9, 27),
(41, 13, 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_objektif`
--

CREATE TABLE IF NOT EXISTS `rb_pertanyaan_objektif` (
`id_pertanyaan_objektif` int(11) NOT NULL,
  `id_quiz_ujian` int(11) NOT NULL,
  `id_bank_pertanyaan_objektif` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_objektif`
--

INSERT INTO `rb_pertanyaan_objektif` (`id_pertanyaan_objektif`, `id_quiz_ujian`, `id_bank_pertanyaan_objektif`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 1, 5),
(17, 4, 8),
(16, 4, 6),
(18, 10, 16),
(19, 9, 18),
(20, 13, 18),
(21, 14, 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_penilaian`
--

CREATE TABLE IF NOT EXISTS `rb_pertanyaan_penilaian` (
`id_pertanyaan_penilaian` int(5) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `status` enum('diri','teman') NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_penilaian`
--

INSERT INTO `rb_pertanyaan_penilaian` (`id_pertanyaan_penilaian`, `pertanyaan`, `status`, `waktu_input`) VALUES
(1, 'Bagaimana kenyamanan anda di sekolah ini pada |namamatapelajaran| ?', 'diri', '2016-07-03 04:17:29'),
(2, 'Bagaimana kenyamanan anda tehadap teman di sekolah inii ?', 'diri', '2016-07-03 08:12:17'),
(4, 'Apa perbuatan jahat yang pernah teman anda ini lakukan ?', 'teman', '2016-07-08 05:08:10'),
(5, 'Apakah dia teman yang baik?', 'teman', '2016-07-08 08:12:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_penilaian_jawab`
--

CREATE TABLE IF NOT EXISTS `rb_pertanyaan_penilaian_jawab` (
`id_pertanyaan_penilaian_jawab` int(10) NOT NULL,
  `id_pertanyaan_penilaian` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nisn_teman` varchar(20) NOT NULL,
  `jawaban` text NOT NULL,
  `status` enum('diri','teman') NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `waktu_jawab` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_penilaian_jawab`
--

INSERT INTO `rb_pertanyaan_penilaian_jawab` (`id_pertanyaan_penilaian_jawab`, `id_pertanyaan_penilaian`, `nisn`, `nisn_teman`, `jawaban`, `status`, `kode_kelas`, `waktu_jawab`) VALUES
(23, 2, '9991268756', '', 'jjjj', 'diri', 'X.MIPA.1', '2016-07-08 15:57:55'),
(12, 4, '9991268756', '0151379251', 'fff', 'teman', 'X.MIPA.1', '2016-07-08 15:21:34'),
(11, 5, '9991268756', '0151379251', 'eee', 'teman', 'X.MIPA.1', '2016-07-08 15:21:34'),
(15, 5, '9991268756', '0004107204', 'aaaa', 'teman', 'X.MIPA.1', '2016-07-08 15:23:05'),
(16, 4, '9991268756', '0004107204', 'bbbb', 'teman', 'X.MIPA.1', '2016-07-08 15:23:05'),
(17, 5, '9991268756', '9998218087', 'ttt', 'teman', 'X.MIPA.1', '2016-07-08 15:23:34'),
(18, 4, '9991268756', '9998218087', 'yyy', 'teman', 'X.MIPA.1', '2016-07-08 15:23:34'),
(24, 1, '9991268756', '', 'kkkk', 'diri', 'X.MIPA.1', '2016-07-08 15:57:55'),
(25, 5, '9991268756', '0007105659', 'hhh', 'teman', 'X.MIPA.1', '2016-07-08 15:58:39'),
(26, 4, '9991268756', '0007105659', 'nnn', 'teman', 'X.MIPA.1', '2016-07-08 15:58:39'),
(27, 2, '0051656284', '', 'sangat nyaman', 'diri', 'VII', '2018-04-12 12:40:32'),
(28, 1, '0051656284', '', 'sangat nyaman', 'diri', 'VII', '2018-04-12 12:40:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_predikat`
--

CREATE TABLE IF NOT EXISTS `rb_predikat` (
`id_predikat` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `nilai_a` int(3) NOT NULL,
  `nilai_b` int(3) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_predikat`
--

INSERT INTO `rb_predikat` (`id_predikat`, `kode_kelas`, `nilai_a`, `nilai_b`, `grade`, `keterangan`) VALUES
(1, '0', 86, 100, 'A', 'Sangat Baik'),
(2, '0', 79, 85, 'B', 'Baik'),
(3, '0', 77, 78, 'C', 'Cukup'),
(4, '0', 0, 77, 'D', 'Kurang'),
(7, 'IX', 85, 100, 'A', 'Sangat Baik'),
(8, 'IX', 70, 84, 'B', 'Baik'),
(9, 'IX', 50, 69, 'C', 'Cukup'),
(10, 'IX', 0, 49, 'D', 'Kurang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_aktivasi`
--

CREATE TABLE IF NOT EXISTS `rb_psb_aktivasi` (
`id_aktivasi` int(10) NOT NULL,
  `kode_pendaftaran` varchar(50) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `status` enum('sma','smk','smp') NOT NULL,
  `proses` int(2) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_aktivasi`
--

INSERT INTO `rb_psb_aktivasi` (`id_aktivasi`, `kode_pendaftaran`, `nama_lengkap`, `status`, `proses`, `waktu_input`) VALUES
(5, 'SMA-20180418101257', 'administrator', 'sma', 0, '2018-04-18 10:12:57'),
(3, 'SMA-20160701085111', 'Tommy Utama', 'sma', 1, '2016-07-01 03:13:12'),
(4, 'SMP-20160701094107', 'Willy Fernando', 'smp', 0, '2016-07-01 09:27:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_pendaftaran`
--

CREATE TABLE IF NOT EXISTS `rb_psb_pendaftaran` (
`id_pendaftaran` int(10) NOT NULL,
  `kode_pendaftaran` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_panggilan` varchar(120) NOT NULL,
  `no_induk` varchar(50) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_agama` int(5) NOT NULL,
  `anak_ke` varchar(10) NOT NULL,
  `jumlah_saudara` varchar(10) NOT NULL,
  `status_dalam_keluarga` varchar(100) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `berat_badan` int(5) NOT NULL,
  `tinggi_badan` int(5) NOT NULL,
  `golongan_darah` varchar(5) NOT NULL,
  `penyakit_pernah_diderita` varchar(255) NOT NULL,
  `diterima_dikelas` varchar(50) NOT NULL,
  `diterima_tanggal` date NOT NULL,
  `sekolah_asal` varchar(255) NOT NULL,
  `alamat_sekolah_asal` text NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tempat_lahir_ayah` text NOT NULL,
  `tanggal_lahir_ayah` date NOT NULL,
  `agama_ayah` int(5) NOT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `alamat_rumah_ayah` text NOT NULL,
  `telpon_rumah_ayah` varchar(15) NOT NULL,
  `alamat_kantor_ayah` text NOT NULL,
  `telpon_kantor_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tempat_lahir_ibu` text NOT NULL,
  `tanggal_lahir_ibu` date NOT NULL,
  `agama_ibu` int(5) NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `alamat_rumah_ibu` text NOT NULL,
  `telpon_rumah_ibu` varchar(15) NOT NULL,
  `alamat_kantor_ibu` text NOT NULL,
  `telpon_kantor_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `alamat_wali` text NOT NULL,
  `no_telpon_wali` varchar(15) NOT NULL,
  `status` enum('sma','smk','smp') NOT NULL,
  `waktu_daftar` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_pendaftaran`
--

INSERT INTO `rb_psb_pendaftaran` (`id_pendaftaran`, `kode_pendaftaran`, `nama`, `nama_panggilan`, `no_induk`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `id_agama`, `anak_ke`, `jumlah_saudara`, `status_dalam_keluarga`, `alamat_siswa`, `no_telpon`, `berat_badan`, `tinggi_badan`, `golongan_darah`, `penyakit_pernah_diderita`, `diterima_dikelas`, `diterima_tanggal`, `sekolah_asal`, `alamat_sekolah_asal`, `nama_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `agama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `alamat_rumah_ayah`, `telpon_rumah_ayah`, `alamat_kantor_ayah`, `telpon_kantor_ayah`, `nama_ibu`, `tempat_lahir_ibu`, `tanggal_lahir_ibu`, `agama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `alamat_rumah_ibu`, `telpon_rumah_ibu`, `alamat_kantor_ibu`, `telpon_kantor_ibu`, `nama_wali`, `alamat_wali`, `no_telpon_wali`, `status`, `waktu_daftar`) VALUES
(1, 'SMA-20160701085110', 'Robby Prihandaya', 'Robby', '5675345', 1, 'Padang', '1989-06-05', 1, '3', '5', 'Anak Kandung', 'Jl. Angkasa Puri, Perundam 4, Blok C No 2', '081267771344', 75, 170, 'O', 'Tdak Pernah', '1', '2016-06-22', 'SMP N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Nafnizon (Alm)', 'Payakumbuh', '1975-04-12', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0752461692', 'Muro Paiti, Kapur IX', '0752786512', 'Yeni Ermawaty', 'Padang', '1974-01-18', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0752461692', '-', '0', 'Tommy Utama', 'Jl.Ulak Karang Padang', '081266881226', 'sma', '2016-06-22 12:11:45'),
(3, 'SMK-20160701085110', 'Dewiit Safitri', 'Dewi', '5674322', 1, 'Gumarang', '1989-02-12', 1, '3', '5', 'Anak Kandung', 'Jl. Linggar Jati, Padang', '082173054501', 60, 170, 'AB', 'Tdak Pernah', '1', '2016-06-22', 'SMP N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Sukarni', 'Gumarang', '1976-12-01', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0753456790', 'Muro Paiti, Kapur IX', '0753445566', 'Mama Dewi', 'Gumarang', '1973-11-11', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0753456790', '-', '0', 'Adeil Putra', 'Jl.Ulak Karang, Padang', '082190871234', 'smk', '2016-06-22 15:04:57'),
(5, 'SMA-20160701085111', 'Tommy Utama', 'Tommy', '5674327', 1, 'Padang', '1985-08-18', 1, '1', '5', 'Anak Kandung', 'Jl. Simpang DPR, Padang', '081266881226', 70, 160, 'AB', 'Tdak Pernah', '1', '2016-07-01', 'SMA N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Sunandar', 'Payakumbuh', '0004-12-05', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0752461645', 'Muro Paiti, Kapur IX', '0752897855', 'Yunimar', 'Padang', '0000-00-00', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0752461645', '-', '0', 'Willy Fernando', 'Jl.Ulak Karang, Padang', '082167771233', 'sma', '2016-07-01 11:19:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_pendaftaran_saudara`
--

CREATE TABLE IF NOT EXISTS `rb_psb_pendaftaran_saudara` (
`id_saudara` int(10) NOT NULL,
  `id_pendaftaran` int(10) NOT NULL,
  `nama_saudara` varchar(150) NOT NULL,
  `umur_saudara` int(5) NOT NULL,
  `pendidikan_saudara` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_pendaftaran_saudara`
--

INSERT INTO `rb_psb_pendaftaran_saudara` (`id_saudara`, `id_pendaftaran`, `nama_saudara`, `umur_saudara`, `pendidikan_saudara`) VALUES
(1, 1, 'Willy Fernando', 29, 'S1'),
(2, 1, 'Randy Komara', 25, 'SMA'),
(3, 1, 'Laura Hikmah Izzatin', 18, 'SMA'),
(4, 3, 'Lira Virna', 15, 'SMP'),
(5, 3, 'Airin Stewano', 13, 'SD'),
(10, 5, 'Randy Komara', 25, 'SMA'),
(9, 5, 'Willy Fernando', 28, 'S1'),
(11, 5, 'Laura Hikmah Izzatin', 19, 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_query_materi`
--

CREATE TABLE IF NOT EXISTS `rb_query_materi` (
`kode_kelas` int(20) NOT NULL,
  `kode_mapel` int(20) NOT NULL,
  `kode_kurikulum` int(20) NOT NULL,
  `id_materi` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_cbt`
--

CREATE TABLE IF NOT EXISTS `rb_quiz_cbt` (
`id_cbt` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `kode_kelas` varchar(20) NOT NULL,
  `kode_pelajaran` varchar(20) NOT NULL,
  `judul_cbt` varchar(255) NOT NULL,
  `kkm` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_cbt`
--

INSERT INTO `rb_quiz_cbt` (`id_cbt`, `id_jenis`, `kode_kelas`, `kode_pelajaran`, `judul_cbt`, `kkm`, `durasi`, `user`, `waktu`) VALUES
(1, 4, 'VII', 'MP0702', 'Tugas Siswa Harian Matematika', 75, 50, '1', '2018-05-01 19:06:24'),
(2, 3, 'VII', 'MP0702', 'Try Out Mingguan Matematika', 75, 45, '1', '2018-05-01 19:11:39'),
(3, 4, 'VII', 'MP0702', 'Tugas Siswa Harian Matematika 2', 75, 90, '1', '2018-05-02 00:30:38'),
(4, 3, 'IX', 'MP0903', 'Tidak ada judul', 75, 20, '1', '2018-05-05 06:26:28'),
(5, 3, 'VII', 'MP0705', 'Bio9', 75, 90, '1', '2018-05-05 08:08:51'),
(6, 4, 'IX', 'MP0902', 'matematika cbt', 75, 20, '1', '2018-05-17 10:19:01'),
(7, 1, 'VII', 'MP073', 'test', 75, 20, '1', '2018-05-21 11:27:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_cbt_soal`
--

CREATE TABLE IF NOT EXISTS `rb_quiz_cbt_soal` (
`id_cbt_soal` int(11) NOT NULL,
  `id_cbt` int(11) NOT NULL,
  `id_bank_pertanyaan_objektif` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_cbt_soal`
--

INSERT INTO `rb_quiz_cbt_soal` (`id_cbt_soal`, `id_cbt`, `id_bank_pertanyaan_objektif`, `waktu`, `user`) VALUES
(1, 1, 1, '2018-05-01 19:08:27', '1'),
(2, 1, 2, '2018-05-01 19:08:27', '1'),
(3, 1, 3, '2018-05-01 19:08:27', '1'),
(4, 1, 25, '2018-05-01 19:08:39', '1'),
(5, 2, 5, '2018-05-01 19:11:52', '1'),
(6, 2, 27, '2018-05-01 19:11:52', '1'),
(7, 2, 1, '2018-05-01 19:12:12', '1'),
(8, 2, 2, '2018-05-01 19:12:12', '1'),
(9, 3, 1, '2018-05-02 00:30:52', '1'),
(10, 3, 2, '2018-05-02 00:30:52', '1'),
(11, 3, 3, '2018-05-02 00:30:52', '1'),
(12, 3, 5, '2018-05-02 00:30:52', '1'),
(13, 3, 27, '2018-05-02 00:30:52', '1'),
(14, 1, 1, '2018-05-11 10:47:17', '1'),
(15, 6, 39, '2018-05-17 10:19:13', '1'),
(16, 6, 42, '2018-05-17 10:19:13', '1'),
(17, 6, 32, '2018-05-17 10:19:21', '1'),
(18, 6, 38, '2018-05-17 10:19:21', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_jadwal`
--

CREATE TABLE IF NOT EXISTS `rb_quiz_jadwal` (
`id_jadwal` int(11) NOT NULL,
  `id_cbt` int(11) NOT NULL,
  `id_kls_pararel` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `tgl_akhir` date NOT NULL,
  `jam_akhir` time NOT NULL,
  `waktu` datetime NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_jadwal`
--

INSERT INTO `rb_quiz_jadwal` (`id_jadwal`, `id_cbt`, `id_kls_pararel`, `id_tahun_akademik`, `tgl_mulai`, `jam_mulai`, `tgl_akhir`, `jam_akhir`, `waktu`, `user`) VALUES
(1, 1, 34, 20181, '2018-05-01', '08:00:00', '2018-05-01', '10:00:00', '2018-05-01 19:10:52', '1'),
(2, 2, 34, 20181, '2018-05-02', '08:00:00', '0000-00-00', '00:00:00', '2018-05-01 19:13:16', '1'),
(3, 1, 35, 20181, '2018-05-02', '08:00:00', '2018-05-02', '10:00:00', '2018-05-01 22:11:34', '1'),
(4, 3, 34, 20181, '2018-05-03', '10:00:00', '2018-05-03', '12:00:00', '2018-05-02 00:31:28', '1'),
(5, 1, 34, 20181, '2018-05-11', '10:47:38', '2018-05-11', '10:50:38', '2018-05-11 10:48:25', '1'),
(6, 6, 24, 20181, '2018-05-17', '10:19:36', '2018-05-17', '10:40:36', '2018-05-17 10:19:59', '1'),
(7, 1, 36, 20181, '2018-05-29', '14:07:45', '2018-05-29', '16:07:45', '2018-05-29 14:08:12', '195801181985121001'),
(8, 7, 0, 0, '2018-07-31', '11:33:52', '0000-00-00', '00:00:00', '2018-07-31 11:34:10', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_jawab`
--

CREATE TABLE IF NOT EXISTS `rb_quiz_jawab` (
`id_jawab` int(11) NOT NULL,
  `id_cbt_soal` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `jawaban` text NOT NULL,
  `waktu_jawab` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_jenis`
--

CREATE TABLE IF NOT EXISTS `rb_quiz_jenis` (
`id_jenis` int(11) NOT NULL,
  `jenis_cbt` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `jadwal` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_jenis`
--

INSERT INTO `rb_quiz_jenis` (`id_jenis`, `jenis_cbt`, `keterangan`, `jadwal`) VALUES
(1, 'Penilaian Tengah Semester', 'uts', 'Y'),
(2, 'Penilaian Akhir semester', 'uas', 'Y'),
(3, 'Try Out', 'to', 'Y'),
(4, 'Tugas Siswa', 'ts', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_materi`
--

CREATE TABLE IF NOT EXISTS `rb_quiz_materi` (
`id_materi` int(11) NOT NULL,
  `id_materi_kategori` int(11) NOT NULL,
  `materi_pokok` varchar(255) NOT NULL,
  `materi_content` text NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_materi`
--

INSERT INTO `rb_quiz_materi` (`id_materi`, `id_materi_kategori`, `materi_pokok`, `materi_content`, `user`) VALUES
(1, 2, 'Pengertian dan cara menulis Persamaan Kuadrat Matematika', '<p><img alt="" src="/kcfinder/upload/files/Desert.jpg" style="height:450px; width:600px" /></p>\r\n\r\n<p>Sejarah (bahasa Yunani Orpia, historia berarti penyelidikan, pengetahuan yang diperoleh melalui penelitian) adalah studi tentang masa lalu, khususnya bagaimana kaitannya dengan manusia. Berdasarkan Kamus Besar Bahasa Indonesia (KBBI), sejarah adalah teks yang memaparkan asal-usul (keturunan) silsilah; kejadian dan peristiwa yang benar-benar terjadi pada masa lampau; pengetahuan atau uraian tentang peristiwa dan kejadian yang benar-benar terjadi pada masa lampau. Sumber lain mengatakan bahwa sejarah merupakan peristiwa yang terjadi pada masa lampau. Sejarah dalam konteks pelajaran ini adalah sejarah yang membicarakan manusia dari segi waktu, seperti perkembangan masyarakat dari satu bentuk ke bentuk lainnya, kesinambungan yang terjadi pada masa lampau, dan perubahan yang terjadi dalam masyarakat itu sendiri.</p>\r\n\r\n<p><iframe frameborder="0" height="480" src="https://www.youtube.com/embed/siw46NcudFA" width="854"></iframe></p>\r\n\r\n<p>Silahkan Download dan lihat filenya disini :<br />\r\n&nbsp;&nbsp;<a href="/kcfinder/upload/files/IOT%20J65_ErmaSusanti.pdf">Download File</a>&nbsp;- <a href="/kcfinder/upload/files/IOT%20J65_ErmaSusanti.pdf">Baca File</a></p>\r\n\r\n<p>Klik disini untuk&nbsp;</p>\r\n\r\n<p>Sejarah dapat kita pelajari dengan melihat catatan dan rekaman sejarah dari berbagai sumber. Pencatatan peristiwa yang terjadi pada masa lampau tersebut termasuk bentuk teks cerita ulang atau yang sering dikenal dengan teks rekon (recount). Berdasarkan teks tersebut, pengalaman nyata di masa lampau dapat dibangkitkan atau dihidupkan kembali.</p>\r\n\r\n<p><strong>Teks cerita sejarah</strong>&nbsp;adalah teks yang berisi tentang fakta atau peristiwa yang terjadi di masa lampau, yang biasanya berisi tentang asal muasal atau latarbelakang sesuatu yang memiliki nilai kesejarahan.</p>\r\n\r\n<p>Cara menyusun peristiwa sejarah sebagai teks cerita ulang sebagai berikut:<br />\r\n1. Mencari tahu informasi sejarah<br />\r\n2. Mengumpulkan data yang tepat, akurat, dan autentik tentang peristiwa tersebut dari berbagai sumber, baik<br />\r\n&nbsp; &nbsp; lisan maupun tertulis<br />\r\n3. Pelajari secara cermat sumber informasi<br />\r\n4. Bandingkan satu sama lain<br />\r\n5. Interpretasikan<br />\r\n6. Rekonstruksi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1'),
(2, 2, 'Struktur dan nilai-nilai Persamaan Kuadrat dalam Ilmu Matematika', '', '1'),
(3, 1, 'Bentuk Umum, mencari akar-akar dan diskriminan', '', '1'),
(4, 1, 'Operasi akar-akar persamaan kuadrat', '', '1'),
(6, 4, 'test bahasa', '<p>fsadfsdfaf</p>\r\n\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowFullScreen" value="true" /><param name="quality" value="high" /><param name="movie" value="Https://youtube.Com" /><embed pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="Https://youtube.Com" type="application/x-shockwave-flash"></embed></object><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowFullScreen" value="true" /><param name="quality" value="high" /><param name="movie" value="Https://youtube.Com" /><embed pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="Https://youtube.Com" type="application/x-shockwave-flash"></embed></object></p>\r\n\r\n<p><object align="middle" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" height="500" width="500"><param name="scale" value="noborder" /><param name="allowFullScreen" value="true" /><param name="quality" value="autohigh" /><param name="movie" value="/cirlce/kcfinder/upload/files/ahsani.mp4" /><embed allowfullscreen="true" height="500" pluginspage="http://www.macromedia.com/go/getflashplayer" quality="autohigh" scale="noborder" src="/cirlce/kcfinder/upload/files/ahsani.mp4" type="application/x-shockwave-flash" width="500"></embed></object></p>\r\n\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" height="500" width="1000"><param name="allowFullScreen" value="true" /><param name="quality" value="high" /><param name="movie" value="/cirlce/kcfinder/upload/files/MUFLAND-%20Tanya%20Jawab%20Bersama%20Ustadz%20-%20Ustadz%20Badru%20Salam%2C%20Lc%20%26%20Ustadz%20Abu%20Usamah%2C%20Lc.mp4" /><embed allowfullscreen="true" height="500" pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="/cirlce/kcfinder/upload/files/MUFLAND-%20Tanya%20Jawab%20Bersama%20Ustadz%20-%20Ustadz%20Badru%20Salam%2C%20Lc%20%26%20Ustadz%20Abu%20Usamah%2C%20Lc.mp4" type="application/x-shockwave-flash" width="1000"></embed></object></p>\r\n\r\n<p>&nbsp;</p>\r\n', '1'),
(7, 6, 'Introduction TIK', '<h3>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ÙØªÙˆÙ‰ Ù…ØªØ±Ø¬Ù…Ø© Ø¥Ù„Ù‰ Ø§Ù„Ù„ØºØ© Ø§Ù„ØµÙŠÙ†ÙŠØ©ØŒ Ø¹Ø¨Ø§Ø±Ø© Ø¹Ù† Ø³Ø¤Ø§Ù„ Ø£Ø¬Ø§Ø¨ Ø¹Ù†Ù‡ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø¹Ù„Ù…ÙŠ Ø¨Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø¥Ø³Ù„Ø§Ù… Ø³Ø¤Ø§Ù„ ÙˆØ¬ÙˆØ§Ø¨ØŒ ÙˆÙ†ØµÙ‡ : &quot;Ù‡Ù„ ÙŠØ¬ÙˆØ² Ø§Ù„Ø£Ø°Ø§Ù† Ø£Ù† ÙŠÙƒÙˆÙ† Ø¨Ù„ØºØ© ØºÙŠØ± Ø§Ù„Ø¹Ø±Ø¨ÙŠØ©ØŸ ÙˆÙ‡Ù„ ÙŠØ¬ÙˆØ² Ù…Ø«Ù„Ø§ Ø£Ù† Ø£ÙØªØ±Ø¬Ù… Ø§Ù„Ø£Ø°Ø§Ù† Ø¹Ù„Ù‰ Ø³Ø¨ÙŠÙ„ Ø§Ù„ØªÙÙ‡ÙŠÙ… ØŸ&quot;.</p>\r\n\r\n<p><a href="#">video</a></p>\r\n\r\n<p><img alt="" src="/kcfinder/upload/files/artworks-000135804262-ufyppe-t500x500.jpg" style="height:500px; width:500px" /></p>\r\n\r\n<p><a href="/kcfinder/upload/files/IOT%20J65_ErmaSusanti.pdf">test</a></p>\r\n\r\n<p><iframe frameborder="0" scrolling="no" src="/kcfinder/upload/files/2.mp4"></iframe></p>\r\n\r\n<p><a href="/kcfinder/upload/files/Cek%20tagihan%20listrik.docx">/kcfinder/upload/files/Cek%20tagihan%20listrik.docx</a></p>\r\n', '1'),
(8, 7, 'GEN MANUSIA', '<p><iframe frameborder="0" scrolling="no" src="https://www.youtube.com/watch?v=TJK3DNUqS20"></iframe></p>\r\n\r\n<p>diatas pakai iframe</p>\r\n\r\n<p>INI FILE DOWNLOAD : <a href="/kcfinder/upload/files/IOT%20J65_ErmaSusanti.pdf">TEST</a></p>\r\n\r\n<p>yang ini pakai flash</p>\r\n\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowFullScreen" value="true" /><param name="quality" value="high" /><param name="movie" value="/kcfinder/upload/files/2.mp4" /><embed pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="/kcfinder/upload/files/2.mp4" type="application/x-shockwave-flash"></embed></object></p>\r\n\r\n<p>ini yang source code</p>\r\n\r\n<div style="height:0; padding-bottom:56.21%; position:relative"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/TJK3DNUqS20?ecver=2" style="position:absolute;width:100%;height:100%;left:0" width="641"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1'),
(9, 8, 'Materi', '', '1');
INSERT INTO `rb_quiz_materi` (`id_materi`, `id_materi_kategori`, `materi_pokok`, `materi_content`, `user`) VALUES
(10, 9, 'Pengertian', '<p>ini url youtube<iframe frameborder="0" height="480" src="https://www.youtube.com/embed/B8pa930Ba0Q" width="854"></iframe></p>\r\n\r\n<p>ini file lihat modul pdf : <a href="/cirlce/kcfinder/upload/files/ar_proves_of_the_fundamentals_followed_by_the_four_principals.pdf">download</a></p>\r\n\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowFullScreen" value="true" /><param name="quality" value="high" /><param name="movie" value="/cirlce/kcfinder/upload/files/2.mp4" /><embed pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="/cirlce/kcfinder/upload/files/2.mp4" type="application/x-shockwave-flash"></embed></object></p>\r\n\r\n<p>ppt : <a href="/cirlce/kcfinder/upload/files/Perte01-MP-3.ppt">download</a></p>\r\n\r\n<p dir="RTL" style="text-align:center"><span style="color:#ff0000"><strong>Ø§Ù„Ø£ØµÙˆÙ„ Ø§Ù„Ø«Ù„Ø§Ø«Ø© ÙˆØ£Ø¯Ù„ØªÙ‡Ø§</strong></span></p>\r\n\r\n<p dir="RTL" style="text-align:center"><span style="color:#ff0000"><strong>Ù„Ø´ÙŠØ® Ø§Ù„Ø¥Ø³Ù„Ø§Ù…&nbsp; Ù…Ø­Ù…Ø¯ Ø¨Ù† Ø¹Ø¨Ø¯Ø§Ù„ÙˆÙ‡Ø§Ø¨</strong></span></p>\r\n\r\n<p dir="RTL">Ø§Ø¹Ù„Ù… Ø±Ø­Ù…Ùƒ Ø§Ù„Ù„Ù‡ Ø£Ù†Ù‡ ÙŠØ¬Ø¨ Ø¹Ù„ÙŠÙ†Ø§ ØªØ¹Ù„Ù… Ø£Ø±Ø¨Ø¹ Ù…Ø³Ø§Ø¦Ù„:</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø£ÙˆÙ„Ù‰: Ø§Ù„Ø¹Ù„Ù…</strong>ØŒ ÙˆÙ‡Ùˆ Ù…Ø¹Ø±ÙØ© Ø§Ù„Ù„Ù‡ØŒ ÙˆÙ…Ø¹Ø±ÙØ© Ù†Ø¨ÙŠÙ‡ØŒ ÙˆÙ…Ø¹Ø±ÙØ© Ø¯ÙŠÙ† Ø§Ù„Ø¥Ø³Ù„Ø§Ù… Ø¨Ø§Ù„Ø£Ø¯Ù„Ø©.</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø«Ø§Ù†ÙŠØ©: Ø§Ù„Ø¹Ù…Ù„ Ø¨Ù‡</strong><strong>.</strong></p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø«Ø§Ù„Ø«Ø©: Ø§Ù„Ø¯Ø¹ÙˆØ© Ø¥Ù„ÙŠÙ‡</strong><strong>.</strong></p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø±Ø§Ø¨Ø¹Ø©:Ø§Ù„ØµØ¨Ø± Ø¹Ù„Ù‰ Ø§Ù„Ø£Ø°Ù‰ ÙÙŠÙ‡</strong><strong>.</strong></p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰ Ø¨Ø³Ù… Ø§Ù„Ù„Ù‡ Ø§Ù„Ø±Ø­Ù…Ù† Ø§Ù„Ø±Ø­ÙŠÙ…: ÙˆÙŽØ§Ù„Ù’Ø¹ÙŽØµÙ’Ø±Ù (1) Ø¥ÙÙ†ÙŽÙ‘ Ø§Ù„Ù’Ø¥ÙÙ†Ø³ÙŽØ§Ù†ÙŽ Ù„ÙŽÙÙÙŠ Ø®ÙØ³Ù’Ø±Ù (2) Ø¥ÙÙ„ÙŽÙ‘Ø§ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ Ø¢Ù…ÙŽÙ†ÙÙˆØ§ ÙˆÙŽØ¹ÙŽÙ…ÙÙ„ÙÙˆØ§ Ø§Ù„ØµÙŽÙ‘Ø§Ù„ÙØ­ÙŽØ§ØªÙ ÙˆÙŽØªÙŽÙˆÙŽØ§ØµÙŽÙˆÙ’Ø§ Ø¨ÙØ§Ù„Ù’Ø­ÙŽÙ‚ÙÙ‘ ÙˆÙŽØªÙŽÙˆÙŽØ§ØµÙŽÙˆÙ’Ø§ Ø¨ÙØ§Ù„ØµÙŽÙ‘Ø¨Ù’Ø±Ù [Ø§Ù„Ø¹ØµØ±:1-3].</p>\r\n\r\n<p dir="RTL">Ù‚Ø§Ù„ Ø§Ù„Ø´Ø§ÙØ¹ÙŠ Ø±Ø­Ù…Ù‡ Ø§Ù„Ù„Ù‡ ØªØ¹Ø§Ù„Ù‰: ( Ù„Ùˆ Ù…Ø§ Ø£Ù†Ø²Ù„ Ø§Ù„Ù„Ù‡ Ø­Ø¬Ø© Ø¹Ù„Ù‰ Ø®Ù„Ù‚Ù‡ Ø¥Ù„Ø§ Ù‡Ø°Ù‡ Ø§Ù„Ø³ÙˆØ±Ø© Ù„ÙƒÙØªÙ‡Ù… ).</p>\r\n\r\n<p dir="RTL">ÙˆÙ‚Ø§Ù„ Ø§Ù„Ø¨Ø®Ø§Ø±ÙŠ Ø±Ø­Ù…Ù‡ Ø§Ù„Ù„Ù‡ ØªØ¹Ø§Ù„Ù‰: ( Ø¨Ø§Ø¨ Ø§Ù„Ø¹Ù„Ù… Ù‚Ø¨Ù„ Ø§Ù„Ù‚ÙˆÙ„ ÙˆØ§Ù„Ø¹Ù…Ù„ØŒ ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙÙŽØ§Ø¹Ù’Ù„ÙŽÙ…Ù’ Ø£ÙŽÙ†ÙŽÙ‘Ù‡Ù Ù„ÙŽØ§ Ø¥ÙÙ„ÙŽÙ‡ÙŽ Ø¥ÙÙ„ÙŽÙ‘Ø§ Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù ÙˆÙŽØ§Ø³Ù’ØªÙŽØºÙ’ÙÙØ±Ù’ Ù„ÙØ°ÙŽÙ†Ø¨ÙÙƒÙŽ [Ù…Ø­Ù…Ø¯:19]. ÙØ¨Ø¯Ø£ Ø¨Ø§Ù„Ø¹Ù„Ù… Ù‚Ø¨Ù„ Ø§Ù„Ù‚ÙˆÙ„ ÙˆØ§Ù„Ø¹Ù…Ù„ ).</p>\r\n\r\n<p dir="RTL">Ø§Ø¹Ù„Ù… Ø±Ø­Ù…Ùƒ Ø§Ù„Ù„Ù‡ Ø£Ù†Ù‡ ÙŠØ¬Ø¨ Ø¹Ù„Ù‰ ÙƒÙ„ Ù…Ø³Ù„Ù… ÙˆÙ…Ø³Ù„Ù…Ø©ØŒ ØªØ¹Ù„Ù… Ù‡Ø°Ù‡ Ø§Ù„Ø«Ù„Ø§Ø« Ù…Ø³Ø§Ø¦Ù„ØŒ ÙˆØ§Ù„Ø¹Ù…Ù„ Ø¨Ù‡Ù†:</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø£ÙˆÙ„Ù‰</strong><strong>:</strong> Ø£Ù† Ø§Ù„Ù„Ù‡ Ø®Ù„Ù‚Ù†Ø§ ÙˆØ±Ø²Ù‚Ù†Ø§ ÙˆÙ„Ù… ÙŠØªØ±ÙƒÙ†Ø§ Ù‡Ù…Ù„Ø§Ù‹ØŒ Ø¨Ù„ Ø£Ø±Ø³Ù„ Ø¥Ù„ÙŠÙ†Ø§ Ø±Ø³ÙˆÙ„Ø§Ù‹ØŒ ÙÙ…Ù† Ø£Ø·Ø§Ø¹Ù‡ Ø¯Ø®Ù„ Ø§Ù„Ø¬Ù†Ø©ØŒ ÙˆÙ…Ù† Ø¹ØµØ§Ù‡ Ø¯Ø®Ù„ Ø§Ù„Ù†Ø§Ø±.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙÙ†ÙŽÙ‘Ø§ Ø£ÙŽØ±Ù’Ø³ÙŽÙ„Ù’Ù†ÙŽØ§ Ø¥ÙÙ„ÙŽÙŠÙ’ÙƒÙÙ…Ù’ Ø±ÙŽØ³ÙÙˆÙ„Ø§Ù‹ Ø´ÙŽØ§Ù‡ÙØ¯Ø§Ù‹ Ø¹ÙŽÙ„ÙŽÙŠÙ’ÙƒÙÙ…Ù’ ÙƒÙŽÙ…ÙŽØ§ Ø£ÙŽØ±Ù’Ø³ÙŽÙ„Ù’Ù†ÙŽØ§ Ø¥ÙÙ„ÙŽÙ‰ ÙÙØ±Ù’Ø¹ÙŽÙˆÙ’Ù†ÙŽ Ø±ÙŽØ³ÙÙˆÙ„Ø§Ù‹ (15) ÙÙŽØ¹ÙŽØµÙŽÙ‰ ÙÙØ±Ù’Ø¹ÙŽÙˆÙ’Ù†Ù Ø§Ù„Ø±ÙŽÙ‘Ø³ÙÙˆÙ„ÙŽ ÙÙŽØ£ÙŽØ®ÙŽØ°Ù’Ù†ÙŽØ§Ù‡Ù Ø£ÙŽØ®Ù’Ø°Ø§Ù‹ ÙˆÙŽØ¨ÙÙŠÙ„Ø§Ù‹ [Ø§Ù„Ù…Ø²Ù…Ù„:16ØŒ15].</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø«Ø§Ù†ÙŠØ©</strong><strong>:</strong> Ø£Ù† Ø§Ù„Ù„Ù‡ Ù„Ø§ ÙŠØ±Ø¶ÙŠ Ø£Ù† ÙŠÙØ´Ø±Ùƒ Ù…Ø¹Ù‡ Ø£Ø­Ø¯ ÙÙŠ Ø¹Ø¨Ø§Ø¯ØªÙ‡ Ù„Ø§ Ù…Ù„ÙŽÙƒ Ù…Ù‚Ø±Ø¨ ÙˆÙ„Ø§ Ù†Ø¨ÙŠ Ù…Ø±Ø³Ù„.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽØ£ÙŽÙ†ÙŽÙ‘ Ø§Ù„Ù’Ù…ÙŽØ³ÙŽØ§Ø¬ÙØ¯ÙŽ Ù„ÙÙ„ÙŽÙ‘Ù‡Ù ÙÙŽÙ„ÙŽØ§ ØªÙŽØ¯Ù’Ø¹ÙÙˆØ§ Ù…ÙŽØ¹ÙŽ Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù Ø£ÙŽØ­ÙŽØ¯Ø§Ù‹ [Ø§Ù„Ø¬Ù†:18].</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø«Ø§Ù„Ø«Ù‡</strong><strong>:</strong> Ø£Ù† Ù…Ù† Ø£Ø·Ø§Ø¹ Ø§Ù„Ø±Ø³ÙˆÙ„ ÙˆÙˆØ­Ù‘Ø¯ Ø§Ù„Ù„Ù‡ Ù„Ø§ ÙŠØ¬ÙˆØ² Ù„Ù‡ Ù…ÙˆØ§Ù„Ø§Ø© Ù…Ù† Ø­Ø§Ø¯ Ø§Ù„Ù„Ù‡ ÙˆØ±Ø³ÙˆÙ„Ù‡ØŒ ÙˆÙ„Ùˆ ÙƒØ§Ù† Ø£Ù‚Ø±Ø¨ Ù‚Ø±ÙŠØ¨.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù„Ø§ ØªÙŽØ¬ÙØ¯Ù Ù‚ÙŽÙˆÙ’Ù…Ø§Ù‹ ÙŠÙØ¤Ù’Ù…ÙÙ†ÙÙˆÙ†ÙŽ Ø¨ÙØ§Ù„Ù„ÙŽÙ‘Ù‡Ù ÙˆÙŽØ§Ù„Ù’ÙŠÙŽÙˆÙ’Ù…Ù Ø§Ù„Ù’Ø¢Ø®ÙØ±Ù ÙŠÙÙˆÙŽØ§Ø¯ÙÙ‘ÙˆÙ†ÙŽ Ù…ÙŽÙ†Ù’ Ø­ÙŽØ§Ø¯ÙŽÙ‘ Ø§Ù„Ù„ÙŽÙ‘Ù‡ÙŽ ÙˆÙŽØ±ÙŽØ³ÙÙˆÙ„ÙŽÙ‡Ù ÙˆÙŽÙ„ÙŽÙˆÙ’ ÙƒÙŽØ§Ù†ÙÙˆØ§ Ø¢Ø¨ÙŽØ§Ø¡Ù‡ÙÙ…Ù’ Ø£ÙŽÙˆÙ’ Ø£ÙŽØ¨Ù’Ù†ÙŽØ§Ø¡Ù‡ÙÙ…Ù’ Ø£ÙŽÙˆÙ’ Ø¥ÙØ®Ù’ÙˆÙŽØ§Ù†ÙŽÙ‡ÙÙ…Ù’ Ø£ÙŽÙˆÙ’ Ø¹ÙŽØ´ÙÙŠØ±ÙŽØªÙŽÙ‡ÙÙ…Ù’ Ø£ÙÙˆÙ’Ù„ÙŽØ¦ÙÙƒÙŽ ÙƒÙŽØªÙŽØ¨ÙŽ ÙÙÙŠ Ù‚ÙÙ„ÙÙˆØ¨ÙÙ‡ÙÙ…Ù Ø§Ù„Ù’Ø¥ÙÙŠÙ…ÙŽØ§Ù†ÙŽ ÙˆÙŽØ£ÙŽÙŠÙŽÙ‘Ø¯ÙŽÙ‡ÙÙ… Ø¨ÙØ±ÙÙˆØ­Ù Ù…ÙÙ‘Ù†Ù’Ù‡Ù ÙˆÙŽÙŠÙØ¯Ù’Ø®ÙÙ„ÙÙ‡ÙÙ…Ù’ Ø¬ÙŽÙ†ÙŽÙ‘Ø§ØªÙ ØªÙŽØ¬Ù’Ø±ÙÙŠ Ù…ÙÙ† ØªÙŽØ­Ù’ØªÙÙ‡ÙŽØ§ Ø§Ù„Ù’Ø£ÙŽÙ†Ù’Ù‡ÙŽØ§Ø±Ù Ø®ÙŽØ§Ù„ÙØ¯ÙÙŠÙ†ÙŽ ÙÙÙŠÙ‡ÙŽØ§ Ø±ÙŽØ¶ÙÙŠÙŽ Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù Ø¹ÙŽÙ†Ù’Ù‡ÙÙ…Ù’ ÙˆÙŽØ±ÙŽØ¶ÙÙˆØ§ Ø¹ÙŽÙ†Ù’Ù‡Ù Ø£ÙÙˆÙ’Ù„ÙŽØ¦ÙÙƒÙŽ Ø­ÙØ²Ù’Ø¨Ù Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù Ø£ÙŽÙ„ÙŽØ§ Ø¥ÙÙ†ÙŽÙ‘ Ø­ÙØ²Ù’Ø¨ÙŽ Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù Ù‡ÙÙ…Ù Ø§Ù„Ù’Ù…ÙÙÙ’Ù„ÙØ­ÙÙˆÙ†ÙŽ [Ø§Ù„Ù…Ø¬Ø§Ø¯Ù„Ø©:22].Ø§Ø¹Ù„Ù… Ø£Ø±Ø´Ø¯Ùƒ Ø§Ù„Ù„Ù‡ Ù„Ø·Ø§Ø¹ØªÙ‡ Ø£Ù† Ø§Ù„Ø­Ù†ÙŠÙÙŠØ© Ù…Ù„Ø© Ø¥Ø¨Ø±Ø§Ù‡ÙŠÙ…ØŒ Ø£Ù† ØªØ¹Ø¨Ø¯ Ø§Ù„Ù„Ù‡ ÙˆØ­Ø¯Ù‡ Ù…Ø®Ù„ØµØ§Ù‹ Ù„Ù‡ Ø§Ù„Ø¯ÙŠÙ†ØŒ ÙˆØ¨Ø°Ù„Ùƒ Ø£Ù…Ø± Ø§Ù„Ù„Ù‡ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ù†Ø§Ø³ ÙˆØ®Ù„Ù‚Ù‡Ù… Ù„Ù‡Ø§ØŒ ÙƒÙ…Ø§ Ù‚Ø§Ù„ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽÙ…ÙŽØ§ Ø®ÙŽÙ„ÙŽÙ‚ØªÙ Ø§Ù„Ø¬ÙÙ†ÙŽÙ‘ ÙˆÙŽØ§Ù„Ø¥ÙÙ†Ø³ÙŽ Ø¥ÙÙ„Ù‘Ø§ Ù„ÙÙŠÙŽØ¹Ù’Ø¨ÙØ¯ÙÙˆÙÙ† [Ø§Ù„Ø°Ø§Ø±ÙŠØ§Øª:56]ØŒ ÙˆÙ…Ø¹Ù†Ù‰ ÙÙŠÙŽØ¹Ù’Ø¨ÙØ¯ÙÙˆÙÙ† ÙŠÙˆØ­Ø¯ÙˆÙ†ØŒ ÙˆØ£Ø¹Ø¸Ù… Ù…Ø§ Ø£Ù…Ø± Ø§Ù„Ù„Ù‡ Ø¨Ù‡: Ø§Ù„ØªÙˆØ­ÙŠØ¯ ÙˆÙ‡Ùˆ Ø¥ÙØ±Ø§Ø¯ Ø§Ù„Ù„Ù‡ Ø¨Ø§Ù„Ø¹Ø¨Ø§Ø¯Ø© ÙˆØ£Ø¹Ø¸Ù… Ù…Ø§ Ù†Ù‡Ù‰ Ø¹Ù†Ù‡: Ø§Ù„Ø´Ø±ÙƒØŒ ÙˆÙ‡Ùˆ Ø¯Ø¹ÙˆØ© ØºÙŠØ±Ù‡ Ù…Ø¹Ù‡.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽØ§Ø¹Ù’Ø¨ÙØ¯ÙÙˆØ§ Ø§Ù„Ù„ÙŽÙ‘Ù‡ ÙˆÙŽÙ„Ø§ÙŽ ØªÙØ´Ø±ÙÙƒÙÙˆØ§ Ø¨ÙÙ‡Ù Ø´ÙŽÙŠØ¦Ø§Ù‹ [Ø§Ù„Ù†Ø³Ø§Ø¡:36].</p>\r\n\r\n<p dir="RTL">ÙØ¥Ø°Ø§ Ù‚ÙŠÙ„ Ù„Ùƒ: Ù…Ø§ Ø§Ù„Ø£ØµÙˆÙ„ Ø§Ù„Ø«Ù„Ø§Ø«Ø© Ø§Ù„ØªÙŠ ÙŠØ¬Ø¨ Ø¹Ù„Ù‰ Ø§Ù„Ø¥Ù†Ø³Ø§Ù† Ù…Ø¹Ø±ÙØªÙ‡Ø§ØŸ</p>\r\n\r\n<p dir="RTL">ÙÙ‚Ù„: Ù…Ø¹Ø±ÙØ© Ø§Ù„Ø¹Ø¨Ø¯ Ø±Ø¨Ù‡ØŒ ÙˆØ¯ÙŠÙ†Ù‡ØŒ ÙˆÙ†Ø¨ÙŠÙ‡ Ù…Ø­Ù…Ø¯ .</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø£ØµÙ„ Ø§Ù„Ø£ÙˆÙ„: Ù…Ø¹Ø±ÙØ© Ø§Ù„Ø±Ø¨</strong><strong>:</strong></p>\r\n\r\n<p dir="RTL">ÙØ¥Ø°Ø§ Ù‚ÙŠÙ„ Ù„Ùƒ:Ù…Ù† Ø±Ø¨ÙƒØŸ ÙÙ‚Ù„: Ø±Ø¨ÙŠ Ø§Ù„Ù„Ù‡ Ø§Ù„Ø°ÙŠ Ø±Ø¨Ø§Ù†ÙŠ ÙˆØ±Ø¨Ù‰ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø¹Ø§Ù„Ù…ÙŠÙ† Ø¨Ù†Ø¹Ù…Ù‡ØŒ ÙˆÙ‡Ùˆ Ù…Ø¹Ø¨ÙˆØ¯ÙŠ Ù„ÙŠØ³ Ù„ÙŠ Ù…Ø¹Ø¨ÙˆØ¯ Ø³ÙˆØ§Ù‡.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø§Ù„Ø­ÙŽÙ…Ù’Ø¯Ù Ù„Ù„Ù‘Ù‡Ù Ø±ÙŽØ¨ÙÙ‘ Ø§Ù„Ù’Ø¹ÙŽØ§Ù„ÙŽÙ…ÙÙŠÙ’Ù† [Ø§Ù„ÙØ§ØªØ­Ø©:2] ÙˆÙƒÙ„ Ù…Ù† Ø³ÙˆÙ‰ Ø§Ù„Ù„Ù‡ Ø¹Ø§Ù„Ù…ØŒ ÙˆØ£Ù† ÙˆØ§Ø­Ø¯ Ù…Ù† Ø°Ù„Ùƒ Ø§Ù„Ø¹Ø§Ù„Ù….</p>\r\n\r\n<p dir="RTL">ÙØ¥Ø°Ø§ Ù‚ÙŠÙ„ Ù„Ùƒ: Ø¨Ù… Ø¹Ø±ÙØª Ø±Ø¨ÙƒØŸ ÙÙ‚Ù„ Ø¨Ø¢ÙŠØ§ØªÙ‡ ÙˆÙ…Ø®Ù„ÙˆÙ‚Ø§ØªÙ‡ØŒ ÙˆÙ…Ù† Ø¢ÙŠØ§ØªÙ‡ Ø§Ù„Ù„ÙŠÙ„ ÙˆØ§Ù„Ù†Ù‡Ø§Ø± ÙˆØ§Ù„Ø´Ù…Ø³ ÙˆØ§Ù„Ù‚Ù…Ø±ØŒ ÙˆÙ…Ù† Ù…Ø®Ù„ÙˆÙ‚Ø§ØªÙ‡ Ø§Ù„Ø³Ù…ÙˆØ§Øª Ø§Ù„Ø³Ø¨Ø¹ØŒ ÙˆØ§Ù„Ø£Ø±Ø¶ÙˆÙ† Ø§Ù„Ø³Ø¨Ø¹ØŒ ÙˆÙ…Ù† ÙÙŠÙ‡Ù† ÙˆÙ…Ø§ Ø¨ÙŠÙ†Ù‡Ù…Ø§.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽÙ…ÙÙ†Ù’ Ø¢ÙŠÙŽØ§ØªÙÙ‡Ù Ø§Ù„Ù„ÙŽÙ‘ÙŠÙ’Ù„Ù ÙˆÙŽØ§Ù„Ù†ÙŽÙ‘Ù‡ÙŽØ§Ø±Ù ÙˆÙŽØ§Ù„Ø´ÙŽÙ‘Ù…Ù’Ø³Ù ÙˆÙŽØ§Ù„Ù’Ù‚ÙŽÙ…ÙŽØ±Ù Ù„ÙŽØ§ ØªÙŽØ³Ù’Ø¬ÙØ¯ÙÙˆØ§ Ù„ÙÙ„Ø´ÙŽÙ‘Ù…Ù’Ø³Ù ÙˆÙŽÙ„ÙŽØ§ Ù„ÙÙ„Ù’Ù‚ÙŽÙ…ÙŽØ±Ù ÙˆÙŽØ§Ø³Ù’Ø¬ÙØ¯ÙÙˆØ§ Ù„ÙÙ„ÙŽÙ‘Ù‡Ù Ø§Ù„ÙŽÙ‘Ø°ÙÙŠ Ø®ÙŽÙ„ÙŽÙ‚ÙŽÙ‡ÙÙ†ÙŽÙ‘ Ø¥ÙÙ† ÙƒÙÙ†ØªÙÙ…Ù’ Ø¥ÙÙŠÙŽÙ‘Ø§Ù‡Ù ØªÙŽØ¹Ù’Ø¨ÙØ¯ÙÙˆÙ†ÙŽ [ÙØµÙ„Øª:37]ØŒ ÙˆÙ‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙÙ†ÙŽÙ‘ Ø±ÙŽØ¨ÙŽÙ‘ÙƒÙÙ…Ù Ø§Ù„Ù„Ù‘Ù‡Ù Ø§Ù„ÙŽÙ‘Ø°ÙÙŠ Ø®ÙŽÙ„ÙŽÙ‚ÙŽ Ø§Ù„Ø³ÙŽÙ‘Ù…ÙŽØ§ÙˆÙŽØ§ØªÙ ÙˆÙŽØ§Ù„Ø£ÙŽØ±Ù’Ø¶ÙŽ ÙÙÙŠ Ø³ÙØªÙŽÙ‘Ø©Ù Ø£ÙŽÙŠÙŽÙ‘Ø§Ù…Ù Ø«ÙÙ…ÙŽÙ‘ Ø§Ø³Ù’ØªÙŽÙˆÙŽÙ‰ Ø¹ÙŽÙ„ÙŽÙ‰ Ø§Ù„Ù’Ø¹ÙŽØ±Ù’Ø´Ù ÙŠÙØºÙ’Ø´ÙÙŠ Ø§Ù„Ù„ÙŽÙ‘ÙŠÙ’Ù„ÙŽ Ø§Ù„Ù†ÙŽÙ‘Ù‡ÙŽØ§Ø±ÙŽ ÙŠÙŽØ·Ù’Ù„ÙØ¨ÙÙ‡Ù Ø­ÙŽØ«ÙÙŠØ«Ø§Ù‹ ÙˆÙŽØ§Ù„Ø´ÙŽÙ‘Ù…Ù’Ø³ÙŽ ÙˆÙŽØ§Ù„Ù’Ù‚ÙŽÙ…ÙŽØ±ÙŽ ÙˆÙŽØ§Ù„Ù†ÙÙ‘Ø¬ÙÙˆÙ…ÙŽ Ù…ÙØ³ÙŽØ®ÙŽÙ‘Ø±ÙŽØ§ØªÙ Ø¨ÙØ£ÙŽÙ…Ù’Ø±ÙÙ‡Ù Ø£ÙŽÙ„Ø§ÙŽ Ù„ÙŽÙ‡Ù Ø§Ù„Ù’Ø®ÙŽÙ„Ù’Ù‚Ù ÙˆÙŽØ§Ù„Ø£ÙŽÙ…Ù’Ø±Ù ØªÙŽØ¨ÙŽØ§Ø±ÙŽÙƒÙŽ Ø§Ù„Ù„Ù‘Ù‡Ù Ø±ÙŽØ¨ÙÙ‘ Ø§Ù„Ù’Ø¹ÙŽØ§Ù„ÙŽÙ…ÙÙŠÙ†ÙŽ [Ø§Ù„Ø£Ø¹Ø±Ø§Ù:54].</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø±Ø¨ Ù‡Ùˆ: Ø§Ù„Ù…Ø¹Ø¨ÙˆØ¯.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙŠÙŽØ£ÙŠÙÙ‘Ù‡ÙŽØ§ Ø§Ù„Ù†ÙŽÙ‘Ø§Ø³Ù Ø§Ø¹Ø¨ÙØ¯ÙÙˆØ§ Ø±Ø¨ÙŽÙ‘ÙƒÙÙ…Ù Ø§Ù„Ø°ÙŽÙÙ‘ÙŠ Ø®ÙŽÙ„ÙŽÙ‚ÙŽÙƒÙÙ… ÙˆÙŽØ§Ù„Ø°ÙÙ‘ÙŠÙ†ÙŽ Ù…ÙÙ† Ù‚ÙŽØ¨Ù„ÙƒÙÙ… Ù„ÙŽØ¹ÙŽÙ„ÙŽÙ‘ÙƒÙÙ… ØªÙŽØªÙŽÙ‘Ù‚ÙÙˆÙ†ÙŽ(21) Ø§Ù„Ù‘Ø°ÙÙŠ Ø¬ÙŽØ¹ÙŽÙ„ÙŽ Ù„ÙŽÙƒÙÙ…Ù Ø§Ù„Ø£Ø±Ø¶ÙŽ ÙÙØ±ÙŽØ§Ø´Ù‹Ø§ ÙˆÙŽØ§Ù„Ø³ÙŽÙ‘Ù…Ø¢Ø¡ÙŽ Ø¨ÙÙ†Ø¢Ø¡Ù‹ ÙˆÙŽØ£Ù†Ø²ÙŽÙ„ÙŽ Ù…ÙÙ†ÙŽ Ø§Ù„Ø³ÙŽÙ‘Ù…ÙŽØ¢Ø¡Ù Ù…ÙŽØ§ÙŽØ¡Ù‹ ÙÙŽØ£Ø®Ø±ÙŽØ¬ÙŽ Ø¨ÙÙ‡Ù Ù…ÙÙ† Ø§Ù„Ø«ÙŽÙ‘Ù…Ø±Ø§ØªÙ Ø±ÙØ²Ù‚Ù‹Ø§ Ù„Ù‘ÙƒÙÙ… ÙÙŽÙ„Ø§ÙŽ ØªÙŽØ¬Ø¹ÙŽÙ„ÙÙˆØ§Ù’ Ù„ÙŽÙ„ÙŽÙ‘Ù‡Ù Ø£Ù†Ø¯ÙŽØ§Ø¯Ù‹Ø§ ÙˆÙŽØ£Ù†ØªÙÙ… ØªÙŽØ¹ÙŽÙ„ÙÙ…ÙˆÙ†ÙŽ [Ø§Ù„Ø¨Ù‚Ø±Ø©:22ØŒ21].</p>\r\n\r\n<p dir="RTL">Ù‚Ø§Ù„ Ø§Ø¨Ù† ÙƒØ«ÙŠØ± Ø±Ø­Ù…Ù‡ Ø§Ù„Ù„Ù‡ ØªØ¹Ø§Ù„Ù‰: ( Ø§Ù„Ø®Ø§Ù„Ù‚ Ù„Ù‡Ø°Ù‡ Ø§Ù„Ø£Ø´ÙŠØ§Ø¡ Ù‡Ùˆ Ø§Ù„Ù…Ø³ØªØ­Ù‚ Ù„Ù„Ø¹Ø¨Ø§Ø¯Ø© ).</p>\r\n\r\n<p dir="RTL">ÙˆØ£Ù†ÙˆØ§Ø¹ Ø§Ù„Ø¹Ø¨Ø§Ø¯Ø© Ø§Ù„ØªÙŠ Ø£Ù…Ø± Ø§Ù„Ù„Ù‡ Ø¨Ù‡Ø§ØŒ Ù…Ø«Ù„ Ø§Ù„Ø¥Ø³Ù„Ø§Ù…ØŒ ÙˆØ§Ù„Ø¥ÙŠÙ…Ø§Ù†ØŒ ÙˆØ§Ù„Ø¥Ø­Ø³Ø§Ù†ØŒ ÙˆÙ…Ù†Ù‡ Ø§Ù„Ø¯Ø¹Ø§Ø¡ØŒ ÙˆØ§Ù„Ø®ÙˆÙØŒ ÙˆØ§Ù„Ø±Ø¬Ø§Ø¡ØŒ ÙˆØ§Ù„ØªÙˆÙƒÙ„ØŒ ÙˆØ§Ù„Ø±ØºØ¨Ø©ØŒ ÙˆØ§Ù„Ø±Ù‡Ø¨Ø©ØŒ ÙˆØ§Ù„Ø®Ø´ÙˆØ¹ØŒ ÙˆØ§Ù„Ø®Ø´ÙŠØ©ØŒ ÙˆØ§Ù„Ø¥Ù†Ø§Ø¨Ø©ØŒ ÙˆØ§Ù„Ø§Ø³ØªØ¹Ø§Ù†Ø©ØŒ ÙˆØ§Ù„Ø§Ø³ØªØ¹Ø§Ø°Ø©ØŒ ÙˆØ§Ù„Ø§Ø³ØªØºØ§Ø«Ø©ØŒ ÙˆØ§Ù„Ø°Ø¨Ø­ØŒ ÙˆØ§Ù„Ù†Ø°Ø±ØŒ ÙˆØºÙŠØ± Ø°Ù„Ùƒ Ù…Ù† Ø£Ù†ÙˆØ§Ø¹ Ø§Ù„Ø¹Ø¨Ø§Ø¯Ø© Ø§Ù„ØªÙŠ Ø£Ù…Ø± Ø§Ù„Ù„Ù‡ Ø¨Ù‡Ø§ØŒ ÙƒÙ„Ù‡Ø§.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽØ£Ù†ÙŽÙ‘ Ø§Ù„Ù…ÙŽØ³ÙŽØ§Ø¬ÙØ¯ Ù„ÙÙ„ÙŽÙ‘Ù‡Ù ÙÙŽÙ„Ø§ ØªÙŽØ¯Ø¹ÙÙˆØ§ Ù…ÙŽØ¹ÙŽ Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù Ø£Ø­ÙŽØ¯Ø§Ù‹ [Ø§Ù„Ø¬Ù†:18].</p>\r\n\r\n<p dir="RTL">ÙÙ…Ù† ØµØ±Ù Ù…Ù†Ù‡Ø§ Ø´ÙŠØ¦Ø§Ù‹ Ù„ØºÙŠØ± Ø§Ù„Ù„Ù‡ ÙÙ‡Ùˆ Ù…Ø´Ø±Ùƒ ÙƒØ§ÙØ±.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽÙ…ÙŽÙ† ÙŠÙŽØ¯Ù’Ø¹Ù Ù…ÙŽØ¹ÙŽ Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù Ø¥ÙÙ„ÙŽÙ‡Ø§Ù‹ Ø¢Ø®ÙŽØ±ÙŽ Ù„ÙŽØ§ Ø¨ÙØ±Ù’Ù‡ÙŽØ§Ù†ÙŽ Ù„ÙŽÙ‡Ù Ø¨ÙÙ‡Ù ÙÙŽØ¥ÙÙ†ÙŽÙ‘Ù…ÙŽØ§ Ø­ÙØ³ÙŽØ§Ø¨ÙÙ‡Ù Ø¹ÙÙ†Ø¯ÙŽ Ø±ÙŽØ¨ÙÙ‘Ù‡Ù Ø¥ÙÙ†ÙŽÙ‘Ù‡Ù Ù„ÙŽØ§ ÙŠÙÙÙ’Ù„ÙØ­Ù Ø§Ù„Ù’ÙƒÙŽØ§ÙÙØ±ÙÙˆÙ†ÙŽ [Ø§Ù„Ù…Ø¤Ù…Ù†ÙˆÙ†:117].</p>\r\n\r\n<p dir="RTL">ÙˆÙÙŠ Ø§Ù„Ø­Ø¯ÙŠØ«: <strong>{</strong> Ø§Ù„Ø¯Ø¹Ø§Ø¡ Ù…Ø® Ø§Ù„Ø¹Ø¨Ø§Ø¯Ø© <strong>}</strong>.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽÙ‚ÙŽØ§Ù„ÙŽ Ø±ÙŽØ¨ÙÙ‘ÙƒÙÙ…Ù Ø§Ø¯Ù’Ø¹ÙÙˆÙ†ÙÙŠ Ø£ÙŽØ³Ù’ØªÙŽØ¬ÙØ¨Ù’ Ù„ÙŽÙƒÙÙ…Ù’ Ø¥ÙÙ†ÙŽÙ‘ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ ÙŠÙŽØ³Ù’ØªÙŽÙƒÙ’Ø¨ÙØ±ÙÙˆÙ†ÙŽ Ø¹ÙŽÙ†Ù’ Ø¹ÙØ¨ÙŽØ§Ø¯ÙŽØªÙÙŠ Ø³ÙŽÙŠÙŽØ¯Ù’Ø®ÙÙ„ÙÙˆÙ†ÙŽ Ø¬ÙŽÙ‡ÙŽÙ†ÙŽÙ‘Ù…ÙŽ Ø¯ÙŽØ§Ø®ÙØ±ÙÙŠÙ†ÙŽ [ØºØ§ÙØ±:60].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ø®ÙˆÙ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙÙŽÙ„Ø§ÙŽ ØªÙŽØ®ÙŽØ§ÙÙÙˆÙ‡ÙÙ…Ù’ ÙˆÙŽØ®ÙŽØ§ÙÙÙˆÙ†Ù Ø¥ÙÙ† ÙƒÙÙ†ØªÙÙ… Ù…ÙÙ‘Ø¤Ù’Ù…ÙÙ†ÙÙŠÙ†ÙŽ [Ø¢Ù„ Ø¹Ù…Ø±Ø§Ù†:175].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ø±Ø¬Ø§Ø¡ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙÙŽÙ…ÙŽÙ† ÙƒÙŽØ§Ù†ÙŽ ÙŠÙŽØ±Ù’Ø¬ÙÙˆ Ù„ÙÙ‚ÙŽØ§Ø¡ Ø±ÙŽØ¨ÙÙ‘Ù‡Ù ÙÙŽÙ„Ù’ÙŠÙŽØ¹Ù’Ù…ÙŽÙ„Ù’ Ø¹ÙŽÙ…ÙŽÙ„Ø§Ù‹ ØµÙŽØ§Ù„ÙØ­Ø§Ù‹ ÙˆÙŽÙ„ÙŽØ§ ÙŠÙØ´Ù’Ø±ÙÙƒÙ’ Ø¨ÙØ¹ÙØ¨ÙŽØ§Ø¯ÙŽØ©Ù Ø±ÙŽØ¨ÙÙ‘Ù‡Ù Ø£ÙŽØ­ÙŽØ¯Ø§Ù‹ [Ø§Ù„ÙƒÙ‡Ù:110].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„ØªÙˆÙƒÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽØ¹ÙŽÙ„ÙŽÙ‰ Ø§Ù„Ù„Ù‘Ù‡Ù ÙÙŽØªÙŽÙˆÙŽÙƒÙŽÙ‘Ù„ÙÙˆØ§Ù’ Ø¥ÙÙ† ÙƒÙÙ†ØªÙÙ… Ù…ÙÙ‘Ø¤Ù’Ù…ÙÙ†ÙÙŠÙ†ÙŽ [Ø§Ù„Ù…Ø§Ø¦Ø¯Ø©:23]ØŒ ÙˆÙ‚ÙˆÙ„Ù‡: ÙˆÙŽÙ…ÙŽÙ† ÙŠÙŽØªÙŽÙˆÙŽÙƒÙŽÙ‘Ù„Ù’ Ø¹ÙŽÙ„ÙŽÙ‰ Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù ÙÙŽÙ‡ÙÙˆÙŽ Ø­ÙŽØ³Ù’Ø¨ÙÙ‡Ù [Ø§Ù„Ø·Ù„Ø§Ù‚:3].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ø±ØºØ¨Ø© ÙˆØ§Ù„Ø±Ù‡Ø¨Ø© ÙˆØ§Ù„Ø®Ø´ÙˆØ¹ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙÙ†ÙŽÙ‘Ù‡ÙÙ…Ù’ ÙƒÙŽØ§Ù†ÙÙˆØ§ ÙŠÙØ³ÙŽØ§Ø±ÙØ¹ÙÙˆÙ†ÙŽ ÙÙÙŠ Ø§Ù„Ù’Ø®ÙŽÙŠÙ’Ø±ÙŽØ§ØªÙ ÙˆÙŽÙŠÙŽØ¯Ù’Ø¹ÙÙˆÙ†ÙŽÙ†ÙŽØ§ Ø±ÙŽØºÙŽØ¨Ø§Ù‹ ÙˆÙŽØ±ÙŽÙ‡ÙŽØ¨Ø§Ù‹ ÙˆÙŽÙƒÙŽØ§Ù†ÙÙˆØ§ Ù„ÙŽÙ†ÙŽØ§ Ø®ÙŽØ§Ø´ÙØ¹ÙÙŠÙ†ÙŽ [Ø§Ù„Ø£Ù†Ø¨ÙŠØ§Ø¡:90].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ø®Ø´ÙŠØ© Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙÙŽÙ„Ø§ÙŽ ØªÙŽØ®Ù’Ø´ÙŽÙˆÙ’Ù‡ÙÙ…Ù’ ÙˆÙŽØ§Ø®Ù’Ø´ÙŽÙˆÙ’Ù†ÙÙŠ [Ø§Ù„Ø¨Ù‚Ø±Ø©:150].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ø§Ø³ØªØ¹Ø§Ù†Ø© Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù‚ÙÙ„Ù’ Ø£ÙŽØ¹ÙÙˆØ°Ù Ø¨ÙØ±ÙŽØ¨ÙÙ‘ Ø§Ù„Ù†ÙŽÙ‘Ø§Ø³Ù [Ø§Ù„Ù†Ø§Ø³:1].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ø§Ø³ØªØºØ§Ø«Ø© Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙØ°Ù’ ØªÙŽØ³Ù’ØªÙŽØºÙÙŠØ«ÙÙˆÙ†ÙŽ Ø±ÙŽØ¨ÙŽÙ‘ÙƒÙÙ…Ù’ ÙÙŽØ§Ø³Ù’ØªÙŽØ¬ÙŽØ§Ø¨ÙŽ Ù„ÙŽÙƒÙÙ…Ù’ [Ø§Ù„Ø£Ù†ÙØ§Ù„:9].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ø°Ø¨Ø­ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù„Ø§ÙŽ Ø´ÙŽØ±ÙÙŠÙƒÙŽ Ù„ÙŽÙ‡Ù ÙˆÙŽØ¨ÙØ°ÙŽÙ„ÙÙƒÙŽ Ø£ÙÙ…ÙØ±Ù’ØªÙ ÙˆÙŽØ£ÙŽÙ†ÙŽØ§Ù’ Ø£ÙŽÙˆÙŽÙ‘Ù„Ù Ø§Ù„Ù’Ù…ÙØ³Ù’Ù„ÙÙ…ÙÙŠÙ†ÙŽ [Ø§Ù„Ø£Ù†Ø¹Ø§Ù…:163].</p>\r\n\r\n<p dir="RTL">ÙˆÙ…Ù† Ø§Ù„Ø³Ù†Ø© <strong>{</strong> Ù„Ø¹Ù† Ø§Ù„Ù„Ù‡ Ù…Ù† Ø°Ø¨Ø­ Ù„ØºÙŠØ± Ø§Ù„Ù„Ù‡ <strong>}</strong>.</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ù†Ø°Ø± Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙŠÙÙˆÙÙÙˆÙ†ÙŽ Ø¨ÙØ§Ù„Ù†ÙŽÙ‘Ø°Ù’Ø±Ù ÙˆÙŽÙŠÙŽØ®ÙŽØ§ÙÙÙˆÙ†ÙŽ ÙŠÙŽÙˆÙ’Ù…Ø§Ù‹ ÙƒÙŽØ§Ù†ÙŽ Ø´ÙŽØ±ÙÙ‘Ù‡Ù Ù…ÙØ³Ù’ØªÙŽØ·ÙÙŠØ±Ø§Ù‹ [Ø§Ù„Ø¥Ù†Ø³Ø§Ù†:7].</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø£ØµÙ„ Ø§Ù„Ø«Ø§Ù†ÙŠ: Ù…Ø¹Ø±ÙØ© Ø¯ÙŠÙ† Ø§Ù„Ø¥Ø³Ù„Ø§Ù… Ø¨Ø§Ù„Ø¥Ø¯Ù„Ø©</strong></p>\r\n\r\n<p dir="RTL">ÙˆÙ‡Ùˆ Ø§Ù„Ø§Ø³ØªØ³Ù„Ø§Ù… Ù„Ù„Ù‡ Ø¨Ø§Ù„ØªÙˆØ­ÙŠØ¯ØŒ ÙˆØ§Ù„Ø§Ù†Ù‚ÙŠØ§Ø¯ Ù„Ù‡ Ø¨Ø§Ù„Ø·Ø§Ø¹Ø©ØŒ ÙˆØ§Ù„Ø¨Ø±Ø§Ø¡Ø© Ù…Ù† Ø§Ù„Ø´Ø±Ùƒ ÙˆØ£Ù‡Ù„Ù‡ØŒ ÙˆÙ‡Ùˆ Ø«Ù„Ø§Ø« Ù…Ø±Ø§ØªØ¨: Ø§Ù„Ø¥Ø³Ù„Ø§Ù…ØŒ ÙˆØ§Ù„Ø¥ÙŠÙ…Ø§Ù†ØŒ ÙˆØ§Ù„Ø¥Ø­Ø³Ø§Ù†ØŒ ÙˆÙƒÙ„ Ù…Ø±ØªØ¨Ø© Ù„Ù‡Ø§ Ø£Ø±ÙƒØ§Ù†.</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ù…Ø±ØªØ¨Ø© Ø§Ù„Ø£ÙˆÙ„Ù‰</strong><strong>:</strong></p>\r\n\r\n<p dir="RTL">ÙØ£Ø±ÙƒØ§Ù† Ø§Ù„Ø¥Ø³Ù„Ø§Ù… Ø®Ù…Ø³Ø©: Ø´Ù‡Ø§Ø¯Ø© Ø£Ù† Ù„Ø§ Ø¥Ù„Ù‡ Ø¥Ù„Ø§ Ø§Ù„Ù„Ù‡ ÙˆØ£Ù† Ù…Ø­Ù…Ø¯Ø§Ù‹ Ø±Ø³ÙˆÙ„ Ø§Ù„Ù„Ù‡ØŒ ÙˆØ¥Ù‚Ø§Ù… Ø§Ù„ØµÙ„Ø§Ø©ØŒ ÙˆØ¥ÙŠØªØ§Ø¡ Ø§Ù„Ø²ÙƒØ§Ø©ØŒ ÙˆØµÙˆÙ… Ø±Ù…Ø¶Ø§Ù†ØŒ ÙˆØ­Ø¬ Ø¨ÙŠØª Ø§Ù„Ù„Ù‡ Ø§Ù„Ø­Ø±Ø§Ù….</p>\r\n\r\n<p dir="RTL">ÙØ¯Ù„ÙŠÙ„ Ø§Ù„Ø´Ù‡Ø§Ø¯Ø© Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø´ÙŽÙ‡ÙØ¯ÙŽ Ø§Ù„Ù„Ù‘Ù‡Ù Ø£ÙŽÙ†ÙŽÙ‘Ù‡Ù Ù„Ø§ÙŽ Ø¥ÙÙ„ÙŽÙ€Ù‡ÙŽ Ø¥ÙÙ„Ø§ÙŽÙ‘ Ù‡ÙÙˆÙŽ ÙˆÙŽØ§Ù„Ù’Ù…ÙŽÙ„Ø§ÙŽØ¦ÙÙƒÙŽØ©Ù ÙˆÙŽØ£ÙÙˆÙ’Ù„ÙÙˆØ§Ù’ Ø§Ù„Ù’Ø¹ÙÙ„Ù’Ù…Ù Ù‚ÙŽØ¢Ø¦ÙÙ…ÙŽØ§Ù‹ Ø¨ÙØ§Ù„Ù’Ù‚ÙØ³Ù’Ø·Ù Ù„Ø§ÙŽ Ø¥ÙÙ„ÙŽÙ€Ù‡ÙŽ Ø¥ÙÙ„Ø§ÙŽÙ‘ Ù‡ÙÙˆÙŽ Ø§Ù„Ù’Ø¹ÙŽØ²ÙÙŠØ²Ù Ø§Ù„Ù’Ø­ÙŽÙƒÙÙŠÙ…Ù [Ø¢Ù„ Ø¹Ù…Ø±Ø§Ù†:18].</p>\r\n\r\n<p dir="RTL">ÙˆÙ…Ø¹Ù†Ø§Ù‡Ø§: Ù„Ø§ Ù…Ø¹Ø¨ÙˆØ¯ Ø¨Ø­Ù‚ Ø¥Ù„Ø§ Ø§Ù„Ù„Ù‡ ÙˆØ­Ø¯Ù‡ (Ù„Ø§ Ø¥Ù„Ù‡) Ù†Ø§ÙÙŠØ§Ù‹ Ù…Ø§ ÙŠØ¹Ø¨Ø¯ Ù…Ù† Ø¯ÙˆÙ† Ø§Ù„Ù„Ù‡.</p>\r\n\r\n<p dir="RTL">(Ø¥Ù„Ø§ Ø§Ù„Ù„Ù‡) Ù…Ø«Ø¨ØªØ§Ù‹ Ø§Ù„Ø¹Ø¨Ø§Ø¯Ø© Ù„Ù„Ù‡ ÙˆØ­Ø¯Ù‡ Ù„Ø§ Ø´Ø±ÙŠÙƒ Ù„Ù‡ ÙÙŠ Ø¹Ø¨Ø§Ø¯ØªÙ‡ØŒ ÙƒÙ…Ø§ Ø£Ù†Ù‡ Ù„ÙŠØ³ Ù„Ù‡ Ø´Ø±ÙŠÙƒ ÙÙŠ Ù…Ù„ÙƒÙ‡.</p>\r\n\r\n<p dir="RTL">ÙˆØªÙØ³ÙŠØ±Ù‡Ø§ Ø§Ù„Ø°ÙŠ ÙŠÙˆØ¶Ø­Ù‡Ø§ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽØ¥ÙØ°Ù’ Ù‚ÙŽØ§Ù„ÙŽ Ø¥ÙØ¨Ù’Ø±ÙŽØ§Ù‡ÙÙŠÙ…Ù Ù„ÙØ£ÙŽØ¨ÙÙŠÙ‡Ù ÙˆÙŽÙ‚ÙŽÙˆÙ’Ù…ÙÙ‡Ù Ø¥ÙÙ†ÙŽÙ‘Ù†ÙÙŠ Ø¨ÙŽØ±ÙŽØ§Ø¡ Ù…ÙÙ‘Ù…ÙŽÙ‘Ø§ ØªÙŽØ¹Ù’Ø¨ÙØ¯ÙÙˆÙ†ÙŽ (26) Ø¥ÙÙ„ÙŽÙ‘Ø§ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠ ÙÙŽØ·ÙŽØ±ÙŽÙ†ÙÙŠ ÙÙŽØ¥ÙÙ†ÙŽÙ‘Ù‡Ù Ø³ÙŽÙŠÙŽÙ‡Ù’Ø¯ÙÙŠÙ†Ù (27) ÙˆÙŽØ¬ÙŽØ¹ÙŽÙ„ÙŽÙ‡ÙŽØ§ ÙƒÙŽÙ„ÙÙ…ÙŽØ©Ù‹ Ø¨ÙŽØ§Ù‚ÙÙŠÙŽØ©Ù‹ ÙÙÙŠ Ø¹ÙŽÙ‚ÙØ¨ÙÙ‡Ù Ù„ÙŽØ¹ÙŽÙ„ÙŽÙ‘Ù‡ÙÙ…Ù’ ÙŠÙŽØ±Ù’Ø¬ÙØ¹ÙÙˆÙ†ÙŽ [Ø§Ù„Ø²Ø®Ø±Ù:26-28].</p>\r\n\r\n<p dir="RTL">ÙˆÙ‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù‚ÙÙ„Ù’ ÙŠÙŽØ§ Ø£ÙŽÙ‡Ù’Ù„ÙŽ Ø§Ù„Ù’ÙƒÙØªÙŽØ§Ø¨Ù ØªÙŽØ¹ÙŽØ§Ù„ÙŽÙˆÙ’Ø§Ù’ Ø¥ÙÙ„ÙŽÙ‰ ÙƒÙŽÙ„ÙŽÙ…ÙŽØ©Ù Ø³ÙŽÙˆÙŽØ§Ø¡ Ø¨ÙŽÙŠÙ’Ù†ÙŽÙ†ÙŽØ§ ÙˆÙŽØ¨ÙŽÙŠÙ’Ù†ÙŽÙƒÙÙ…Ù’ Ø£ÙŽÙ„Ø§ÙŽÙ‘ Ù†ÙŽØ¹Ù’Ø¨ÙØ¯ÙŽ Ø¥ÙÙ„Ø§ÙŽÙ‘ Ø§Ù„Ù„Ù‘Ù‡ÙŽ ÙˆÙŽÙ„Ø§ÙŽ Ù†ÙØ´Ù’Ø±ÙÙƒÙŽ Ø¨ÙÙ‡Ù Ø´ÙŽÙŠÙ’Ø¦Ø§Ù‹ ÙˆÙŽÙ„Ø§ÙŽ ÙŠÙŽØªÙŽÙ‘Ø®ÙØ°ÙŽ Ø¨ÙŽØ¹Ù’Ø¶ÙÙ†ÙŽØ§ Ø¨ÙŽØ¹Ù’Ø¶Ø§Ù‹ Ø£ÙŽØ±Ù’Ø¨ÙŽØ§Ø¨Ø§Ù‹ Ù…ÙÙ‘Ù† Ø¯ÙÙˆÙ†Ù Ø§Ù„Ù„Ù‘Ù‡Ù ÙÙŽØ¥ÙÙ† ØªÙŽÙˆÙŽÙ„ÙŽÙ‘ÙˆÙ’Ø§Ù’ ÙÙŽÙ‚ÙÙˆÙ„ÙÙˆØ§Ù’ Ø§Ø´Ù’Ù‡ÙŽØ¯ÙÙˆØ§Ù’ Ø¨ÙØ£ÙŽÙ†ÙŽÙ‘Ø§ Ù…ÙØ³Ù’Ù„ÙÙ…ÙÙˆÙ†ÙŽ [Ø¢Ù„ Ø¹Ù…Ø±Ø§Ù†:64].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø´Ù‡Ø§Ø¯Ø© Ø£Ù† Ù…Ø­Ù…Ø¯Ø§Ù‹ Ø±Ø³ÙˆÙ„ Ø§Ù„Ù„Ù‡ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù„ÙŽÙ‚ÙŽØ¯Ù’ Ø¬ÙŽØ§Ø¡ÙƒÙÙ…Ù’ Ø±ÙŽØ³ÙÙˆÙ„ÙŒ Ù…ÙÙ‘Ù†Ù’ Ø£ÙŽÙ†ÙÙØ³ÙÙƒÙÙ…Ù’ Ø¹ÙŽØ²ÙÙŠØ²ÙŒ Ø¹ÙŽÙ„ÙŽÙŠÙ’Ù‡Ù Ù…ÙŽØ§ Ø¹ÙŽÙ†ÙØªÙÙ‘Ù…Ù’ Ø­ÙŽØ±ÙÙŠØµÙŒ Ø¹ÙŽÙ„ÙŽÙŠÙ’ÙƒÙÙ… Ø¨ÙØ§Ù„Ù’Ù…ÙØ¤Ù’Ù…ÙÙ†ÙÙŠÙ†ÙŽ Ø±ÙŽØ¤ÙÙˆÙÙŒ Ø±ÙŽÙ‘Ø­ÙÙŠÙ…ÙŒ [Ø§Ù„ØªÙˆØ¨Ø©:128].</p>\r\n\r\n<p dir="RTL">ÙˆÙ…Ø¹Ù†Ù‰ Ø´Ù‡Ø§Ø¯Ø© Ø£Ù† Ù…Ø­Ù…Ø¯Ø§Ù‹ Ø±Ø³ÙˆÙ„ Ø§Ù„Ù„Ù‡: Ø·Ø§Ø¹ØªÙ‡ ÙÙŠÙ…Ø§ Ø£Ù…Ø±ØŒ ÙˆØªØµØ¯ÙŠÙ‚Ù‡ ÙÙŠÙ…Ø§ Ø£Ø®Ø¨Ø±ØŒ ÙˆØ§Ø¬ØªÙ†Ø§Ø¨ Ù…Ø§ Ù†Ù‡Ù‰ Ø¹Ù†Ù‡ ÙˆØ²Ø¬Ø±ØŒ ÙˆØ£Ù† Ù„Ø§ ÙŠØ¹Ø¨Ø¯ Ø§Ù„Ù„Ù‡ Ø¥Ù„Ø§ Ø¨Ù…Ø§ Ø´Ø±Ø¹.</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„ØµÙ„Ø§Ø© ÙˆØ§Ù„Ø²ÙƒØ§Ø© ÙˆØªÙØ³ÙŠØ± Ø§Ù„ØªÙˆØ­ÙŠØ¯ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽÙ…ÙŽØ§ Ø£ÙÙ…ÙØ±ÙÙˆØ§ Ø¥ÙÙ„ÙŽÙ‘Ø§ Ù„ÙÙŠÙŽØ¹Ù’Ø¨ÙØ¯ÙÙˆØ§ Ø§Ù„Ù„ÙŽÙ‘Ù‡ÙŽ Ù…ÙØ®Ù’Ù„ÙØµÙÙŠÙ†ÙŽ Ù„ÙŽÙ‡Ù Ø§Ù„Ø¯ÙÙ‘ÙŠÙ†ÙŽ Ø­ÙÙ†ÙŽÙÙŽØ§Ø¡ ÙˆÙŽÙŠÙÙ‚ÙÙŠÙ…ÙÙˆØ§ Ø§Ù„ØµÙŽÙ‘Ù„ÙŽØ§Ø©ÙŽ ÙˆÙŽÙŠÙØ¤Ù’ØªÙÙˆØ§ Ø§Ù„Ø²ÙŽÙ‘ÙƒÙŽØ§Ø©ÙŽ ÙˆÙŽØ°ÙŽÙ„ÙÙƒÙŽ Ø¯ÙÙŠÙ†Ù Ø§Ù„Ù’Ù‚ÙŽÙŠÙÙ‘Ù…ÙŽØ©Ù [Ø§Ù„Ø¨ÙŠÙ†Ø©:5].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„ØµÙŠØ§Ù… Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙŠÙŽØ§ Ø£ÙŽÙŠÙÙ‘Ù‡ÙŽØ§ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ Ø¢Ù…ÙŽÙ†ÙÙˆØ§Ù’ ÙƒÙØªÙØ¨ÙŽ Ø¹ÙŽÙ„ÙŽÙŠÙ’ÙƒÙÙ…Ù Ø§Ù„ØµÙÙ‘ÙŠÙŽØ§Ù…Ù ÙƒÙŽÙ…ÙŽØ§ ÙƒÙØªÙØ¨ÙŽ Ø¹ÙŽÙ„ÙŽÙ‰ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ Ù…ÙÙ† Ù‚ÙŽØ¨Ù’Ù„ÙÙƒÙÙ…Ù’ Ù„ÙŽØ¹ÙŽÙ„ÙŽÙ‘ÙƒÙÙ…Ù’ ØªÙŽØªÙŽÙ‘Ù‚ÙÙˆÙ†ÙŽ ÙŽ [Ø§Ù„Ø¨Ù‚Ø±Ø©:183].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ø­Ø¬ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙ„ÙÙ„ÙŽÙ‘Ù‡Ù Ø¹ÙŽÙ„ÙŽÙ‰ Ø§Ù„Ù†Ø§Ø³Ù Ø­ÙØ¬ÙÙ‘ Ø§Ù„Ø¨ÙŽÙŠÙØª Ù…ÙÙ†ÙŽ Ø§Ø³ØªÙŽØ·ÙŽØ§Ø¹ÙŽ Ø¥Ù„ÙŽÙŠÙ‡Ù Ø³ÙŽØ¨ÙÙŠÙ„Ø§Ù‹ ÙˆÙŽÙ…ÙŽÙ† ÙƒÙŽÙÙŽØ±ÙŽ ÙÙŽØ¥Ù†ÙŽÙ‘ Ø§Ù„ÙŽÙ‘Ù„Ù‡ÙŽ ØºÙŽÙ†ÙŠ Ø¹ÙÙ† Ø§Ù„Ø¹ÙŽØ§Ù„ÙŽÙ…ÙÙŠÙ†ÙŽ [Ø¢Ù„ Ø¹Ù…Ø±Ø§Ù†:97].</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ù…Ø±ØªØ¨Ø© Ø§Ù„Ø«Ø§Ù†ÙŠØ©</strong><strong>:</strong></p>\r\n\r\n<p dir="RTL">Ø§Ù„Ø¥ÙŠÙ…Ø§Ù†: ÙˆÙ‡Ùˆ Ø¨Ø¶Ø¹ ÙˆØ³Ø¨Ø¹ÙˆÙ† Ø´Ø¹Ø¨Ø©ØŒ ÙØ£Ø¹Ù„Ø§Ù‡Ø§ Ù‚ÙˆÙ„: Ù„Ø§ Ø¥Ù„Ù‡ Ø¥Ù„Ø§ Ø§Ù„Ù„Ù‡ØŒ ÙˆØ£Ø¯Ù†Ø§Ù‡Ø§ Ø¥Ù…Ø§Ø·Ø© Ø§Ù„Ø£Ø°Ù‰ Ø¹Ù† Ø§Ù„Ø·Ø±ÙŠÙ‚ØŒ ÙˆØ§Ù„Ø­ÙŠØ§Ø¡ Ø´Ø¹Ø¨Ø© Ù…Ù† Ø§Ù„Ø¥ÙŠÙ…Ø§Ù†.</p>\r\n\r\n<p dir="RTL">ÙˆØ£Ø±ÙƒØ§Ù†Ù‡ Ø³ØªØ©: Ø£Ù† ØªØ¤Ù…Ù† Ø¨Ø§Ù„Ù„Ù‡ØŒ ÙˆÙ…Ù„Ø§Ø¦ÙƒØªÙ‡ØŒ ÙˆÙƒØªØ¨Ù‡ØŒ ÙˆØ±Ø³Ù„Ù‡ØŒ ÙˆØ§Ù„ÙŠÙˆÙ… Ø§Ù„Ø¢Ø®Ø±ØŒ ÙˆØ¨Ø§Ù„Ù‚Ø¯Ø± Ø®ÙŠØ±Ù‡ Ø´Ø±Ù‡.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ø¹Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„Ø£Ø±ÙƒØ§Ù† Ø§Ù„Ø³ØªØ© Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù„ÙŽÙ‘ÙŠÙ’Ø³ÙŽ Ø§Ù„Ù’Ø¨ÙØ±ÙŽÙ‘ Ø£ÙŽÙ† ØªÙÙˆÙŽÙ„ÙÙ‘ÙˆØ§Ù’ ÙˆÙØ¬ÙÙˆÙ‡ÙŽÙƒÙÙ…Ù’ Ù‚ÙØ¨ÙŽÙ„ÙŽ Ø§Ù„Ù’Ù…ÙŽØ´Ù’Ø±ÙÙ‚Ù ÙˆÙŽØ§Ù„Ù’Ù…ÙŽØºÙ’Ø±ÙØ¨Ù ÙˆÙŽÙ„ÙŽÙ€ÙƒÙÙ†ÙŽÙ‘ Ø§Ù„Ù’Ø¨ÙØ±ÙŽÙ‘ Ù…ÙŽÙ†Ù’ Ø¢Ù…ÙŽÙ†ÙŽ Ø¨ÙØ§Ù„Ù„Ù‘Ù‡Ù ÙˆÙŽØ§Ù„Ù’ÙŠÙŽÙˆÙ’Ù…Ù Ø§Ù„Ø¢Ø®ÙØ±Ù ÙˆÙŽØ§Ù„Ù’Ù…ÙŽÙ„Ø¢Ø¦ÙÙƒÙŽØ©Ù ÙˆÙŽØ§Ù„Ù’ÙƒÙØªÙŽØ§Ø¨Ù ÙˆÙŽØ§Ù„Ù†ÙŽÙ‘Ø¨ÙÙŠÙÙ‘ÙŠÙ†ÙŽ [Ø§Ù„Ø¨Ù‚Ø±Ø©:177].</p>\r\n\r\n<p dir="RTL">ÙˆØ¯Ù„ÙŠÙ„ Ø§Ù„Ù‚Ø¯Ø± Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙÙ†ÙŽÙ‘Ø§ ÙƒÙÙ„ÙŽÙ‘ Ø´ÙŽÙŠÙ’Ø¡Ù Ø®ÙŽÙ„ÙŽÙ‚Ù’Ù†ÙŽØ§Ù‡Ù Ø¨ÙÙ‚ÙŽØ¯ÙŽØ±Ù [Ø§Ù„Ù‚Ù…Ø±:49].</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ù…Ø±ØªØ¨Ø© Ø§Ù„Ø«Ø§Ù„Ø«Ø©</strong><strong>:</strong></p>\r\n\r\n<p dir="RTL">Ø§Ù„Ø¥Ø­Ø³Ø§Ù†: Ø±ÙƒÙ† ÙˆØ§Ø­Ø¯ØŒ ÙˆÙ‡Ùˆ: ( Ø£Ù† ØªØ¹Ø¨Ø¯ Ø§Ù„Ù„Ù‡ ÙƒØ£Ù†Ùƒ ØªØ±Ø§Ù‡ØŒ ÙØ¥Ù† Ù„Ù… ØªÙƒÙ† ØªØ±Ø§Ù‡ ÙØ¥Ù†Ù‡ ÙŠØ±Ø§Ùƒ ).</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙÙ†ÙŽÙ‘ Ø§Ù„Ù„Ù‘Ù‡ÙŽ Ù…ÙŽØ¹ÙŽ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ Ø§ØªÙŽÙ‘Ù‚ÙŽÙˆØ§Ù’ ÙˆÙŽÙ‘Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ Ù‡ÙÙ… Ù…ÙÙ‘Ø­Ù’Ø³ÙÙ†ÙÙˆÙ†ÙŽ [Ø§Ù„Ù†Ø­Ù„:128]. ÙˆÙ‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽØªÙŽÙˆÙŽÙƒÙŽÙ‘Ù„Ù’ Ø¹ÙŽÙ„ÙŽÙ‰ Ø§Ù„Ù’Ø¹ÙŽØ²ÙÙŠØ²Ù Ø§Ù„Ø±ÙŽÙ‘Ø­ÙÙŠÙ…Ù (217) Ø§Ù„ÙŽÙ‘Ø°ÙÙŠ ÙŠÙŽØ±ÙŽØ§ÙƒÙŽ Ø­ÙÙŠÙ†ÙŽ ØªÙŽÙ‚ÙÙˆÙ…Ù (218) ÙˆÙŽØªÙŽÙ‚ÙŽÙ„ÙÙ‘Ø¨ÙŽÙƒÙŽ ÙÙÙŠ Ø§Ù„Ø³ÙŽÙ‘Ø§Ø¬ÙØ¯ÙÙŠÙ†ÙŽ (219) Ø¥ÙÙ†ÙŽÙ‘Ù‡Ù Ù‡ÙÙˆÙŽ Ø§Ù„Ø³ÙŽÙ‘Ù…ÙÙŠØ¹Ù Ø§Ù„Ù’Ø¹ÙŽÙ„ÙÙŠÙ…Ù [Ø§Ù„Ø´Ø¹Ø±Ø§Ø¡:217 Ù€220]. ÙˆÙ‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽÙ…ÙŽØ§ ØªÙŽÙƒÙÙˆÙ†Ù ÙÙÙŠ Ø´ÙŽØ£Ù’Ù†Ù ÙˆÙŽÙ…ÙŽØ§ ØªÙŽØªÙ’Ù„ÙÙˆ Ù…ÙÙ†Ù’Ù‡Ù Ù…ÙÙ† Ù‚ÙØ±Ù’Ø¢Ù†Ù ÙˆÙŽÙ„Ø§ÙŽ ØªÙŽØ¹Ù’Ù…ÙŽÙ„ÙÙˆÙ†ÙŽ Ù…ÙÙ†Ù’ Ø¹ÙŽÙ…ÙŽÙ„Ù Ø¥ÙÙ„Ø§ÙŽÙ‘ ÙƒÙÙ†ÙŽÙ‘Ø§ Ø¹ÙŽÙ„ÙŽÙŠÙ’ÙƒÙÙ…Ù’ Ø´ÙÙ‡ÙÙˆØ¯Ø§Ù‹ Ø¥ÙØ°Ù’ ØªÙÙÙÙŠØ¶ÙÙˆÙ†ÙŽ ÙÙÙŠÙ‡Ù [ÙŠÙˆÙ†Ø³:61]. ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù…Ù† Ø§Ù„Ø³Ù†Ø©: Ø­Ø¯ÙŠØ« Ø¬Ø¨Ø±ÙŠÙ„ Ø§Ù„Ù…Ø´Ù‡ÙˆØ± Ø¹Ù† Ø¹Ù…Ø± Ø¨Ù† Ø§Ù„Ø®Ø·Ø§Ø¨ Ù‚Ø§Ù„: ( Ø¨ÙŠÙ†Ø§ Ù†Ø­Ù† Ø¬Ù„ÙˆØ³ Ø¹Ù†Ø¯ Ø§Ù„Ù†Ø¨ÙŠ Ø¥Ø° Ø·Ù„Ø¹ Ø¹Ù„ÙŠÙ†Ø§ Ø±Ø¬Ù„ Ø´Ø¯ÙŠØ¯ Ø¨ÙŠØ§Ø¶ Ø§Ù„Ø«ÙŠØ§Ø¨ØŒ Ø´Ø¯ÙŠØ¯ Ø³ÙˆØ§Ø¯ Ø§Ù„Ø´Ø¹Ø±ØŒ Ù„Ø§ ÙŠÙØ±Ù‰ Ø¹Ù„ÙŠÙ‡ Ø£Ø«Ø± Ø§Ù„Ø³ÙØ±ØŒ ÙˆÙ„Ø§ ÙŠØ¹Ø±ÙÙ‡ Ù…Ù†Ø§ Ø£Ø­Ø¯ØŒ ÙØ¬Ù„Ø³ Ø¥Ù„Ù‰ Ø§Ù„Ù†Ø¨ÙŠ ÙØ£Ø³Ù†Ø¯ Ø±ÙƒØ¨ØªÙŠÙ‡ Ø¥Ù„Ù‰ Ø±ÙƒØ¨ØªÙŠÙ‡ØŒ ÙˆÙˆØ¶Ø¹ ÙƒÙÙŠÙ‡ Ø¹Ù„Ù‰ ÙØ®Ø°ÙŠÙ‡ØŒ ÙˆÙ‚Ø§ Ù„: ÙŠØ§ Ù…Ø­Ù…Ø¯ Ø£Ø®Ø¨Ø±Ù†ÙŠ Ø¹Ù† Ø§Ù„Ø¥Ø³Ù„Ø§Ù…. Ù‚Ø§Ù„: <strong>{</strong> Ø£Ù† ØªØ´Ù‡Ø¯ Ø£Ù† Ù„Ø§ Ø¥Ù„Ù‡ Ø¥Ù„Ø§ Ø§Ù„Ù„Ù‡ ÙˆØ£Ù† Ù…Ø­Ù…Ø¯Ø§Ù‹ Ø±Ø³ÙˆÙ„ Ø§Ù„Ù„Ù‡ØŒ ÙˆØªÙ‚ÙŠÙ… Ø§Ù„ØµÙ„Ø§Ø© ÙˆØªØ¤ØªÙŠ Ø§Ù„Ø²ÙƒØ§Ø©ØŒ ÙˆØªØµÙˆÙ… Ø±Ù…Ø¶Ø§Ù†ØŒ ÙˆØªØ­Ø¬ Ø§Ù„Ø¨ÙŠØª Ø¥Ù† Ø§Ø³ØªØ·Ø¹Øª Ø¥Ù„ÙŠÙ‡ Ø³Ø¨ÙŠÙ„Ø§ <strong>}</strong>. Ù‚Ø§Ù„: ØµØ¯Ù‚Øª. ÙØ¹Ø¬Ø¨Ù†Ø§ Ù„Ù‡ ÙŠØ³Ø£Ù„Ù‡ ÙˆÙŠØµØ¯Ù‚Ù‡. Ù‚Ø§Ù„: Ø£Ø®Ø¨Ø±Ù†ÙŠ Ø¹Ù† Ø§Ù„Ø¥ÙŠÙ…Ø§Ù†. Ù‚Ø§Ù„: <strong>{</strong> Ø£Ù† ØªØ¤Ù…Ù† Ø¨Ø§Ù„Ù„Ù‡ ÙˆÙ…Ù„Ø§Ø¦ÙƒØªÙ‡ØŒ ÙˆÙƒØªØ¨Ù‡ØŒ ÙˆØ±Ø³Ù„Ù‡ØŒ ÙˆØ§Ù„ÙŠÙˆÙ… Ø§Ù„Ø¢Ø®Ø±ØŒ ÙˆØ¨Ø§Ù„Ù‚Ø¯Ø± Ø®ÙŠØ±Ù‡ ÙˆØ´Ø±Ù‡ <strong>}</strong> Ù‚Ø§Ù„: Ø£Ø®Ø¨Ø±Ù†ÙŠ Ø¹Ù† Ø§Ù„Ø¥Ø­Ø³Ø§Ù†. Ù‚Ø§Ù„: <strong>{</strong> Ø£Ù† ØªØ¹Ø¨Ø¯ Ø§Ù„Ù„Ù‡ ÙƒØ£Ù†Ùƒ ØªØ±Ø§Ù‡ ÙØ¥Ù† Ù„Ù… ØªÙƒÙ† ØªØ±Ø§Ù‡ ÙØ¥Ù†Ù‡ ÙŠØ±Ø§Ùƒ <strong>}</strong> Ù‚Ø§Ù„ Ø£Ø®Ø¨Ø±Ù†ÙŠ Ø¹Ù† Ø§Ù„Ø³Ø§Ø¹Ø©. Ù‚Ø§Ù„: <strong>{</strong> Ù…Ø§ Ø§Ù„Ù…Ø³Ø¤ÙˆÙ„ Ø¹Ù†Ù‡Ø§ Ø¨Ø£Ø¹Ù„Ù… Ù…Ù† Ø§Ù„Ø³Ø§Ø¦Ù„ <strong>}</strong>. Ù‚Ø§Ù„: Ø£Ø®Ø¨Ø±Ù†ÙŠ Ø¹Ù† Ø£Ù…Ø§Ø±Ø§ØªÙ‡Ø§. Ù‚Ø§Ù„: <strong>{</strong> Ø£Ù† ØªÙ„Ø¯ Ø§Ù„Ø£Ù…Ø© Ø±Ø¨ØªÙ‡Ø§ØŒ ÙˆØ£Ù† ØªØ±Ù‰ Ø§Ù„Ø­ÙØ§Ø© Ø§Ù„Ø¹Ø±Ø§Ø© Ø§Ù„Ø¹Ø§Ù„Ø© Ø±Ø¹Ø§Ø¡ Ø§Ù„Ø´Ø§Ø¡ ÙŠØªØ·Ø§ÙˆÙ„ÙˆÙ† ÙÙŠ Ø§Ù„Ø¨Ù†ÙŠØ§Ù† <strong>}</strong> Ù‚Ø§Ù„: ÙÙ…Ø¶Ù‰. ÙÙ„Ø¨Ø«Ù†Ø§ Ù…Ù„ÙŠØ§Ù‹. ÙÙ‚Ø§Ù„: <strong>{</strong> ÙŠØ§ Ø¹Ù…Ø± Ø£ØªØ¯Ø±ÙˆÙ† Ù…Ù† Ø§Ù„Ø³Ø§Ø¦Ù„ <strong>}</strong> Ù‚Ù„Ù†Ø§: Ø§Ù„Ù„Ù‡ ÙˆØ±Ø³ÙˆÙ„Ù‡ Ø£Ø¹Ù„Ù…. Ù‚Ø§Ù„: <strong>{</strong> Ù‡Ø°Ø§ Ø¬Ø¨Ø±ÙŠÙ„ Ø£ØªØ§ÙƒÙ… ÙŠØ¹Ù„Ù…ÙƒÙ… Ø£Ù…Ø± Ø¯ÙŠÙ†ÙƒÙ… <strong>}</strong>.</p>\r\n\r\n<p dir="RTL"><strong>Ø§Ù„Ø£ØµÙ„ Ø§Ù„Ø«Ø§Ù„Ø«: Ù…Ø¹Ø±ÙØ© Ù†Ø¨ÙŠÙƒÙ… Ø¹Ù„ÙŠÙ‡ Ø§Ù„ØµÙ„Ø§Ø© ÙˆØ§Ù„Ø³Ù„Ø§Ù…</strong></p>\r\n\r\n<p dir="RTL">ÙˆÙ‡Ùˆ Ù…Ø­Ù…Ø¯ Ø¨Ù† Ø¹Ø¨Ø¯Ø§Ù„Ù„Ù‡ Ø¨Ù† Ø¹Ø¨Ø¯Ø§Ù„Ù…Ø·Ù„Ø¨ Ø¨Ù† Ù‡Ø§Ø´Ù…. ÙˆÙ‡Ø§Ø´Ù… Ù…Ù† Ù‚Ø±ÙŠØ´ØŒ ÙˆÙ‚Ø±ÙŠØ´ Ù…Ù† Ø§Ù„Ø¹Ø±Ø¨ØŒ ÙˆØ§Ù„Ø¹Ø±Ø¨ Ù…Ù† Ø°Ø±ÙŠØ© Ø¥Ø³Ù…Ø§Ø¹ÙŠÙ„ Ø¨Ù† Ø¥Ø¨Ø±Ø§Ù‡ÙŠÙ… Ø§Ù„Ø®Ù„ÙŠÙ„ØŒ Ø¹Ù„ÙŠÙ‡ ÙˆØ¹Ù„Ù‰ Ù†Ø¨ÙŠÙ†Ø§ Ø£ÙØ¶Ù„ Ø§Ù„ØµÙ„Ø§Ø© ÙˆØ§Ù„Ø³Ù„Ø§Ù…. ÙˆÙ„Ù‡ Ù…Ù† Ø§Ù„Ø¹Ù…Ø± Ø«Ù„Ø§Ø« ÙˆØ³ØªÙˆÙ† Ø³Ù†Ø©ØŒ Ù…Ù†Ù‡Ø§ Ø£Ø±Ø¨Ø¹ÙˆÙ† Ù‚Ø¨Ù„ Ø§Ù„Ù†Ø¨ÙˆØ©ØŒ ÙˆØ«Ù„Ø§Ø« ÙˆØ¹Ø´Ø±ÙˆÙ† Ù†Ø¨ÙŠØ§Ù‹ Ø±Ø³ÙˆÙ„Ø§Ù‹. Ù†Ø¨Ù‰Ø¡ Ø¨Ù€ Ø§Ù‚Ù’Ø±ÙŽØ£Ù’ ÙˆØ£Ø±Ø³Ù„ Ø¨Ù€ Ø§Ù„Ù’Ù…ÙØ¯ÙŽÙ‘Ø«ÙÙ‘Ø±Ù . ÙˆØ¨Ù„Ø¯Ù‡ Ù…ÙƒØ©ØŒ Ø¨Ø¹Ø«Ù‡ Ø§Ù„Ù„Ù‡ Ø¨Ø§Ù„Ù†Ø°Ø§Ø±Ø© Ø¹Ù† Ø§Ù„Ø´Ø±ÙƒØŒ ÙˆÙŠØ¯Ø¹Ùˆ Ø¥Ù„Ù‰ Ø§Ù„ØªÙˆØ­ÙŠØ¯. ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙŠÙŽØ§ Ø£ÙŽÙŠÙÙ‘Ù‡ÙŽØ§ Ø§Ù„Ù’Ù…ÙØ¯ÙŽÙ‘Ø«ÙÙ‘Ø±Ù (1) Ù‚ÙÙ…Ù’ ÙÙŽØ£ÙŽÙ†Ø°ÙØ±Ù’ (2) ÙˆÙŽØ±ÙŽØ¨ÙŽÙ‘ÙƒÙŽ ÙÙŽÙƒÙŽØ¨ÙÙ‘Ø±Ù’ (3) ÙˆÙŽØ«ÙÙŠÙŽØ§Ø¨ÙŽÙƒÙŽ ÙÙŽØ·ÙŽÙ‡ÙÙ‘Ø±Ù’ (4) ÙˆÙŽØ§Ù„Ø±ÙÙ‘Ø¬Ù’Ø²ÙŽ ÙÙŽØ§Ù‡Ù’Ø¬ÙØ±Ù’ (5) ÙˆÙŽÙ„ÙŽØ§ ØªÙŽÙ…Ù’Ù†ÙÙ† ØªÙŽØ³Ù’ØªÙŽÙƒÙ’Ø«ÙØ±Ù (6) ÙˆÙŽÙ„ÙØ±ÙŽØ¨ÙÙ‘ÙƒÙŽ ÙÙŽØ§ØµÙ’Ø¨ÙØ±Ù’ [Ø§Ù„Ù…Ø¯Ø«Ø±:1Ù€7].</p>\r\n\r\n<p dir="RTL">ÙˆÙ…Ø¹Ù†Ù‰ Ù‚ÙÙ…Ù’ ÙÙŽØ£ÙŽÙ†Ø°ÙØ±Ù’ ÙŠÙ†Ø°Ø± Ø¹Ù† Ø§Ù„Ø´Ø±Ùƒ ÙˆÙŠØ¯Ø¹Ùˆ Ø¥Ù„Ù‰ Ø§Ù„ØªÙˆØ­ÙŠØ¯ ÙˆÙŽØ±ÙŽØ¨ÙŽÙ‘ÙƒÙŽ ÙÙŽÙƒÙŽØ¨ÙÙ‘Ø±Ù’ Ø¹Ø¸Ù…Ù‡ Ø¨Ø§Ù„ØªÙˆØ­ÙŠØ¯ ÙˆÙŽØ«ÙÙŠÙŽØ§Ø¨ÙŽÙƒÙŽ ÙÙŽØ·ÙŽÙ‡ÙÙ‘Ø±Ù’ Ø£ÙŠ Ø·Ù‡Ø± Ø£Ø¹Ù…Ø§Ù„Ùƒ Ù…Ù† Ø§Ù„Ø´Ø±Ùƒ ÙˆÙŽØ§Ù„Ø±ÙÙ‘Ø¬Ù’Ø²ÙŽ ÙÙŽØ§Ù‡Ù’Ø¬ÙØ±Ù’ Ø§Ù„Ø±Ø¬Ø²: Ø§Ù„Ø£ØµÙ†Ø§Ù…ØŒ ÙˆÙ‡Ø¬Ø±Ù‡Ø§ ØªØ±ÙƒÙ‡Ø§ ÙˆØ£Ù‡Ù„Ù‡Ø§ ÙˆØ§Ù„Ø¨Ø±Ø§Ø¡Ø© Ù…Ù†Ù‡Ø§ ÙˆØ£Ù‡Ù„Ù‡Ø§ØŒ Ø£Ø®Ø° Ø¹Ù„Ù‰ Ù‡Ø°Ø§ Ø¹Ø´Ø± Ø³Ù†ÙŠÙ† ÙŠØ¯Ø¹Ùˆ Ø¥Ù„Ù‰ Ø§Ù„ØªÙˆØ­ÙŠØ¯ØŒ ÙˆØ¨Ø¹Ø¯ Ø§Ù„Ø¹Ø´Ø± Ø¹Ø±Ø¬ Ø¨Ù‡ Ø¥Ù„Ù‰ Ø§Ù„Ø³Ù…Ø§Ø¡ØŒ ÙˆÙØ±Ø¶Øª Ø¹Ù„ÙŠÙ‡ Ø§Ù„ØµÙ„ÙˆØ§Øª Ø§Ù„Ø®Ù…Ø³ØŒ ÙˆØµÙ„Ù‰ ÙÙŠ Ù…ÙƒØ© Ø«Ù„Ø§Ø« Ø³Ù†ÙŠÙ†ØŒ ÙˆØ¨Ø¹Ø¯Ù‡Ø§ Ø£Ù…Ø± Ø¨Ø§Ù„Ù‡Ø¬Ø±Ø© Ø¥Ù„Ù‰ Ø§Ù„Ù…Ø¯ÙŠÙ†Ø©.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ù‡Ø¬Ø±Ø© ÙØ±ÙŠØ¶Ø© Ø¹Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„Ø£Ù…Ø© Ù…Ù† Ø¨Ù„Ø¯ Ø§Ù„Ø´Ø±Ùƒ Ø¥Ù„Ù‰ Ø¨Ù„Ø¯ Ø§Ù„Ø¥Ø³Ù„Ø§Ù…ØŒ ÙˆÙ‡ÙŠ Ø¨Ø§Ù‚ÙŠØ© Ø¥Ù„Ù‰ Ø£Ù† ØªÙ‚ÙˆÙ… Ø§Ù„Ø³Ø§Ø¹Ø©: ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙÙ†ÙŽÙ‘ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ ØªÙŽÙˆÙŽÙÙŽÙ‘Ø§Ù‡ÙÙ…Ù Ø§Ù„Ù’Ù…ÙŽÙ„Ø¢Ø¦ÙÙƒÙŽØ©Ù Ø¸ÙŽØ§Ù„ÙÙ…ÙÙŠ Ø£ÙŽÙ†Ù’ÙÙØ³ÙÙ‡ÙÙ…Ù’ Ù‚ÙŽØ§Ù„ÙÙˆØ§Ù’ ÙÙÙŠÙ…ÙŽ ÙƒÙÙ†ØªÙÙ…Ù’ Ù‚ÙŽØ§Ù„ÙÙˆØ§Ù’ ÙƒÙÙ†ÙŽÙ‘Ø§ Ù…ÙØ³Ù’ØªÙŽØ¶Ù’Ø¹ÙŽÙÙÙŠÙ†ÙŽ ÙÙÙŠ Ø§Ù„Ø£ÙŽØ±Ù’Ø¶Ù Ù‚ÙŽØ§Ù„Ù’ÙˆÙŽØ§Ù’ Ø£ÙŽÙ„ÙŽÙ…Ù’ ØªÙŽÙƒÙÙ†Ù’ Ø£ÙŽØ±Ù’Ø¶Ù Ø§Ù„Ù„Ù‘Ù‡Ù ÙˆÙŽØ§Ø³ÙØ¹ÙŽØ©Ù‹ ÙÙŽØªÙÙ‡ÙŽØ§Ø¬ÙØ±ÙÙˆØ§Ù’ ÙÙÙŠÙ‡ÙŽØ§ ÙÙŽØ£ÙÙˆÙ’Ù„ÙŽÙ€Ø¦ÙÙƒÙŽ Ù…ÙŽØ£Ù’ÙˆÙŽØ§Ù‡ÙÙ…Ù’ Ø¬ÙŽÙ‡ÙŽÙ†ÙŽÙ‘Ù…Ù ÙˆÙŽØ³ÙŽØ§Ø¡ØªÙ’ Ù…ÙŽØµÙÙŠØ±Ø§Ù‹ (97) Ø¥ÙÙ„Ø§ÙŽÙ‘ Ø§Ù„Ù’Ù…ÙØ³Ù’ØªÙŽØ¶Ù’Ø¹ÙŽÙÙÙŠÙ†ÙŽ Ù…ÙÙ†ÙŽ Ø§Ù„Ø±ÙÙ‘Ø¬ÙŽØ§Ù„Ù ÙˆÙŽØ§Ù„Ù†ÙÙ‘Ø³ÙŽØ§Ø¡ ÙˆÙŽØ§Ù„Ù’ÙˆÙÙ„Ù’Ø¯ÙŽØ§Ù†Ù Ù„Ø§ÙŽ ÙŠÙŽØ³Ù’ØªÙŽØ·ÙÙŠØ¹ÙÙˆÙ†ÙŽ Ø­ÙÙŠÙ„ÙŽØ©Ù‹ ÙˆÙŽÙ„Ø§ÙŽ ÙŠÙŽÙ‡Ù’ØªÙŽØ¯ÙÙˆÙ†ÙŽ Ø³ÙŽØ¨ÙÙŠÙ„Ø§Ù‹ (98) ÙÙŽØ£ÙÙˆÙ’Ù„ÙŽÙ€Ø¦ÙÙƒÙŽ Ø¹ÙŽØ³ÙŽÙ‰ Ø§Ù„Ù„Ù‘Ù‡Ù Ø£ÙŽÙ† ÙŠÙŽØ¹Ù’ÙÙÙˆÙŽ Ø¹ÙŽÙ†Ù’Ù‡ÙÙ…Ù’ ÙˆÙŽÙƒÙŽØ§Ù†ÙŽ Ø§Ù„Ù„Ù‘Ù‡Ù Ø¹ÙŽÙÙÙˆÙ‘Ø§Ù‹ ØºÙŽÙÙÙˆØ±Ø§Ù‹ Ø§Ù„Ù†Ø³Ø§Ø¡:97 Ù€99]. ÙˆÙ‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙŠÙŽØ§ Ø¹ÙØ¨ÙŽØ§Ø¯ÙÙŠÙŽ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ Ø¢Ù…ÙŽÙ†ÙÙˆØ§ Ø¥ÙÙ†ÙŽÙ‘ Ø£ÙŽØ±Ù’Ø¶ÙÙŠ ÙˆÙŽØ§Ø³ÙØ¹ÙŽØ©ÙŒ ÙÙŽØ¥ÙÙŠÙŽÙ‘Ø§ÙŠÙŽ ÙÙŽØ§Ø¹Ù’Ø¨ÙØ¯ÙÙˆÙ†Ù [Ø§Ù„Ø¹Ù†ÙƒØ¨ÙˆØª:56].</p>\r\n\r\n<p dir="RTL">Ù‚Ø§Ù„ Ø§Ù„Ø¨ØºÙˆÙŠ Ø±Ø­Ù…Ù‡ Ø§Ù„Ù„Ù‡: ( Ø³Ø¨Ø¨ Ù†Ø²ÙˆÙ„ Ù‡Ø°Ù‡ Ø§Ù„Ø¢ÙŠØ© ÙÙŠ Ø§Ù„Ù…Ø³Ù„Ù…ÙŠÙ† Ø§Ù„Ø°ÙŠÙ† ÙÙŠ Ù…ÙƒØ© Ù„Ù… ÙŠÙ‡Ø§Ø¬Ø±ÙˆØ§ØŒ Ù†Ø§Ø¯Ø§Ù‡Ù… Ø§Ù„Ù„Ù‡ Ø¨Ø§Ø³Ù… Ø§Ù„Ø¥ÙŠÙ…Ø§Ù† ).</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ø¹Ù„Ù‰ Ø§Ù„Ù‡Ø¬Ø±Ø© Ù…Ù† Ø§Ù„Ø³Ù†Ø© Ù‚ÙˆÙ„Ù‡ : <strong>{</strong> Ù„Ø§ ØªÙ†Ù‚Ø·Ø¹ Ø§Ù„Ù‡Ø¬Ø±Ø© Ø­ØªÙ‰ ØªÙ†Ù‚Ø·Ø¹ Ø§Ù„ØªÙˆØ¨Ø©ØŒ ÙˆÙ„Ø§ ØªÙ†Ù‚Ø·Ø¹ Ø§Ù„ØªÙˆØ¨Ø© Ø­ØªÙ‰ ØªØ·Ù„Ø¹ Ø§Ù„Ø´Ù…Ø³ Ù…Ù† Ù…ØºØ±Ø¨Ù‡Ø§ <strong>}</strong>.</p>\r\n\r\n<p dir="RTL">ÙÙ„Ù…Ø§ Ø§Ø³ØªÙ‚Ø± ÙÙŠ Ø§Ù„Ù…Ø¯ÙŠÙ†Ø©ØŒ Ø£Ù…Ø± Ø¨Ø¨Ù‚ÙŠØ© Ø´Ø±Ø§Ø¦Ø¹ Ø§Ù„Ø¥Ø³Ù„Ø§Ù…ØŒ Ù…Ø«Ù„ Ø§Ù„Ø²ÙƒØ§Ø©ØŒ ÙˆØ§Ù„ØµÙˆÙ…ØŒ ÙˆØ§Ù„Ø­Ø¬ØŒ ÙˆØ§Ù„Ø£Ø°Ø§Ù†ØŒ ÙˆØ§Ù„Ø¬Ù‡Ø§Ø¯ØŒ ÙˆØ§Ù„Ø£Ù…Ø± Ø¨Ø§Ù„Ù…Ø¹Ø±ÙˆÙØŒ ÙˆØ§Ù„Ù†Ù‡ÙŠ Ø¹Ù† Ø§Ù„Ù…Ù†ÙƒØ±ØŒ ÙˆØºÙŠØ± Ø°Ù„Ùƒ Ù…Ù† Ø´Ø±Ø§Ø¦Ø¹ Ø§Ù„Ø¥Ø³Ù„Ø§Ù…. Ø£Ø®Ø° Ø¹Ù„Ù‰ Ù‡Ø°Ø§ Ø¹Ø´Ø± Ø³Ù†ÙŠÙ†ØŒ ÙˆØ¨Ø¹Ø¯Ù‡Ø§ ØªÙˆÙÙŠØŒ ØµÙ„Ø§Ø© Ø§Ù„Ù„Ù‡ ÙˆØ³Ù„Ø§Ù… Ø¹Ù„ÙŠÙ‡ØŒ ÙˆØ¯ÙŠÙ†Ù‡ Ø¨Ø§Ù‚Ù.</p>\r\n\r\n<p dir="RTL">ÙˆÙ‡Ø°Ø§ Ø¯ÙŠÙ†Ù‡ Ù„Ø§ Ø®ÙŠØ± Ø¥Ù„Ø§ Ø¯Ù„Ù‡ Ø§Ù„Ø£Ù…Ø© Ø¹Ù„ÙŠÙ‡ØŒ ÙˆÙ„Ø§ Ø´Ø± Ø¥Ù„Ø§ Ø­Ø°Ø±Ù‡Ø§ Ù…Ù†Ù‡ØŒ ÙˆØ§Ù„Ø®ÙŠØ± Ø§Ù„Ø°ÙŠ Ø¯Ù„Ù‡Ø§ Ø¹Ù„ÙŠÙ‡: Ø§Ù„ØªÙˆØ­ÙŠØ¯ØŒ ÙˆØ¬Ù…ÙŠØ¹ Ù…Ø§ ÙŠØ­Ø¨Ù‡ Ø§Ù„Ù„Ù‡ ÙˆÙŠØ±Ø¶Ø§Ù‡. ÙˆØ§Ù„Ø´Ø± Ø§Ù„Ø°ÙŠ Ø­Ø°Ø±Ù‡Ø§ Ù…Ù†Ù‡: Ø§Ù„Ø´Ø±Ùƒ ÙˆØ¬Ù…ÙŠØ¹ Ù…Ø§ ÙŠÙƒØ±Ù‡ Ø§Ù„Ù„Ù‡ ÙˆÙŠØ£Ø¨Ø§Ù‡ØŒ Ø¨Ø¹Ø«Ù‡ Ø§Ù„Ù„Ù‡ Ø¥Ù„Ù‰ Ø§Ù„Ù†Ø§Ø³ ÙƒØ§ÙØ©ØŒ ÙˆØ§ÙØªØ±Ø¶ Ø·Ø§Ø¹ØªÙ‡ Ø¹Ù„Ù‰ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø«Ù‚Ù„ÙŠÙ†: Ø§Ù„Ø¬Ù† ÙˆØ§Ù„Ø¥Ù†Ø³.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù‚ÙÙ„Ù’ ÙŠÙŽØ§ Ø£ÙŽÙŠÙÙ‘Ù‡ÙŽØ§ Ø§Ù„Ù†ÙŽÙ‘Ø§Ø³Ù Ø¥ÙÙ†ÙÙ‘ÙŠ Ø±ÙŽØ³ÙÙˆÙ„Ù Ø§Ù„Ù„Ù‘Ù‡Ù Ø¥ÙÙ„ÙŽÙŠÙ’ÙƒÙÙ…Ù’ Ø¬ÙŽÙ…ÙÙŠØ¹Ø§Ù‹ [Ø§Ù„Ø£Ø¹Ø±Ø§Ù:158]. ÙˆÙƒÙ…Ù„ Ø§Ù„Ù„Ù‡ Ø¨Ù‡ Ø§Ù„Ø¯ÙŠÙ†.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„ ØªØ¹Ø§Ù„Ù‰: Ø§Ù„Ù’ÙŠÙŽÙˆÙ’Ù…ÙŽ Ø£ÙŽÙƒÙ’Ù…ÙŽÙ„Ù’ØªÙ Ù„ÙŽÙƒÙÙ…Ù’ Ø¯ÙÙŠÙ†ÙŽÙƒÙÙ…Ù’ ÙˆÙŽØ£ÙŽØªÙ’Ù…ÙŽÙ…Ù’ØªÙ Ø¹ÙŽÙ„ÙŽÙŠÙ’ÙƒÙÙ…Ù’ Ù†ÙØ¹Ù’Ù…ÙŽØªÙÙŠ ÙˆÙŽØ±ÙŽØ¶ÙÙŠØªÙ Ù„ÙŽÙƒÙÙ…Ù Ø§Ù„Ø¥ÙØ³Ù’Ù„Ø§ÙŽÙ…ÙŽ Ø¯ÙÙŠÙ†Ø§Ù‹ [Ø§Ù„Ù…Ø§Ø¦Ø¯Ø©:3].</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ø¹Ù„Ù‰ Ù…ÙˆØªÙ‡ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙÙ†ÙŽÙ‘ÙƒÙŽ Ù…ÙŽÙŠÙÙ‘ØªÙŒ ÙˆÙŽØ¥ÙÙ†ÙŽÙ‘Ù‡ÙÙ… Ù…ÙŽÙ‘ÙŠÙÙ‘ØªÙÙˆÙ†ÙŽ (30) Ø«ÙÙ…ÙŽÙ‘ Ø¥ÙÙ†ÙŽÙ‘ÙƒÙÙ…Ù’ ÙŠÙŽÙˆÙ’Ù…ÙŽ Ø§Ù„Ù’Ù‚ÙÙŠÙŽØ§Ù…ÙŽØ©Ù Ø¹ÙÙ†Ø¯ÙŽ Ø±ÙŽØ¨ÙÙ‘ÙƒÙÙ…Ù’ ØªÙŽØ®Ù’ØªÙŽØµÙÙ…ÙÙˆÙ†ÙŽ [Ø§Ù„Ø²Ù…Ø±:31ØŒ30].</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ù†Ø§Ø³ Ø¥Ø°Ø§ Ù…Ø§ØªÙˆØ§ ÙŠØ¨Ø¹Ø«ÙˆÙ†ØŒ ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù…ÙÙ†Ù’Ù‡ÙŽØ§ Ø®ÙŽÙ„ÙŽÙ‚Ù’Ù†ÙŽØ§ÙƒÙÙ…Ù’ ÙˆÙŽÙÙÙŠÙ‡ÙŽØ§ Ù†ÙØ¹ÙÙŠØ¯ÙÙƒÙÙ…Ù’ ÙˆÙŽÙ…ÙÙ†Ù’Ù‡ÙŽØ§ Ù†ÙØ®Ù’Ø±ÙØ¬ÙÙƒÙÙ…Ù’ ØªÙŽØ§Ø±ÙŽØ©Ù‹ Ø£ÙØ®Ù’Ø±ÙŽÙ‰ [Ø·Ù‡:55]. ÙˆÙ‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽØ§Ù„Ù„ÙŽÙ‘Ù‡Ù Ø£ÙŽÙ†Ø¨ÙŽØªÙŽÙƒÙÙ… Ù…ÙÙ‘Ù†ÙŽ Ø§Ù„Ù’Ø£ÙŽØ±Ù’Ø¶Ù Ù†ÙŽØ¨ÙŽØ§ØªØ§Ù‹ (17) Ø«ÙÙ…ÙŽÙ‘ ÙŠÙØ¹ÙÙŠØ¯ÙÙƒÙÙ…Ù’ ÙÙÙŠÙ‡ÙŽØ§ ÙˆÙŽÙŠÙØ®Ù’Ø±ÙØ¬ÙÙƒÙÙ…Ù’ Ø¥ÙØ®Ù’Ø±ÙŽØ§Ø¬Ø§Ù‹ [Ù†ÙˆØ­:18ØŒ17]. ÙˆØ¨Ø¹Ø¯ Ø§Ù„Ø¨Ø¹Ø« Ù…Ø­Ø§Ø³Ø¨ÙˆÙ† ÙˆÙ…Ø¬Ø²ÙŠÙˆÙ† Ø¨Ø£Ø¹Ù…Ø§Ù„Ù‡Ù….</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽÙ„ÙÙ„ÙŽÙ‘Ù‡Ù Ù…ÙŽØ§ ÙÙÙŠ Ø§Ù„Ø³ÙŽÙ‘Ù…ÙŽØ§ÙˆÙŽØ§ØªÙ ÙˆÙŽÙ…ÙŽØ§ ÙÙÙŠ Ø§Ù„Ù’Ø£ÙŽØ±Ù’Ø¶Ù Ù„ÙÙŠÙŽØ¬Ù’Ø²ÙÙŠÙŽ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ Ø£ÙŽØ³ÙŽØ§Ø¤ÙÙˆØ§ Ø¨ÙÙ…ÙŽØ§ Ø¹ÙŽÙ…ÙÙ„ÙÙˆØ§ ÙˆÙŽÙŠÙŽØ¬Ù’Ø²ÙÙŠÙŽ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ Ø£ÙŽØ­Ù’Ø³ÙŽÙ†ÙÙˆØ§ Ø¨ÙØ§Ù„Ù’Ø­ÙØ³Ù’Ù†ÙŽÙ‰ [Ø§Ù„Ù†Ø¬Ù…:31]. ÙˆÙ…Ù† ÙƒØ°Ø¨ Ø¨Ø§Ù„Ø¨Ø¹Ø« ÙƒÙØ±.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø²ÙŽØ¹ÙŽÙ…ÙŽ Ø§Ù„ÙŽÙ‘Ø°ÙÙŠÙ†ÙŽ ÙƒÙŽÙÙŽØ±ÙÙˆØ§ Ø£ÙŽÙ† Ù„ÙŽÙ‘Ù† ÙŠÙØ¨Ù’Ø¹ÙŽØ«ÙÙˆØ§ Ù‚ÙÙ„Ù’ Ø¨ÙŽÙ„ÙŽÙ‰ ÙˆÙŽØ±ÙŽØ¨ÙÙ‘ÙŠ Ù„ÙŽØªÙØ¨Ù’Ø¹ÙŽØ«ÙÙ†ÙŽÙ‘ Ø«ÙÙ…ÙŽÙ‘ Ù„ÙŽØªÙÙ†ÙŽØ¨ÙŽÙ‘Ø¤ÙÙ†ÙŽÙ‘ Ø¨ÙÙ…ÙŽØ§ Ø¹ÙŽÙ…ÙÙ„Ù’ØªÙÙ…Ù’ ÙˆÙŽØ°ÙŽÙ„ÙÙƒÙŽ Ø¹ÙŽÙ„ÙŽÙ‰ Ø§Ù„Ù„ÙŽÙ‘Ù‡Ù ÙŠÙŽØ³ÙÙŠØ±ÙŒ [Ø§Ù„ØªØºØ§Ø¨Ù†:7]. ÙˆØ£Ø±Ø³Ù„ Ø§Ù„Ù„Ù‡ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø±Ø³Ù„ Ù…Ø¨Ø´Ø±ÙŠÙ† ÙˆÙ…Ù†Ø°Ø±ÙŠÙ†.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø±ÙÙ‘Ø³ÙÙ„Ø§Ù‹ Ù…ÙÙ‘Ø¨ÙŽØ´ÙÙ‘Ø±ÙÙŠÙ†ÙŽ ÙˆÙŽÙ…ÙÙ†Ø°ÙØ±ÙÙŠÙ†ÙŽ Ù„ÙØ¦ÙŽÙ„Ø§ÙŽÙ‘ ÙŠÙŽÙƒÙÙˆÙ†ÙŽ Ù„ÙÙ„Ù†ÙŽÙ‘Ø§Ø³Ù Ø¹ÙŽÙ„ÙŽÙ‰ Ø§Ù„Ù„Ù‘Ù‡Ù Ø­ÙØ¬ÙŽÙ‘Ø©ÙŒ Ø¨ÙŽØ¹Ù’Ø¯ÙŽ Ø§Ù„Ø±ÙÙ‘Ø³ÙÙ„Ù [Ø§Ù„Ù†Ø³Ø§Ø¡:165] ÙˆØ£ÙˆÙ„Ù‡Ù… Ù†ÙˆØ­ Ø¹Ù„ÙŠÙ‡ Ø§Ù„Ø³Ù„Ø§Ù…ØŒ ÙˆØ¢Ø®Ø±Ù‡Ù… Ù…Ø­Ù…Ø¯ ÙˆÙ‡Ùˆ Ø®Ø§ØªÙ… Ø§Ù„Ù†Ø¨ÙŠÙŠÙ†.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ø¹Ù„Ù‰ Ø£Ù† Ø£ÙˆÙ„Ù‡Ù… Ù†ÙˆØ­ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ø¥ÙÙ†ÙŽÙ‘Ø§ Ø£ÙŽÙˆÙ’Ø­ÙŽÙŠÙ’Ù†ÙŽØ§ Ø¥ÙÙ„ÙŽÙŠÙ’ÙƒÙŽ ÙƒÙŽÙ…ÙŽØ§ Ø£ÙŽÙˆÙ’Ø­ÙŽÙŠÙ’Ù†ÙŽØ§ Ø¥ÙÙ„ÙŽÙ‰ Ù†ÙÙˆØ­Ù ÙˆÙŽØ§Ù„Ù†ÙŽÙ‘Ø¨ÙÙŠÙÙ‘ÙŠÙ†ÙŽ Ù…ÙÙ† Ø¨ÙŽØ¹Ù’Ø¯ÙÙ‡Ù [Ø§Ù„Ù†Ø³Ø§Ø¡:163].</p>\r\n\r\n<p dir="RTL">ÙˆÙƒÙ„ Ø£Ù…Ø© Ø¨Ø¹Ø« Ø§Ù„Ù„Ù‡ Ø¥Ù„ÙŠÙ‡Ø§ Ø±Ø³ÙˆÙ„Ø§Ù‹ Ù…Ù† Ù†ÙˆØ­ Ø¥Ù„Ù‰ Ù…Ø­Ù…Ø¯ ÙŠØ£Ù…Ø±Ù‡Ù… Ø¨Ø¹Ø¨Ø§Ø¯Ø© Ø§Ù„Ù„Ù‡ ÙˆØ­Ø¯Ù‡ØŒ ÙˆÙŠÙ†Ù‡Ø§Ù‡Ù… Ø¹Ù† Ø¹Ø¨Ø§Ø¯Ø© Ø§Ù„Ø·Ø§ØºÙˆØª.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: ÙˆÙŽÙ„ÙŽÙ‚ÙŽØ¯Ù’ Ø¨ÙŽØ¹ÙŽØ«Ù’Ù†ÙŽØ§ ÙÙÙŠ ÙƒÙÙ„ÙÙ‘ Ø£ÙÙ…ÙŽÙ‘Ø©Ù Ø±ÙŽÙ‘Ø³ÙÙˆÙ„Ø§Ù‹ Ø£ÙŽÙ†Ù Ø§Ø¹Ù’Ø¨ÙØ¯ÙÙˆØ§Ù’ Ø§Ù„Ù„Ù‘Ù‡ÙŽ ÙˆÙŽØ§Ø¬Ù’ØªÙŽÙ†ÙØ¨ÙÙˆØ§Ù’ Ø§Ù„Ø·ÙŽÙ‘Ø§ØºÙÙˆØªÙŽ [Ø§Ù„Ù†Ø­Ù„:36]. ÙˆØ§ÙØªØ±Ø¶ Ø§Ù„Ù„Ù‡ Ø¹Ù„Ù‰ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø¹Ø¨Ø§Ø¯ Ø§Ù„ÙƒÙØ± Ø¨Ø§Ù„Ø·Ø§ØºÙˆØªØŒ ÙˆØ§Ù„Ø¥ÙŠÙ…Ø§Ù† Ø¨Ø§Ù„Ù„Ù‡.</p>\r\n\r\n<p dir="RTL">Ù‚Ø§Ù„ Ø§Ø¨Ù† Ø§Ù„Ù‚ÙŠÙ… Ø±Ø­Ù…Ù‡ Ø§Ù„Ù„Ù‡: ( Ù…Ø¹Ù†Ù‰ Ø§Ù„Ø·Ø§ØºÙˆØª Ù…Ø§ ØªØ¬Ø§ÙˆØ² Ø¨Ù‡ Ø§Ù„Ø¹Ø¨Ø¯ Ø­Ø¯Ù‡ Ù…Ù† Ù…Ø¹Ø¨ÙˆØ¯ØŒ Ø£Ùˆ Ù…ØªØ¨ÙˆØ¹ØŒ Ø£Ùˆ Ù…Ø·Ø§Ø¹ ).</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø·ÙˆØ§ØºÙŠØª ÙƒØ«ÙŠØ±ÙˆÙ†ØŒ Ø±Ø¤ÙˆØ³Ù‡Ù… Ø®Ù…Ø³Ø©: Ø¥Ø¨Ù„ÙŠØ³ Ù„Ø¹Ù†Ù‡ Ø§Ù„Ù„Ù‡ØŒ ÙˆÙ…Ù† Ø¹Ø¨Ø¯ ÙˆÙ‡Ùˆ Ø±Ø§Ø¶ØŒ ÙˆÙ…Ù† Ø¯Ø¹Ø§ Ø§Ù„Ù†Ø§Ø³ Ø¥Ù„Ù‰ Ø¹Ø¨Ø§Ø¯Ø© Ù†ÙØ³Ù‡ØŒ ÙˆÙ…Ù† Ø§Ø¯Ø¹Ù‰ Ø´ÙŠØ¦Ø§Ù‹ Ù…Ù† Ø¹Ù„Ù… Ø§Ù„ØºÙŠØ¨ØŒ ÙˆÙ…Ù† Ø­ÙƒÙ… Ø¨ØºÙŠØ± Ù…Ø§ Ø£Ù†Ø²Ù„ Ø§Ù„Ù„Ù‡.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ø¯Ù„ÙŠÙ„ Ù‚ÙˆÙ„Ù‡ ØªØ¹Ø§Ù„Ù‰: Ù„Ø§ÙŽ Ø¥ÙÙƒÙ’Ø±ÙŽØ§Ù‡ÙŽ ÙÙÙŠ Ø§Ù„Ø¯ÙÙ‘ÙŠÙ†Ù Ù‚ÙŽØ¯ ØªÙŽÙ‘Ø¨ÙŽÙŠÙŽÙ‘Ù†ÙŽ Ø§Ù„Ø±ÙÙ‘Ø´Ù’Ø¯ Ù…ÙÙ† Ø§Ù„Ù’ØºÙŽÙŠ ÙÙŽÙ…ÙŽÙ† ÙŠÙŽÙƒÙ’ÙÙØ±Ù’ Ø¨Ø§Ù„Ø·ÙŽÙ‘Ø§ØºÙÙˆØª ÙˆÙŽÙŠÙØ¤Ù’Ù…ÙÙ† Ø¨ÙØ§Ù„Ù„Ù‘Ù‡Ù ÙÙŽÙ‚ÙŽØ¯Ù Ø§Ø³Ù’ØªÙŽÙ…Ù’Ø³ÙŽÙƒÙŽ Ø¨ÙØ§Ù„Ù’Ø¹ÙØ±Ù’ÙˆÙŽØ©Ù Ø§Ù„Ù’ÙˆÙØ«Ù’Ù‚ÙŽÙ‰ Ù„ÙŽØ§ Ø§Ù†ÙŽÙÙØµÙŽØ§Ù… Ù„ÙŽÙ‡ÙŽØ§ ÙˆÙŽØ§Ù„Ù„Ù‘Ù‡Ù Ø³ÙŽÙ…ÙÙŠØ¹ÙŒ Ø¹ÙŽÙ„ÙÙŠÙ…ÙŒ [Ø§Ù„Ø¨Ù‚Ø±Ø©:256]. ÙˆÙ‡Ø°Ø§ Ù‡Ùˆ Ù…Ø¹Ù†Ù‰ ( Ù„Ø§ Ø¥Ù„Ù‡ Ø¥Ù„Ø§ Ø§Ù„Ù„Ù‡ ).</p>\r\n\r\n<p dir="RTL">ÙˆÙÙŠ Ø§Ù„Ø­Ø¯ÙŠØ«: <strong>{</strong> Ø±Ø£Ø³ Ø§Ù„Ø£Ù…Ø± Ø§Ù„Ø¥Ø³Ù„Ø§Ù…ØŒ ÙˆØ¹Ù…ÙˆØ¯Ù‡ Ø§Ù„ØµÙ„Ø§Ø©ØŒ ÙˆØ°Ø±ÙˆØ© Ø³Ù†Ø§Ù…Ù‡ Ø§Ù„Ø¬Ù‡Ø§Ø¯ ÙÙŠ Ø³Ø¨ÙŠÙ„ Ø§Ù„Ù„Ù‡ <strong>}</strong>.</p>\r\n\r\n<p dir="RTL">ÙˆØ§Ù„Ù„Ù‡ Ø£Ø¹Ù„Ù…&hellip; ØªÙ…Øª Ø§Ù„Ø£ØµÙˆÙ„ Ø§Ù„Ø«Ù„Ø§Ø«Ø©.</p>\r\n', '1');
INSERT INTO `rb_quiz_materi` (`id_materi`, `id_materi_kategori`, `materi_pokok`, `materi_content`, `user`) VALUES
(11, 7, 'menganalisa video', '<div style="height:0; padding-bottom:56.21%; position:relative"><iframe frameborder="0" height="360" src="https://www.youtube.com/embed/hUdYCh7akcM?ecver=2" style="position:absolute;width:100%;height:100%;left:0" width="641"></iframe></div>\r\n\r\n<div style="height:0; padding-bottom:56.21%; position:relative">&nbsp;</div>\r\n\r\n<div style="height:0; padding-bottom:56.21%; position:relative">ebook ppkn : <a href="/cirlce/kcfinder/upload/files/dejarfa.com%20Modul%20PKB%202017%20PPKn%20SMP%20KK-A.pdf">download</a></div>\r\n', '1'),
(12, 10, 'mtk flash\r\n', '<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" height="100" width="100"><param name="allowFullScreen" value="true" /><param name="quality" value="high" /><param name="movie" value="/cirlce/kcfinder/upload/files/EJECUCI%C3%93N%20DEL%20PROYECTO%20SAMSUNG%20SMART%20SCHOOL%20PER%C3%9A.mp4" /><embed allowfullscreen="true" height="100" pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="/cirlce/kcfinder/upload/files/EJECUCI%C3%93N%20DEL%20PROYECTO%20SAMSUNG%20SMART%20SCHOOL%20PER%C3%9A.mp4" type="application/x-shockwave-flash" width="100"></embed></object></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1'),
(13, 11, 'test', '<p><u>test</u></p>\r\n', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_materi_kategori`
--

CREATE TABLE IF NOT EXISTS `rb_quiz_materi_kategori` (
`id_materi_kategori` int(11) NOT NULL,
  `kode_kelas` varchar(20) NOT NULL,
  `kode_pelajaran` varchar(20) NOT NULL,
  `nama_kategori` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_materi_kategori`
--

INSERT INTO `rb_quiz_materi_kategori` (`id_materi_kategori`, `kode_kelas`, `kode_pelajaran`, `nama_kategori`) VALUES
(1, 'VII', 'MP0702', 'PANGKAT DAN AKAR'),
(2, 'VII', 'MP0702', 'PERSAMAAN KUADRAT'),
(3, 'VII', 'MP0702', 'BARISAN DAN DERET'),
(4, 'IX', 'MP0902', 'bahasa'),
(5, 'IX', 'MP0902', 'proposal'),
(6, 'IX', 'MP0903', 'introduction tik'),
(7, 'VII', 'MP0705', 'GEN'),
(8, 'IX', 'MP0903', 'Test'),
(9, 'VII', 'MP0704', 'ushul tsalatsah'),
(10, 'VIII', 'MP0802', 'test video mtk'),
(11, 'VII', 'MP073', 'test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_ujian`
--

CREATE TABLE IF NOT EXISTS `rb_quiz_ujian` (
`id_quiz_ujian` int(5) NOT NULL,
  `id_kategori_quiz_ujian` int(5) NOT NULL,
  `kodejdwl` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `batas_waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_ujian`
--

INSERT INTO `rb_quiz_ujian` (`id_quiz_ujian`, `id_kategori_quiz_ujian`, `kodejdwl`, `keterangan`, `batas_waktu`) VALUES
(4, 1, 5, 'Quiz Online Nilai Akhir Matematika', '2016-07-20 08:14:24'),
(5, 1, 5, 'hhhb', '2016-07-19 17:19:54'),
(6, 1, 35, 'test bahan', '2018-02-14 09:52:57'),
(7, 1, 36, 'test bahan', '2018-02-16 11:35:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_ruangan`
--

CREATE TABLE IF NOT EXISTS `rb_ruangan` (
  `kode_ruangan` varchar(10) NOT NULL,
  `kode_gedung` varchar(10) NOT NULL,
  `nama_ruangan` varchar(100) NOT NULL,
  `kapasitas_belajar` int(5) NOT NULL,
  `kapasitas_ujian` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_ruangan`
--

INSERT INTO `rb_ruangan` (`kode_ruangan`, `kode_gedung`, `nama_ruangan`, `kapasitas_belajar`, `kapasitas_ujian`, `keterangan`, `aktif`) VALUES
('R001', 'G001', 'A.1', 35, 30, '', 'Ya'),
('R002', 'G001', 'A.2', 40, 35, '', 'Ya'),
('R003', 'G002', 'B.1', 34, 29, '', 'Ya'),
('R004', 'G002', 'B.2', 45, 40, 'erer', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sesi`
--

CREATE TABLE IF NOT EXISTS `rb_sesi` (
`id_sesi` int(5) NOT NULL,
  `nama_sesi` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sesi`
--

INSERT INTO `rb_sesi` (`id_sesi`, `nama_sesi`, `keterangan`, `aktif`) VALUES
(1, 'Semester 1', '', 'Ya'),
(2, 'Semester 2', '', 'Ya'),
(3, 'Semester 3', '', 'Ya'),
(4, 'Semester 4', '', 'Ya'),
(5, 'Semester 5', '', 'Ya'),
(6, 'Semester 6', '', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_siswa`
--

CREATE TABLE IF NOT EXISTS `rb_siswa` (
`id_siswa` int(20) NOT NULL,
  `nipd` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `id_agama` int(5) NOT NULL,
  `kebutuhan_khusus` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `skhun` varchar(50) NOT NULL,
  `penerima_kps` varchar(20) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tahun_lahir_ayah` int(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `kebutuhan_khusus_ayah` varchar(100) NOT NULL,
  `no_telpon_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tahun_lahir_ibu` int(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `kebutuhan_khusus_ibu` varchar(100) NOT NULL,
  `no_telpon_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `tahun_lahir_wali` int(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `status_awal` varchar(20) NOT NULL,
  `status_siswa` enum('Aktif','Tidak Aktif') NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kode_kelas` varchar(50) NOT NULL,
  `id_kls_pararel` int(20) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `id_sesi` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2147483648 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_siswa`
--

INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `id_kls_pararel`, `kode_jurusan`, `id_sesi`) VALUES
(26354847, '151607008', '12345', '	FARADJ FARIZI', 1, '0026354847', '	Purwakarta', '2002-02-04', '3214100403020006', 0, '\r\n							      ', 'Kp. Pasirkiniang 012/005Lebak Anyar Pasawanan', '0', '0', '', 'Lebak Anyar', 'Kec. Pasawahan', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd 0643837    ', '', '1-15-02-22-450-008-9', '', 'Muksin Ridwan', 1968, 'SMA / sederajat', 'Wiraswasta', '\r\n								   ', '', '', 'Faizah', 1980, 'SMA / sederajat', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(42365468, '161707113', '12345', 'AARON ALEXANDER', 1, '0042365468', 'Bekasi', '2004-02-22', '', 0, '\r\n							      ', 'Taman Laguna I/51, Cibubur', '0', '0', '', 'cibubur', 'Kec. Ciracas', 0, 'Bersama orang tua', '', '', '0818393908', '\r\n								   ', 'DN- 02 Dd 0285121   ', '', '1-16-02-13-965-002-7', '', 'ISKANDAR ZULKARNAEN', 1956, 'S2', 'Wiraswasta', '\r\n								   ', '', '', 'TRISUCI WIDHY NAWANGWULAN', 1974, 'S2', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(51656284, '171807001', '12345', 'ABDAD FARZANA MUHAMMAD', 1, '0051656284', 'Surabaya', '2005-01-24', '3578222401050001', 0, '\r\n							      ', 'Gayungsari III/32-B', '3', '4', '', 'Gayungan', 'Kec. Gayungan', 0, 'Asrama', '', '', '08123456619', '\r\n								   ', '', '', '1                   ', '', 'AGUS DHARMES TANTIYONO', 1969, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'NOVIANI RAMADIYANTI', 1969, 'S1', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(52359572, '171807002', '12345', 'ABDILLAH MUHAMMAD AZFAHANI', 1, '0052359572', 'BANDUNG', '2005-04-12', '', 0, '\r\n							      ', 'TERS KOPO GG. H.SOBANDI', '2', '3', '', 'MARGAHAYU SELATAN', 'Kec. Margahayu', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd 10671023   ', '', '1-17-02-10-671-023-2', '', 'AEP SAEPUDIN', 1964, 'Tidak sekolah', '', '\r\n								   ', '', '', 'NURATRY AMBARWATI', 1975, 'Tidak sekolah', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(41555848, '161707001', '12345', 'ABDIRRAHMAN AZIZI HUDZAIFA YAMANI', 1, '0041555848', 'JAKARTA', '2004-10-29', '3175032910040004', 0, '\r\n							      ', 'CIPINANG MUARA NO.8', '1', '5', '', 'CIPINANG MUARA', 'Kec. Jatinegara', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0043128    ', '', '1-16-01-04-226-066-7', '', 'ZAKI YAMANI', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'SUSILO ARUM HANDAYANINGSIH', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(54310190, '171807003', '12345', 'ABDUL BARRI', 1, '0054310190', 'BEKASI', '2005-09-22', '3275042209050001', 0, '\r\n							      ', 'JL ENGGANG RAYA NO 73', '4', '3', '', 'KAYURINGIN JAYA', 'Kec. Bekasi Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'IIP SARIPUDIN', 1975, 'D3', '', '\r\n								   ', '', '', 'RINA NIRAWATI', 1981, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(58738348, '171807004', '12345', 'ABDURROHMAN AL-HILMY', 1, '0058738348', 'Bekasi', '2004-10-23', '', 0, '\r\n							      ', 'Villa Mutiara Wanasari Blok L.22/32', '9', '34', '', 'Wanasari', 'Kec. Cibitung', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 12-18-1572 ', '', '1-17-02-12-670-001-8', '', 'JUNIYANTO', 1978, 'SMA / sederajat', '', '\r\n								   ', '', '', 'MUSRIFAH', 0, 'SMA / sederajat', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(40972947, '161707003', '12345', 'ABYYU ABDUL AZHIM RAIHAN', 1, '0040972947', 'JAKARTA', '2004-07-03', '3176090307040004', 0, '\r\n							      ', 'JL.USMAN NO.8', '11', '4', '', 'KELAPA DUA WETAN', 'Kec. Ciracas', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'DANI', 0, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'NADIYAH BAHMID', 1973, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(50396152, '161707005', '12345', 'ACHMAD NADHMI ARFA', 1, '0050396152', 'Medan', '2005-01-14', '3174081401051001', 0, '\r\n							      ', 'Green Palace Kalibata City Unit N/10/CF Jl.Kalibata Raya No 1', '9', '4', '', 'Rajawati', 'Kec. Pancoran', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'ARIEF ZULKARNAIN', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'YULIA FARICHAH SAHLY', 1975, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(31515445, '151607001', '12345', 'ADAM RIZKY PUTRA ROSENO', 1, '0031515445', 'Sanggatta', '2003-02-05', '6265497656562321', 0, '\r\n							      ', 'Gg. Damai No.97 Poros', '0', '0', '', 'Sangatta Utara', 'Kec. Sangatta Utara', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-16-05-069-001-8', '', 'Roseno', 1981, '', '', '\r\n								   ', '', '', 'Rusnawati', 1981, '', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(26852741, '151607072', '12345', 'ADIB ACHMAD', 1, '0026852741', 'Jakarta', '2002-12-24', '3175032412020004', 0, '\r\n							      ', 'Jl. Catur Tunggal 83 Cipinang Muara Jakarta Timur', '0', '0', '', 'Cipinang', 'Kec. Muara Gembong', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-979-001-8', '', 'Dr. ACHMAD ABDULLAH', 1954, '', '', '\r\n								   ', '', '', 'Khotijah Lahji', 1962, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(31992108, '151607002', '12345', 'AFKAAR MUHAMMAD', 1, '0031992108', 'JAKARTA', '2003-02-12', '3671131202030003', 0, '\r\n							      ', 'JL. PINUS 1 NO.36 KOMP PURI BETA CILEDUG', '0', '0', '', 'CILEDUG', 'Kec. Ciledug', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0040878    ', '', '1-15-01-03-803-029-4', '', 'SABARUDDIN ASPIL', 1970, '', '', '\r\n								   ', '', '', 'WINCE SINDRIA', 1975, '', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(52098849, '171807006', '12345', 'AFLAH ZAIN JAPAMEL', 1, '0052098849', 'JAYAPURA', '2005-05-05', '9171020505050003', 0, '\r\n							      ', 'PERUMAHAN PEMDA I ENTROP', '3', '3', '', 'ENTROP', 'Kec. Jayapura Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-25 D 0001614     ', '', '1-17-25-01-088-004-5', '', 'PRIBOWO ADNAN', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'YENI SUNDIARTI', 1970, 'S1', 'Lainnya', 'Lebih dari Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(62560586, '171807007', '12345', 'AHMAD ATHHAR AWLIYA', 1, '0062560586', 'PANGKALAN BRANDAN', '2005-08-30', '', 0, '\r\n							      ', 'SEVILLA BLOK CG/30 SEKT.XII BSD CITY', '3', '13', '', 'RAWAMEKAR JAYA', 'Kec. Serpong', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'AHMAD HANAFI', 1980, 'Tidak sekolah', '', '\r\n								   ', '', '', 'NITA HAYATI', 1980, 'Tidak sekolah', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(34504492, '151607003', '12345', 'AHMAD FARHAN IBRAHIM', 1, '0034504492', 'JAKARTA', '2003-02-07', '3173010702030002', 0, '\r\n							      ', 'Jl. Dahlia IV Blok AA No.04 KAPUK Cengkareng', '0', '0', '', 'kapuk', 'Kec. Cengkareng', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0040537    ', '', '1-15-01-03-786-002-7', '', 'Dedy Adrianto', 1970, '', '', '\r\n								   ', '', '', 'Dina Aryani', 1977, '', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(31955119, '151607037', '12345', 'AHMAD GASIM BALWEEL', 1, '0031955119', 'MATARAM', '2002-11-27', '3276021107020007', 0, '\r\n							      ', 'Jln. Kapling DKI Blok K No.22 Ceger Cipayung', '0', '0', '', 'Ceger', 'Kec. Cipayung', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-891-003-6', '', 'GASIM AHMAD', 1974, '', '', '\r\n								   ', '', '', 'fathiyah fetty salim', 1968, '', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(51558550, '171807008', '12345', 'AHMAD MUMTAZ', 1, '0051558550', 'SOLOK', '2005-04-26', '', 0, '\r\n							      ', 'PONDOK DAMAI A.5/7', '2', '12', '', 'CILEUNGSI KIDUL', 'Kec. Cileungsi', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'YUDI HARZI', 1973, 'Tidak sekolah', '', '\r\n								   ', '', '', 'NIKE SUFIANI', 1977, 'Tidak sekolah', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(42095575, '161707006', '12345', 'AHMAD NAUFAL', 1, '0042095575', 'Depok', '2004-08-29', '3276022908040006', 0, '\r\n							      ', 'Komp.Dep.Koperasi Blok C.104', '6', '9', '', 'Curug', 'Kec. Cimanggis', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'HENRY PURNAMA', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'EVI KURNIAWATI', 1978, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(40853231, '161707007', '12345', 'AHMAD NUR SYAFIQ AGUNG', 1, '0040853231', 'BONTANG', '2004-06-12', '6474021206040002', 0, '\r\n							      ', 'PC V NO.73 A PT BADAK', '0', '0', '', 'SATIMPO', 'Kec. Bontang Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'AGUNG PAMUJI IRJAYANTOPUTRA', 1974, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'TIAN DESIANA', 1978, 'D3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(45011851, '171807009', '12345', 'AHMAD RASYID ATTHORIQ', 1, '0045011851', 'BOGOR', '2004-12-07', '', 0, '\r\n							      ', 'KP.KAUM NO.30', '2', '11', '', 'CIPARIGI', 'Kec. Kota Bogor Utara', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SHONY', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'DEBY ROSMAYANTI', 1983, 'Tidak sekolah', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(51850108, '171807010', '12345', 'AHMAD SYARIF', 1, '0051850108', 'DEPOK', '2005-08-18', '', 0, '\r\n							      ', 'JL DADAP RAYA DALAM', '7', '1', '', 'MEKARJAYA', 'Kec. Sukmajaya', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HERMAN', 0, 'Tidak sekolah', 'Wiraswasta', '\r\n								   ', '', '', 'NANDA SARI NUR ASIH', 0, 'Tidak sekolah', 'Wiraswasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(36972564, '161707008', '12345', 'AHMAD THORIQ AFIF HUTAGALUNG', 1, '0036972564', 'JAKARTA', '2003-12-15', '3174071512030001', 0, '\r\n							      ', 'JL.SUNGAI PAWAN NO 4', '5', '4', '', 'KRAMAT PELA', 'Kec. Kebayoran Baru', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'LUTHFY B HUTAGALUNG', 1967, 'Tidak sekolah', '', '\r\n								   ', '', '', 'RIETA FARIA FUAD', 1967, 'Tidak sekolah', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(171807011, '171807011', '12345', 'AHMED DAFFA AL GHIFARY', 1, '171807011', 'JAKARTA', '2004-12-11', '', 0, '\r\n							      ', 'KP.BAHARI GG.II NO.238', '5', '6', '', 'TANJUNG PRIOK', 'Kec. Tanjung Priok', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'DENNY IRWANSYAH', 1978, 'Tidak sekolah', '', '\r\n								   ', '', '', 'ETTY YULIASTUTI', 1980, 'Tidak sekolah', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(57413366, '171807012', '12345', 'AIDAN ARASYAH', 1, '0057413366', 'BATAM', '2005-09-29', '', 0, '\r\n							      ', 'PERUM TAMAN MEKAR SARI BLOK C NO.14', '1', '5', '', 'MELAYU KOTA PIRING', 'Kec. Tanjung Pinang Timur', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'AMRAN HALIM', 0, 'Tidak sekolah', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'NOVI SUSANTI', 0, 'Tidak sekolah', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(38673453, '151607004', '12345', 'AKBAR RIZKY RAMADHAN', 1, '0038673453', 'JAKARTA', '2003-11-10', '6201021011030007', 0, '\r\n							      ', 'Jl. Sudirman SH nO 24', '3', '0', '', 'SIDOREJO', 'Kec. Sidorejo', 0, '', '', '', '', '\r\n								   ', 'DN-14 Dd 0005414    ', '', '1-15-14-02-015-032-9', '', 'Untung Efendi', 1977, '', '', '\r\n								   ', '', '', 'Gita Setiarini', 1984, '', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(44660161, '161707115', '12345', 'AKHMAD FARHAN ATHALLAH NASRUM', 1, '0044660161', 'KENDARI', '2004-04-17', '7471101704040002', 0, '\r\n							      ', 'JL PROF DR ABD RAUF TARIMANA NO.17', '20', '7', '', 'KAMBU', 'Kec. Kambu', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ANDI AKHMAD NASRUM', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'SRI SETIAWATI SANGGULA BALAKA', 1977, 'S1', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(49199786, '171807013', '12345', 'AKIRA CHIKO BELVASKA', 1, '0049199786', 'Jakarta', '2005-06-01', '3172020106050004', 0, '\r\n							      ', 'Jl. Swasembada Timur VIII No.34', '9', '10', '', 'Kebon Bawang', 'Kec. Tanjung Priok', 0, 'Asrama', '', '', '087780896660', '\r\n								   ', 'DN-01 Dd 0024088    ', '', '1-17-01-02-150-064-9', '', 'DANI PALAPA EGA PUTRA', 1975, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'ADE AMELIA', 1975, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(59671129, '171807014', '12345', 'AKMAL ABDURRASYID', 1, '0059671129', 'JAKARTA', '2005-05-24', '', 0, '\r\n							      ', 'TPC BLOK A10 NO.21', '1', '14', '', 'JAKA MULYA', 'Kec. Bekasi Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HERI ZATMANTO', 1972, 'Tidak sekolah', '', '\r\n								   ', '', '', 'ENNY YULIANINGSIH', 1972, 'Tidak sekolah', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(31279727, '151607038', '12345', 'AKMAL MUHAMMAD FADHILAH', 1, '0031279727', 'JAKARTA', '2003-02-27', '3275122702030006', 0, '\r\n							      ', 'GRIYA JATI MURNI BLOK D/10 KEL. JATIMURNI KEC. PONDOK MELATI', '0', '0', '', 'Jati Murni', 'Kec. Pondok Melati', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0109243    ', '', '1-15-01-05-778-006-3', '', 'ACHMADI', 1964, '', '', '\r\n								   ', '', '', 'Alita Suryani', 1965, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(33913578, '151607039', '12345', 'AKMAL MULKI MADANI', 1, '0033913578', 'DEPOK', '2003-11-19', '3201021911030012', 0, '\r\n							      ', 'Legenda Wisata Zona Eintein R9 /27 Cibubur', '0', '0', '', 'Gunung Putri', 'Kec. Cileungsi', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0113592    ', '', '1-15-01-05-721-002-7', '', 'AEP KUSMAWAN', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'dewi giantikawati', 1976, 'D3', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(57171135, '171807015', '12345', 'ALEXANDER MUHAMMAD NAABIL', 1, '0057171135', 'JAKARTA', '2005-01-10', '', 0, '\r\n							      ', 'JL KAYU PUTIH UTR III D/14', '2', '8', '', 'PULO GADUNG', 'Kec. Pulo Gadung', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SATRIYO BUDI JATMIKO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'GIRI PROBOWATI', 0, 'Tidak sekolah', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(31956688, '151607073', '12345', 'ALIF ABYAN AL-HAQI', 1, '0031956688', 'JAKARTA', '2003-07-07', '3276010707030014', 0, '\r\n							      ', 'JL MELON BLOK A5/12', '7', '10', '', 'RANGKAPAN JAYA', 'Kec. Pancoran Mas', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-02-07-241-029-4', '', 'ANTON YUDHANTO', 0, '', '', '\r\n								   ', '', '', 'RAHMAH SABHANI', 0, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(33256724, '151607074', '12345', 'ALIF DAFA RAMADHAN', 1, '0033256724', 'Jakarta', '2003-10-28', '3172045007790006', 0, '\r\n							      ', 'Jl. Derek Komp. Perum. PT. PELINDO II', '0', '0', '', 'Rawabadak', 'Kec. Cibadak', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-02-504-003-6', '', 'DJEFRI HERLANDI', 1975, '', '', '\r\n								   ', '', '', 'Rachmah widyastut', 1979, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(46958785, '161707010', '12345', 'ANANDHITTA RAFIF MUSYAFFA', 1, '0046958785', 'Depok', '2004-04-24', '3276052404040006', 0, '\r\n							      ', 'Depok Mulya 2 Blok .AA No.12 A', '7', '2', '', 'Beji', 'Kec. Beji', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'ANDI PRIYONO', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'SITTA DEWI ALFIYANI', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(56445707, '171807016', '12345', 'ANANDHITTA RAFIQ AKMAL', 1, '0056445707', 'KEDAH', '2005-09-07', '', 0, '\r\n							      ', 'DEPOK MULYA 2 BLOK AA NO.12 A', '7', '2', '', 'BEJI', 'Kec. Beji', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ANDI PRIYONO', 1976, 'Tidak sekolah', '', '\r\n								   ', '', '', 'SITTA DEWI ALFIYANI', 1976, 'Tidak sekolah', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(43231714, '161707011', '12345', 'ANAS GHIFARI KEMAPUTRA', 1, '0043231714', 'Jakarta', '2004-01-20', '3276022001040011', 0, '\r\n							      ', 'Pondok Cibubur Blok F3 No. 9', '3', '8', '', 'Cisalak Pasar', 'Kec. Cimanggis', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'PURWAJI', 1970, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'MAYA SITA DARLINA', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(32454870, '151607005', '12345', 'ANDI MUHAMMAD FAWWAZ AHNAF', 1, '0032454870', 'JAKARTA', '2003-05-11', '3172021105030009', 0, '\r\n							      ', 'Jl. Yos Sudarso Kebon bawang I No.7', '5', '7', '', 'Kebon Bawang', 'Kec. Tanjung Priok', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-01 Dd 0024040    ', '', '1-15-01-02-403-004-5', '', 'Andi Muh Yusuf', 1968, '', '', '\r\n								   ', '', '', 'HJ YANI NILAWATI', 1970, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(51844883, '171807005', '12345', 'ANDRAZA MALIKA YUSRIL', 1, '0051844883', 'JAKARTA', '2005-01-12', '', 0, '\r\n							      ', 'JL CHRYSAN J2/9 TAMAN GALAXY BEKASI 6', '0', '0', '', 'JAKA MULYA', 'Kec. Bekasi Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'RAMA FIRDAUSI YUSRIL', 0, 'Tidak sekolah', 'Karyawan Swasta', '\r\n								   ', '', '', 'RACHMA YULIARIZA', 0, 'S1', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(55406200, '161707012', '12345', 'ARIEF RIZQI ABDURRAHMAN', 1, '0055406200', 'JAKARTA', '2005-04-17', '3175011704050002', 0, '\r\n							      ', 'JL.PISANGAN BARU UTARA', '13', '13', '', 'PISANGAN UTARA', 'Kec. Matraman', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'EDY SUHENDRA', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'DARNELA', 1973, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(53651570, '171807018', '12345', 'ARIQ ROZANDHIYA', 1, '0053651570', 'JAKARTA', '2005-06-20', '', 0, '\r\n							      ', 'VILLA BOGOR INDAH 3 BLOK BA. 4 NO.3', '3', '15', '', 'KEDUNGHALANG', 'Kec. Kota Bogor Utara', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'YANYAN SURVIYANA', 1974, 'Tidak sekolah', '', '\r\n								   ', '', '', 'DIDAH SUPARIDAH', 1978, 'Tidak sekolah', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(33319212, '151607006', '12345', 'ARKA NABIEL RANUKUMBALA', 1, '0033319212', 'TANGERANG', '2003-03-14', '3276111403030003', 0, '\r\n							      ', 'PAMULANG ELOK M2 NO.8', '0', '0', '', 'PAMULANG', 'Kec. Pamulang', 0, '', '', '', '', '\r\n								   ', 'DN-30 Dd 0063499    ', '', '1-15-30-04-251-031-2', '', 'NOFRIZAL', 1975, '', '', '\r\n								   ', '', '', 'FARAIDA NAFIRI', 1973, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(34893909, '161707013', '12345', 'ARKAN DIWANTO EKA PUTRA', 1, '0034893909', 'TANGERANG', '2003-10-23', '3674032310030010', 0, '\r\n							      ', 'PONDOK AREN', '3', '5', '', 'PONDOK KACANG TIMUR', 'Kec. Pondok Aren', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'MISWANTO', 1974, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'DIAN ARIFITRI', 1981, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(41795458, '151607109', '12345', 'ARKANDHIA IHSAN', 1, '0041795458', 'Surabaya', '2004-01-09', '3578220901040001', 0, '\r\n							      ', 'Jl.Gayungsari 11/44', '2', '5', '', 'Gayungan', 'Kec. Gayungan', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-05-01-362-007-2', '', 'YUDHA BRAMANTIA', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ETI SUNDARI', 1977, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(56540305, '171807019', '12345', 'ATARIZAL RAHMADIAR AZHAR', 1, '0056540305', 'SURAKARTA', '2005-10-23', '', 0, '\r\n							      ', 'JL.PAJAJARAN BARAT 01 NO.55', '3', '17', '', 'SUMBER', 'Kec. Banjarsari', 0, '', '', '', '', '\r\n								   ', 'DN-30 Dd 0180974    ', '', '1-17-30-08-767-006-3', '', 'IBNU KURNIAWAN', 1979, 'Tidak sekolah', '', '\r\n								   ', '', '', 'RESTY IRFIANI', 1980, 'Tidak sekolah', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(30898980, '151607007', '12345', 'AZHAR SIDIK WIDYATNA', 1, '0030898980', 'JAKARTA', '2003-09-21', '3175012109031001', 0, '\r\n							      ', 'JL. Lapangan Tembak Jakarta', '0', '0', '', 'Cibubur', 'Kec. Ciracas', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-784-024-9', '', 'ERWIN FIRDAUS', 1969, '', '', '\r\n								   ', '', '', 'EKA MEIFRINA SURMANINGSIH', 1973, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(44143548, '161707014', '12345', 'BAGINDA RAHMAT P.HARAHAP', 1, '0044143548', 'Jeddah', '2004-07-17', '3174071707041002', 0, '\r\n							      ', 'Jl.Sungai Pawan No.4', '5', '7', '', 'Kramat Pela', 'Kec. Kebayoran Baru', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'MUHAMMAD YUNUS', 1966, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'NINA MUSDALIFA HUTAGALUNG', 1974, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(39319400, '151607108', '12345', 'BELLY ANPASEMA RAHMAT', 1, '0039319400', 'Bandarlampung', '2003-03-11', '5999323284478153', 0, '\r\n							      ', 'JL. SOEKARNO HATTA KOTYA BUMI LAMPUNG UTARA', '0', '0', '', 'kota bumi', 'Kec. Abung Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-12-04-064-630-2', '', 'syamsuardi', 0, '', '', '\r\n								   ', '', '', 'WIWID DYAH PURWANTI', 0, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(41931767, '161707015', '12345', 'BIDTAMA ARNO FEBRIYAN', 1, '0041931767', 'NGANJUK', '2004-01-31', '3201063101040008', 0, '\r\n							      ', 'CITRA INDAH BUKIT CEMPAKA Y-12/17', '5', '8', '', 'SUKAMAJU', 'Kec. Jonggol', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'YUNARNO', 1979, 'SMA / sederajat', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'YUNI WULANDARI', 1982, 'SMA / sederajat', 'Wiraswasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(33431390, '151607075', '12345', 'BILAL FIKRY', 1, '0033431390', 'Jakarta', '2003-08-06', '3174010608030003', 0, '\r\n							      ', 'Jl. Cipinang Cempedak II No. IIB', '0', '0', '', 'Cipinang', 'Kec. Jatinegara', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-979-009-8', '', 'FIKRY ABDULLAH SAID', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'FATIMAH GHOZI HARHARAH', 1981, 'S1', 'Lainnya', 'Lebih dari Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(54326193, '171807020', '12345', 'BIMA ANANTA DIANDARU', 1, '0054326193', 'BANYUWANGI', '2005-05-28', '5102040805050002', 0, '\r\n							      ', 'JL I GUSTI NGURAH RAI BTN TAWANJUKA BLOK F 11', '1', '2', '', 'TAWANJUKA', 'Kec. Tatanga', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'TUTUNG SUPRIANTO', 1981, 'S1', '', '\r\n								   ', '', '', 'IKA PURWANTINI', 1981, 'S1', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(52678277, '171807021', '12345', 'CHAISAL FARABI', 1, '0052678277', 'JAKARTA', '2005-04-07', '', 0, '\r\n							      ', 'JL.JATI PADANG I/9', '5', '3', '', 'JATI PADANG', 'Kec. Pasar Minggu', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SUMARTONO', 1969, 'Tidak sekolah', '', '\r\n								   ', '', '', 'SILVI YUNARNI', 1970, 'Tidak sekolah', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(36803188, '151607076', '12345', 'CLARENCE GERARD LESMANA', 1, '0036803188', 'Bekasi', '2003-06-18', '3171061806031001', 0, '\r\n							      ', 'Perumahan Puri Cirnere Jl. Ciater Blok D3 No.15', '0', '0', '', 'Cirnere', 'Kec. Ciater', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0079555    ', '', '1-15-01-04-198-007-2', '', 'Yosaphat Dwi Lesmana', 0, '', '', '\r\n								   ', '', '', 'Bunga Kurnia M.P', 1982, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(53217127, '171807022', '12345', 'DAFA AKHDAN ABDULLAH', 1, '0053217127', 'JAKARTA', '2005-06-03', '', 0, '\r\n							      ', 'TEBET BARAT DALAM 7B', '0', '0', '', 'TEBET', 'Kec. Tebet', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ABDUL ROHIM', 0, 'Tidak sekolah', 'Wiraswasta', '\r\n								   ', '', '', 'AYU BANOWATI', 0, 'Tidak sekolah', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(40879854, '161707016', '12345', 'DAFFA NAUFALDIYAN', 1, '0040879854', 'Jakarta', '2004-03-12', '3271051203040005', 0, '\r\n							      ', 'Villa Bogor Indah 3 Blok BA.4 No.3', '3', '15', '', 'Kedunghalang', 'Kec. Kota Bogor Utara', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'YAN YAN SURVIYANA', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'DIDAH SUPARIDAH', 1978, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(30898987, '151607077', '12345', 'DAVIN AFZAAL SYAH', 1, '0030898987', 'Kendal', '2003-11-29', '3275102911030004', 0, '\r\n							      ', 'Cibubur Villa I Kranggan', '0', '0', '', 'Cibubur', 'Kec. Jatiasih', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-784-004-5', '', 'Hanif Harits Syah', 1975, '', '', '\r\n								   ', '', '', 'Diah Mastuti Ningrum', 1975, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(57352920, '171807023', '12345', 'DIANDRA RAMADHAN DWIPUTRA SETIAWAN', 1, '0057352920', 'PALEMBANG', '2005-10-13', '', 0, '\r\n							      ', 'JL AROEPALA HARTASNING BARU KOMPLEK PERMATA HIJAU LESTARI BLOK P15 NO 1', '0', '0', '', 'KASSI-KASSI', 'Kec. Rappocini', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ABROR SETIAWAN', 0, 'Tidak sekolah', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'SRI WAHYUNINGSIH', 0, 'Tidak sekolah', 'Lainnya', 'Tidak Berpenghasilan\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(34998325, '161707039', '12345', 'DIDAN NAUFAL HAKIM', 1, '0034998325', 'Jakarta', '2003-11-29', '3172022911030009', 0, '\r\n							      ', 'Jl.Swasembada Barat III No.43', '23', '9', '', 'Kebon Bawang', 'Kec. Tanjung Priok', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-01 Dd 0123312    ', '', '1-16-01-02-397-044-5', '', 'TEGUH BUDI ISMANTO', 1972, 'SMA / sederajat', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'IRNA ISTANTI', 1973, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(171807024, '171807024', '12345', 'DIMAS FACHRII POETRA', 1, '171807024', 'Kediri', '2017-07-10', '', 0, '\r\n							      ', 'Jl. Lubuk Kasih T No.11', '1', '5', '', 'Jatiwaringin', 'Kec. Pondokgede', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HADI MULYANTO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'MEITA VRIDIYANTI', 1975, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(57547312, '171807025', '12345', 'DIMAS MAULANA HARTOYO', 1, '0057547312', 'BEKASI', '2005-02-13', '', 0, '\r\n							      ', 'CIKIWUL', '4', '6', '', 'CIKIWUL', 'Kec. Bantargebang', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HARTOYO', 1967, 'Tidak sekolah', '', '\r\n								   ', '', '', 'TUTIK SUSANTI', 1974, 'Tidak sekolah', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(59590464, '171807026', '12345', 'DIMAS RAFI ADHIPRAMANA', 1, '0059590464', 'Jakarta', '2005-05-04', '3172030405050005', 0, '\r\n							      ', 'Jl.Alur Laut 488', '2', '1', '', 'Rawa Badak Utara', 'Kec. Koja', 0, 'Asrama', '', '', '081311511729', '\r\n								   ', 'DN-01 Dd 0026525    ', '', '1-17-01-02-213-065-8', '', 'DARMUJI', 1972, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'TRIA SWARASTIARI', 1975, 'SMA / sederajat', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(52290332, '171807027', '12345', 'DIRGHAM MALIK BUDIMAN', 1, '0052290332', 'DEPOK', '2005-02-04', '', 0, '\r\n							      ', 'PERMATA DEPOK SEKTOR NILAM F10-9', '7', '7', '', 'PODOK JAYA', 'Kec. Cipayung', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ARIEF BUDIMAN', 1976, 'Tidak sekolah', '', '\r\n								   ', '', '', 'LINDA AGUSTINA', 1973, 'Tidak sekolah', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(43591839, '161707017', '12345', 'DYLON PUTRO SETIAWAN', 1, '0043591839', 'Jakarta', '2004-08-17', '3671091708040003', 0, '\r\n							      ', 'Jl.Mina Blok I-III No.11', '3', '12', '', 'Panunggangan Barta', 'Kec. Cibodas', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'IWAN SETIAWAN', 1973, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'DWI RESANTI', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(59069592, '171807028', '12345', 'DZAKWAN FARREL KUSUMA', 1, '0059069592', 'YOGYAKARTA', '2005-05-14', '', 0, '\r\n							      ', 'KADIPATEN KIDUL 57/01', '6', '2', '', 'KADIPATEN', 'Kec. Kraton', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'IWAN PERMADI KUSUMA', 1980, 'Tidak sekolah', '', '\r\n								   ', '', '', 'SITA NURMARI PUTRI UTAMI', 1980, 'Tidak sekolah', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(39777288, '151607040', '12345', 'DZAKY AL WAFI NASIR', 1, '0039777288', 'Jakarta', '2003-05-18', '3175101805030001', 0, '\r\n							      ', 'Taman Jati Sari Permai Cluster Bali', '0', '0', '', 'JATI SARI', 'Kec. Jatiasih', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0080407    ', '', '1-15-02-03-665-041-8', '', 'Ikhwanul Arif', 1978, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'Elis Haryati', 1976, 'SMA / sederajat', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(41890283, '161707018', '12345', 'DZAKY RAHMAN', 1, '0041890283', 'Jakarta', '2004-04-13', '3175091304041002', 0, '\r\n							      ', 'Jl.Al Husnah No.71', '4', '1', '', 'Kelapa Dua Wetan', 'Kec. Ciracas', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'AHMAD YANI', 1968, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'LINDA DAMAYANTI', 1976, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(35252493, '161707019', '12345', 'EMIR FARELL KURNIAWAN', 1, '0035252493', 'Jakarta', '2003-11-15', '3273011511030003', 0, '\r\n							      ', 'Sarijadi Blok 10 No.96', '4', '4', '', 'Sarijadi', 'Kec. Sukasari', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'FAJRUL KURNIAWAN', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'NUKE RISQIANA', 1976, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(33431380, '151607078', '12345', 'FADHIL NADJIB HARHARAH', 1, '0033431380', 'Jakarta', '2003-03-16', '3175031603030006', 0, '\r\n							      ', 'Jl. Asuransi No.7 Otista 3', '0', '0', '', 'Jatinegara', 'Kec. Jatinegara', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0125458    ', '', '1-15-01-05-979-012-5', '', 'Nadjib Harharah', 0, '', '', '\r\n								   ', '', '', 'Azizah Husein', 1969, '', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(171807029, '171807029', '12345', 'FADHLI MOHAMMAD RIZQI', 1, '171807029', 'DEPOK', '2005-12-08', '', 0, '\r\n							      ', 'JL KWINTANG VII BLOK L-30', '32', '9', '', 'SETIADARMA', 'Kec. Tambun Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'FATHAN MOHAMMAD NOOR', 1968, 'Tidak sekolah', '', '\r\n								   ', '', '', 'MIEKE KARYATI', 1972, 'Tidak sekolah', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(45097431, '171807030', '12345', 'FAIZ ARHANDI RACHMAN', 1, '0045097431', 'JAKARTA', '2004-10-27', '', 0, '\r\n							      ', 'JL. PANCA WARNA I/5', '1', '11', '', 'KAYU PUTIH', 'Kec. Pulo Gadung', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'CHARLES SUJUDI RACHMAN', 1967, 'S1', '', '\r\n								   ', '', '', 'WULAN CAHYANI', 1968, 'Tidak sekolah', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(31563051, '151607041', '12345', 'FAKHRI M. AHSAN', 1, '0031563051', 'Denpasar', '2003-08-24', '5103052408030002', 0, '\r\n							      ', 'Jl. Pondok Betung Raya, Kav 84 Green Linea B5', '0', '0', '', 'Bintaro', 'Kec. Pesanggrahan', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-30-04-418-009-8', '', 'Moh. Arsyad Syahria', 1972, 'S2', 'Karyawan Swasta', '\r\n								   ', '', '', 'Tipluk rizuli redati', 1974, 'S1', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(37067393, '151607079', '12345', 'FALAH ALGHIFFARI RIZQI', 1, '0037067393', 'JAKARTA', '2003-08-06', '3674060608030007', 0, '\r\n							      ', 'Jl. Karyawan No.28', '10', '17', '', 'Kedaung', 'Kec. Pamulang', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-04-830-005-4', '', 'Ekky Mokhamad Rizqi', 1972, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'Nadewi', 1973, 'S1', 'Wiraswasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(42375957, '161707020', '12345', 'FALAH RAZAN HIBRIZI', 1, '0042375957', 'Jakarta', '2004-02-06', '3173010602041005', 0, '\r\n							      ', 'Rawa Buaya', '6', '1', '', 'Rawa Buaya', 'Kec. Cengkareng', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'LUTFI KAMALUDIN', 1978, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'SRI MULYANI', 1982, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(55997560, '171807031', '12345', 'FARIQ NABIL ARIF', 1, '0055997560', 'TANGERANG', '2005-08-28', '', 0, '\r\n							      ', 'KP BUARAN ARMAYA', '16', '4', '', 'TEGAL KUNIR KIDUL', 'Kec. Mauk', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-30 Dd 0011818    ', '', '1-17-30-18-182-008-9', '', 'ARIP SYARIP FIRDAUS', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'DEWI MAYANTIKA', 0, 'Tidak sekolah', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(37803548, '151607042', '12345', 'FARIS NAUFAL ARIF', 1, '0037803548', 'Tangerang', '2003-05-12', '3603081205030004', 0, '\r\n							      ', 'Jalan Raya Mauk Km.20 Desa Tegal Kunir Kidu', '0', '0', '', 'PEKAYON', 'Kec. Sukadiri', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-30-18-182-008-9', '', 'Arip Syarif Firdaus', 1972, 'S1', '', '\r\n								   ', '', '', 'Dewi Mayantika', 1977, 'S1', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(53512572, '171807032', '12345', 'FARIS RAMADHAN HARIANANDA', 1, '0053512572', 'JAKARTA', '2005-10-14', '', 0, '\r\n							      ', 'JL.BAMBU KUNING IX NO.5', '11', '3', '', 'CENGKARENG BARAT', 'Kec. Cengkareng', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0037794    ', '', '1-17-01-03-784-045-4', '', 'DARRYL HARIANANDA', 1972, 'Tidak sekolah', '', '\r\n								   ', '', '', 'DEWI SAFITRI', 1974, 'Tidak sekolah', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(51344053, '161707021', '12345', 'FARRAS DARY FIRDAUS HUSAIN', 1, '0051344053', 'Jakarta', '2005-01-27', '3674042701050001', 0, '\r\n							      ', 'Villa Jombang Baru Blok D 4/3', '14', '3', '', 'Jombang', 'Kec. Ciputat', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'MAHAWARMAN HUSAIN A', 1970, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'KRISSY TRIANA DEWI', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(56244132, '171807033', '12345', 'FATHAN RAFIF ADHRIANO', 1, '0056244132', 'DEPOK', '2005-06-06', '', 0, '\r\n							      ', 'JL.LAKSANA UJUNG PERMATA', '10', '2', '', 'LIMBUNGAN BARU', 'Kec. Rumbai Pesisir', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'WILLY ADHRIANO', 0, 'Tidak sekolah', 'Karyawan Swasta', '\r\n								   ', '', '', 'RIALITA HAYATI', 0, 'Tidak sekolah', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(33999981, '151607043', '12345', 'FATUR ARRAHMAN', 1, '0033999981', 'BALIKPAPAN', '2003-01-12', '6471051201030002', 0, '\r\n							      ', 'JL. RAWAJATI BARAT 012/004 Kalibata City Tower Gaha', '0', '0', '', 'Kalibata', 'Kec. Pancoran', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0095696    ', '', '1-15-01-04-528-033-8', '', 'PANDU SETA AJI', 1977, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Roswaty Mochtar', 1978, 'SMA / sederajat', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(31638526, '151607080', '12345', 'FAUZAN ADRIYANTO', 1, '0031638526', 'JAKARTA', '2003-10-09', '3172030910030010', 0, '\r\n							      ', 'KP. BENDUNGAN MELAYU RT. 005/005 KEL. TUGU SELATAN', '5', '5', '', 'TUGU SELATAN', 'Kec. Koja', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0001299    ', '', '1-15-01-02-476-013-4', '', 'AGUS SURYANTO', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ferry haryati', 1979, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(30457526, '151607113', '12345', 'FAUZAN FAJRI RIZQULLAH', 1, '0030457526', 'Temanggung', '2003-01-30', '', 0, '\r\n							      ', 'Jl. Pondok Kopi II Blok C /16', '8', '9', '', 'Pondok Kopi', 'Kec. Duren Sawit', 0, 'Asrama', '', '', '087877932113', '\r\n								   ', '', '', '1-14-01-05-042-053-4', '', 'M.CHAIDIR', 1959, 'S1', 'Pensiunan', '\r\n								   ', '', '', 'IKE NURHAYA', 1964, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(158044303, '151607009', '12345', 'FAUZAN NADHIF', 1, '0158044303', '	JAKARTA', '2003-04-13', '3175101304031002', 0, '\r\n							      ', 'Cilangkap No.57', '2', '4', '', 'Cilangkap', 'Kec. Cipayung', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-917-067-6', '', 'Abdullah', 0, '', '', '\r\n								   ', '', '', 'Sriyani', 1980, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(32947151, '151607081', '12345', 'FAUZUR RIZQIY', 1, '0032947151', 'Merauke', '2003-03-06', '9101010603030003', 0, '\r\n							      ', 'Jl. Raya Mandala No.100 Merauke Papua', '0', '0', '', 'MERAUKE', 'Kec. Merauke', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-25-05-007-046-3', '', 'Sopardi RH', 1970, '', '', '\r\n								   ', '', '', 'Rina el vita', 1977, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(40457530, '161707022', '12345', 'FAYYAZ FATTAN GHIFARI', 1, '0040457530', 'BEKASI', '2004-09-15', '3275041509040004', 0, '\r\n							      ', 'PONDOK SURYA MANDALA BLOK N/8', '3', '13', '', 'JAKA MULYA', 'Kec. Bekasi Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'AGUS HERMAWAN', 1969, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'HENGGAR SETYO WENING', 1975, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(37083005, '151607044', '12345', 'FAZA AULIA MAZAYA', 1, '0037083005', 'BEKASI', '2003-03-14', '3275081403030023', 0, '\r\n							      ', 'Jl. Kp. Kemang Jati cempaka Pondok Gede', '3', '2', '', 'Jati cempaka', 'Kec. Pondokgede', 0, 'Asrama', '', '', '081286016403', '\r\n								   ', '', '', '9-14-01-05-928-001-7', '', 'Tri iswachyono', 1970, '', '', '\r\n								   ', '', '', 'Nurhayati', 1974, 'S2', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(52319702, '171807034', '12345', 'FERRIS ZULFA IBRAHIM', 1, '0052319702', 'BREBES', '2005-01-14', '', 0, '\r\n							      ', 'JL.HARUN VII', '7', '3', '', 'TANJUNG BARAT', 'Kec. Jagakarsa', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HERU AGUS WIDARTO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'VIVIN WINDARI', 1980, 'Tidak sekolah', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(31673282, '151607045', '12345', 'FERZA NOVERI', 1, '0031673282', 'JAKARTA', '2003-02-21', '3275022102030019', 0, '\r\n							      ', 'Perum. D Spring Of Tomorrow Sidoarjo Jawa Timur', '0', '0', '', 'Gedangan', 'Kec. Sidoarjo', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 D.sd 1109896  ', '', '1-15-05-11-429-038-3', '', 'YHON NOVERI', 1969, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'YUSANA', 1974, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(44870274, '161707030', '12345', 'FIRMANSYAH ALMER AZMI', 1, '0044870274', 'YOGYAKARTA', '2004-12-23', '3217082312040010', 0, '\r\n							      ', 'KOTA WISATA COATES VILLE BLOK SC.6/25', '1', '44', '', 'CIANGSANA', 'Kec. Gunungputri', 0, '', '', '', '', '\r\n								   ', '', '', '1-16-02-13-147-081-8', '', 'YERIKO AZMI', 1967, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'LENCANA FITRI', 1968, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(41376685, '161707023', '12345', 'FURQON ARRAHIM', 1, '0041376685', 'Balikpapan', '2004-05-16', '6471051605040005', 0, '\r\n							      ', 'Apt Kalibata City Unit B/12/CA Jl.TMP Kalibata', '1', '4', '', 'Rajawati', 'Kec. Pancoran', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'PANDU SETA AJI', 1977, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ROSWATY MOCHTAR', 1978, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(41311983, '161707024', '12345', 'GANANG ABIMANYU', 1, '0041311983', 'Jakarta', '2004-04-19', '3671061904040002', 0, '\r\n							      ', 'Perum Mahkota Simprug Blok A11-14', '4', '15', '', 'Paninggilan Utara', 'Kec. Ciledug', 0, '', '', '', '', '\r\n								   ', '', '', '1-16-30-02-479-059-6', '', 'Samsul', 1968, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Maryani', 1977, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(41273670, '161707025', '12345', 'GATAR ANDARU ADHIMAKAYASA', 1, '0041273670', 'Malang', '2004-02-26', '3671112602040003', 0, '\r\n							      ', 'Jl.Anggrek Catteleya C.315 PGP', '5', '6', '', 'Pinang', 'Kec. Pinang', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'GATOT JATI KUSUMO', 1966, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'ARDHIANA RISWARI', 1974, 'S2', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(48832111, '161707114', '12345', 'GENTAR RAJA SUDIRO', 1, '0048832111', 'JAKARTA', '2004-02-10', '3173071002040003', 0, '\r\n							      ', 'JL KEMANGGISAN ILIR V/79', '5', '13', '', 'PALMERAH', 'Kec. Palmerah', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-01 Dd 0132983    ', '', '1-16-01-04-089-009-8', '', 'ARISONA SUDIRO', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'PRAKTI SERDANI', 1979, 'S1', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(33023369, '151607046', '12345', 'GHANI MAULA FATHAN', 1, '0033023369', 'JAKARTA', '2003-08-28', '3674062808030002', 0, '\r\n							      ', 'VILLA CINERE MAS, JL. MATAHARI RAYA BLOK L2/18', '0', '0', '', 'CINERE', 'Kec. Cinere', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0081457    ', '', '1-15-01-04-819-005-4', '', 'JUNAIDI', 1968, 'S1', '', '\r\n								   ', '', '', 'Yena Arenia', 1965, 'S1', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(28863419, '151607010', '12345', 'GHEITSA MUHAMMAD DAFFA DZIKRO', 1, '0028863419', 'JAKARTA', '2002-12-02', '3175020212021003', 0, '\r\n							      ', 'THB Jl. Tulip Utama Blok B1/28', '0', '0', '', 'Pulogadung', 'Kec. Pulo Gadung', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0122514    ', '', '1-15-01-05-150-066-7', '', 'Parmanto', 1967, '', '', '\r\n								   ', '', '', 'Tatik Sutiyarsi', 1971, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0);
INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `id_kls_pararel`, `kode_jurusan`, `id_sesi`) VALUES
(44916011, '171807035', '12345', 'GHIFAR RIZQI IVANDA', 1, '0044916011', 'JAKARTA', '2004-10-11', '', 0, '\r\n							      ', 'PERMATA JASINDO LESTARI A6/18', '7', '4', '', 'MEKARSARI', 'Kec. Cimanggis', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ZULFAN MUCHTAR', 1975, 'D3', '', '\r\n								   ', '', '', 'CUT NONI ANDALIA', 1981, 'S1', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(32114535, '151607011', '12345', 'GIBRAN JAFAR ABIMANYU', 1, '0032114535', 'jAKARTA', '2003-10-11', '3201021110030009', 0, '\r\n							      ', 'Kota Wisata', '0', '0', '', 'CILEUNGSI', 'Kec. Cileungsi', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0313001    ', '', '1-15-02-13-146-056-9', '', 'Agung Prabowo', 1971, '', '', '\r\n								   ', '', '', 'Dessy Susanti', 1973, '', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(33351504, '151607012', '12345', 'GILANG FATHIR AHWADZI', 1, '0033351504', 'JAKARTA', '2003-01-24', '3175082401030004', 0, '\r\n							      ', 'Jl. Masjid al Munir nO.65 Kec. Makasar', '12', '3', '', 'makasar', 'Kec. Makasar', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0115805    ', '', '1-15-01-05-629-028-5', '', 'ROMELAN', 1971, '', '', '\r\n								   ', '', '', 'ENI SUPRAPTI', 1979, '', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(45078223, '171807036', '12345', 'HAEKAL FATHAN', 1, '0045078223', 'JAKARTA', '2004-12-19', '', 0, '\r\n							      ', 'JL. PURIBETA RAYA UTARA BLOK C.1 NO.59', '4', '12', '', 'LARANGAN UTARA', 'Kec. Larangan', 0, '', '', '', '', '\r\n								   ', 'DN-30 Dd 0025834    ', '', '1-17-30-02-479-059-6', '', 'DEDI MAHMUDI', 1976, 'S2', '', '\r\n								   ', '', '', 'TRI LESTARI', 1978, 'S2', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(40791722, '161707026', '12345', 'HAFIZ ARBI ARAFAT', 1, '0040791722', 'Bekasi', '2004-11-20', '3275022011040005', 0, '\r\n							      ', 'Jl. Nusa Indah I C1 No.2', '3', '14', '', 'Kota Baru', 'Kec. Bekasi Barat', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'HENDRA HIBRATA', 1962, 'S1', 'Lainnya', '\r\n								   ', '', '', 'SAPTARIATI', 1979, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(29632004, '151607082', '12345', 'HAFSUDDUURIY ABU HARITH', 1, '0029632004', 'singapore', '2002-08-19', '', 0, '\r\n							      ', 'APT BLK 491 JURONG WEST AV', '0', '0', '', 'Singapore', 'Singapura', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '9-14-01-05-928-002-7', '', 'Mohd. SHarif', 0, '', '', '\r\n								   ', '', '', 'Nur Azizah', 0, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(41555829, '161707027', '12345', 'Hanief Achmad', 1, '0041555829', 'Jakarta', '2004-04-27', '3175032704040001', 0, '\r\n							      ', 'Jl.Catur Tunggal 83', '12', '1', '', 'Cipinang Muara', 'Kec. Jatinegara', 0, 'Bersama orang tua', '', '', '08128244196', '\r\n								   ', 'SD-41555829         ', '', '1-6-01-05-979-013-4 ', '', 'Achmad Abdullah', 1954, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'Khotijah Lahji', 1962, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(41273814, '171807037', '12345', 'HANIF ALBANI SUDIRO', 1, '0041273814', 'TANGERANG', '2004-10-14', '', 0, '\r\n							      ', 'JL.KENAIBAN NO.05', '2', '2', '', 'PABUARAN', 'Kec. Karawaci', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'DIMAS ANUGRAH SUDIRO', 1980, 'SMA / sederajat', '', '\r\n								   ', '', '', 'TITIN FAJARWATI', 1979, 'SMA / sederajat', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(52895388, '171807038', '12345', 'HANZHOLAH LOECA', 1, '0052895388', 'CILACAP', '2005-11-14', '3216191411050004', 0, '\r\n							      ', 'JL KEMUNIING 2 NO.36 TAMAN LEMBAH HIJAU LIPPO CIKARANG', '4', '7', '', 'SERANG', 'Kec. Cikarang Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'RUDY HENDARYANTO', 1970, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'HERU TRISNANI', 1978, 'S1', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(41052640, '161707028', '12345', 'HAQQI MUHAMMAD IMRAN', 1, '0041052640', 'Jakarta', '2004-06-26', '3173072606040003', 0, '\r\n							      ', 'Bukit Rivari D.4 No.9', '11', '13', '', 'Bedahan', 'Kec. Sawangan', 0, '', '', '', '', '\r\n								   ', '', '', '07-364-041-8        ', '', 'AGASTIA', 1973, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'PREISI ESTELA', 1974, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(35539788, '161707029', '12345', 'HARITS ARKAAN PUTRANTO', 1, '0035539788', 'Depok', '2003-11-07', '3276050711030004', 0, '\r\n							      ', 'Taman Cipayung Blok XXX No.313', '2', '27', '', 'Abadijaya', 'Kec. Sukmajaya', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0127358    ', '', '1-16-02-07-242-076-5', '', 'TEDJO PUTRANTO', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ERNI MUKTI ASTUTI', 1972, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(52135208, '171807039', '12345', 'HAROLDY MAKARIM SIGERO', 1, '0052135208', 'JAKARTA', '2005-07-26', '', 0, '\r\n							      ', 'JL.SIAGA I NO.38', '3', '5', '', 'PEJATEN BARAT', 'Kec. Pasar Minggu', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HENDRI GUSRA', 1968, 'S2', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'SONDANG MEIRITA SIREGAR', 1967, 'S1', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(50935891, '171807040', '12345', 'HAZEL VEDA MAULANA', 1, '0050935891', 'BEKASI', '2005-07-04', '', 0, '\r\n							      ', 'JL. MAWAR MERAH II/33/243', '4', '1', '', 'PONDOK KOPI', 'Kec. Duren Sawit', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-17-01-05-042-009-8', '', 'ANDRE', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'YUNITA TRISELLIA', 1972, 'S1', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(52293286, '171807041', '12345', 'HILMI NUGRAHA WIRASAPUTRA', 1, '0052293286', 'KUNINGAN', '2005-08-24', '', 0, '\r\n							      ', 'PERMATA DEPOK BERLIAN II H5/03', '9', '7', '', 'PONDOK JAYA', 'Kec. Cipayung', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HIDAYAT PRAWIRA', 1972, 'S1', '', '\r\n								   ', '', '', 'MEMEY MEILASWATI', 1977, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(171807042, '171807042', '12345', 'HIRZI FAKHRU DZAKI HIDAYAT', 1, '171807042', 'BALIKPAPAN', '2005-09-05', '3276020509050003', 0, '\r\n							      ', 'PERUMAHAN PERSADA DEPOK BLOK A6/17', '2', '18', '', 'CIMPAEUN', 'Kec. Tapos', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'NOVAN ARIF HIDAYAT', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ZULFIANY AZIZA', 1976, 'D3', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(58198834, '171807043', '12345', 'I WAYAN GEDE RADITYA DARMA PUTRA', 1, '0058198834', 'Gianyar', '2005-12-26', '3671122612050004', 0, '\r\n							      ', 'Jl. Karyawan III/15', '1', '9', '', 'Karang Tengah', 'Kec. Karang Tengah', 0, 'Asrama', '', '', '082221295250', '\r\n								   ', 'DN-30 Dd 0014072    ', '', '1-17-30-02-033-061-4', '', 'I MADE SUARDANA NOVIADI', 1978, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'INDAH MASITTA TIKARINA', 1978, 'S1', 'Wiraswasta', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(35539855, '151607013', '12345', 'IBNU SAKHAA HISYAM', 1, '0035539855', 'Jakarta', '2003-07-24', '3174022407030001', 0, '\r\n							      ', 'Menteng Wadas Barat No.48', '2', '12', '', 'Pasar Manggis', 'Kec. Setia Budi', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd 0137450    ', '', '1-15-02-07-239-058-7', '', 'Dedi Kriswanto', 1971, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'Erika widyasari', 1977, 'SMA / sederajat', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(45150427, '161707031', '12345', 'IBNU SYUHADA', 1, '0045150427', 'Jakarta', '2004-02-08', '3174090802040002', 0, '\r\n							      ', 'JL.Agung Raya II', '5', '7', '', 'Lenteng Agung', 'Kec. Jagakarsa', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0045151    ', '', '1-16-01-04-325-045-4', '', 'Azis Tone', 1976, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'Ita Handayani', 1981, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(41515777, '161707032', '12345', 'IDHAM MUHAMMAD RAIHAN', 1, '0041515777', 'JAKARTA', '2004-02-13', '3175101302040005', 0, '\r\n							      ', 'JL.SWADAYA III NO.35', '5', '2', '', 'PONDOK RANGGON', 'Kec. Cipayung', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0077543    ', '', '1-16-01-05-703-074-7', '', 'DIDA PERMADI', 1967, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'NUR AMALIA', 1978, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(46182447, '161707033', '12345', 'IRFAN ARSYAD', 1, '0046182447', 'BOGOR', '2004-03-24', '3271022403040005', 0, '\r\n							      ', 'Jl.Cimanggis III No.11', '5', '5', '', 'Baranangsiang', 'Kec. Kota Bogor Timur', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0089470    ', '', '1-16-02-04-294-032-9', '', 'ISBIN BASUKI', 1963, 'S2', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ENDANG NASTIATI', 1971, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(59684759, '171807044', '12345', 'IRFAN FAKHRIYANTO', 1, '0059684759', 'BEKASI', '2005-03-01', '', 0, '\r\n							      ', 'BJ RAWA LUMBU NO.146', '3', '40', '', 'BOJONG RAWA LUMBU', 'Kec. Rawalumbu', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ARINOTO', 1962, 'S2', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'CHAMSUNARI', 1966, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(43697564, '151607083', '12345', 'IRFAN HANIF ALAUDDIN AHMAD', 1, '0043697564', 'Bekasi', '2004-02-21', '3216082102040001', 0, '\r\n							      ', 'Perumahan Telaga Sakinah Bekasi', '0', '0', '', 'TELAGA MURNI', 'Kec. Cibitung', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0278827    ', '', '1-15-02-12-327-041-8', '', 'BURHANUDIN AHMAD', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'DEWI AMBAR KOSASIH', 1976, 'S1', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(30453398, '151607084', '12345', 'IRSYAD MUHAMMAD FAWWAZ', 1, '0030453398', 'JAKARTA', '2003-06-04', '3175070406030012', 0, '\r\n							      ', 'Lembah Aren VII K12/6 Pond Kelapa', '0', '0', '', 'PONDOK KELAPA', 'Kec. Duren Sawit', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-118-012-5', '', 'Andi Setia Buana', 1974, 'S2', 'Karyawan Swasta', '\r\n								   ', '', '', 'HARLIANA', 1972, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(41311974, '161707034', '12345', 'IRVANANDA AL GHIFARY', 1, '0041311974', 'Jakarta', '2004-02-25', '3671132502040002', 0, '\r\n							      ', 'Jl.Inpres XI/12.B', '3', '5', '', 'Gaga', 'Kec. Larangan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'PRAYUDI', 1968, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'RITA ROSITA ERNAWATI', 1971, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(32114710, '151607014', '12345', 'IRZA HANI AZHAR', 1, '0032114710', 'SURABAYA', '2003-04-07', '3201020704030001', 0, '\r\n							      ', 'PESONA ORLANDO RB4/70 KOTA WISATA', '0', '0', '', 'cileungsi', 'Kec. Cileungsi', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0313378    ', '', '1-15-02-13-147-067-6', '', 'Anang Suprianto', 1972, '', '', '\r\n								   ', '', '', 'HARLIANA', 1972, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(53172806, '171807045', '12345', 'IZZA ARYDANI', 1, '0053172806', 'JAKARTA', '2005-08-01', '', 0, '\r\n							      ', 'CANDRABAGA BLOK AQ 10/11', '26', '19', '', 'BAHAGIA', 'Kec. Babelan', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SYAMSU INDRA', 1971, 'Tidak sekolah', '', '\r\n								   ', '', '', 'IIN YUSMAINI INDRIATI', 1972, 'Tidak sekolah', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(33474911, '151607015', '12345', 'IZZA RAMADHANI', 1, '0033474911', 'JAKARTA', '2003-11-10', '3175081011030001', 0, '\r\n							      ', 'MAKASAR RT 09/03 NO 8 AB', '0', '0', '', 'MAKASAR', 'Kec. Makasar', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0115976    ', '', '1-15-01-05-632-014-3', '', 'SUTRISNO', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'FADJAR NILAH', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(34896611, '161707035', '12345', 'IZZAT THARIQ MAULANA', 1, '0034896611', 'Jakarta', '2003-12-01', '3175080112030006', 0, '\r\n							      ', 'JL.Kolatu No.29', '2', '13', '', 'Halim Perdana Kusumah', 'Kec. Makasar', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-16-01-05-652-012-5', '', 'Ismail Manan', 1965, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'Herlina', 1968, 'SMA / sederajat', 'Pensiunan', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(46754996, '171807046', '12345', 'JUNDI RIDHO PAMUNGKAS', 1, '0046754996', 'BEKASI', '2004-12-16', '3216211612040008', 0, '\r\n							      ', 'PERUM MEGA REGENCY BLOK E', '10', '9', '', 'SUKA RAGAM', 'Kec. Serang Baru', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-17-02-12-825-010-7', '', 'UNTUNG PAMUNGKAS', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'NOEHA SUPRIHANDAYANI', 0, 'Tidak sekolah', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(171807047, '171807047', '12345', 'KADIVAR GHAZALI AHMAD', 1, '171807047', 'TANGERANG', '2005-08-20', '', 0, '\r\n							      ', 'RAWA BAMBU B II/3', '8', '7', '', 'PASAR MINGGU', 'Kec. Pasar Minggu', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'AHMAD ZAKIE ARIFIN', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'FADHILAH AMINY', 1979, 'S1', 'Wiraswasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(31911738, '151607016', '12345', 'KEMAL MUHAMMAD FIRSTY', 1, '0031911738', 'PEKANBARU', '2003-04-26', '1471082604030084', 0, '\r\n							      ', 'KAMPUNG DELIMA RESIDENCE BLOK E NO.16 WISMA PGRI', '0', '0', '', 'DELIMA RESIDENCE', 'Kec. Pekanbaru Kota', 0, '', '', '', '', '\r\n								   ', 'DN-09 Dd 0015130    ', '', '1-15-09-01-209-010-7', '', 'Rahmed El Junaidi', 1974, '', '', '\r\n								   ', '', '', 'WIWID ANGGRAINI', 1974, '', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(42656486, '161707111', '12345', 'KHANZA MUHAMMAD KISWORO', 1, '0042656486', 'JAKARTA', '2004-01-01', '', 0, '\r\n							      ', 'JL PENYELESAIAN TOMANG 3 BLOK 102/10', '0', '0', '', 'MERUYA UTARA', 'Kec. Kembangan', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-01 Dd 0099750    ', '', '1-16-01-03-784-055-2', '', 'DEDI KISWORO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'PISCESCARINI', 0, 'Tidak sekolah', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(45493561, '171807048', '12345', 'KIAS HUMA DI STEPA', 1, '0045493561', 'Jakarta', '2004-09-09', '3172020909040008', 0, '\r\n							      ', 'Jl. Sungai Bambu V D No.12', '5', '4', '', 'Sungai Bambu', 'Kec. Tanjung Priok', 0, 'Asrama', '', '', '08892608576', '\r\n								   ', '', '', '1                   ', '', 'BUDI SUSILO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'IIN NILAWATI', 1974, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(37080197, '151607048', '12345', 'LA ODE IBRAH HAIKAL RACHMAN KADIR', 1, '0037080197', 'tanggerang', '2003-03-18', '3674041803030004', 0, '\r\n							      ', 'Villa Dago Tol Blok 14 No. 10 Serua Ciputat Tangsel', '0', '0', '', 'bsd', 'Kec. Ciputat', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-30-14-032-048-9', '', 'Abdul Rachman Kadir', 1968, '', '', '\r\n								   ', '', '', 'WA ODE RAMA', 1968, '', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(44072375, '171807049', '12345', 'LUQMAN ARIF WIDIYANTO', 1, '0044072375', 'BALIKPAPAN', '2005-07-07', '', 0, '\r\n							      ', 'BDS SEVILLA BLOK CA NO.5 SEKT.XII', '2', '9', '', 'RAWA MEKAR JAYA', 'Kec. Serpong', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-30 Dd 0060769    ', '', '1-17-30-04-249-039-2', '', 'TARUNA WIDIYANTO', 0, 'Tidak sekolah', 'Karyawan Swasta', '\r\n								   ', '', '', 'RATNA JUWITA', 0, 'Tidak sekolah', 'Lainnya', 'Tidak Berpenghasilan\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(30598421, '151607049', '12345', 'LUTHFI HADI', 1, '0030598421', 'bogor', '2003-04-29', '3201072904031001', 0, '\r\n							      ', 'Metland Transyogi Gandaria 15 No.68', '0', '0', '', 'cileungsi kidul', 'Kec. Cileungsi', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd 0330785    ', '', '1-15-02-13-432-053-4', '', 'Mochamad Soleh', 1974, '', '', '\r\n								   ', '', '', 'ISMAWATI', 1975, '', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(33913506, '151607052', '12345', 'MAHRUS FAZRI WIBOWO', 1, '0033913506', 'Jakarta', '2003-05-19', '3275101905030003', 0, '\r\n							      ', 'Jl. Bandung 3 IC Komp. Masjid At Taqwa Kranggan Wetan', '1', '6', '', 'jatisampurna', 'Kec. Jati Sampurna', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-721-037-4', '', 'MUHAMMAD ISMAIL', 1958, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'sonya afianti rosada', 1972, 'S1', 'Wiraswasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(53535978, '171807053', '12345', 'MAULANA YUSUF', 1, '0053535978', 'CILEGON', '2004-12-28', '', 0, '\r\n							      ', 'KOMP PERUM TITAN ARUM BLOK C.11 NO.12', '3', '13', '', 'DRANGONG', 'Kec. Taktakan', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HENDRA', 1976, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ERLIANI AFRIZA', 1978, 'S1', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(171807054, '171807054', '12345', 'MAULANA ZUHDI AMAANULLAH RAFI', 1, '171807054', 'JAKARTA', '2005-07-23', '', 0, '\r\n							      ', 'JL. KAKATUA 1 BLOK B-6/3', '4', '13', '', 'JATIBENING', 'Kec. Pondokgede', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SIGIT WAHYU AJI SASONGKO', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ENNY ROCHAYATI', 1971, 'SMA / sederajat', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(50870313, '171807055', '12345', 'MIFTAHUL IHSAN', 1, '0050870313', 'BANJARBARU', '2005-11-30', '', 0, '\r\n							      ', 'JL.PELITA KOMP.PINUS BARU BLOK C 01 BANJARBARU', '1', '1', '', 'MENTAOS', 'Kec. Banjarbaru Utara', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ZUHDY RAKHMATILLAH', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'NELLY AL AUDHAH', 1977, 'S2', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(44135564, '161707043', '12345', 'MOAMMAR FAUZAN ALI', 1, '0044135564', 'JAKARTA', '2004-06-09', '3175090906040003', 0, '\r\n							      ', 'JL.HERMAN SP II', '0', '0', '', 'SUSUKAN', 'Kec. Ciracas', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'DIDI RIYADI', 1977, 'Tidak sekolah', '', '\r\n								   ', '', '', 'VONNY RETNOSARY A', 1977, 'Tidak sekolah', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(37382851, '151607085', '12345', 'MOCH. RIDHO BADAWI', 1, '0037382851', 'PALU', '2003-07-06', '7271010607030004', 0, '\r\n							      ', 'Jl. Sugiono No.2 Palu Sulteng', '0', '0', '', 'PALU', 'Kec. Palu Barat', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-18-01-111-048-9', '', 'Moch Imran badawi', 1983, '', '', '\r\n								   ', '', '', 'Hesty Juliana', 1983, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(49904605, '151607086', '12345', 'MOCHAMAD DHAFIN RAIF', 1, '0049904605', 'bandung', '2004-01-27', '3603212701040001', 0, '\r\n							      ', 'Puspita Loka Blok G5/15', '0', '0', '', 'LENGKONG GUDANG', 'Kec. Serpong', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '9-14-01-05-928-003-7', '', 'UUS NOVIARDI', 1973, '', '', '\r\n								   ', '', '', 'WAWAT KRISMAWATI', 1976, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(43559076, '', '12345', 'MOCHAMMAD IHZAMI RASHYID', 1, '0043559076', 'JAKARTA', '2004-01-01', '', 0, '\r\n							      ', 'RAFFLES HILLS  M6 NO.5', '1', '5', '', 'sukatani', 'Kec. Tapos', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'MOCHAMMAD FAZRI YULIANTO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'ASIH SUKAESIH', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(47034086, '161707044', '12345', 'MOHAMMAD AUFA FADHLULLAH', 1, '0047034086', 'QATAR', '2004-02-14', '3604051402040002', 0, '\r\n							      ', 'Komp GSI Blok M.1 No.08', '3', '4', '', 'Serdang', 'Kec. Kramatwatu', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'AGUS TRIANTO', 1968, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'ROSI TRIFYANI', 1976, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(41514096, '161707045', '12345', 'MOHAMMAD DAFFA AKBAR', 1, '0041514096', 'JAKARTA', '2004-10-24', '3172042410040008', 0, '\r\n							      ', 'JL.H.SUIT BB/33', '1', '6', '', 'SEMPER BARAT', 'Kec. Cilincing', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'MOHAMMAD RAYA', 1965, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'RADEN AYU NURLINDA', 1970, 'S2', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(43559118, '', '12345', 'MOHAMMAD EL RAZAK ATHAILLAH MIRDAL', 1, '0043559118', 'JAKARTA', '2004-06-21', '3201022108040014', 0, '\r\n							      ', 'KOTA WISATA COATESVILLE', '22', '44', '', 'CIANGSANA', 'Kec. Gunungputri', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'MUHAMMAD MIRDAL AKIB', 1976, 'Tidak sekolah', '', '\r\n								   ', '', '', 'FARANIKA TENRILENGKA', 1977, 'Tidak sekolah', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(42229494, '161707064', '12345', 'MOHAMMAD HAFIZH BUKHARIYANDA', 1, '0042229494', 'JAKARTA', '2004-08-26', '3173052608040011', 0, '\r\n							      ', 'KOMP.YON HUB', '6', '4', '', 'KELAPA DUA', 'Kec. Kebon Jeruk', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'YANUAR KURNIAWAN', 1977, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'YULIA HAPSARI BUNGAWERO', 1977, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(30533563, '151607019', '12345', 'MUCHAMAD DAVA NURSYAFA', 1, '0030533563', 'BANDUNG', '2003-01-09', '3201010901030010', 0, '\r\n							      ', 'Jl. Raya Cijujung Kab bogor', '0', '0', '', 'sentul', 'Kec. Cibinong', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-02-13-229-058-7', '', 'Bagoes Zulkarnaen', 0, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Gessy Selvia', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(30533562, '151607018', '12345', 'MUCHAMAD DIVA NURSYIFA', 1, '0030533562', 'BANDUNG', '2003-01-09', '3201010901030010', 0, '\r\n							      ', 'Jl. Raya Cijujung Kab. Bogor', '0', '0', '', 'Sentul', 'Kec. Cibinong', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-02-13-229-026-7', '', 'Bagoes Zulkarnain', 0, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'GESSY SELVIA', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(55980225, '171807056', '12345', 'MUHAMAD FARIS RASYID', 1, '0055980225', 'BEKASI', '2005-03-02', '3171030203050001', 0, '\r\n							      ', 'KP SERDANG', '10', '4', '', 'SERDANG', 'Kec. Kemayoran', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'DJOKO SUTIONO', 1964, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'KARYATI', 1972, 'D3', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(26820765, '151607054', '12345', 'MUHAMMAD ABDUL HALIM', 1, '0026820765', 'Jakarta', '2002-08-10', '3175101008020006', 0, '\r\n							      ', 'Jl. Peternakan sapi perah Pondok Ranggon', '0', '0', '', 'pondok ranggon', 'Kec. Cipayung', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-33-418-028-5', '', 'M. Aminudin', 0, '', '', '								   ', '', '089507233391', 'Namah Bt Nain', 0, '', '', '								   ', '', '', '', 0, '', '', '								   ', 0, '', '', '', 'IX ', 25, '', 0),
(59588027, '171807057', '12345', 'MUHAMMAD AFIF NAUFAL', 1, '0059588027', 'GORONTALO', '2005-07-28', '', 0, '\r\n							      ', 'JL.KENANGAN PERUM KAPUTIH INDAH BLOK C1 NO.6', '0', '0', '', 'DULALOWO TIMUR', 'Kec. Limboto', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'MOCHAMMAD SOGHIR', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'FATMAWATI AHMAD', 0, 'Tidak sekolah', 'Wiraswasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(41048337, '161707048', '12345', 'MUHAMMAD AKHTAR YUSRON', 1, '0041048337', 'JAKARTA', '2004-04-13', '3275091304040007', 0, '\r\n							      ', 'PERUM PONDOK INDAH JATISARI BLOK H NO.8', '9', '5', '', 'JATISARI', 'Kec. Jatiasih', 0, '', '', '', '', '\r\n								   ', '', '', '03-466-009-8        ', '', 'ERRES MAYENDRA', 1977, 'S2', 'Karyawan Swasta', '\r\n								   ', '', '', 'JEANY CHOPERRINA', 1979, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(51019736, '171807058', '12345', 'MUHAMMAD AL FARIZY', 1, '0051019736', 'PONTIANAK', '2005-04-30', '3402163004050004', 0, '\r\n							      ', 'PERUM MEGA ASRI NO.G.1', '9', '34', '', 'SARDONOHARJO', 'Kec. Ngaglik', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-01 Dd 0098516    ', '', '1-17-01-05-164-012-5', '', 'TARUNA GUNAWAN', 1964, 'S1', 'Pensiunan', '\r\n								   ', '', '', 'SAFITRI WAZAR', 1965, 'S1', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(27310633, '151607020', '12345', 'MUHAMMAD ALFARISYI', 1, '0027310633', 'JAKARTA', '2002-12-27', '3276022712020001', 0, '\r\n							      ', 'Mahogany Residence Blok J/28 Alternatif Cibubur', '0', '0', '', 'Harjamukti', 'Kec. Cimanggis', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-721-039-2', '', 'ACHMAD DJAMALILLEIL', 0, '', '', '\r\n								   ', '', '', 'Devi Dwirantih', 0, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(54932599, '171807059', '12345', 'MUHAMMAD ALFATIH', 1, '0054932599', 'Jakarta', '2017-07-10', '3172061201050002', 0, '\r\n							      ', 'Jl. Kendang Y No.10', '3', '9', '', 'Pegangsaan Dua', 'Kec. Kelapa Gading', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0132607    ', '', '1-17-01-02-120-014-3', '', 'RUSLAN', 1972, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'DINUR ADRIANI INDRAHAPSARI', 1976, 'Tidak sekolah', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(52365190, '171807060', '12345', 'MUHAMMAD ALGHIFARI TAUFIK', 1, '0052365190', 'B0NTANG', '2005-08-17', '3276051708050008', 0, '\r\n							      ', 'Bukit Cengkeh Berbunga Blok A-2 No. 6-7', '2', '24', '', 'Baktijaya', 'Kec. Sukmajaya', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 07089069   ', '', '1-17-02-07-089-069-4', '', 'Taufik Hasbullah', 1970, 'Tidak sekolah', '', '\r\n								   ', '', '', 'SANDIYANA SAMANTHA', 1972, 'D3', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(32250404, '151607050', '12345', 'MUHAMMAD ALI PRABU DARMAWAN', 1, '0032250404', 'SURABAYA', '2003-07-06', '3578170607030010', 0, '\r\n							      ', 'Jl. Wibawa IV No.8 Komp. Cilandak Kko Jaksel', '0', '0', '', 'Cilandak', 'Kec. Cilandak', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-04-211-015-2', '', 'ILI DASILI', 1972, 'SMA / sederajat', '', '\r\n								   ', '', '', 'ade lestari', 1978, 'D3', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(35138693, '161707038', '12345', 'MUHAMMAD AMIRUL HABIBI', 1, '0035138693', 'BONTANG', '2003-11-16', '6474021611030005', 0, '\r\n							      ', 'PC 4/76 KOMP.PT BADAK NGL', '6', '0', '', 'SATIMPO', 'Kec. Bontang Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'ISMAIL MARYANTO', 1974, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'DESI IMAN JAYA', 1974, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(35910591, '161707112', '12345', 'MUHAMMAD AMMAR', 1, '0035910591', 'Tangerang', '2003-05-31', '3671073105030003', 0, '\r\n							      ', 'Pondok Arum Blok B 9 No.03', '6', '2', '', 'Nambo Jaya', 'Kec. Karawaci', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-30 PA 0000371    ', '', 'A.15-30-02-016-005  ', '', 'MUJIYONO', 1974, 'S1', 'Lainnya', '\r\n								   ', '', '', 'SUWARNI', 1974, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(48838326, '161707050', '12345', 'MUHAMMAD AMNI DIHYAH', 1, '0048838326', 'Jakarta', '2004-09-14', '3172031409040015', 0, '\r\n							      ', 'Jl. Serdang Raya No/14', '5', '7', '', 'Kukusan', 'Kec. Beji', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'AHMAD YAGUS', 1973, 'D3', 'Lainnya', '\r\n								   ', '', '', 'SUHERMI', 1972, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(54042425, '171807061', '12345', 'MUHAMMAD ANARGYA ERNANDA SETIAWAN', 1, '0054042425', 'Jakarta', '2005-09-09', '3172021909050005', 0, '\r\n							      ', 'Jl. Sunter Jaya IV A No.37', '1', '3', '', 'Sunter Jaya', 'Kec. Tanjung Priok', 0, 'Asrama', '', '', '081908013430', '\r\n								   ', '', '', '1                   ', '', 'IWAN SETIAWAN', 1972, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'ERNAWATI', 1975, 'D3', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(27011180, '151607087', '12345', 'MUHAMMAD ANDI ADITYA', 1, '0027011180', 'Demak', '2002-12-13', '3201131312020009', 0, '\r\n							      ', 'Taman Firjiya Blok. GC No.1', '1', '3', '', 'Pondok Manggis', 'Kec. Bojong Gede', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-13-980-030-3', '', 'SUKISNO', 0, '', '', '\r\n								   ', '', '', 'Sulistari', 1969, '', 'Lainnya', 'Lebih dari Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(171807062, '171807062', '12345', 'MUHAMMAD ARDIANSYAH', 1, '171807062', 'JAYAPURA', '2004-11-17', '', 0, '\r\n							      ', 'PESONA OTTAWA BLOK UC 2 NO.10 KOTA WISATA', '0', '0', '', 'LIMUS NUNGGAL', 'Kec. Cileungsi', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'MUHAMMAD NUR', 0, 'Tidak sekolah', 'Wiraswasta', '\r\n								   ', '', '', 'ANITA AGUSTINA', 0, 'Tidak sekolah', 'Wiraswasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(25368124, '151607088', '12345', 'MUHAMMAD AULIYA FAISAL', 1, '0025368124', 'Purworejo', '2002-12-20', '3404022012020002', 0, '\r\n							      ', 'Perum Pesona Khayangan Juanda Blok.BF No.8', '0', '0', '', 'Mekarjaya', 'Kec. Sukmajaya', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0137194    ', '', '1-15-02-07-244-012-5', '', 'Faisal', 1975, '', '', '\r\n								   ', '', '', 'ZAINURROFIKOH', 1976, '', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(171807063, '171807063', '12345', 'MUHAMMAD AVIN SENA', 1, '171807063', 'JAKARTA', '2005-09-22', '3175092209051003', 0, '\r\n							      ', 'JL. CIBUBUR INDAH III BLOK H NO.10', '5', '11', '', 'CIBUBUR', 'Kec. Ciracas', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ALFIAN DARMAWAN', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'AMALIA RIDHA', 1983, 'D3', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(54789538, '171807051', '12345', 'MUHAMMAD AZKA NAZHAN', 1, '0054789538', 'MEDAN', '2005-10-10', '', 0, '\r\n							      ', 'JL.METEOROLOGI III NO.28 LKI', '0', '0', '', 'INDRA KASIH', 'Kec. Medan Tembung', 0, '', '', '', '', '\r\n								   ', '', '', '1-17-07-09-679-048-9', '', 'YUSDI HARIANTO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'SITI MAIMUNAH', 1979, 'Tidak sekolah', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(41474888, '161707051', '12345', 'MUHAMMAD AZZAM GHAZALI', 1, '0041474888', 'Kediri', '2004-02-22', '3276052202040005', 0, '\r\n							      ', 'KKDR Anggrek -3 Blok B5 No.11', '4', '6', '', 'Tirtajaya', 'Kec. Sukmajaya', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'SUNARTO', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ELLYA SORAYA', 1978, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(171807064, '171807064', '12345', 'MUHAMMAD BINTANG ADJINEGORO', 1, '171807064', 'JAKARTA', '2017-07-10', '', 0, '\r\n							      ', 'JL.D 3 NO.39', '10', '4', '', 'KEBON BARU', 'Kec. Tebet', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ZULKIFLI', 1976, 'Tidak sekolah', '', '\r\n								   ', '', '', 'FEBRIAN ORRY', 1976, 'Tidak sekolah', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(35624937, '151607055', '12345', 'MUHAMMAD BRAMANDARU', 1, '0035624937', 'jakarta', '2003-08-08', '3201010808030007', 0, '\r\n							      ', 'Mutiara Sentul U2 Nanggewer', '0', '0', '', 'Nanggewer', 'Kec. Cibinong', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd 0306985    ', '', '1-15-02-13-065-051-6', '', 'Bambang Handhoro', 1949, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'Sumarni', 1971, 'D3', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(37297796, '161707053', '12345', 'MUHAMMAD DAFFA AL-FARISI', 1, '0037297796', 'Depok', '2003-10-24', '3276052410030011', 0, '\r\n							      ', 'Perum Sukmajaya Permata Blok.G/9', '5', '9', '', 'Sukmajaya', 'Kec. Sukmajaya', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0043128    ', '', '1-16-01-04-226-066-7', '', 'Amar Sutisna', 1969, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Rufaida', 1970, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(40395078, '', '12345', 'MUHAMMAD DEFAWIANO', 1, '0040395078', 'Jakarta', '2004-05-31', '3175013105040002', 0, '\r\n							      ', 'Jl. Nanas III/31', '4', '3', '', 'Utan Kayu Selatan', 'Kec. Matraman', 0, 'Bersama orang tua', '', '', '', '\r\n								   ', '', '', 'DN-01 Dd/06 0125723 ', '', 'Deden Prayitno', 1967, 'S2', 'Karyawan Swasta', '\r\n								   ', '', '', 'Dewi Agustina', 1972, 'S1', 'Wiraswasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(55252132, '171807065', '12345', 'MUHAMMAD DIAR ZHARIF', 1, '0055252132', 'JAKARTA', '2005-04-10', '3175021004050005', 0, '\r\n							      ', 'JL.PISANGAN LAMA III NO.21', '10', '2', '', 'PISANGAN TIMUR', 'Kec. Pulo Gadung', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1-16-13-01-090-083-6', '', 'ARIE WIBOWO', 1972, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'DITA AMALIA', 1981, 'S1', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(27404652, '151607056', '12345', 'MUHAMMAD DZAKIENDRA AMMARJUNDI', 1, '0027404652', '	Madiun', '2002-11-12', '6408041211080001', 0, '\r\n							      ', 'Jl. Parkit H.196 TELUK Lingga Sanggata timur kutai', '0', '0', '', 'Teluk Lingga', 'Kec. Sangatta Utara', 0, '', '', '', '', '\r\n								   ', 'DN-16 Dd 0045068    ', '', '1-15-16-05-169-014-3', '', 'Ardi Andra margusano', 1979, '', '', '\r\n								   ', '', '', '	Sari dewi rahmawati', 1978, '', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(39276710, '151607021', '12345', 'MUHAMMAD DZAKWAN RAUHILLAH', 1, '0039276710', 'BOGOR', '2003-07-18', '3674041806030002', 0, '\r\n							      ', 'NERADA ESTATE B6-14 CIPAYUNG CIPUTAT', '0', '0', '', 'CIPAYUNG', 'Kec. Ciputat', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-04-683-155-6', '', 'WAHYU RUSDIANA', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'CUCU RUPINA', 1977, '', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(38032311, '161707054', '12345', 'MUHAMMAD DZAKY', 1, '0038032311', 'Jakarta', '2003-12-08', '3201070812030002', 0, '\r\n							      ', 'Limus Pratama Regency E.17/01', '8', '11', '', 'Limusnunggal', 'Kec. Cileungsi', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'AGOES PRASETYO', 1969, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'LISTYO DEWI SUPRIYATININGSIH', 1973, 'D3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(57004308, '171807066', '12345', 'MUHAMMAD DZAKY AFKAAR', 1, '0057004308', 'SOLOK', '2005-04-04', '9101010404050012', 0, '\r\n							      ', 'JL RAYA MANDALA MULI', '12', '2', '', 'MANDALA', 'Kec. Merauke', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ZULKIFLI', 1977, 'D3', 'Wiraswasta', '\r\n								   ', '', '', 'SILVIA MELINDA', 1980, 'D3', 'Wiraswasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(171807067, '171807067', '12345', 'MUHAMMAD DZIKRI AGAM ABDUL HALIM', 1, '171807067', 'JAKARTA', '2005-06-08', '', 0, '\r\n							      ', 'JL WIBISANA16 BLOK LQ NO.30', '0', '0', '', 'TELUKJAMBE', 'Kec. Teluk Jambe Timur', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'FREDY ABDUL HALIM', 0, 'Tidak sekolah', 'Karyawan Swasta', '\r\n								   ', '', '', 'OON FATONAH', 0, 'Tidak sekolah', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(21463131, '151607089', '12345', 'MUHAMMAD EMIRAL EL-HAQ', 1, '0021463131', 'Bandung', '2002-10-04', '3515084812760004', 0, '\r\n							      ', 'Perum Istana Mentari Blok. C4 No.19', '0', '0', '', 'Mentari', 'Kec. Sidoarjo', 0, '', '', '', '', '\r\n								   ', 'DN-05 D.sd 1504934  ', '', '1-15-05-11-004-109-4', '', 'ISKHAK', 0, '', '', '\r\n								   ', '', '', 'ZAHROBAH AL KAFI', 1974, 'S1', 'Tidak bekerja', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(40393668, '161707056', '12345', 'MUHAMMAD FADHIL', 1, '0040393668', 'Jakarta', '2004-05-03', '3175020305040001', 0, '\r\n							      ', 'Jl.Waru No.2', '7', '7', '', 'Rawamangun', 'Kec. Pulo Gadung', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-16-01-05-460-091-6', '', 'YEKI PUTRA', 1976, 'SMA / sederajat', 'Wiraswasta', '\r\n								   ', '', '', 'EKA WATI', 1979, 'SMA / sederajat', 'Wiraswasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(33370031, '151607090', '12345', 'MUHAMMAD FAHMI AZIZ', 1, '0033370031', 'Bontang', '2003-05-07', '6474020705030001', 0, '\r\n							      ', 'Jl. Mutiara PCv No.69a Komp. PT BADAK', '0', '0', '', 'Pasar Pagi', 'Kec. Samarinda Ilir', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-16-03-033-059-6', '', 'Yoris Hermawant', 1969, '', '', '\r\n								   ', '', '', 'Ratna Juwita', 1970, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(171807068, '171807068', '12345', 'MUHAMMAD FAIZ AL GHAZY', 1, '171807068', 'TANGERANG', '2004-12-10', '3603351012040001', 0, '\r\n							      ', 'GRIYA ASRI BLOK D-9/05', '33', '7', '', 'JELUPANG', 'Kec. Serpong Utara', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SUKARDI', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'PUJI ASTUTI', 1978, 'S1', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(56050271, '171807069', '12345', 'MUHAMMAD FAIZ HAMZAH', 1, '0056050271', 'JAKARTA', '2005-02-20', '3175102002050006', 0, '\r\n							      ', 'JL.AS-SYAFI IYAH NO.36', '8', '3', '', 'CILANGKAP', 'Kec. Cipayung', 0, 'Pesantren', '', '', '', '\r\n								   ', 'DN-01 Dd 0014081    ', '', '1-17-01-05-971-010-7', '', 'HESPATONI', 1969, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'NURHAYATI', 1973, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(171807070, '171807070', '12345', 'MUHAMMAD FAJAR RAMADHAN', 1, '171807070', 'DEPOK', '2005-10-18', '3276021810050005', 0, '\r\n							      ', 'KP TIPAR TENGAH', '3', '10', '', 'MEKARSARI', 'Kec. Cimanggis', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ZAENAL FIRMANSYAH', 1973, 'SMA / sederajat', 'Wiraswasta', '\r\n								   ', '', '', 'ESSY', 1974, 'SMA / sederajat', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(52118292, '171807071', '12345', 'MUHAMMAD FAKHER', 1, '0052118292', 'Jakarta', '2005-07-01', '3173030107050007', 0, '\r\n							      ', 'Jl.Kebun Jeruk XIII/30.B', '11', '5', '', 'Taman Sari', 'Kec. Taman Sari', 0, 'Pesantren', '', '', '087880512300', '\r\n								   ', 'DN-01 Dd 0001459    ', '', '1-17-01-01-356-008-9', '', 'FAISOL MUHAMAD THALIB', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'FAHRIZA', 1977, 'SMA / sederajat', 'Karyawan Swasta', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(40033149, '151607057', '12345', 'MUHAMMAD FAKHRI ABDULLAH', 1, '0040033149', 'PALEMBANG', '2004-07-18', '3276021807040012', 0, '\r\n							      ', 'Mahogany Residence i/II', '0', '0', '', 'harjamukti', 'Kec. Cimanggis', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-721-098-7', '', 'TIFAN HADIANSYAH', 1976, '', '', '\r\n								   ', '', '', 'Nyimas Subhandini', 1977, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(41474907, '161707057', '12345', 'MUHAMMAD FAKHRI ARKHAM', 1, '0041474907', 'Depok', '2004-05-16', '3276011605040005', 0, '\r\n							      ', 'Kp.Kekupu', '4', '4', '', 'Rangkapan Jaya', 'Kec. Pancoran Mas', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd 0127333    ', '', '1-16-02-07-242-051-6', '', 'TUBAGUS HAMDI ARHAM', 1970, 'SMA / sederajat', 'Wiraswasta', '\r\n								   ', '', '', 'ETY YUNI ASTUTI', 1970, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(43310249, '161707058', '12345', 'MUHAMMAD FALIH FIRDAUS APIA', 1, '0043310249', 'DEPOK', '2004-05-11', '3275081105040007', 0, '\r\n							      ', 'KOMP DDN JL.BERINGIN VIII NO.34', '3', '10', '', 'JATIWARINGIN', 'Kec. Pondokgede', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'APRIANTO', 1969, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ELFERA DEVIANTI', 1973, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(30304610, '151607022', '12345', 'MUHAMMAD FARABI IZKA', 1, '0030304610', 'Bekasi', '2003-04-03', '3275040304030005', 0, '\r\n							      ', 'Jl. Bintang 2 No. A 207', '5', '9', '', 'Jakasetia', 'Kec. Bekasi Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-03-685-034-7', '', 'Dr. Langgeng Raharjo', 1976, 'S3', 'Karyawan Swasta', '\r\n								   ', '', '', 'Dwiani Kanthi Lestari', 1979, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(45664614, '151607023', '12345', 'MUHAMMAD FARID ZIA PRIDJIE', 1, '0045664614', 'Jakarta', '2004-02-25', '3174042502040004', 0, '\r\n							      ', 'Jl. Jeruk IV No.13 Rt.07 Rw.18 Tapos Cimanggis', '0', '0', '', 'tapos', 'Kec. Cimanggis', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-07-371-016-9', '', 'Sudarmadi', 1971, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'Apridwiyanti', 1967, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(171807072, '171807072', '12345', 'MUHAMMAD FARIS MURTAZA', 1, '171807072', 'SURABAYA', '2005-06-13', '3174091306050006', 0, '\r\n							      ', 'KP KALIBATA', '2', '6', '', 'SRENGSENG SAWAH', 'Kec. Jagakarsa', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'NONO HARIYANTO', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ROSNALIA', 1976, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(45517052, '161707036', '12345', 'MUHAMMAD FARIS RIFQI KUSUMADINATA', 1, '0045517052', 'Jakarta', '2004-03-14', '', 0, '\r\n							      ', 'Jl. Janur Elok VI QD 9 No.11', '9', '6', '', 'Kelapa Gading Barat', 'Kec. Kelapa Gading', 0, 'Asrama', '', '', '088217727888', '\r\n								   ', 'DN-02 Dd 0761351    ', '', '1-16-02-06-159-019-6', '', 'Deden Kusumadinata', 1975, 'S1', 'Sudah Meninggal', '\r\n								   ', '', '', 'FITRI KEUMALA DJABAR', 1977, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0);
INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `id_kls_pararel`, `kode_jurusan`, `id_sesi`) VALUES
(42014179, '161707059', '12345', 'MUHAMMAD FARRAS AL GHIFARI', 1, '0042014179', 'Jakarta', '2004-06-21', '3171032106041003', 0, '\r\n							      ', 'Jl.Utan Panjang III', '11', '5', '', 'Utan Panjang', 'Kec. Kemayoran', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0110049    ', '', '1-16-01-01-219-013-4', '', 'SUNARYO', 1977, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'RAHMATUL KHAIRIYAH', 1978, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(42604774, '161707060', '12345', 'MUHAMMAD FARREL AL GHIFARI', 1, '0042604774', 'JAMBI', '2004-06-20', '1671122006040002', 0, '\r\n							      ', 'PERUM BUKIT SEJAHTERA BLOK CA NO.04', '12', '4', '', 'KARANG JAYA', 'Kec. Gandus', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'MARWAN WAHYUDI', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'MEITY ABETSIA', 1974, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(171807073, '171807073', '12345', 'MUHAMMAD FATAHILLAH HADRI', 1, '171807073', 'MEDAN', '2005-04-24', '', 0, '\r\n							      ', 'DELI HIJAU NO.1 VILLA MALINA', '0', '0', '', 'TANJUNG SARI', 'Kec. Medan Selayang', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HADRI SJAFII', 1980, 'Tidak sekolah', '', '\r\n								   ', '', '', 'YESSI WIRABUANA', 1982, 'Tidak sekolah', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(36834024, '161707040', '12345', 'MUHAMMAD FATHI IRSYAD', 1, '0036834024', 'JAKARTA', '2003-12-22', '3172022212030001', 0, '\r\n							      ', 'JL.SWASEMBADA BARAT VI NO.29', '16', '9', '', 'KEBON BAWANG', 'Kec. Tanjung Priok', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'MANSUR', 1970, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'SITI AISYAH', 1977, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(30304687, '151607024', '12345', 'MUHAMMAD FATHUL ABRAR', 1, '0030304687', 'Bekasi', '2003-10-24', '3275042410030002', 0, '\r\n							      ', 'Jl. Cikunir Raya 2A Bekasi', '0', '0', '', 'Cikunir', 'Kec. Bekasi Selatan', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0063049    ', '', '1-15-02-03-685-015-2', '', 'Mohammad Zainal Fatah', 1966, '', '', '\r\n								   ', '', '', 'Anis Lutfiati', 1969, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(171807074, '171807074', '12345', 'MUHAMMAD FATHURRAHMAN SYUHADA', 1, '171807074', 'BENGKALIS', '2004-06-22', '', 0, '\r\n							      ', 'PINANG RANTI', '16', '1', '', 'PINANGRANTI', 'Kec. Makasar', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'DODO SYUHADA', 1975, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'SHARLY', 1979, 'S1', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(41904309, '161707061', '12345', 'MUHAMMAD FATTAH', 1, '0041904309', 'BALIKPAPAN', '2004-02-08', '3674010802040007', 0, '\r\n							      ', 'BSD SEKTOR XII-5 BLOK V NO.5 KENCANA LOKA', '5', '5', '', 'CIATER', 'Kec. Serpong', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'SETYO PRANOWO', 1972, 'S2', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'SANTHY TRI ASTUTI', 1979, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(38662856, '151607025', '12345', 'MUHAMMAD FAUDZIL ADZIM', 1, '0038662856', 'Sanggata', '2003-12-22', '3270052212030009', 0, '\r\n							      ', 'Jl. M. Yusuf Komplek PK Munal 1 Depok', '0', '0', '', 'Munal', 'Kec. Depok', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0140957    ', '', '1-15-02-07-324-027-6', '', 'Muhammad Siri', 1970, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Rosdiana', 1979, 'S1', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(40138022, '151607091', '12345', 'MUHAMMAD FAUZI AKBAR', 1, '0040138022', 'Jakarta', '2004-02-04', '3201070402042353', 0, '\r\n							      ', 'Limus Pratama Cileungsi D3/23', '0', '0', '', 'LIMUSNUNGGAL', 'Kec. Cileungsi', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-13-147-044-5', '', 'Adhika Dwikora', 1964, '', '', '\r\n								   ', '', '', 'Mulya Inggita', 1969, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(31880373, '151607017', '12345', 'MUHAMMAD FIRJA YASSAR L', 1, '0031880373', 'BEKASI', '2003-04-03', '3275110304030001', 0, '\r\n							      ', 'PERUM. KOTA LEGENDA DUKUH ZAMRUD BLOK T/6NO.14', '0', '0', '', 'BANTAR GEBANG', 'Kec. Bantargebang', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0270090    ', '', '1-15-02-12-216-049-8', '', 'SADELI', 1969, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'LUTFIAH AZHARI', 1970, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(28648269, '151607058', '12345', 'MUHAMMAD FIRYAL PRADANA', 1, '0028648269', 'JAKARTA', '2002-10-03', '2136400498177178', 0, '\r\n							      ', 'Blok Gablog Rt.001 Rw.001 Tegallurung Kec. Balongan indramayu', '0', '0', '', 'Tegallurung', 'Kec. Balongan', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-02-18-049-044-5', '', 'Nanang Wirahadikusuma', 0, '', '', '\r\n								   ', '', '', 'Minawati', 0, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(41555834, '161707062', '12345', 'MUHAMMAD GHAZA ATAILLAH', 1, '0041555834', 'Jakarta', '2004-05-23', '3175032305041001', 0, '\r\n							      ', 'Jl.K Cipinang Muara No.6', '18', '3', '', 'Cipinang Muara', 'Kec. Jatinegara', 0, 'Asrama', '', '', '', '\r\n								   ', 'SD-41555834         ', '', '1-16-01-05-979-021-4', '', 'HELMI VANUS', 1975, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'WIWIT AZMI LESTARI', 1979, 'S1', 'Wiraswasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(171807075, '171807075', '12345', 'MUHAMMAD HAIDAR', 1, '171807075', 'CIREBON', '2005-01-19', '3275091901050002', 0, '\r\n							      ', 'JL.ANGGREK III/6 JATI KRAMAT INDAH I', '1', '3', '', 'JATIKRAMAT', 'Kec. Jatiasih', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'AHMAD MALAJAYA', 1978, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'HARNIE AGUSTINA', 1977, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(171807076, '171807076', '12345', 'MUHAMMAD HANIF', 1, '171807076', 'QATAR', '2005-04-24', '3672022404050002', 0, '\r\n							      ', 'JL DAHLIA C-1 NO.15', '5', '4', '', 'CIWEDUS', 'Kec. Cilegon', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'DIAN FHARULI', 1974, 'Tidak sekolah', 'Karyawan Swasta', '\r\n								   ', '', '', 'LIA KOMALASARI', 1976, 'SMA / sederajat', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(32682029, '151607053', '12345', 'MUHAMMAD HANIF AZFAREZA', 1, '0032682029', 'Bandung', '2003-07-24', '3214012487030003', 0, '\r\n							      ', 'Perumahan POJ Blok.B No.12 Rt.01 /009 Sadang Purwakarta', '0', '0', '', 'Jatiluhur', 'Kec. Purwakarta', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0642762    ', '', '1-15-02-22-062-021-4', '', 'Reza Abdi Hakim', 1976, '', '', '\r\n								   ', '', '', 'Susi Sukmawati', 1976, '', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(52127482, '171807077', '12345', 'MUHAMMAD HANIFASYAM AFIFENDRA', 1, '0052127482', 'Madiun', '2005-03-11', '6408041103050001', 0, '\r\n							      ', 'Jl.Parkit H.196', '31', '0', '', 'Teluk Lingga', 'Kec. Sangatta Utara', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ARDI ANDRA MARGUSANO', 1979, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'SARI DEWI RAHMAWATI', 1978, 'S1', 'Lainnya', 'Tidak Berpenghasilan\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(42134378, '161707063', '12345', 'Muhammad Ihsan Nurhanif', 1, '0042134378', 'Jakarta', '2004-10-02', '3175040210040008', 0, '\r\n							      ', 'Jl.SMP 126 N0 2A', '2', '3', '', 'TENGAH', 'Kec. Kramat Jati', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0067566    ', '', '1-16-01-05-578-055-2', '', 'FAJAR REZA BUDIMAN', 1969, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'RETNO LESTARI', 1970, 'S3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(33370032, '151607092', '12345', 'MUHAMMAD IHSAN NURZAMAN', 1, '0033370032', 'BONTANG', '2003-05-08', '6474020805030005', 0, '\r\n							      ', 'Jl. Salak PC 4 No.16 PT. Badak Bontang kaltim', '0', '0', '', 'Bontang', 'Kec. Bontang Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-16-03-039-059-6', '', 'Dadang suherman', 1967, '', '', '\r\n								   ', '', '', 'YUANITA KUSUMANINGRUM', 1973, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(41545904, '161707065', '12345', 'MUHAMMAD IKHLAS PUTRA EDRYAN', 1, '0041545904', 'JAKARTA', '2004-12-19', '3201371907040004', 0, '\r\n							      ', 'PURA BOJONG GEDE BLOK D-7/12', '4', '20', '', 'TAJURHALANG', 'Kec. Tajurhalang', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0098680    ', '', '1-16-02-04-287-037-4', '', 'YAN EDWAR', 1972, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'MERY JULIANTI', 1971, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(42436694, '161707066', '12345', 'MUHAMMAD IQBAL ARDHAFI', 1, '0042436694', 'Jakarta', '2004-09-07', '1055030709041003', 0, '\r\n							      ', 'Taman Permata Cikunir', '2', '14', '', 'Jakamulya', 'Kec. Bekasi Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'DONNY WARDHANA', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'YULFI DIANTY', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(28860364, '151607059', '12345', 'MUHAMMAD IRFA NURUL ISLAM', 1, '0028860364', '	Jakarta', '2003-11-20', '3175082011030006', 0, '\r\n							      ', 'Jl. SD Lama Ganceng No.72 Rt. 02/01 Pondok Rangon', '0', '0', '', 'Pondok Ranggon', 'Kec. Cipayung', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-01-05-925-016-9', '', 'Suwito', 1969, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', '	USWATUN KHASANAH', 1973, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(28069683, '151607026', '12345', 'MUHAMMAD IRFAN SHAH SOFYAN', 1, '0028069683', 'Jakarta', '2002-11-13', '3172041311020004', 0, '\r\n							      ', 'Komp. BPPU No.6', '4', '8', '', 'Gilimanuk', 'Kec. Sukapura', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-02-119-072-9', '', 'Irwansyah Syofyan', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Lina Siska', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(171807078, '171807078', '12345', 'MUHAMMAD KHIANZA ARSYA', 1, '171807078', 'TEGAL', '2004-11-25', '', 0, '\r\n							      ', 'NGAGEL TIRTO 3/24', '4', '8', '', 'NGAGELREJO', 'Kec. Wonokromo', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HERI WIHARSONO', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'FIONA GARDENIA', 1978, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(171807079, '171807079', '12345', 'MUHAMMAD KIAN BAGASKARA SYAHRANDA', 1, '171807079', 'JAKARTA', '2005-08-29', '3174042908051001', 0, '\r\n							      ', 'PEJATEN TIMUR', '10', '9', '', 'PEJATEN TIMUR', 'Kec. Pasar Minggu', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SURANTO', 1974, 'SMA / sederajat', 'Wiraswasta', '\r\n								   ', '', '', 'SULASTRIDA', 1974, 'D3', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(33380168, '151607060', '12345', 'MUHAMMAD LAZUARDI HASSAN', 1, '0033380168', 'Jakarta', '2003-09-04', '3671060409030002', 0, '\r\n							      ', 'Permata Callista Blok D.1 No.8 Bintaro', '0', '0', '', 'Bintaro', 'Kec. Pesanggrahan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-30-04-399-019-6', '', 'Moch. Fuad Hasan Ashari', 1978, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Lia Maria Pasah', 1979, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(41914661, '161707069', '12345', 'MUHAMMAD MULLAH RAMADHAN', 1, '0041914661', 'TANGERANG', '2004-10-17', '3674041710040001', 0, '\r\n							      ', 'Kp.Sawah Jl.Ciputat Baru', '1', '5', '', 'Sawah', 'Kec. Ciputat', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'FIRDAUS', 1970, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ELY YANTI', 1969, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(42190760, '161707070', '12345', 'MUHAMMAD NADZARIO WIDYANTORO', 1, '0042190760', 'Cirebon', '2004-08-27', '3172032708040009', 0, '\r\n							      ', 'Jl.Mahoni Blok E GG.III/23', '6', '15', '', 'Lagoa', 'Kec. Koja', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'YUNANTORO RAKHMANDOKO', 1982, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'WIDIA UTAMI', 1984, 'D3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(39549134, '151607027', '12345', 'MUHAMMAD NAUFAL ILHAN ISWANDI', 1, '0039549134', 'Jakarta', '2003-01-01', '3275040101030018', 0, '\r\n							      ', 'Jl. Nakula, 6A Jakasetia Galaxi Bekasi Selatan', '0', '0', '', 'Jakasetia', 'Kec. Bekasi Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-03-685-016-9', '', 'Iswandi Muda', 1974, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'Dyah Silvana', 1968, 'D3', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(171807080, '171807080', '12345', 'MUHAMMAD PANDYA HANIF RAMADHAN', 1, '171807080', 'JAKARTA', '2004-10-21', '3175072110040006', 0, '\r\n							      ', 'KOMP DKI BLOK G.11 NO.8', '11', '1', '', 'PONDOK KELAPA', 'Kec. Duren Sawit', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'BAYU YUDHO PRAKOSO', 1975, 'Tidak sekolah', '', '\r\n								   ', '', '', 'SANTI DIAN LESTARI', 1977, 'Tidak sekolah', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(171807081, '171807081', '12345', 'MUHAMMAD RAAZAN AVIANO HAMASI', 1, '171807081', 'JAKARTA', '2005-06-29', '3172022906050011', 0, '\r\n							      ', 'JL.SWASEMBADA TIMUR XIX/10B', '12', '5', '', 'KEBON BAWANG', 'Kec. Tanjung Priok', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'MUHAMMAR MUCHTAR', 1973, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'DESSY ANGGRAENI', 1975, 'D3', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(27155214, '151607093', '12345', 'MUHAMMAD RADIFA ANMAR AYASI', 1, '0027155214', 'Talang Padang', '2002-10-28', '1805122810020001', 0, '\r\n							      ', 'Jl. Poros Rawajitu Tulang Bawang B. Lampung', '0', '0', '', 'Tulang BAWANG', 'Kec. Tulang Bawang Udik', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-12-06-043-041-8', '', 'SUPRIYANTO', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Sholihat', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(54501379, '171807082', '12345', 'MUHAMMAD RAFA AL BANI', 1, '0054501379', 'JAKARTA', '2005-09-16', '3172021609050002', 0, '\r\n							      ', 'JL PAPANGGO II GG DEWI SINTA NO 14B', '2', '3', '', 'PAPANGGO', 'Kec. Tanjung Priok', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'TOTO WIDODO', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'LAELA MULIANA MASDJONG', 1979, 'SMA / sederajat', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(35944108, '161707072', '12345', 'MUHAMMAD RAFA NOVEL', 1, '0035944108', 'Jakarta', '2003-08-29', '3275092908030001', 0, '\r\n							      ', 'Jl.Kresna No.26 Perum Pemda Bekasi', '2', '1', '', 'Jatiasih', 'Kec. Jatiasih', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'PARAY SAID', 1949, 'S2', 'Pensiunan', '\r\n								   ', '', '', 'LATIFAH', 1956, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(27039854, '151607028', '12345', 'MUHAMMAD RAFI AZMI KHAIRI', 1, '0027039854', 'Jakarta', '2002-09-21', '3174082109020001', 0, '\r\n							      ', 'Jl. Pengadegan Utara I Rt/Rw 008/06, Jaksel', '8', '6', '', 'Jagakarsa', 'Kec. Jagakarsa', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-04-817-016-9', '', 'Mohamad Ridwan', 1969, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Vikriah Nofiantari', 1979, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(171807050, '171807050', '12345', 'MUHAMMAD RAFI FATHIA DZAKY', 1, '171807050', 'BEKASI', '2005-04-21', '', 0, '\r\n							      ', 'JL SURYA KENCANA I NO.35 LIPPO CKR', '2', '16', '', 'CIBATU', 'Kec. Cikarang Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'WUKIR SURANTO', 1977, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'LIA CHRISTIANA', 1978, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(52397501, '171807083', '12345', 'MUHAMMAD RAFI ZAKY RESTYPUTRA', 1, '0052397501', 'TANGERANG', '2005-07-03', '3603220307050002', 0, '\r\n							      ', 'MEDANG LESTARI BLOK C.IV/A.63', '7', '3', '', 'MEDANG', 'Kec. Pagedangan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'PARAN RESTIYONO', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ERNAWATI DWI ASTUTI', 1979, 'D3', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(33050322, '151607061', '12345', 'MUHAMMAD RAFLI', 1, '0033050322', 'JAKARTA', '2003-02-14', '3174011402030003', 0, '\r\n							      ', 'JL. PERMATA HIJAU BLOK C7 SIRCON NO.79B', '0', '0', '', 'Kebayoran Lama', 'Kec. Kebayoran Lama', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-01-04-089-055-2', '', 'ACHMAD KARUNIA', 1965, 'S2', '', '\r\n								   ', '', '', 'Siska Rahmania', 1968, 'S1', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(38342267, '161707047', '12345', 'MUHAMMAD RAFLI SUHERLAN', 1, '0038342267', 'Jakarta', '2003-09-05', '3175090509030008', 0, '\r\n							      ', 'Gg.Swakarya No.62.A', '1', '14', '', 'Cibubur', 'Kec. Ciracas', 0, '', '', '', '', '\r\n								   ', 'SD-0038342267       ', '', '05-779-061-4        ', '', 'DICKY SUHERLAN', 1974, 'S2', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'YANTIE MULYANTI', 1973, 'D3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(44531746, '161707074', '12345', 'MUHAMMAD RAHMANANDA ARIEF WIBISONO', 1, '0044531746', 'JAKARTA', '2004-09-04', '3173050409040002', 0, '\r\n							      ', 'JL.SALMAN GG.H USMAN NO.88A', '2', '3', '', 'KEBON JERUK', 'Kec. Kebon Jeruk', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'SALMAN MAULANA', 1971, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'RIANA ENNY WIDAYANTI', 1971, 'S2', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(48190950, '161707075', '12345', 'MUHAMMAD RAIHAN', 1, '0048190950', 'Jakarta', '2004-10-18', '3173011810040005', 0, '\r\n							      ', 'Jl.Siantan No.23', '8', '1', '', 'Cengkareng Barat', 'Kec. Cengkareng', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SUHAEMI', 1965, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'FATHIARANI', 1975, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(47520489, '171807084', '12345', 'MUHAMMAD RAIHAN', 1, '0047520489', 'METRO', '2004-12-28', '1872012812040001', 0, '\r\n							      ', 'JL ALAMSYAH RPN NO.17', '20', '9', '', 'METRO', 'Kec. Metro Pusat', 0, 'Pesantren', '', '', '', '\r\n								   ', 'DN-30 Dd 0025674    ', '', '1-17-30-02-226-053-4', '', 'ASEP SUHENDRA', 1976, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ENDANG NURATIN', 1980, 'D3', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(38606879, '151607110', '12345', 'MUHAMMAD RAIHAN TARUNAJAYA', 1, '0038606879', 'Surabaya', '2003-11-05', '3578220511030002', 0, '\r\n							      ', 'Perum Sakura Regency F.11-12', '10', '3', '', 'Ketintang', 'Kec. Gayungan', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-05-01-698-021-4', '', 'ALI TARUNAJAYA', 1960, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'AGUSTINA WENNY', 1969, 'S1', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(30976421, '151607051', '12345', 'MUHAMMAD RAKHA SYARIEF ROSYID', 1, '0030976421', 'JAKARTA', '2003-09-01', '3173050109030005', 0, '\r\n							      ', 'tJL. FILODENDRUM III / 45 SUKABUMI UTARA JAK-BAR', '0', '0', '', 'Kebon Jeruk', 'Kec. Kebon Jeruk', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-03-651-110-3', '', 'RONI HADINATA', 1974, '', '', '\r\n								   ', '', '', 'SUSILAWATI', 1975, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(46658278, '171807085', '12345', 'MUHAMMAD RAMADHAN SHIDDIQ', 1, '0046658278', 'JAKARTA', '2004-11-08', '3172020811040011', 0, '\r\n							      ', 'JL.SWASEMBADA BARAT III NO.50', '13', '9', '', 'KEBON BAWANG', 'Kec. Tanjung Priok', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-01 Dd 0018318    ', '', '1-17-01-02-331-096-9', '', 'ARDIANSYAH ACHIRUL PUTRA', 1976, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'RAFIKAH', 1977, 'D3', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(31554231, '151607094', '12345', 'MUHAMMAD RAYYAN GHIFARI', 1, '0031554231', 'PALEMBANG', '2003-02-16', '3173051602030002', 0, '\r\n							      ', 'Komplek Yon Hub di Kelapa Dua, Kelurahan Kebon Jeruk', '0', '0', '', 'Kebon Jeruk', 'Kec. Kebon Jeruk', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-12-670-022-3', '', 'Yanuar Kurniawan', 1977, '', '', '\r\n								   ', '', '', 'Yulia Hapsari Bungawero', 1977, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(171807052, '171807052', '12345', 'MUHAMMAD RESHAR FAREL PUTRA KANIGORO', 1, '171807052', 'Sigli', '2005-01-19', '', 0, '\r\n							      ', 'Aspol Toddopuli Blok A/7', '1', '8', '', 'Kassi-Kassi', 'Kec. Rappocini', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'AGUNG KANIGORO NUSANTORO', 1978, 'S2', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'SRI WAHYU SALMAN', 0, 'Tidak sekolah', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(33638865, '151607095', '12345', 'MUHAMMAD REVALDI YULIANSYAH', 1, '0033638865', 'JAKARTA', '2003-09-23', '3671062309030004', 0, '\r\n							      ', 'PERUM MAHKOTA SIMPONY Jl. MAHKOTA v bLOK.A4/15 Ciledug Tanggerang', '0', '0', '', 'Ciledug', 'Kec. Ciledug', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-30-02-226-017-8', '', 'Yudhi Yuliansyah', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'SORAYA', 1978, 'S1', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(21968387, '161707076', '12345', 'MUHAMMAD RIFQI', 1, '0021968387', 'Pontianak', '2002-08-24', '6171052408020007', 0, '\r\n							      ', 'Jl. Bukit Barisan No.66', '2', '9', '', 'Sungai Jawi', 'Kec. Pontianak Kota', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-14-13-01-170-138-7', '', 'MUCHTAR MAJID', 1956, 'SMA / sederajat', 'Pedagang Besar', '\r\n								   ', '', '', 'MINTIANA', 1972, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(171807086, '171807086', '12345', 'MUHAMMAD RIFQI SUGIARTO', 1, '171807086', 'BEKASI', '2005-04-08', '3275090804050003', 0, '\r\n							      ', 'JL SAPHIRE NO.12 BLOK N TAMAN JATISARI PERMAI', '1', '20', '', 'JATISARI', 'Kec. Jatiasih', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'EKO SUGIARTO', 1973, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'SRI HANDARYANI', 1978, 'SMA / sederajat', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(41078731, '161707098', '12345', 'MUHAMMAD RIZAL IBRAHIM', 1, '0041078731', 'JAKARTA', '2004-03-03', '3175020303040002', 0, '\r\n							      ', 'Jl.Pulo Asem Utara XI No.42', '13', '2', '', 'JATI', 'Kec. Pulo Gadung', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 0073913    ', '', '1-16-02-03-602-081-8', '', 'IQBAL', 1962, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ARFIANA PURBOHADI', 1965, 'S2', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(42634699, '161707037', '12345', 'MUHAMMAD RUSYDA HAFIZH GHIFARI', 1, '0042634699', 'Jakarta', '2004-01-10', '3275011001040002', 0, '\r\n							      ', 'Jl.Menjangan 3 Blok B 3/15 Taman Permata Cikunir', '4', '14', '', 'Jaka Mulya', 'Kec. Bekasi Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'SUNARYO', 1977, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ISNA NURLAILA ROMADHON', 1975, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(52090012, '171807087', '12345', 'MUHAMMAD SABIQ HILMI', 1, '0052090012', 'JAKARTA', '2005-06-25', '3175062506050017', 0, '\r\n							      ', 'KP PISANGAN II', '17', '5', '', 'PENGGILINGAN', 'Kec. Cakung', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-30 Dd 0182504    ', '', '1-17-30-08-887-012-5', '', 'HARRY NOVIARDY', 1973, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'WINDI SILVIA', 1978, 'D3', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(171807088, '171807088', '12345', 'MUHAMMAD SAKHA ZHAFIRA LAZULI', 1, '171807088', 'TANGERANG', '2005-03-28', '3671092803050004', 0, '\r\n							      ', 'BUMI MUTIARA BLOK JA 5/10', '4', '32', '', 'BOJONG KULUR', 'Kec. Gunungputri', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'HEIKY LAZULI', 1983, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'DIAN ANGGRAINI RAFLIS', 1986, 'SMA / sederajat', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(58558252, '171807089', '12345', 'MUHAMMAD SAMUDERA AL MATHURIDDY', 1, '0058558252', 'BEKASI', '2005-01-16', '', 0, '\r\n							      ', 'VILLA GALAXI JL LOTUS BARAT D3/32', '4', '19', '', 'JAKA SETIA', 'Kec. Bekasi Selatan', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd 035160827  ', '', '1-17-02-03-516-082-7', '', 'MOCH ICHWAN EKA PUTRA', 1968, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'MUNIFA', 1971, 'S1', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(45078219, '171807090', '12345', 'MUHAMMAD SHAQUILLE MUTTAQI', 1, '0045078219', 'JAKARTA', '2004-12-12', '3174051212040009', 0, '\r\n							      ', 'JL MURTADO', '5', '1', '', 'CIPULIR', 'Kec. Kebayoran Lama', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-30 Dd 0025818    ', '', '1-17-30-02-479-042-7', '', 'CHE GUAVARRA', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'NUNING HAYRANI', 1977, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(34024711, '151607029', '12345', 'MUHAMMAD SHIDIQ HASAN', 1, '0034024711', 'Gorontalo', '2003-12-26', '7671062612030002', 0, '\r\n							      ', 'Jl. KH Agussalim No.22 Kota Tengah Gorontalo', '0', '0', '', 'Kota Tengah', 'Kec. Asparaga', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-29-01-119-005-4', '', 'Supriadi Hasan', 1980, '', '', '\r\n								   ', '', '', 'Leni Sofyan', 1980, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(36558171, '161707077', '12345', 'MUHAMMAD SULTTONI', 1, '0036558171', 'Jakarta', '2003-10-15', '3674051510030008', 0, '\r\n							      ', 'Jl. Beruang II No.103.A', '1', '2', '', 'Pondok Ranji', 'Kec. Ciputat Timur', 0, '', '', '', '', '\r\n								   ', '', '', '1-16-30-04-304-066-7', '', 'RUDIYANTO', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'LISAH NOVITA SARI', 1980, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(171807091, '171807091', '12345', 'MUHAMMAD YUVA ATHALLAH', 1, '171807091', 'PEKANBARU', '2004-12-07', '3173070712041002', 0, '\r\n							      ', 'KOMP.POLRI PONDOK KARYA -BLOK I NO.48', '10', '4', '', 'PELA MAMPANG', 'Kec. Mampang Prapatan', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'BAMBANG YUDHANTARA SALAMUN', 1979, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'EVA YULI ASTUTI', 1978, 'S1', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(38339573, '161707078', '12345', 'MUHAMMAD ZAIDAN FAIZA AZHAR', 1, '0038339573', 'Bandung', '2003-10-30', '1050113010035001', 0, '\r\n							      ', 'Jl. Cikawao No.6', '1', '4', '', 'Cikawo', 'Kec. Lengkong', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'WILDAN ICHSAN WIRAWAN', 1967, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'LEVIANA ELBA MAHARANI', 1970, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(46742397, '161707079', '12345', 'MUHAMMAD ZAKI MARZUQ SETYAGRAHA', 1, '0046742397', 'Jakarta', '2004-06-04', '3203280406040008', 0, '\r\n							      ', 'Kp.Pengkolan', '3', '2', '', 'Palasari', 'Kec. Cipanas', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'WISNU SETIA GRAHA UTAMA', 1974, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'DELICIA SIRAPANDJI', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(41293230, '161707107', '12345', 'MUHAMMAD ZAKI RAMADHAN', 1, '0041293230', 'Tangerang', '2004-10-03', '3603100310040002', 0, '\r\n							      ', 'Desa Pekayon', '2', '6', '', 'Pekayon', 'Kec. Sukadiri', 0, '', '', '', '', '\r\n								   ', '', '', '1-16-30-18-182-018-7', '', 'RUHIAT RUKMANA', 1973, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'ROSMIYATI', 1975, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(55459702, '171807092', '12345', 'MUHAMMAD ZAKIY MUHTADI', 1, '0055459702', 'PANGKALPINANG', '2005-11-09', '1971020911050001', 0, '\r\n							      ', 'JL. RE. MARTADINATA NO.246', '4', '1', '', 'OPAS INDAH', 'Kec. Taman Sari', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1-16-28-01-069-020-5', '', 'MUHAMMAD RAIS', 1970, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'RIANI DEVITA', 1972, 'SMA / sederajat', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(43591811, '161707085', '12345', 'NABIEL ARIQ ALVARO TAMAM', 1, '0043591811', 'Tangerang', '2004-03-09', '', 0, '\r\n							      ', 'Jl.Palem VI B-6 No.2', '2', '9', '', 'Uwung Jaya', 'Kec. Cibodas', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'HERMAN', 1975, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'EMBANG ASIAH', 1978, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(31670580, '151607096', '12345', 'NABIEL HARYONO ARGADIN', 1, '0031670580', 'Jakarta', '2003-04-10', '3674011004030006', 0, '\r\n							      ', 'Jl. Angsana I Blok.15 No.17 Sektor I.I Griya Loka Bumi Serpong Damai LBSD', '0', '0', '', 'Serpong', 'Kec. Serpong', 0, '', '', '', '', '\r\n								   ', 'DN-30 Dd 0192567    ', '', '1-15-30-08-775-024-9', '', 'Budi Haryono', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Rina Nurlia', 1977, '', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(32454856, '150607030', '12345', 'NABIL IZZATURRAHMAN', 1, '0032454856', 'JAKARTA', '2003-03-18', '3172031803031002', 0, '\r\n							      ', 'KOMP. SEK NEG BLOK. O NO. 68 TUGU UTARA JAKUT', '0', '0', '', 'Tugu UTARA', 'Kec. Tanjung Priok', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-01-02-403-020-5', '', 'WAWAN KURNIAWAN', 1970, '', '', '\r\n								   ', '', '', 'SITI NUR FAUZANI', 1977, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(42134394, '161707081', '12345', 'NAFTALI ALSHAD', 1, '0042134394', 'Jakarta', '2004-11-13', '3174011311040001', 0, '\r\n							      ', 'Jl.I Kavling IV/4', '3', '14', '', 'Kebon Baru', 'Kec. Tebet', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-16-01-05-578-126-3', '', 'Nirwansyah Munir', 1960, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Lin Astini', 1963, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(34672690, '151607062', '12345', 'NAUFAL FAWAZ ZUHDI', 1, '0034672690', 'SIDOARJO', '2003-04-17', '1671041704030007', 0, '\r\n							      ', 'Menara Mulia Jl. Gatot Subroto Jakarta selatan', '0', '0', '', 'Tegal Parang', 'Kec. Mampang Prapatan', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-30-04-417-016-9', '', 'Novrianto M. Nur', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Rara Saroyini', 1976, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(40490047, '161707082', '12345', 'NAUFAL NAYAKA RAHMAN', 1, '0040490047', 'Jakarta', '2004-08-08', '3175070808040003', 0, '\r\n							      ', 'Jl. Ry Nusa Indah I Blk 39 No.6', '1', '4', '', 'Malaka Jaya', 'Kec. Duren Sawit', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'ARIF RAHMAN', 1976, 'S1', 'Wiraswasta', '\r\n								   ', '', '', 'TRI WAHYUNI NUGRAHENI', 1977, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(39104167, '151607063', '12345', 'NAUFAL SHIDQI SUGIARTO', 1, '0039104167', 'SURABAYA', '2003-05-18', '3275091805030003', 0, '\r\n							      ', 'Taman Jatisari Permai Blok N/12 Jatisari Jatiasih', '0', '0', '', 'Jatisari', 'Kec. Jatiasih', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-02-03-570-056-9', '', 'Eko Sugiarto', 1972, '', '', '\r\n								   ', '', '', 'Sri Handaryani', 1978, 'S1', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(25959520, '151607097', '12345', 'OMAR AULIA RAHMAN', 1, '0025959520', 'BANJARMASIN', '2002-06-27', '3174072706021001', 0, '\r\n							      ', 'Perum Mega Asri G.1 KaliurangKM9,3 YOGYAKARTA', '0', '0', '', 'kaliurang', 'Kec. Bantul', 0, '', '', '', '', '\r\n								   ', 'DN-04 Dd 0001786    ', '', '1-14-04-01-050-085-4', '', 'Drs. Taruna Gunawan', 1964, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Safitri Wazar', 1965, 'S1', 'Tidak bekerja', 'Tidak Berpenghasilan\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(171807093, '171807093', '12345', 'PRANANDYA ABYAN CANIAGO', 1, '171807093', 'BEKASI', '2005-07-01', '', 0, '\r\n							      ', 'JL.PAKIS V BLOK BB25 NO.16 PONDOK PEKAYON INDAH', '5', '12', '', 'PEKAYON JAYA', 'Kec. Bekasi Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'WELDIA PUTRA CANIAGO', 1976, 'Tidak sekolah', '', '\r\n								   ', '', '', 'IRAWATI', 1978, 'Tidak sekolah', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(171807110, '171807110', '12345', 'RADEN MAS MUHAMMAD RAIHAN CAHYOAJI WIDIANTO', 1, '171807110', 'JAKARTA', '2005-06-17', '3175021706050004', 0, '\r\n							      ', 'JL.PRATAMA I NO.8', '16', '4', '', 'JATI', 'Kec. Pulo Gadung', 0, 'Pesantren', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'RADEN MAS SURYO SURARJO DWITA DONNY PUTRANTO', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'DESY WIDIASTUTI', 1974, 'D3', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(32715000, '151607098', '12345', 'RADEN MUHAMMAD KEVIN HARDIPUTRA DJUWAENI', 1, '0032715000', 'cilegon', '2003-05-12', '3672061205030001', 0, '\r\n							      ', 'Perum LBS Blok B 02', '5', '1', '', 'Citangkil', 'Kec. Cilegon', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-30-03-180-036-5', '', 'Ir Harry Hariawan dj', 1966, 'S1', '', '\r\n								   ', '', '', 'Diah permatasari', 1974, 'D3', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(33431387, '151607099', '12345', 'RADFAN HARTSA', 1, '0033431387', 'Jakarta', '2003-07-30', '3175033007030004', 0, '\r\n							      ', 'Cipinang Besar Utara No.5', '2', '14', '', 'Cipinang', 'Kec. Jatinegara', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-01-05-979-020-5', '', 'Agusti', 1970, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'Intan Diana', 1978, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(171807094, '171807094', '12345', 'RADITHYA RAIHAN', 1, '171807094', 'Tangerang', '2005-09-11', '3674041109050001', 0, '\r\n							      ', 'Cluster Emerald Garden Blok G No.6', '3', '11', '', 'Parigi', 'Kec. Pondok Aren', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'IMAN GANDI MIHARDJA', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'DEWI IRAWATY', 1977, 'D3', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(47383613, '', '12345', 'RADITYA ALIF ABIDIN', 1, '0047383613', 'JAKARTA', '2005-02-15', '3201021502050002', 0, '\r\n							      ', 'LEGENDA WISATA GALILEO L.8/7', '2', '20', '', 'WANAHERANG', 'Kec. Gunungputri', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'ABIDIN', 1968, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'SUSI SUSANTI', 1978, 'D3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(50512803, '161707086', '12345', 'RADITYO ATHALA AKBAR', 1, '0050512803', 'MEDAN', '2005-02-22', '3216192202050005', 0, '\r\n							      ', 'JL.DAHLIA 1 NO.26 TLH.LIPPO CKR', '13', '7', '', 'SERANG', 'Kec. Cikarang Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'ARIO PANDJI', 1977, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'WIDYA MELISA', 1977, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(30370770, '151607031', '12345', 'RAFA FAUZAN BUDIMAN', 1, '0030370770', 'JAKARTA', '2003-02-27', '3271052702030007', 0, '\r\n							      ', 'Perumahan Taman Soka Jl. Saoka III No.9', '0', '0', '', 'TANAH BARU', 'Kec. Kota Bogor Utara', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-04-189-052-5', '', 'Rahmat Budiman', 1978, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Rita Susanti', 1975, 'D3', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(30458959, '151607064', '12345', 'RAFI AHMAD SHIDQI', 1, '0030458959', 'Jakarta', '2003-05-16', '3175101605031001', 0, '\r\n							      ', 'Jl.Dalang, Rt 12/05 No 49,Munjul Cipayung', '0', '0', '', 'Munjul', 'Kec. Cipayung', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-01-05-848-152-9', '', 'Dicky Baihaqi', 1965, 'S1', '', '\r\n								   ', '', '', 'Ros Imtinan', 1966, 'SMA / sederajat', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(51859789, '171807095', '12345', 'RAFI ALGHIFFARI', 1, '0051859789', 'JAKARTA', '2005-09-12', '3174011209050002', 0, '\r\n							      ', 'JL RASAMALA I NO.45', '15', '2', '', 'MENTENG DALAM', 'Kec. Tebet', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-01 Dd 0158497    ', '', '1-17-01-04-572-029-4', '', 'RADEN ABDUL KODIR', 1966, 'S2', 'Karyawan Swasta', '\r\n								   ', '', '', 'HADANAH', 1970, 'D3', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(42375999, '161707088', '12345', 'RAFI AZFA GHANI', 1, '0042375999', 'Depok', '2004-06-22', '3201012206040002', 0, '\r\n							      ', 'Nirwana Estate Blok RR No.10', '10', '13', '', 'Pakansari', 'Kec. Cibinong', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'AMIR RIVANA', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'LUSIANA DEWI', 1978, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(42692845, '161707089', '12345', 'RAFI AZZAHRAN ABDUL AZIZ', 1, '0042692845', 'Jakarta', '2004-09-03', '3171050309040001', 0, '\r\n							      ', 'Jl.Cempaka Putih Barat', '12', '5', '', 'Cempaka Putih Barat', 'Kec. Cempaka Putih', 0, '', '', '', '', '\r\n								   ', '', '', '1-16-01-01-         ', '', 'WISNU DESRANO', 1978, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'LEILA ASEANA', 1979, 'Tidak sekolah', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(171807096, '171807096', '12345', 'RAFIF ADDAFA IBADILLAH', 1, '171807096', 'Bontang', '2005-02-19', '6474021902050001', 0, '\r\n							      ', 'Jl. Tambora PC 6A No.46B Komp PT Badak NGL', '7', '0', '', 'Satimpo', 'Kec. Bontang Selatan', 0, 'Bersama orang tua', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'NOVIE RENDRA', 1979, 'SMA / sederajat', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'SRI WIDIASTUTI', 1979, 'SMA / sederajat', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(32401165, '151607100', '12345', 'RAFIF AUFAJRI', 1, '0032401165', 'Lubuklinggau', '2003-05-21', '1605122105030005', 0, '\r\n							      ', 'Desa Muara megang sakti kab musirawas sumsel', '0', '0', '', 'Megang Sakti', 'Kec. Megang Sakti', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-11-09-387-018-7', '', 'Pajeri H. Komsik', 1982, 'SMA / sederajat', '', '\r\n								   ', '', '', 'Yeni Purnama', 1979, 'D3', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(42712982, '161707110', '12345', 'RAFII MANGGALA JAPAMEL', 1, '0042712982', 'JAYAPURA', '2004-08-07', '9171020708040007', 0, '\r\n							      ', 'PERUMAHAN PEMDA I ENTROP', '3', '3', '', 'ENTROP', 'Kec. Jayapura Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'PRIBOWO ADNAN', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'YENI SUNDIARTI', 1970, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(40379502, '161707090', '12345', 'RAFINDA ATAILLAH NUGROHO', 1, '0040379502', 'Banjarmasin', '2004-06-24', '3175022406040004', 0, '\r\n							      ', 'Jl.Porselen IV No.7', '13', '3', '', 'Kayu Putih', 'Kec. Pulo Gadung', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'JONI WAHYU NUGROHO', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ROESMINDA SARI', 1979, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(38097289, '151607065', '12345', 'RAFLY ANANDA VARDHAN', 1, '0038097289', 'Jakarta', '2003-08-16', '3674041608030008', 0, '\r\n							      ', 'Permata Adora B12/3', '2', '18', '', 'JOMBANG', 'Kec. Ciputat', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-02-04-418-015-2', '', 'JANUAR SULIANTO', 1976, '', '', '\r\n								   ', '', '', 'ASLIN N THAMRIN', 1974, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(43150761, '161707091', '12345', 'RAFLY MUHAMMAD RAMADHAN', 1, '0043150761', 'Cilegon', '2004-11-01', '3674020111040006', 0, '\r\n							      ', 'Komp.Serpong Park B-7 No.11', '15', '5', '', 'Jelupang', 'Kec. Serpong Utara', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'HEDY HERDYANA', 1976, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'IRMA YUSNIATI', 1976, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(51347863, '171807097', '12345', 'RAHADIAN YUSUF', 1, '0051347863', 'Jakarta', '2005-05-05', '3174010505050010', 0, '\r\n							      ', 'Jl. H Romli', '4', '3', '', 'Menteng Dalam', 'Kec. Tebet', 0, 'Asrama', '', '', '081210668817', '\r\n								   ', 'DN-01 Dd 0158498    ', '', '1-17-01-04-572-030-3', '', 'HUSADAN BUDI SANTOSO', 0, 'S1', '', '\r\n								   ', '', '', 'SUSWATI', 1970, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(47934855, '161707092', '12345', 'RAIHAN ABDUL MAJID', 1, '0047934855', 'Bekasi', '2004-04-17', '3175051704040003', 0, '\r\n							      ', 'Jl.Pesona VII B No.210', '5', '5', '', 'Kalisari', 'Kec. Pasar Rebo', 0, '', '', '', '', '\r\n								   ', '', '', '1-16-04-04-147-018-7', '', 'Asep Rusmana', 1976, 'S2', 'Karyawan Swasta', '\r\n								   ', '', '', 'Yelly Afrita Ilyas', 1979, 'S2', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(171807098, '171807098', '12345', 'RAIHAN MUHAMMAD NAUFAL', 1, '171807098', 'JAKARTA', '2005-08-10', '3175081008050006', 0, '\r\n							      ', 'JL KUDIN NO.12', '6', '3', '', 'MAKASAR', 'Kec. Makasar', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'ROMELAN', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ENI SUPRAPTI', 1978, 'SMA / sederajat', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(50659070, '171807099', '12345', 'RAIHAN OCTORIZA NUGROHO', 1, '0050659070', 'BANJARMASIN', '2005-10-13', '3175021310050010', 0, '\r\n							      ', 'JL.KAYU TIMUR NO.33', '1', '5', '', 'KAYU PUTIH', 'Kec. Pulo Gadung', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-01 Dd 0129494    ', '', '1-17-01-05-489-017-8', '', 'JONI WAHYU NUGROHO', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ROESMINDA SARI', 1979, 'S1', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0);
INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `id_kls_pararel`, `kode_jurusan`, `id_sesi`) VALUES
(171807100, '171807100', '12345', 'RAKAN NABIL RAMADHAN', 1, '171807100', 'Tangerang', '2004-10-21', '', 0, '\r\n							      ', 'TAMAN ROYAL 2 JL. KERTANEGARA NO.27', '1', '16', '', 'PORIS PLAWAD INDAH', 'Kec. Cipondoh', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'IRIYANTO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'FAIQOH', 0, 'Tidak sekolah', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(43072521, '161707093', '12345', 'RAKAN NARENDRA MUNGGARAN', 1, '0043072521', 'Banjar', '2004-01-01', '3275090101040010', 0, '\r\n							      ', 'Custer Bali 2 Blok A X 2 No.3', '9', '9', '', 'Jatisari', 'Kec. Jatiasih', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'FIRMAN PRIYATNA', 1975, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', 'ETIN NURYATIN', 1975, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(31858124, '150607032', '12345', 'RAMA THAZAFAYA ALGHIFFARI', 1, '0031858124', 'Jakarta', '2003-11-10', '3174051011030003', 0, '\r\n							      ', 'Jl. Laut Banda No.10 Komplek Seskoal Cipulir', '0', '0', '', 'CIPULIR', 'Kec. Kebayoran Lama', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-01-04-084-047-2', '', 'Riduan', 1972, 'S1', '', '\r\n								   ', '', '', 'Devi Erlita', 1975, 'S1', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(33913538, '151607033', '12345', 'RANGGA MARSHAN BOLIVAR', 1, '0033913538', 'JAKARTA', '2003-08-25', '3276022508030001', 0, '\r\n							      ', 'Mahogany Residence Kav. J No. 31', '0', '0', '', 'HARJAMUKTI', 'Kec. Cimanggis', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-01-05-721-051-6', '', 'ATRI BOLIVAR', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'Dian Rufaida', 1973, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(42316667, '161707095', '12345', 'RASYA GHATFAN PUTRA PERMANA', 1, '0042316667', 'Depok', '2004-09-07', '3276050709040005', 0, '\r\n							      ', 'Griya Kencana Blok AM No.18', '4', '30', '', 'Mekarjaya', 'Kec. Sukmajaya', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'AGUNG NANA PERMANA', 1973, 'S2', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'PRITA EKA PERTIWI', 1980, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(30898978, '151607101', '12345', 'RAYI RAKA RAIHAN', 1, '0030898978', 'jakarta', '2003-09-16', '3174011909030002', 0, '\r\n							      ', 'Jl. Anggrek 24 No. 1 AS 18', '0', '0', '', 'KRANGGAN', 'Kec. Jatiasih', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-784-016-9', '', 'SYARIF HIDAYATULLAH', 1965, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'FALIA CHITRA PERTIWI', 1966, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(2147483647, '161707096', '12345', 'RAYNARD HARYONO MOHANDES', 1, '9018627815', 'Jakarta', '2004-08-17', '3674011708040004', 0, '\r\n							      ', 'Jl.Angsana Blok 1.5/17 Sektor 1-1 BSD', '7', '13', '', 'Rawabuntu', 'Kec. Serpong', 0, '', '', '', '', '\r\n								   ', 'DN-30 Dd 0187401    ', '', '1-16-30-08-775-016-9', '', 'BUDI HARYONO', 1972, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'RINA NURLIA', 1977, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(50796585, '171807101', '12345', 'RAYYAN', 1, '0050796585', 'JAKARTA', '2005-10-19', '3174011910050005', 0, '\r\n							      ', 'JL.KP.MELAYU KECIL II/6', '4', '10', '', 'BUKIT DURI', 'Kec. Tebet', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0132386    ', '', '1-17-01-05-979-022-3', '', 'FIKRY ABDULLAH SAID', 1971, 'Tidak sekolah', '', '\r\n								   ', '', '', 'FATIMAH GHOZI HARHARAH', 1980, 'Tidak sekolah', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(171807102, '171807102', '12345', 'REDHA FAHLEVI NURDIN', 1, '171807102', 'JAKARTA', '2005-01-29', '', 0, '\r\n							      ', 'JL PESONA VI NO.165', '4', '5', '', 'KALISARI', 'Kec. Pasar Rebo', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'NURDIN', 0, 'Tidak sekolah', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ZURAIDIATI', 0, 'Tidak sekolah', 'Wiraswasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(36272504, '151607107', '12345', 'RESAN ALMAS', 1, '0036272504', 'jakarta', '2003-05-24', '0951052405030086', 0, '\r\n							      ', 'JL. BANGAU A1 NO.21 RT 1/6 SUKAPURA', '0', '0', '', 'Suka Pura', 'Kec. Cilincing', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0036664    ', '', '1-15-01-02-091-023-2', '', 'RAHMAT KURNIADI', 1968, '', '', '\r\n								   ', '', '', 'Mimi Karminingsih', 1970, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(171807103, '171807103', '12345', 'REZA RHAMADHAN', 1, '171807103', 'JAKARTA', '2004-10-21', '', 0, '\r\n							      ', 'JL.KALIBARU TIMUR III NO.9', '5', '2', '', 'KALIBARU', 'Kec. Cilincing', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'MOHAMAD CHOLIL', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'SUGIWATI', 1974, 'Tidak sekolah', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(171807104, '171807104', '12345', 'RIFANTAMA MUHAMMAD ILMAN', 1, '171807104', 'JAKARTA', '2005-08-29', '3174052908050005', 0, '\r\n							      ', 'JL JURAGANAN', '6', '7', '', 'GROGOL UTARA', 'Kec. Kebayoran Lama', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SARIF HIDAYAT', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'KURNIA ANDARIE', 1977, 'S1', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(50932531, '171807105', '12345', 'RIFKI RYAPIAKU', 1, '0050932531', 'JAKARTA', '2005-03-11', '', 0, '\r\n							      ', 'JL.KAYU MANIS II BARU NO.14 A', '8', '2', '', 'KAYU MANIS', 'Kec. Matraman', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'YAHYA LUBIS', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'TIRAMIN MANURUNG', 1966, 'S1', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(52095542, '171807106', '12345', 'RIFKY WAHYUANANTA', 1, '0052095542', 'JAKARTA', '2005-03-28', '', 0, '\r\n							      ', 'PERUM DE GREEN MANSION NO.C 5', '1', '1', '', 'JATIBENING', 'Kec. Pondokgede', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'MUHAMMAD AKBAR', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'LUCKY RUSMAYASARI', 0, 'Tidak sekolah', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(35715481, '161707097', '12345', 'RIVAN ABDIEL PRADANA SAMUDERA', 1, '0035715481', 'Surabaya', '2003-06-04', '3172040406030008', 0, '\r\n							      ', 'Jl.Angin Brubu No.82 C', '6', '11', '', 'Semper Barat', 'Kec. Cilincing', 0, '', '', '', '', '\r\n								   ', 'DN-01 Dd 0094875    ', '', '1-16-01-02-077-032-9', '', 'DANIAL HERY SUSANTO', 1978, 'D3', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'FITRIYAH INDAH SURYANI', 1977, 'D3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(55803799, '171807107', '12345', 'RIVANDY ALGHIFARI', 1, '0055803799', 'BOGOR', '2005-07-26', '', 0, '\r\n							      ', 'BUKIT CIMANGGU VILLA BLOK S-2/5', '1', '14', '', 'CIBADAK', 'Kec. Tanah Sareal', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 04130105   ', '', '1-17-02-04-130-105-8', '', 'DENI BAGOES DEWANTO', 0, 'Tidak sekolah', '', '\r\n								   ', '', '', 'FEBRIYANTIN WIDYANINGSIH', 1973, 'D3', 'Lainnya', 'Rp. 500,000 - Rp. 999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(36118655, '151607102', '12345', 'RIYADH ABU BAKAR', 1, '0036118655', 'BANDUNG', '2003-06-16', '3175081605031001', 0, '\r\n							      ', 'Jl. Pondok Kelapa Indah Blok A2 No.4 Kalimalang Jakarta Timur', '0', '0', '', 'Pondok Kelapa', 'Kec. Duren Sawit', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-979-026-7', '', 'ADI NUGRAHA', 1982, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'SEKAR ARUM ARIMBI POERBO WARDHANI', 1983, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(171807108, '171807108', '12345', 'RIZAL FARHAN MAULANA', 1, '171807108', 'BANDUNG', '2005-04-20', '', 0, '\r\n							      ', 'NIRWANA ESTATE BLOK FF NO.03', '7', '13', '', 'PAKANSARI', 'Kec. Cibinong', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'SAIRI', 1970, 'S2', '', '\r\n								   ', '', '', 'HENI ROHAENI', 1973, 'S1', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(37368228, '151607034', '12345', 'RIZQ ZEIN BEN HUSSAIN', 1, '0037368228', 'Jakarta', '2003-05-08', '3674040805030001', 0, '\r\n							      ', 'Villa Jombang Baru Block D4/3 Jombang Tangerang', '0', '0', '', 'Gunung Lestari', 'Kec. Jombang', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-30-04-069-025-9', '', 'Mahawarman Husain. A', 1970, '', '', '\r\n								   ', '', '', 'KRISSY TRIANA DEWIt', 1971, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(40812026, '161707099', '12345', 'RIZQI DWI GIOVANI', 1, '0040812026', 'JAKARTA', '2004-08-26', '', 0, '\r\n							      ', 'RUSUN THP III LT.2/10', '6', '9', '', 'KEBON KOSONG', 'Kec. Kemayoran', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'M.RUSTAM  A KAUNDUNG', 1965, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'SRI HARTATI', 1976, 'SMA / sederajat', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(171807109, '171807109', '12345', 'RIZQULLAH NABIEL IBRAHIM MANAF', 1, '171807109', 'BEKASI', '2005-08-02', '', 0, '\r\n							      ', 'KOMP.PEMDA BLOK B I NO.18 JL.ARJUNA', '1', '1', '', 'JATIASIH', 'Kec. Jatiasih', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'BUDI PRASTYO WINDARTO', 1976, 'S2', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ZULMARDINA IMAYANTI', 1981, 'S1', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(27858802, '151607035', '12345', 'ROFI NURANWAR NAPASA', 1, '0027858802', 'bekasi', '2002-10-09', '3275060910020016', 0, '\r\n							      ', 'Bulevar Hijau C1 No.23 Pejuang Bekasi', '0', '0', '', 'medan satria', 'Kec. Bekasi Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-02-03-555-103-2', '', 'Subagio', 1982, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'Nana Purnamawati', 1976, 'S1', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(33131180, '151607103', '12345', 'SADDAM GHAZIE ARKAN', 1, '0033131180', 'Bekasi', '2003-05-16', '3275011605030004', 0, '\r\n							      ', 'Jl. Sersan Hamzah Rt01/09', '1', '9', '', 'Margahayu', 'Kec. Bekasi Timur', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-02-03-504-010-7', '', 'Ibnu Hadjar H', 1968, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'Puji Harjanti', 1972, 'D3', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(37723428, '151607066', '12345', 'SATYA ATHAYA DANISWARA', 1, '0037723428', 'JAKARTA', '2003-05-23', '3172042305030013', 0, '\r\n							      ', 'KOMP. GREEN GARDEN BLOK A3 NO.17', '0', '0', '', 'KEMBANGAN', 'Kec. Kembangan', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-02-033-068-5', '', 'AGUS GUNAWAN RIANTO', 1975, '', '', '\r\n								   ', '', '', 'Deasy lisdayanti', 1973, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(171807111, '171807111', '12345', 'SHAUBIL HAQQI MAYDA PUTRA', 1, '171807111', 'JAKARTA', '2004-12-09', '', 0, '\r\n							      ', 'JL.TAWAKAL UJUNG B7', '16', '7', '', 'TOMANG', 'Kec. Grogol Petamburan', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'DAVID MUSLIM', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'DAMAYANI', 1977, 'S1', 'Lainnya', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(53536725, '171807112', '12345', 'SHOLAHUDDIN AL AYUBI', 1, '0053536725', 'BEKASI', '2005-04-29', '', 0, '\r\n							      ', 'JL CITANDUY IV BLOK P5/34 GRAHA ASRI', '0', '0', '', 'SIMPANGAN', 'Kec. Cikarang Utara', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd            ', '', '1-17-02-12-277-062-3', '', 'YOPI HERLIANSYAH', 0, 'Tidak sekolah', 'Karyawan Swasta', '\r\n								   ', '', '', 'NORMA LOVITTA', 0, 'Tidak sekolah', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 37, '', 0),
(41799696, '161707100', '12345', 'SULTAN ISFANDYAR ALI FAISAL', 1, '0041799696', 'JAKARTA', '2004-07-23', '3175052307040001', 0, '\r\n							      ', 'JL.GOTONG ROYONG', '7', '2', '', 'CIJANTUNG', 'Kec. Pasar Rebo', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'MOHAMMAD FAISAL', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'SHINTA SETIAWATI', 1976, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(58691970, '171807113', '12345', 'SULTAN NAJTHAMI ALFAZPOETRO', 1, '0058691970', 'Jakarta', '2005-04-22', '3201022204050007', 0, '\r\n							      ', 'TMN.KENARI NUSANTARA PN.3/20', '5', '18', '', 'Nagrak', 'Kec. Gunungputri', 0, 'Asrama', '', '', '08129993192', '\r\n								   ', 'DN-01 Dd 0098504    ', '', '1-17-01-05-164-024-9', '', 'DONI FAZRIYANTO', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'HENY DARYANTI', 1981, 'S1', 'Lainnya', 'Kurang dari Rp. 500,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(34637534, '151607067', '12345', 'SULTHAN HANIF DWINUGRAHA', 1, '0034637534', 'Surabaya', '2003-02-08', '3674040802030001', 0, '\r\n							      ', 'Cluster Emerald Garden Blok G No.16 Bintaro Jaya', '0', '0', '', 'Bintaro', 'Kec. Pesanggaran', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-30-04-065-054-3', '', 'Iman Gandi Mihardja', 1976, '', '', '\r\n								   ', '', '', 'Dewi irawaty', 1977, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(39474256, '151607068', '12345', 'SUTA FAWWAZ INSANI TARIBI', 1, '0039474256', 'pekanbaru', '2003-02-03', '3276062007990005', 0, '\r\n							      ', 'Jl. Palakali Raya Kukusan beji depok', '0', '0', '', 'KUKUSAN', 'Kec. Beji', 0, '', '', '', '', '\r\n								   ', '', '', '9-14-01-05-928-004-7', '', 'Muhammad Tamin', 1972, '', '', '\r\n								   ', '', '', 'susy yusnita', 1974, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(47437118, '161707101', '12345', 'SYAMIL', 1, '0047437118', 'JAKARTA', '2004-11-23', '0954052311040129', 0, '\r\n							      ', 'CILILITAN KECIL', '1', '7', '', 'CILILITAN', 'Kec. Kramat Jati', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'NABIL', 1970, 'D3', 'Wiraswasta', '\r\n								   ', '', '', 'VERA SALIM', 1984, 'SMA / sederajat', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(24373964, '151607104', '12345', 'TEUKU MUHAMMAD FAJHRY SYAHPUTRA', 1, '0024373964', 'SAMARINDA', '2002-09-10', '6471011009020001', 0, '\r\n							      ', 'PANCORAN RIVERSIDE LT. 19', '0', '0', '', 'Pancoran', 'Kec. Pancoran', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-04-520-033-8', '', 'TEUKU MARWANSYAH', 1963, '', '', '\r\n								   ', '', '', 'WULANDARI', 1977, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(31138508, '151607069', '12345', 'TINTO MUNIF NUGRAHA', 1, '0031138508', 'yogyakarta', '2003-01-01', '1603070101030005', 0, '\r\n							      ', 'Jl. Palm No.3 Tanjung enim sumatra selatan', '0', '0', '', 'Tanjung Enim', 'Kec. Lawang Kidul', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-11-07-081-047-2', '', 'Nugraha Nurtyansanta', 1969, '', '', '\r\n								   ', '', '', 'wulandari Wijayanti', 1969, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 24, '', 0),
(32811169, '151607036', '12345', 'UKASYAH TAFTAZANI KHOERI', 1, '0032811169', 'JAKARTA', '2003-03-21', '3276022103030000', 0, '\r\n							      ', 'JL. GARUDA NO. 56 RT 03/14 LEMBAH HIJAU, MEKARSARI', '0', '0', '', 'mekarsari', 'Kec. Cimanggis', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-15-01-05-845-024-9', '', 'tHERI CHOERI', 1974, '', '', '\r\n								   ', '', '', 'Eka sulasmini', 1979, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 25, '', 0),
(41474881, '161707102', '12345', 'UMARADITYA PANJI SURYADI', 1, '0041474881', 'PURWOKERTO', '2004-01-21', '3276102101040001', 0, '\r\n							      ', 'Perum Jati Jajar Blok E.19 No.12 A', '5', '14', '', 'Jatijajar', 'Kec. Tapos', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'AKMAL SURYADI', 1975, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ANTENG CATUR PURBO CAHYANI', 1974, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(42252296, '161707103', '12345', 'WAN DAFARIZI RIZALDI', 1, '0042252296', 'Jakarta', '2004-02-28', '3175072802040008', 0, '\r\n							      ', 'Jl.Semangka B.5/1', '11', '17', '', 'Duren Sawit', 'Kec. Duren Sawit', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'HARRI SUPANGAT', 0, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'ARIKA SINTHIA AYU', 1976, 'S1', 'Wiraswasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(171807114, '171807114', '12345', 'WILDANIL PASHA MUQAFFI', 1, '171807114', 'JAKARTA', '2005-02-23', '', 0, '\r\n							      ', 'KOMPLEK LEMIGAS A.17', '8', '9', '', 'CIPULIR', 'Kec. Kebayoran Lama', 0, '', '', '', '', '\r\n								   ', '', '', '1                   ', '', 'AHSANUL MUQAFFI', 1971, 'Tidak sekolah', '', '\r\n								   ', '', '', 'IDA FIQRIAH', 1976, 'Tidak sekolah', 'PNS/TNI/Polri', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(42035022, '161707105', '12345', 'WZAMAH AL HUSSEIN', 1, '0042035022', 'MALANG', '2004-10-09', '', 0, '\r\n							      ', 'GRAHA PUSPASARI 2 JL. PUSPA PERMAI', '1', '15', '', 'PUSPASARI', 'Kec. Citeureup', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'ASRIYON ROZA', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', 'DEWI SOFYARTI', 1976, 'S1', 'Karyawan Swasta', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 32, '', 0),
(41770261, '161707106', '12345', 'YUSUF', 1, '0041770261', 'TOBOALI', '2004-03-06', '1.90301060304E+15', 0, '\r\n							      ', 'JL.RAWA BANGUN', '2', '6', '', 'TOBOALI', 'Kec. Toboali', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'EDY SUMARDI', 1972, 'SMA / sederajat', 'Wiraswasta', '\r\n								   ', '', '', 'SITI HAJIR', 1972, 'D3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 33, '', 0),
(35849021, '151607070', '12345', 'YUSUF PRADITA', 1, '0035849021', 'kudus', '2003-10-04', '3216070410030009', 0, '\r\n							      ', 'Permata Regency Bekasi', '0', '0', '', 'Wanasari', 'Kec. Cibitung', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-02-12-224-060-5', '', 'Nurwahedi', 1972, '', '', '\r\n								   ', '', '', 'Pratiwi Wahyuningsih', 1972, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 29, '', 0),
(110121038, '171807115', '12345', 'ZACHREL ELTANIN HAFIDZ', 1, '0110121038', 'JAKARTA', '2005-12-11', '', 0, '\r\n							      ', 'GEMA PESONA BLK.V NO.11', '6', '11', '', 'SUKMAJAYA', 'Kec. Sukmajaya', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 07244024   ', '', '1-17-02-07-244-024-9', '', 'TRIADHI DONNY NOVIANTO', 1976, 'S1', '', '\r\n								   ', '', '', 'TANNIA FITRI DAMAYANTI', 1980, 'S1', 'Lainnya', 'Rp. 1,000,000 - Rp. 1,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(44770786, '171807116', '12345', 'ZAKARIA NIAN NAYOTTAMA', 1, '0044770786', 'BOGOR', '2004-11-29', '3201012911040003', 0, '\r\n							      ', 'NIRWANA ESTATE BLOK EE NO.29', '3', '13', '', 'PAKANSARI', 'Kec. Cibinong', 0, '', '', '', '', '\r\n								   ', 'DN-02 Dd 13069028   ', '', '1-17-02-13-069-028-5', '', 'YULIANTO', 1968, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ARUM PRANANINGSIH', 1968, 'S1', 'Karyawan Swasta', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 34, '', 0),
(33913557, '151607071', '12345', 'ZAKKY GHANI FAJARI THOYIB', 1, '0033913557', 'Jakarta', '2003-10-10', '3175091010030008', 0, '\r\n							      ', 'Jl. Praji No. 63 Kelapa Dua Wetan', '0', '0', '', 'Praji', 'Kec. Kelapa Dua', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-05-721-105-8', '', 'THOYIB SANDI SAHMADI', 1963, '', '', '\r\n								   ', '', '', 'Darmila', 1971, '', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0),
(41716561, '161707108', '12345', 'ZAYD ILYASA ABDURRAHMAN', 1, '0041716561', 'Jakarta', '2004-08-30', '3175103008040004', 0, '\r\n							      ', 'Cempaka Putih Barat No.1', '12', '5', '', 'Cempaka Putih Barat', 'Kec. Cempaka Putih', 0, '', '', '', '', '\r\n								   ', '', '', '01-226-034-7        ', '', 'YANOS OKTERANO', 1979, 'S1', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'ULFA ASEANI', 1979, 'D3', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 30, '', 0),
(44373459, '161707109', '12345', 'ZHANG DJOENDA', 1, '0044373459', 'Jakarta', '2004-05-03', '3216190305040006', 0, '\r\n							      ', 'Jl.Kemuning 2 No.36 Taman Lembah Hijau Lippo Cikarang', '4', '7', '', 'Serang', 'Kec. Cikarang Selatan', 0, '', '', '', '', '\r\n								   ', '', '', '0                   ', '', 'RUDY HENDARYANTO', 1970, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'HERU TRISNANI', 1978, 'S1', 'Lainnya', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VIII ', 31, '', 0),
(39874875, '171807117', '12345', 'ZIDAN RIZQI PRATAMA', 1, '0039874875', 'BEKASI', '2003-06-15', '', 0, '\r\n							      ', 'BUMI CIANGSANA DAMAI BLOK B.9/7', '2', '43', '', 'CIANGSANA', 'Kec. Gunungputri', 0, 'Asrama', '', '', '', '\r\n								   ', '', '', '1-17-01-05-164-025-8', '', 'JUMADI', 1976, 'SMA / sederajat', 'PNS/TNI/Polri', '\r\n								   ', '', '', 'NAINI NUR HIDAYATI', 1982, 'S2', 'Lainnya', 'Rp. 2,000,000 - Rp. 4,999,999\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 35, '', 0),
(45792089, '171807118', '12345', 'ZIDANE MURANO MAVDIVIKA', 1, '0045792089', 'JAKARTA', '2004-12-15', '3275121512040001', 0, '\r\n							      ', 'KOMP PMI JL KELUD II BLOK A4 NO.1', '2', '5', '', 'JATIWARNA', 'Kec. Pondok Melati', 0, 'Asrama', '', '', '', '\r\n								   ', 'DN-02 Dd 036280249  ', '', '1-17-02-03-628-024-9', '', 'ROY SUMLANG', 1975, 'D3', 'Karyawan Swasta', '\r\n								   ', '', '', 'GIAR SUNINGSIH', 1979, 'D3', 'Karyawan Swasta', 'Rp. 5,000,000 - Rp. 20,000,000\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'VII ', 36, '', 0),
(38899182, '151607105', '12345', 'ZUHAIR MUHAMMAD ABDULLAH', 1, '0038899182', 'Bekasi', '2003-04-14', '3174051404031001', 0, '\r\n							      ', 'Jl. Suhodo II NO.10 Rt 003/10 Komplek PU Ps. Jumat', '3', '10', '', 'lebak Bulus', 'Kec. Cilandak', 0, '', '', '', '', '\r\n								   ', '', '', '1-15-01-04-217-031-2', '', 'Agus Sujatmoko', 1976, 'S2', 'Karyawan Swasta', '\r\n								   ', '', '', 'Ika Fatikah', 1976, 'S1', '', '\r\n								   ', '', '', '', 0, '', '', '\r\n								   ', 0, '', '', '', 'IX ', 27, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms`
--

CREATE TABLE IF NOT EXISTS `rb_sms` (
`id_sms` int(5) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sms`
--

INSERT INTO `rb_sms` (`id_sms`, `nohp`, `pesan`) VALUES
(6, '08999109596', 'danny ganteng'),
(7, '08999109596', 'njksajsdhjfhsjk'),
(8, '08999109596', 'dcskldcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_autoreply`
--

CREATE TABLE IF NOT EXISTS `rb_sms_autoreply` (
`id_autoreply` int(5) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `isi_pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sms_autoreply`
--

INSERT INTO `rb_sms_autoreply` (`id_autoreply`, `keyword`, `isi_pesan`, `waktu`) VALUES
(1, 'REG INFO', 'Diharapkan kepada semua orang tua lebih memperhatikan pergaulan anak-anaknya.', '2016-04-23 08:16:22'),
(2, 'REG KEGIATAN', 'Kegiatan Pramuka 27-04-2016, Kegiatan Paskibra 12-05-2016, Kegiatan Maraton Bersama Guru 16-05-2016.', '2016-04-23 09:23:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_inbox`
--

CREATE TABLE IF NOT EXISTS `rb_sms_inbox` (
`id` int(11) NOT NULL,
  `pesan` text,
  `nohp` varchar(20) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `modem` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_outbox`
--

CREATE TABLE IF NOT EXISTS `rb_sms_outbox` (
`id_outbox` int(5) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_keaktifan`
--

CREATE TABLE IF NOT EXISTS `rb_status_keaktifan` (
`id_status_keaktifan` int(5) NOT NULL,
  `nama_status_keaktifan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_keaktifan`
--

INSERT INTO `rb_status_keaktifan` (`id_status_keaktifan`, `nama_status_keaktifan`, `keterangan`) VALUES
(1, 'Aktif', ''),
(2, 'Tidak Aktif', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_kepegawaian`
--

CREATE TABLE IF NOT EXISTS `rb_status_kepegawaian` (
`id_status_kepegawaian` int(5) NOT NULL,
  `status_kepegawaian` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_kepegawaian`
--

INSERT INTO `rb_status_kepegawaian` (`id_status_kepegawaian`, `status_kepegawaian`, `keterangan`) VALUES
(1, 'Tenaga Honor Sekolah\n', ''),
(2, 'Guru Honor Sekolah\n', ''),
(4, 'GTY/PTY\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_pernikahan`
--

CREATE TABLE IF NOT EXISTS `rb_status_pernikahan` (
`id_status_pernikahan` int(5) NOT NULL,
  `status_pernikahan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_pernikahan`
--

INSERT INTO `rb_status_pernikahan` (`id_status_pernikahan`, `status_pernikahan`, `keterangan`) VALUES
(1, 'Menikah', ''),
(2, 'Belum Menikah', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_tahun_akademik`
--

CREATE TABLE IF NOT EXISTS `rb_tahun_akademik` (
`id_tahun_akademik` int(5) NOT NULL,
  `nama_tahun` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20183 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_tahun_akademik`
--

INSERT INTO `rb_tahun_akademik` (`id_tahun_akademik`, `nama_tahun`, `keterangan`, `aktif`) VALUES
(20171, 'Semester Ganjil 2017/2018', '2017/2018', 'Tidak'),
(20182, 'Semester Genap 2018/2019', '2018/2019', 'Tidak'),
(20181, 'Semester Ganjil 2018/2019', '2018/2019', 'Ya'),
(20172, 'Semester Genap 2017/2018', '2017/2018', 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_users`
--

CREATE TABLE IF NOT EXISTS `rb_users` (
`id_user` int(5) NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` text COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telpon` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `jabatan` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'sekolah',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `rb_users`
--

INSERT INTO `rb_users` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `no_telpon`, `jabatan`, `level`, `aktif`) VALUES
(1, 'administrator', '387e9e1a60b29beb48118d7aca7be22ab9352f42a3b3113482cc1023cc6884c2d5d84b5108f9b51576fd0296375b06c95fc33ae9f29383d9308e0d6b8ac282bd', 'Administrator', 'ndrianggar@gmail.com', '089507233391', 'Web Developer', 'superuser', 'Y'),
(2, '196209051987031007', 'd7d2f602e155ba700ed76c48d9a48009b9383e8d17435bfb0fe8ad7c664d4002f16cc7a65c6fb066963714a794f96441ef7f9b9c1b1456acfb9225cbad474fb0', 'Zaki Lc', 'zaki@gmail.com', '082173054501', 'Kepala Sekolah', 'kepala', 'Y'),
(110, '20180418', 'd7d2f602e155ba700ed76c48d9a48009b9383e8d17435bfb0fe8ad7c664d4002f16cc7a65c6fb066963714a794f96441ef7f9b9c1b1456acfb9225cbad474fb0', 'pujiatno.Lc', 'pujiatno@gmail.com', '02197600722', 'kepala', 'kepala', 'Y'),
(111, '201383169', '9970f16668b0ce09b694293b5164ae2b211fb9a23e9026bb4d0d1aef370f192120dd5f5a8e78c06d57fa036de0975c09b528ea7dc49262aee10c3247e62964fa', 'hendri', 'ndrianggar@gmail.com', '02197600722', 'kepala', 'kepala', 'Y'),
(112, 'test', 'ff594f8cf10ca2e3ad4279375f0d0e688a7eca861000e7ecc63ae4b105c8be7bcb57e8c1172ea460c462c6f715508dc356fd964cf41644682db1feffd466769a', 'test', 'test', 'test', 'test', 'kepala', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_users_aktivitas`
--

CREATE TABLE IF NOT EXISTS `rb_users_aktivitas` (
`id_users_aktivitas` int(10) NOT NULL,
  `identitas` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `status` enum('siswa','guru','superuser','adminkonten') NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=672 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_users_aktivitas`
--

INSERT INTO `rb_users_aktivitas` (`id_users_aktivitas`, `identitas`, `nama_user`, `ip_address`, `browser`, `os`, `status`, `jam`, `tanggal`) VALUES
(1, '195704111980032004', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '10:59:57', '2016-04-13'),
(2, '9991268756', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:00:27', '2016-04-13'),
(3, '9994030915', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:01:44', '2016-04-14'),
(4, '9975540740', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:20:43', '2016-04-14'),
(5, '195901241986032002', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '11:21:04', '2016-04-14'),
(6, '0006223671', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:18:06', '2016-04-15'),
(7, '195912121986021004', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:32', '2016-04-15'),
(8, '197110292005011003', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:40', '2016-04-15'),
(9, '196109191988031006', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:49', '2016-04-16'),
(10, '196202191990032001', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:19:02', '2016-04-16'),
(11, '9999344284', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:24', '2016-04-16'),
(12, '9980725248', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:32', '2016-04-16'),
(13, '0006223671', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:42', '2016-04-16'),
(14, '2', '', '', ' Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:13:43', '2016-04-23'),
(15, '195704111980032004', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:15:28', '2016-04-23'),
(16, '1', '', '', ' Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:27:20', '2016-04-23'),
(17, '195704111980032004', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:34:28', '2016-04-23'),
(18, '9980708111', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '06:36:21', '2016-04-23'),
(19, '195704111980032004', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:37:05', '2016-04-23'),
(20, '9994030915', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '06:41:40', '2016-04-23'),
(21, '195704111980032004', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:43:49', '2016-04-23'),
(22, '9991268756', '', '::1', 'Firefox 46.0', 'Windows 7', 'siswa', '06:46:06', '2016-04-23'),
(23, '1', '', '', ' Chrome 49.0.2623.112', 'Windows 7', 'superuser', '07:02:03', '2016-04-23'),
(24, '9980708111', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:21:03', '2016-04-23'),
(25, '9980720559', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:21:21', '2016-04-23'),
(26, '9991268756', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:22:01', '2016-04-23'),
(27, '9999152999', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:29:17', '2016-04-23'),
(28, '195704111980032004', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '08:40:14', '2016-04-23'),
(29, '1', '', '', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '08:45:52', '2016-04-23'),
(30, '1', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:13:18', '2016-04-16'),
(31, '1', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '03:12:26', '2016-04-15'),
(32, '1', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:13:18', '2016-04-14'),
(33, '1', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '03:12:26', '2016-04-13'),
(34, '1', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '07:13:18', '2016-04-14'),
(35, '1', '', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '05:12:26', '2016-04-13'),
(36, '1', '', '36.68.12.49', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '10:32:19', '2016-04-23'),
(48, '1', '', '114.4.79.250', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '15:08:36', '2016-04-27'),
(47, '1', '', '36.84.224.134', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:17:00', '2016-04-27'),
(40, '195704111980032004', '', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '07:50:45', '2016-04-27'),
(41, '1', '', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '07:54:08', '2016-04-27'),
(42, '9980708111', '', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '07:55:08', '2016-04-27'),
(43, '9980722436', '', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '07:55:23', '2016-04-27'),
(44, '198605012009011001', '', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '07:55:38', '2016-04-27'),
(45, '1', '', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '07:55:51', '2016-04-27'),
(46, '1', '', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '08:01:10', '2016-04-27'),
(49, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '20:16:59', '2016-04-27'),
(50, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '08:27:54', '2016-04-28'),
(51, '198710052010012011', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:41:56', '2016-04-28'),
(52, '195704111980032004', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:42:15', '2016-04-28'),
(53, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '13:12:06', '2016-04-28'),
(54, '9991268756', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '13:30:48', '2016-04-28'),
(55, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '19:15:10', '2016-04-28'),
(56, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:02:22', '2016-04-29'),
(57, '195806161984000001', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '22:37:57', '2016-04-29'),
(58, '9991268756', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '22:41:40', '2016-04-29'),
(59, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '23:09:20', '2016-04-29'),
(60, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '23:20:06', '2016-04-29'),
(61, '195704111980032004', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:14:36', '2016-04-30'),
(62, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '06:14:55', '2016-04-30'),
(63, '195806161984000001', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:18:35', '2016-04-30'),
(64, '195806161984000001', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:19:47', '2016-04-30'),
(65, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:00:28', '2016-04-30'),
(66, '9991268756', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '10:01:25', '2016-04-30'),
(67, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:01:44', '2016-04-30'),
(68, '2', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', '', '10:02:29', '2016-04-30'),
(69, '196209051987031007', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:02:51', '2016-04-30'),
(70, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:37:52', '2016-04-30'),
(71, '195806161984000001', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:58:18', '2016-04-30'),
(72, '1', '', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '12:57:17', '2016-04-30'),
(74, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:35:04', '2016-07-11'),
(75, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '12:38:39', '2016-07-11'),
(76, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '09:03:32', '2016-07-12'),
(77, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '18:10:25', '2016-07-12'),
(78, '195704111980032004', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:55:18', '2016-07-13'),
(79, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:55:34', '2016-07-13'),
(80, '195806161984000001', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:58:43', '2016-07-13'),
(81, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '09:22:11', '2016-07-13'),
(82, '195806161984000001', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '09:42:03', '2016-07-13'),
(83, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:14:10', '2016-07-13'),
(84, '195806161984000001', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:11:18', '2016-07-13'),
(85, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:11:52', '2016-07-13'),
(86, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:16:23', '2016-07-13'),
(87, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:25:22', '2016-07-14'),
(88, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:43:14', '2016-07-15'),
(89, '195806161984000001', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:44:46', '2016-07-15'),
(90, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:45:21', '2016-07-15'),
(91, '195806161984000001', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:46:08', '2016-07-15'),
(92, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:20:29', '2016-07-15'),
(93, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:04:09', '2016-07-16'),
(94, '195806161984000001', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:10:29', '2016-07-16'),
(95, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:10:45', '2016-07-16'),
(96, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:11:21', '2016-07-16'),
(97, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:32:05', '2016-07-16'),
(98, '195806161984000002', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '12:54:38', '2016-07-16'),
(99, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:02:14', '2016-07-16'),
(100, '2', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', '', '13:03:10', '2016-07-16'),
(101, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:06:02', '2016-07-16'),
(102, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:24:19', '2016-07-17'),
(103, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '20:19:44', '2016-07-17'),
(104, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '05:56:40', '2016-07-18'),
(105, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:59:13', '2016-07-18'),
(106, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:41:02', '2016-07-19'),
(107, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '15:12:55', '2016-07-19'),
(108, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '15:13:43', '2016-07-19'),
(109, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '15:13:55', '2016-07-19'),
(110, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '15:14:30', '2016-07-19'),
(111, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '15:15:56', '2016-07-19'),
(112, '1', '', '::1', 'Firefox 47.0', 'Windows 7', 'superuser', '15:17:05', '2016-07-19'),
(113, '9991268756', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '17:49:54', '2016-07-19'),
(114, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:37:44', '2016-07-20'),
(115, '1', '', '::1', 'Firefox 47.0', 'Windows 7', 'superuser', '07:09:25', '2016-07-20'),
(116, '9991268756', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '07:10:00', '2016-07-20'),
(117, '0151379251', '', '::1', 'Firefox 47.0', 'Windows 7', 'siswa', '07:13:12', '2016-07-20'),
(118, '1', '', '::1', 'Firefox 47.0', 'Windows 7', 'superuser', '07:13:50', '2016-07-20'),
(119, '0151379251', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '07:13:58', '2016-07-20'),
(120, '0000240365', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '07:54:20', '2016-07-20'),
(121, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:05:41', '2016-07-20'),
(122, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '08:06:22', '2016-07-20'),
(123, '2', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', '', '08:07:04', '2016-07-20'),
(124, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:12:37', '2016-07-20'),
(125, '9991268756', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '08:17:40', '2016-07-20'),
(126, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:55:44', '2016-07-20'),
(127, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:02:27', '2016-07-27'),
(128, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '17:29:43', '2016-07-29'),
(129, '195704111980032004', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '17:31:01', '2016-07-29'),
(130, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:48:57', '2016-07-30'),
(131, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '06:50:00', '2016-07-30'),
(132, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:53:45', '2016-07-30'),
(133, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '06:56:56', '2016-07-30'),
(134, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:00:16', '2016-07-30'),
(135, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:12:50', '2016-07-30'),
(136, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:14:47', '2016-07-30'),
(137, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:03:10', '2016-07-31'),
(138, '195806161984000016', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '07:02:07', '2016-07-31'),
(139, '1', '', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:15:29', '2016-07-31'),
(140, '1', '', '::1', 'Chrome 52.0.2743.116', 'Windows 8', 'superuser', '00:35:06', '2016-08-12'),
(141, '9991268756', '', '::1', 'Chrome 52.0.2743.116', 'Windows 8', 'siswa', '00:36:07', '2016-08-12'),
(142, '1', '', '::1', 'Chrome 52.0.2743.116', 'Windows 8', 'superuser', '00:36:40', '2016-08-12'),
(143, '9991268756', '', '::1', 'Chrome 52.0.2743.116', 'Windows 8', 'siswa', '00:41:36', '2016-08-12'),
(144, '1', '', '139.194.122.96', 'Firefox 54.0', 'Windows 10', 'superuser', '12:15:59', '2017-07-29'),
(145, '1', '', '139.194.122.96', 'Firefox 54.0', 'Windows 10', 'superuser', '17:23:12', '2017-07-29'),
(146, '1', '', '139.194.122.96', 'Firefox 54.0', 'Windows 10', 'superuser', '10:16:24', '2017-07-31'),
(147, '1', '', '139.194.122.96', 'Firefox 54.0', 'Windows 10', 'superuser', '13:22:35', '2017-08-04'),
(148, '1', '', '111.95.2.208', 'Firefox 54.0', 'Windows 10', 'superuser', '13:34:08', '2017-08-24'),
(149, '1', '', '61.247.62.109', 'Firefox 55.0', 'Windows 10', 'superuser', '16:44:09', '2017-09-25'),
(150, '1', '', '140.0.119.74', 'Firefox 56.0', 'Windows 10', 'superuser', '13:04:09', '2017-11-10'),
(151, '1', '', '140.0.119.74', 'Firefox 56.0', 'Windows 10', 'superuser', '08:24:06', '2017-11-11'),
(152, '1', '', '158.140.160.44', 'Firefox 58.0', 'Windows 10', 'superuser', '10:04:16', '2018-01-26'),
(153, '1', '', '158.140.160.44', 'Handheld ', 'Android', 'superuser', '11:21:29', '2018-01-26'),
(154, '1', '', '158.140.160.44', 'Firefox 58.0', 'Windows 10', 'superuser', '13:35:22', '2018-01-26'),
(155, '1', '', '158.140.160.44', 'Firefox 58.0', 'Windows 10', 'superuser', '09:51:29', '2018-01-29'),
(156, '1', '', '139.228.116.13', 'Chrome 63.0.3239.132', 'Windows 10', 'superuser', '08:59:33', '2018-01-30'),
(157, '1', '', '139.228.116.13', 'Handheld ', 'Android', 'superuser', '14:21:38', '2018-01-30'),
(158, '1', '', '139.228.116.13', 'Firefox 58.0', 'Windows 10', 'superuser', '16:02:52', '2018-01-30'),
(159, '1', '', '139.228.116.13', 'Firefox 58.0', 'Windows 10', 'superuser', '09:01:35', '2018-01-31'),
(160, '1', '', '139.228.116.13', 'Firefox 58.0', 'Windows 10', 'superuser', '09:59:15', '2018-01-31'),
(161, '1', '', '139.228.116.13', 'Firefox 58.0', 'Windows 10', 'superuser', '13:51:25', '2018-02-01'),
(162, '0001', '', '139.228.116.13', 'Chrome 63.0.3239.132', 'Windows 10', 'siswa', '14:02:58', '2018-02-01'),
(163, '1', '', '116.206.29.74', 'Firefox 58.0', 'Windows 10', 'superuser', '14:14:10', '2018-02-04'),
(164, '1', '', '116.206.29.74', 'Handheld 11.0', 'iPad', 'superuser', '14:39:04', '2018-02-04'),
(165, '107', '', '116.206.29.74', 'Handheld 11.0', 'iPad', 'superuser', '14:56:11', '2018-02-04'),
(166, '1', '', '116.206.29.74', 'Handheld 11.0', 'iPad', 'superuser', '14:56:43', '2018-02-04'),
(167, '0151379251', '', '116.206.29.74', 'Handheld 11.0', 'iPad', 'siswa', '14:59:49', '2018-02-04'),
(168, '1', '', '192.168.5.1', 'Firefox 58.0', 'Windows 10', 'superuser', '14:40:37', '2018-02-08'),
(169, '1', '', '192.168.5.1', 'Firefox 47.0', 'Windows 10', 'superuser', '14:42:40', '2018-02-08'),
(170, '9991268756', '', '192.168.5.1', 'Firefox 47.0', 'Windows 10', 'siswa', '14:54:07', '2018-02-08'),
(171, '1', '', '192.168.5.1', 'Chrome 64.0.3282.140', 'Windows 10', 'superuser', '14:59:01', '2018-02-08'),
(172, '9991268756', '', '192.168.5.1', 'Chrome 64.0.3282.140', 'Windows 10', 'siswa', '15:00:33', '2018-02-08'),
(173, '1', '', '192.168.5.1', 'Firefox 47.0', 'Windows 10', 'superuser', '15:15:57', '2018-02-08'),
(174, '1', '', '192.168.5.1', 'Firefox 47.0', 'Windows 10', 'superuser', '15:20:29', '2018-02-08'),
(175, '1', '', '192.168.5.1', 'Firefox 47.0', 'Windows 10', 'superuser', '09:25:58', '2018-02-09'),
(176, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '10:21:58', '2018-02-09'),
(177, '195801181985121001', '', '::1', 'Firefox 47.0', 'Windows 10', 'guru', '10:28:33', '2018-02-09'),
(178, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '10:29:28', '2018-02-09'),
(179, '123456789', '', '::1', 'Firefox 47.0', 'Windows 10', 'siswa', '10:56:13', '2018-02-09'),
(180, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '16:59:16', '2018-02-10'),
(181, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:53:52', '2018-02-10'),
(182, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:53:55', '2018-02-10'),
(183, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:01', '2018-02-10'),
(184, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:02', '2018-02-10'),
(185, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:03', '2018-02-10'),
(186, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:04', '2018-02-10'),
(187, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:04', '2018-02-10'),
(188, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:18', '2018-02-10'),
(189, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:20', '2018-02-10'),
(190, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:21', '2018-02-10'),
(191, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:22', '2018-02-10'),
(192, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:23', '2018-02-10'),
(193, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:35', '2018-02-10'),
(194, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:36', '2018-02-10'),
(195, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:37', '2018-02-10'),
(196, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:37', '2018-02-10'),
(197, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:38', '2018-02-10'),
(198, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:38', '2018-02-10'),
(199, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '18:54:39', '2018-02-10'),
(200, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '20:35:24', '2018-02-10'),
(201, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '21:16:33', '2018-02-10'),
(202, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '08:13:39', '2018-02-13'),
(203, '195801181985121001', '', '::1', 'Firefox 47.0', 'Windows 10', 'guru', '08:15:09', '2018-02-13'),
(204, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '09:19:34', '2018-02-13'),
(205, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '10:21:56', '2018-02-13'),
(206, '195801181985121001', '', '::1', 'Firefox 47.0', 'Windows 10', 'guru', '10:26:10', '2018-02-13'),
(207, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '16:50:17', '2018-02-13'),
(208, '1', '', '::1', 'Firefox 47.0', 'Windows 10', 'superuser', '09:03:29', '2018-02-14'),
(209, '195801181985121001', '', '::1', 'Firefox 47.0', 'Windows 10', 'guru', '09:03:56', '2018-02-14'),
(210, '123456789', '', '::1', 'Firefox 47.0', 'Windows 10', 'siswa', '09:43:50', '2018-02-14'),
(211, '195801181985121001', '', '::1', 'Firefox 47.0', 'Windows 10', 'guru', '09:45:31', '2018-02-14'),
(212, '195801181985121001', '', '::1', 'Firefox 47.0', 'Windows 10', 'guru', '10:23:32', '2018-02-14'),
(213, '1', '', '::1', 'Firefox 56.0', 'Windows 10', 'superuser', '11:48:43', '2018-02-14'),
(214, '195801181985121001', '', '::1', 'Firefox 56.0', 'Windows 10', 'guru', '12:09:59', '2018-02-14'),
(215, '1', '', '::1', 'Firefox 56.0', 'Windows 10', 'superuser', '14:39:18', '2018-02-14'),
(216, '201383169', '', '::1', 'Firefox 56.0', 'Windows 10', 'guru', '14:39:56', '2018-02-14'),
(217, '1', '', '::1', 'Firefox 56.0', 'Windows 10', 'superuser', '16:05:55', '2018-02-14'),
(218, '201383169', '', '::1', 'Firefox 56.0', 'Windows 10', 'guru', '16:06:17', '2018-02-14'),
(219, '1', '', '::1', 'Firefox 56.0', 'Windows 10', 'superuser', '16:08:20', '2018-02-14'),
(220, '195801181985121001', '', '::1', 'Firefox 56.0', 'Windows 10', 'guru', '16:10:06', '2018-02-14'),
(221, '1', '', '::1', 'Firefox 56.0', 'Windows 10', 'superuser', '16:11:41', '2018-02-14'),
(222, '195801181985121001', '', '::1', 'Firefox 56.0', 'Windows 10', 'guru', '16:12:09', '2018-02-14'),
(223, '1', '', '::1', 'Firefox 57.0', 'Windows 10', 'superuser', '07:28:00', '2018-02-15'),
(224, '1', '', '::1', 'Firefox 57.0', 'Windows 10', 'superuser', '07:34:38', '2018-02-15'),
(225, '201383169', '', '::1', 'Firefox 57.0', 'Windows 10', 'guru', '07:37:41', '2018-02-15'),
(226, '195801181985121001', '', '::1', 'Firefox 57.0', 'Windows 10', 'guru', '07:38:13', '2018-02-15'),
(227, '1', '', '::1', 'Firefox 57.0', 'Windows 10', 'superuser', '08:40:43', '2018-02-15'),
(228, '201383169', '', '::1', 'Firefox 57.0', 'Windows 10', 'guru', '10:11:55', '2018-02-15'),
(229, '195801181985121001', '', '::1', 'Firefox 57.0', 'Windows 10', 'guru', '13:57:59', '2018-02-15'),
(230, '123456789', '', '::1', 'Firefox 57.0', 'Windows 10', 'siswa', '14:36:57', '2018-02-15'),
(231, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '15:57:35', '2018-02-15'),
(232, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '16:00:16', '2018-02-15'),
(233, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '16:02:53', '2018-02-15'),
(234, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '16:04:23', '2018-02-15'),
(235, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '16:07:15', '2018-02-15'),
(236, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '16:10:03', '2018-02-15'),
(237, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '16:10:45', '2018-02-15'),
(238, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:49:57', '2018-02-16'),
(239, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:57:38', '2018-02-16'),
(240, '195801181985121001', '', '::1', 'Chrome 47.0.2526.80', 'Windows 10', 'guru', '10:28:18', '2018-02-16'),
(241, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '10:38:40', '2018-02-16'),
(242, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '11:10:49', '2018-02-16'),
(243, '123456789', '', '::1', 'Firefox 58.0', 'Windows 10', 'siswa', '11:16:16', '2018-02-16'),
(244, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:17:15', '2018-02-16'),
(245, '123456789', '', '::1', 'Firefox 58.0', 'Windows 10', 'siswa', '11:17:52', '2018-02-16'),
(246, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:18:51', '2018-02-16'),
(247, '9991268756', '', '::1', 'Firefox 58.0', 'Windows 10', 'siswa', '11:20:31', '2018-02-16'),
(248, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:22:43', '2018-02-16'),
(249, '9991268756', '', '::1', 'Firefox 58.0', 'Windows 10', 'siswa', '11:23:39', '2018-02-16'),
(250, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '11:26:15', '2018-02-16'),
(251, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:11:47', '2018-02-16'),
(252, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '13:23:37', '2018-02-16'),
(253, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:58:31', '2018-02-16'),
(254, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:59:33', '2018-02-16'),
(255, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '14:02:41', '2018-02-16'),
(256, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '17:39:07', '2018-02-17'),
(257, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '17:49:56', '2018-02-17'),
(258, '1', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'superuser', '19:22:23', '2018-02-17'),
(259, '195801181985121001', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'guru', '19:23:13', '2018-02-17'),
(260, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '19:25:49', '2018-02-17'),
(261, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '19:30:16', '2018-02-17'),
(262, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '07:09:55', '2018-02-19'),
(263, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:02:50', '2018-02-19'),
(264, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '08:03:07', '2018-02-19'),
(265, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:58:00', '2018-02-19'),
(266, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:03:13', '2018-02-19'),
(267, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:25:00', '2018-02-19'),
(268, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:25:11', '2018-02-19'),
(269, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:42:43', '2018-02-19'),
(270, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '12:09:51', '2018-02-19'),
(271, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '12:12:20', '2018-02-19'),
(272, '195801181985121001', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'guru', '12:38:13', '2018-02-19'),
(273, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '07:22:25', '2018-02-20'),
(274, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:50:31', '2018-02-20'),
(275, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:56:22', '2018-02-20'),
(276, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '10:26:50', '2018-02-20'),
(277, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:55:47', '2018-02-20'),
(278, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '11:59:23', '2018-02-20'),
(279, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '12:02:39', '2018-02-20'),
(280, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '13:20:58', '2018-02-20'),
(281, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '13:54:55', '2018-02-20'),
(282, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '14:42:18', '2018-02-20'),
(283, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '15:04:30', '2018-02-20'),
(284, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '16:08:21', '2018-02-20'),
(285, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '08:41:15', '2018-02-21'),
(286, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:03:17', '2018-02-21'),
(287, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:26:09', '2018-02-21'),
(288, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:31:14', '2018-02-21'),
(289, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:36:59', '2018-02-21'),
(290, '195801181985121001', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'guru', '09:37:24', '2018-02-21'),
(291, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '14:10:33', '2018-02-21'),
(292, '195801181985121001', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'guru', '14:35:03', '2018-02-21'),
(293, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:32:42', '2018-02-22'),
(294, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '07:33:10', '2018-02-22'),
(295, '1', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'superuser', '07:34:14', '2018-02-22'),
(296, '1', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'superuser', '09:15:12', '2018-02-22'),
(297, '195801181985121001', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'guru', '09:50:45', '2018-02-22'),
(298, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:56:29', '2018-02-22'),
(299, '1', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'superuser', '13:21:06', '2018-02-22'),
(300, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '08:10:59', '2018-02-23'),
(301, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:45:23', '2018-02-23'),
(302, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '10:00:25', '2018-02-23'),
(303, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '11:14:38', '2018-02-23'),
(304, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '11:20:27', '2018-02-23'),
(305, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:21:16', '2018-02-23'),
(306, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:22:15', '2018-02-23'),
(307, '123456789', '', '::1', 'Firefox 58.0', 'Windows 10', 'siswa', '11:24:05', '2018-02-23'),
(308, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:24:40', '2018-02-23'),
(309, '123456789', '', '::1', 'Firefox 58.0', 'Windows 10', 'siswa', '11:25:18', '2018-02-23'),
(310, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '11:26:29', '2018-02-23'),
(311, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:58:33', '2018-02-23'),
(312, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '14:02:27', '2018-02-23'),
(313, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '15:19:38', '2018-02-23'),
(314, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '15:48:57', '2018-02-23'),
(315, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '15:52:18', '2018-02-23'),
(316, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '15:53:15', '2018-02-23'),
(317, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '16:25:11', '2018-02-24'),
(318, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '08:22:12', '2018-02-26'),
(319, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:47:46', '2018-02-26'),
(320, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:22:53', '2018-02-26'),
(321, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '10:46:40', '2018-02-26'),
(322, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:28:57', '2018-02-27'),
(323, '195801181985121001', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'guru', '07:32:06', '2018-02-27'),
(324, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:27:42', '2018-02-27'),
(325, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '10:14:56', '2018-02-27'),
(326, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '10:58:39', '2018-02-27'),
(327, '195801181985121001', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'guru', '11:01:33', '2018-02-27'),
(328, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:05:04', '2018-02-27'),
(329, '195801181985121001', '', '::1', 'Chrome 63.0.3239.132', 'Windows 10', 'guru', '09:44:57', '2018-02-28'),
(330, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:45:08', '2018-02-28'),
(331, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:08:00', '2018-03-01'),
(332, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '10:22:04', '2018-03-01'),
(333, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '10:51:57', '2018-03-01'),
(334, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '10:53:41', '2018-03-01'),
(335, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:50:47', '2018-03-01'),
(336, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '13:54:51', '2018-03-01'),
(337, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:58:13', '2018-03-01'),
(338, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '14:08:41', '2018-03-01'),
(339, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '15:02:03', '2018-03-01'),
(340, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '10:46:14', '2018-03-02'),
(341, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:22:12', '2018-03-02'),
(342, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:23:03', '2018-03-02'),
(343, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '13:23:20', '2018-03-02'),
(344, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:24:07', '2018-03-02'),
(345, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:55:35', '2018-03-02'),
(346, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '14:45:07', '2018-03-02'),
(347, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:53:27', '2018-03-02'),
(348, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:56:40', '2018-03-02'),
(349, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '21:57:52', '2018-03-02'),
(350, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:58:49', '2018-03-02'),
(351, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '17:30:48', '2018-03-03'),
(352, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:35:38', '2018-03-05'),
(353, '195801181985121001', '', '::1', 'Chrome 64.0.3282.186', 'Windows 10', 'guru', '11:26:46', '2018-03-05'),
(354, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:27:34', '2018-03-05'),
(355, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '22:37:03', '2018-03-05'),
(356, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '22:37:31', '2018-03-05'),
(357, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '22:54:27', '2018-03-05'),
(358, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:18:55', '2018-03-06'),
(359, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:33:06', '2018-03-06'),
(360, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:37:07', '2018-03-06'),
(361, '1', '', '::1', 'Chrome 64.0.3282.186', 'Windows 10', 'superuser', '11:39:50', '2018-03-06'),
(362, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:43:47', '2018-03-07'),
(363, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:21:43', '2018-03-07'),
(364, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '11:30:07', '2018-03-07'),
(365, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:53:22', '2018-03-07'),
(366, '1', '', '::1', 'Chrome 65.0.3325.146', 'Windows 10', 'superuser', '16:07:25', '2018-03-07'),
(367, '9991268756', '', '::1', 'Chrome 65.0.3325.146', 'Windows 10', 'siswa', '16:15:58', '2018-03-07'),
(368, '123456789', '', '::1', 'Chrome 65.0.3325.146', 'Windows 10', 'siswa', '16:16:38', '2018-03-07'),
(369, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:39:13', '2018-03-08'),
(370, '0058738348', '', '::1', 'Firefox 58.0', 'Windows 10', 'siswa', '09:08:30', '2018-03-08'),
(371, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:08:52', '2018-03-08'),
(372, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:13:38', '2018-03-08'),
(373, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:32:55', '2018-03-08'),
(374, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '13:24:24', '2018-03-08'),
(375, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '13:58:26', '2018-03-08'),
(376, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '08:45:44', '2018-03-09'),
(377, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:46:11', '2018-03-09'),
(378, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:08:34', '2018-03-09'),
(379, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:10:37', '2018-03-09'),
(380, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:14:27', '2018-03-09'),
(381, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:21:13', '2018-03-09'),
(382, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '09:41:39', '2018-03-09'),
(383, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '10:26:20', '2018-03-09'),
(384, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:28:08', '2018-03-09'),
(385, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '14:26:19', '2018-03-09'),
(386, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '14:53:33', '2018-03-09'),
(387, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '21:02:04', '2018-03-10'),
(388, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:05:11', '2018-03-10'),
(389, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:44:24', '2018-03-10'),
(390, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '22:10:59', '2018-03-10'),
(391, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '22:41:27', '2018-03-10'),
(392, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '17:36:27', '2018-03-11'),
(393, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '17:36:39', '2018-03-11'),
(394, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '17:56:59', '2018-03-11'),
(395, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '19:14:34', '2018-03-11'),
(396, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '19:15:34', '2018-03-11'),
(397, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '19:16:46', '2018-03-11'),
(398, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '19:17:48', '2018-03-11'),
(399, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '20:37:13', '2018-03-11'),
(400, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:17:48', '2018-03-11'),
(401, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:25:03', '2018-03-11'),
(402, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:27:37', '2018-03-11'),
(403, '1', '', '::1', 'Chrome 65.0.3325.146', 'Windows 10', 'superuser', '21:31:01', '2018-03-11'),
(404, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:31:07', '2018-03-11'),
(405, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:35:04', '2018-03-11'),
(406, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:50:05', '2018-03-11'),
(407, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '21:51:15', '2018-03-11'),
(408, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '21:54:51', '2018-03-11'),
(409, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '22:08:25', '2018-03-11'),
(410, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:08:12', '2018-03-12'),
(411, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '08:28:02', '2018-03-12'),
(412, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:09:46', '2018-03-12'),
(413, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:18:52', '2018-03-12'),
(414, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:20:14', '2018-03-12'),
(415, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '13:25:14', '2018-03-12'),
(416, '195801181985121001', '', '::1', 'Firefox 58.0', 'Windows 10', 'guru', '13:26:31', '2018-03-12'),
(417, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:18:41', '2018-03-13'),
(418, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:35:52', '2018-03-13'),
(419, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:45:38', '2018-03-13'),
(420, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:47:21', '2018-03-13'),
(421, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:52:36', '2018-03-13'),
(422, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '10:27:19', '2018-03-13'),
(423, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '12:39:53', '2018-03-13'),
(424, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '07:27:25', '2018-03-14'),
(425, '1', '', '::1', 'Firefox 58.0', 'Windows 10', 'superuser', '09:29:06', '2018-03-14'),
(426, '1', '', '::1', 'Chrome 65.0.3325.146', 'Windows 10', 'superuser', '12:55:19', '2018-03-14'),
(427, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '14:41:46', '2018-03-14'),
(428, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:54:34', '2018-03-15'),
(429, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '12:44:38', '2018-03-15'),
(430, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '15:02:16', '2018-03-15'),
(431, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '15:11:05', '2018-03-15'),
(432, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '16:17:48', '2018-03-15'),
(433, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:48:05', '2018-03-16'),
(434, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:59:48', '2018-03-16'),
(435, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '15:47:21', '2018-03-17'),
(436, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '17:38:25', '2018-03-17'),
(437, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '20:08:23', '2018-03-17'),
(438, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:42:39', '2018-03-19'),
(439, '1', '', '::1', 'Chrome 65.0.3325.162', 'Windows 10', 'superuser', '08:40:28', '2018-03-19'),
(440, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:17:06', '2018-03-20'),
(441, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:40:21', '2018-03-20'),
(442, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '09:59:18', '2018-03-20'),
(443, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '14:58:10', '2018-03-20'),
(444, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '15:14:41', '2018-03-20'),
(445, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '15:55:38', '2018-03-20'),
(446, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:01:00', '2018-03-21'),
(447, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '08:03:49', '2018-03-21'),
(448, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:04:41', '2018-03-21'),
(449, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:07:05', '2018-03-21'),
(450, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '08:18:22', '2018-03-21'),
(451, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:28:13', '2018-03-21'),
(452, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '08:28:39', '2018-03-21'),
(453, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '10:39:05', '2018-03-21'),
(454, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:53:47', '2018-03-21'),
(455, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '11:22:57', '2018-03-21'),
(456, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '07:25:21', '2018-03-22'),
(457, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '08:29:52', '2018-03-22'),
(458, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '13:22:49', '2018-03-22'),
(459, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '13:33:04', '2018-03-22'),
(460, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '13:50:58', '2018-03-22'),
(461, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:17:08', '2018-03-22'),
(462, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '07:41:12', '2018-03-23'),
(463, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '07:43:12', '2018-03-23'),
(464, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '10:25:16', '2018-03-23'),
(465, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:27:28', '2018-03-23'),
(466, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '11:11:50', '2018-03-23'),
(467, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '11:22:23', '2018-03-23'),
(468, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '15:49:11', '2018-03-24'),
(469, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '17:08:50', '2018-03-25'),
(470, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:46:21', '2018-03-26'),
(471, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:27:06', '2018-03-27'),
(472, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '13:23:00', '2018-03-27'),
(473, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '13:28:46', '2018-03-27'),
(474, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '13:53:08', '2018-03-27'),
(475, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '13:53:14', '2018-03-27'),
(476, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:06:02', '2018-03-27'),
(477, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '21:04:16', '2018-03-27'),
(478, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '21:05:23', '2018-03-27'),
(479, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:11:57', '2018-03-28'),
(480, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:46:03', '2018-03-28'),
(481, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:49:28', '2018-03-28'),
(482, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:56:14', '2018-03-28'),
(483, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '12:54:36', '2018-03-28'),
(484, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '12:59:12', '2018-03-28'),
(485, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:59:58', '2018-03-28'),
(486, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:22:30', '2018-03-29'),
(487, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '14:59:56', '2018-03-29'),
(488, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '15:13:38', '2018-03-29'),
(489, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '09:03:25', '2018-03-30'),
(490, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '15:16:02', '2018-03-30'),
(491, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '15:16:26', '2018-03-30'),
(492, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:29:35', '2018-03-31'),
(493, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '11:18:57', '2018-03-31'),
(494, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '11:24:40', '2018-03-31'),
(495, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '08:00:35', '2018-04-02'),
(496, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '08:05:26', '2018-04-02'),
(497, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '08:20:35', '2018-04-02'),
(498, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '08:30:51', '2018-04-02'),
(499, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:27:31', '2018-04-02'),
(500, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '11:44:33', '2018-04-02'),
(501, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '12:00:16', '2018-04-02'),
(502, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '12:01:21', '2018-04-02'),
(503, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:48:34', '2018-04-03'),
(504, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '08:50:17', '2018-04-03'),
(505, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '12:01:02', '2018-04-03'),
(506, '0021463131', '', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '13:31:16', '2018-04-03'),
(507, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '13:33:47', '2018-04-03'),
(508, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '07:29:20', '2018-04-04'),
(509, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '07:31:43', '2018-04-04'),
(510, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:14:30', '2018-04-04'),
(511, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '12:35:20', '2018-04-04'),
(512, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '13:47:24', '2018-04-04'),
(513, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '16:20:39', '2018-04-04'),
(514, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '16:22:44', '2018-04-04'),
(515, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '08:12:30', '2018-04-05'),
(516, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '08:15:42', '2018-04-05'),
(517, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:13:46', '2018-04-05'),
(518, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:48:13', '2018-04-05');
INSERT INTO `rb_users_aktivitas` (`id_users_aktivitas`, `identitas`, `nama_user`, `ip_address`, `browser`, `os`, `status`, `jam`, `tanggal`) VALUES
(519, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '09:48:36', '2018-04-05'),
(520, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:48:49', '2018-04-05'),
(521, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:57:37', '2018-04-05'),
(522, '201383169', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '09:57:57', '2018-04-05'),
(523, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:59:05', '2018-04-05'),
(524, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '10:02:44', '2018-04-05'),
(525, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '10:07:44', '2018-04-05'),
(526, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '10:48:53', '2018-04-05'),
(527, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:25:58', '2018-04-06'),
(528, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '08:26:51', '2018-04-06'),
(529, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '13:15:06', '2018-04-06'),
(530, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '15:17:51', '2018-04-07'),
(531, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '16:23:04', '2018-04-07'),
(532, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '16:30:03', '2018-04-07'),
(533, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '16:32:22', '2018-04-07'),
(534, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '16:53:09', '2018-04-07'),
(535, '2', '', '::1', 'Firefox 59.0', 'Windows 10', '', '17:02:47', '2018-04-07'),
(536, '2', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', '', '17:06:39', '2018-04-07'),
(537, '2', '', '::1', 'Firefox 59.0', 'Windows 10', '', '17:11:27', '2018-04-07'),
(538, '2', '', '::1', 'Firefox 59.0', 'Windows 10', 'adminkonten', '17:12:41', '2018-04-07'),
(539, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '17:33:58', '2018-04-07'),
(540, '3', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'adminkonten', '17:37:03', '2018-04-07'),
(541, '3', '', '::1', 'Firefox 59.0', 'Windows 10', 'adminkonten', '17:39:32', '2018-04-07'),
(542, '2', '', '::1', 'Firefox 59.0', 'Windows 10', 'adminkonten', '17:43:33', '2018-04-07'),
(543, '3', '', '::1', 'Firefox 59.0', 'Windows 10', 'adminkonten', '17:45:29', '2018-04-07'),
(544, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '18:02:14', '2018-04-07'),
(545, '2', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'adminkonten', '18:34:29', '2018-04-07'),
(546, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '19:49:36', '2018-04-08'),
(547, '2', '', '::1', 'Firefox 59.0', 'Windows 10', 'adminkonten', '19:52:20', '2018-04-08'),
(548, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:17:52', '2018-04-09'),
(549, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '08:19:51', '2018-04-09'),
(550, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '08:55:38', '2018-04-09'),
(551, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '08:56:34', '2018-04-09'),
(552, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:13:59', '2018-04-09'),
(553, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '09:14:24', '2018-04-09'),
(554, '0051656284', '', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '09:16:30', '2018-04-09'),
(555, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '09:17:12', '2018-04-09'),
(556, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:18:20', '2018-04-09'),
(557, '0051656284', '', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '09:39:57', '2018-04-09'),
(558, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:14:42', '2018-04-09'),
(559, '0051656284', '', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '10:26:02', '2018-04-09'),
(560, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:26:36', '2018-04-09'),
(561, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '10:29:20', '2018-04-09'),
(562, '0051656284', '', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '10:31:22', '2018-04-09'),
(563, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:37:50', '2018-04-09'),
(564, '0051656284', '', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '10:38:39', '2018-04-09'),
(565, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '13:19:18', '2018-04-09'),
(566, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '08:47:09', '2018-04-10'),
(567, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '08:52:19', '2018-04-10'),
(568, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:04:25', '2018-04-10'),
(569, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:14:05', '2018-04-10'),
(570, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:25:23', '2018-04-10'),
(571, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:38:55', '2018-04-10'),
(572, '1', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'superuser', '09:41:00', '2018-04-10'),
(573, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '12:52:04', '2018-04-10'),
(574, '2', '', '::1', 'Firefox 59.0', 'Windows 10', 'adminkonten', '13:13:51', '2018-04-10'),
(575, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '13:19:42', '2018-04-10'),
(576, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '13:47:35', '2018-04-10'),
(577, '0051656284', '', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '14:12:16', '2018-04-10'),
(578, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:23:55', '2018-04-10'),
(579, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '12:53:42', '2018-04-11'),
(580, '195801181985121001', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '13:02:21', '2018-04-11'),
(581, '2', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'adminkonten', '13:28:40', '2018-04-11'),
(582, '0044916011', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '13:28:56', '2018-04-11'),
(583, '0021463131', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '14:16:02', '2018-04-11'),
(584, '0044770786', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '14:16:48', '2018-04-11'),
(585, '0034893909', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '14:17:35', '2018-04-11'),
(586, '0044770786', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '14:20:47', '2018-04-11'),
(587, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:31:10', '2018-04-11'),
(588, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:31:42', '2018-04-12'),
(589, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '09:34:39', '2018-04-12'),
(590, '201383169', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:35:00', '2018-04-12'),
(591, '0051656284', '', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '11:05:36', '2018-04-12'),
(592, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:31:47', '2018-04-13'),
(593, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '10:31:19', '2018-04-13'),
(594, '0051656284', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '10:36:17', '2018-04-13'),
(595, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:36:54', '2018-04-13'),
(596, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '10:38:42', '2018-04-13'),
(597, '0026820765', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '10:39:08', '2018-04-13'),
(598, '2', '', '::1', 'Firefox 59.0', 'Windows 10', 'adminkonten', '10:46:21', '2018-04-13'),
(599, '2', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'adminkonten', '13:46:13', '2018-04-13'),
(600, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '15:56:32', '2018-04-13'),
(601, '0026820765', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '16:12:41', '2018-04-13'),
(602, '0041273814', '', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'siswa', '16:19:44', '2018-04-13'),
(603, '195801181985121001', '', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '16:24:24', '2018-04-13'),
(604, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '08:40:02', '2018-04-16'),
(605, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '10:00:40', '2018-04-17'),
(606, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '07:35:02', '2018-04-18'),
(607, '2', '', '::1', 'Firefox 59.0', 'Windows 10', '', '08:34:34', '2018-04-18'),
(608, '1', '', '::1', 'Firefox 59.0', 'Windows 10', 'superuser', '09:07:32', '2018-04-18'),
(609, '195801181985121001', 'Danny Juhardi', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:34:10', '2018-04-18'),
(610, '5646546544', 'ISMAIL', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:31:29', '2018-04-19'),
(611, '5646546544', 'ISMAIL', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:32:02', '2018-04-19'),
(612, '5646546544', 'ISMAIL', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:33:06', '2018-04-19'),
(613, '4654654646', 'FERRY', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:34:23', '2018-04-19'),
(614, '5646546544', 'ISMAIL', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:35:30', '2018-04-19'),
(615, '5646546544', 'ISMAIL', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:41:52', '2018-04-19'),
(616, '201383169222222', 'ISMAIL', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:43:29', '2018-04-19'),
(617, '201383169', 'hendri', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:45:34', '2018-04-19'),
(618, '201383169', 'hendri', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '14:46:49', '2018-04-19'),
(619, '195801181985121001', 'Danny Juhardi', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '14:48:15', '2018-04-19'),
(620, '195801181985121001', 'Danny Juhardi', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:48:34', '2018-04-19'),
(621, '201383169', 'hendri', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '14:59:35', '2018-04-19'),
(622, '201383169', 'hendri', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '15:05:18', '2018-04-19'),
(623, '5646546544', 'ISMAIL', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '15:06:28', '2018-04-19'),
(624, '5646546544', 'ISMAIL', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '15:07:01', '2018-04-19'),
(625, '5646546544', 'ISMAIL', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '15:07:30', '2018-04-19'),
(626, '201383169', 'hendri', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '15:08:21', '2018-04-19'),
(627, '3213212332', 'abubakar', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '15:09:38', '2018-04-19'),
(628, '195801181985121001', 'Danny Juhardi', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '15:09:50', '2018-04-19'),
(629, '5646546544', 'ISMAIL', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '07:41:52', '2018-04-20'),
(630, '195801181985121001', 'Danny Juhardi', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '09:29:09', '2018-04-20'),
(631, '195801181985121001', 'Danny Juhardi', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:14:51', '2018-04-24'),
(632, '3213212332', 'abubakar', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '10:21:01', '2018-04-24'),
(633, '201383169', 'hendri', '::1', 'Chrome 65.0.3325.181', 'Windows 10', 'guru', '09:13:16', '2018-04-25'),
(634, '195801181985121001', 'Danny Juhardi', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '15:52:49', '2018-04-25'),
(635, '195801181985121001', 'Danny Juhardi', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:40:33', '2018-04-26'),
(636, '195801181985121001', 'Hendri', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:37:02', '2018-04-30'),
(637, '195801181985121001', 'Hendri', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '10:59:26', '2018-04-30'),
(638, '195801181985121001', 'Hendri', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:06:49', '2018-05-01'),
(639, '195801181985121001', 'Hendri', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '14:09:02', '2018-05-03'),
(640, '195801181985121001', 'Hendri', '::1', 'Chrome 66.0.3359.139', 'Windows 10', 'guru', '10:14:15', '2018-05-04'),
(641, '195801181985121001', 'Hendri', '::1', 'Chrome 66.0.3359.139', 'Windows 10', 'guru', '16:21:09', '2018-05-05'),
(642, '195801181985121001', 'Hendri', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '16:40:18', '2018-05-05'),
(643, '201383169222222', 'hendra', '::1', 'Firefox 59.0', 'Windows 10', 'guru', '09:04:12', '2018-05-07'),
(644, '0021463131', 'MUHAMMAD EMIRAL EL-HAQ', '::1', 'Firefox 59.0', 'Windows 10', 'siswa', '09:05:22', '2018-05-07'),
(645, '0041273814', 'HANIF ALBANI SUDIRO', '::1', 'Chrome 66.0.3359.139', 'Windows 7', 'siswa', '10:42:39', '2018-05-10'),
(646, '0051656284', 'ABDAD FARZANA MUHAMMAD', '::1', 'Chrome 66.0.3359.139', 'Windows 7', 'siswa', '11:11:52', '2018-05-10'),
(647, '0051656284', 'ABDAD FARZANA MUHAMMAD', '::1', 'Chrome 66.0.3359.139', 'Windows 7', 'siswa', '11:19:10', '2018-05-10'),
(648, '0033913578', 'AKMAL MULKI MADANI', '::1', 'Chrome 66.0.3359.139', 'Windows 10', 'siswa', '13:50:33', '2018-05-10'),
(649, '195801181985121001', 'Hendri', '::1', 'Chrome 66.0.3359.139', 'Windows 10', 'guru', '21:36:41', '2018-05-10'),
(650, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '10:04:00', '2018-05-14'),
(651, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '15:10:41', '2018-05-14'),
(652, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '16:35:35', '2018-05-14'),
(653, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '07:55:30', '2018-05-15'),
(654, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '11:41:16', '2018-05-15'),
(655, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '11:56:34', '2018-05-15'),
(656, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '13:29:20', '2018-05-15'),
(657, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '16:38:38', '2018-05-15'),
(658, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '08:43:44', '2018-05-16'),
(659, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '08:53:10', '2018-05-16'),
(660, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '13:20:08', '2018-05-16'),
(661, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '14:19:10', '2018-05-16'),
(662, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '15:16:48', '2018-05-16'),
(663, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '15:55:24', '2018-05-16'),
(664, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '08:14:49', '2018-05-17'),
(665, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Chrome 66.0.3359.181', 'Windows 10', 'guru', '17:26:12', '2018-05-20'),
(666, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Chrome 66.0.3359.181', 'Windows 10', 'guru', '16:19:43', '2018-05-21'),
(667, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Chrome 66.0.3359.181', 'Windows 10', 'guru', '14:06:43', '2018-05-29'),
(668, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Chrome 66.0.3359.181', 'Windows 10', 'guru', '14:10:51', '2018-05-29'),
(669, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Chrome 66.0.3359.181', 'Windows 10', 'guru', '14:13:50', '2018-05-29'),
(670, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 60.0', 'Windows 10', 'guru', '17:32:48', '2018-06-19'),
(671, '195801181985121001', 'Indra Hermawan, ST, M.Pd', '::1', 'Firefox 61.0', 'Windows 10', 'guru', '08:39:18', '2018-07-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_user_admsekolah`
--

CREATE TABLE IF NOT EXISTS `rb_user_admsekolah` (
`id_ser_adm_sekolah` int(30) NOT NULL,
  `unam_ser_adm_sekolah` varchar(100) NOT NULL,
  `pswd_ser_adm_sekolah` text NOT NULL,
  `nm_ser_adm_sekolah` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `aktif` enum('Y','T') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_user_admsekolah`
--

INSERT INTO `rb_user_admsekolah` (`id_ser_adm_sekolah`, `unam_ser_adm_sekolah`, `pswd_ser_adm_sekolah`, `nm_ser_adm_sekolah`, `email`, `no_tlp`, `jabatan`, `unit`, `level`, `aktif`) VALUES
(1, 'aritusmp', 'd7d2f602e155ba700ed76c48d9a48009b9383e8d17435bfb0fe8ad7c664d4002f16cc7a65c6fb066963714a794f96441ef7f9b9c1b1456acfb9225cbad474fb0', 'Ari assegaf', 'ari@gmail.com', '02197600722', 'Admn TU', 'SMP', 'adminsekolah', 'Y'),
(2, 'test', 'ff594f8cf10ca2e3ad4279375f0d0e688a7eca861000e7ecc63ae4b105c8be7bcb57e8c1172ea460c462c6f715508dc356fd964cf41644682db1feffd466769a', '', '', '', '', '', 'adminsekolah', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_user_konten`
--

CREATE TABLE IF NOT EXISTS `rb_user_konten` (
`id_user_konten` int(5) NOT NULL,
  `uname_konten` varchar(100) NOT NULL,
  `pswd_konten` text NOT NULL,
  `nm_lkp` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `aktif` enum('Y','T') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_user_konten`
--

INSERT INTO `rb_user_konten` (`id_user_konten`, `uname_konten`, `pswd_konten`, `nm_lkp`, `email`, `no_tlp`, `jabatan`, `level`, `aktif`) VALUES
(2, 'yusuf', 'd7d2f602e155ba700ed76c48d9a48009b9383e8d17435bfb0fe8ad7c664d4002f16cc7a65c6fb066963714a794f96441ef7f9b9c1b1456acfb9225cbad474fb0', 'yusuf', 'yusuf@gmail.com', '02197600722', 'admin konten', 'adminkonten', 'Y'),
(3, 'ndrianggar', 'd7d2f602e155ba700ed76c48d9a48009b9383e8d17435bfb0fe8ad7c664d4002f16cc7a65c6fb066963714a794f96441ef7f9b9c1b1456acfb9225cbad474fb0', 'hendri anggar', 'ndrianggar@gmail.com', '021887889', 'admin konten', 'adminkonten', 'Y'),
(4, 'anonymous', 'd7d2f602e155ba700ed76c48d9a48009b9383e8d17435bfb0fe8ad7c664d4002f16cc7a65c6fb066963714a794f96441ef7f9b9c1b1456acfb9225cbad474fb0', 'anonymous', 'anonymous@gmail.com', '089507233391', 'admin konten', 'adminkonten', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
 ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `rb_absensi_guru`
--
ALTER TABLE `rb_absensi_guru`
 ADD PRIMARY KEY (`id_absensi_guru`);

--
-- Indexes for table `rb_absensi_siswa`
--
ALTER TABLE `rb_absensi_siswa`
 ADD PRIMARY KEY (`id_absensi_siswa`);

--
-- Indexes for table `rb_agama`
--
ALTER TABLE `rb_agama`
 ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `rb_bab`
--
ALTER TABLE `rb_bab`
 ADD PRIMARY KEY (`id_bab`);

--
-- Indexes for table `rb_bank_pertanyaan_essai`
--
ALTER TABLE `rb_bank_pertanyaan_essai`
 ADD PRIMARY KEY (`id_bank_pertanyaan_essai`);

--
-- Indexes for table `rb_bank_pertanyaan_objektif`
--
ALTER TABLE `rb_bank_pertanyaan_objektif`
 ADD PRIMARY KEY (`id_bank_pertanyaan_objektif`);

--
-- Indexes for table `rb_bank_topiksoal`
--
ALTER TABLE `rb_bank_topiksoal`
 ADD PRIMARY KEY (`id_topiksoal`);

--
-- Indexes for table `rb_elearning`
--
ALTER TABLE `rb_elearning`
 ADD PRIMARY KEY (`id_elearning`);

--
-- Indexes for table `rb_elearning_jawab`
--
ALTER TABLE `rb_elearning_jawab`
 ADD PRIMARY KEY (`id_elearning_jawab`);

--
-- Indexes for table `rb_forum_komentar`
--
ALTER TABLE `rb_forum_komentar`
 ADD PRIMARY KEY (`id_forum_komentar`);

--
-- Indexes for table `rb_forum_topic`
--
ALTER TABLE `rb_forum_topic`
 ADD PRIMARY KEY (`id_forum_topic`);

--
-- Indexes for table `rb_gedung`
--
ALTER TABLE `rb_gedung`
 ADD PRIMARY KEY (`kode_gedung`);

--
-- Indexes for table `rb_golongan`
--
ALTER TABLE `rb_golongan`
 ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `rb_guru`
--
ALTER TABLE `rb_guru`
 ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `rb_guru_akses`
--
ALTER TABLE `rb_guru_akses`
 ADD PRIMARY KEY (`id_guru_akses`);

--
-- Indexes for table `rb_halaman`
--
ALTER TABLE `rb_halaman`
 ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `rb_identitas_sekolah`
--
ALTER TABLE `rb_identitas_sekolah`
 ADD PRIMARY KEY (`id_identitas_sekolah`);

--
-- Indexes for table `rb_jadwal_pelajaran`
--
ALTER TABLE `rb_jadwal_pelajaran`
 ADD PRIMARY KEY (`kodejdwl`);

--
-- Indexes for table `rb_jawaban_essai`
--
ALTER TABLE `rb_jawaban_essai`
 ADD PRIMARY KEY (`id_jawaban_essai`);

--
-- Indexes for table `rb_jawaban_essai_koreksi`
--
ALTER TABLE `rb_jawaban_essai_koreksi`
 ADD PRIMARY KEY (`id_jawaban_essai_koreksi`);

--
-- Indexes for table `rb_jawaban_objektif`
--
ALTER TABLE `rb_jawaban_objektif`
 ADD PRIMARY KEY (`id_jawaban_objektif`);

--
-- Indexes for table `rb_jenis_kelamin`
--
ALTER TABLE `rb_jenis_kelamin`
 ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `rb_jenis_ptk`
--
ALTER TABLE `rb_jenis_ptk`
 ADD PRIMARY KEY (`id_jenis_ptk`);

--
-- Indexes for table `rb_journal_list`
--
ALTER TABLE `rb_journal_list`
 ADD PRIMARY KEY (`id_journal`);

--
-- Indexes for table `rb_jurusan`
--
ALTER TABLE `rb_jurusan`
 ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `rb_kategori_elearning`
--
ALTER TABLE `rb_kategori_elearning`
 ADD PRIMARY KEY (`id_kategori_elearning`);

--
-- Indexes for table `rb_kategori_quiz_ujian`
--
ALTER TABLE `rb_kategori_quiz_ujian`
 ADD PRIMARY KEY (`id_kategori_quiz_ujian`);

--
-- Indexes for table `rb_kehadiran`
--
ALTER TABLE `rb_kehadiran`
 ADD PRIMARY KEY (`kode_kehadiran`);

--
-- Indexes for table `rb_kelas`
--
ALTER TABLE `rb_kelas`
 ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `rb_kelompok_mata_pelajaran`
--
ALTER TABLE `rb_kelompok_mata_pelajaran`
 ADD PRIMARY KEY (`id_kelompok_mata_pelajaran`);

--
-- Indexes for table `rb_keuangan_bayar`
--
ALTER TABLE `rb_keuangan_bayar`
 ADD PRIMARY KEY (`id_keuangan_bayar`);

--
-- Indexes for table `rb_keuangan_jenis`
--
ALTER TABLE `rb_keuangan_jenis`
 ADD PRIMARY KEY (`id_keuangan_jenis`);

--
-- Indexes for table `rb_kls_pararel`
--
ALTER TABLE `rb_kls_pararel`
 ADD PRIMARY KEY (`id_kls_pararel`), ADD UNIQUE KEY `id_kls_pararel` (`id_kls_pararel`);

--
-- Indexes for table `rb_kompetensi_dasar`
--
ALTER TABLE `rb_kompetensi_dasar`
 ADD PRIMARY KEY (`id_kompetensi_dasar`);

--
-- Indexes for table `rb_kurikulum`
--
ALTER TABLE `rb_kurikulum`
 ADD PRIMARY KEY (`kode_kurikulum`);

--
-- Indexes for table `rb_ledger`
--
ALTER TABLE `rb_ledger`
 ADD PRIMARY KEY (`id_ledger`);

--
-- Indexes for table `rb_mata_pelajaran`
--
ALTER TABLE `rb_mata_pelajaran`
 ADD PRIMARY KEY (`kode_pelajaran`);

--
-- Indexes for table `rb_materi`
--
ALTER TABLE `rb_materi`
 ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `rb_menu`
--
ALTER TABLE `rb_menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `rb_modul`
--
ALTER TABLE `rb_modul`
 ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `rb_nilai_extrakulikuler`
--
ALTER TABLE `rb_nilai_extrakulikuler`
 ADD PRIMARY KEY (`id_nilai_extrakulikuler`);

--
-- Indexes for table `rb_nilai_keterampilan`
--
ALTER TABLE `rb_nilai_keterampilan`
 ADD PRIMARY KEY (`id_nilai_keterampilan`);

--
-- Indexes for table `rb_nilai_pengetahuan`
--
ALTER TABLE `rb_nilai_pengetahuan`
 ADD PRIMARY KEY (`id_nilai_pengetahuan`);

--
-- Indexes for table `rb_nilai_pengetahuan_semester`
--
ALTER TABLE `rb_nilai_pengetahuan_semester`
 ADD PRIMARY KEY (`id_nilai_pengetahuan_semester`);

--
-- Indexes for table `rb_nilai_pertanyaan_essai`
--
ALTER TABLE `rb_nilai_pertanyaan_essai`
 ADD PRIMARY KEY (`id_nilai_pertanyaan_essai`);

--
-- Indexes for table `rb_nilai_prestasi`
--
ALTER TABLE `rb_nilai_prestasi`
 ADD PRIMARY KEY (`id_nilai_prestasi`);

--
-- Indexes for table `rb_nilai_sikap`
--
ALTER TABLE `rb_nilai_sikap`
 ADD PRIMARY KEY (`id_nilai_sikap`);

--
-- Indexes for table `rb_nilai_sikap_indikator`
--
ALTER TABLE `rb_nilai_sikap_indikator`
 ADD PRIMARY KEY (`kode_indikator`);

--
-- Indexes for table `rb_nilai_sikap_semester`
--
ALTER TABLE `rb_nilai_sikap_semester`
 ADD PRIMARY KEY (`id_nilai_sikap_semester`);

--
-- Indexes for table `rb_nilai_uts`
--
ALTER TABLE `rb_nilai_uts`
 ADD PRIMARY KEY (`id_nilai_uts`);

--
-- Indexes for table `rb_peringkat`
--
ALTER TABLE `rb_peringkat`
 ADD PRIMARY KEY (`id_peringkat`);

--
-- Indexes for table `rb_pertanyaan_essai`
--
ALTER TABLE `rb_pertanyaan_essai`
 ADD PRIMARY KEY (`id_pertanyaan_essai`);

--
-- Indexes for table `rb_pertanyaan_objektif`
--
ALTER TABLE `rb_pertanyaan_objektif`
 ADD PRIMARY KEY (`id_pertanyaan_objektif`);

--
-- Indexes for table `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
 ADD PRIMARY KEY (`id_pertanyaan_penilaian`);

--
-- Indexes for table `rb_pertanyaan_penilaian_jawab`
--
ALTER TABLE `rb_pertanyaan_penilaian_jawab`
 ADD PRIMARY KEY (`id_pertanyaan_penilaian_jawab`);

--
-- Indexes for table `rb_predikat`
--
ALTER TABLE `rb_predikat`
 ADD PRIMARY KEY (`id_predikat`);

--
-- Indexes for table `rb_psb_aktivasi`
--
ALTER TABLE `rb_psb_aktivasi`
 ADD PRIMARY KEY (`id_aktivasi`);

--
-- Indexes for table `rb_psb_pendaftaran`
--
ALTER TABLE `rb_psb_pendaftaran`
 ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `rb_psb_pendaftaran_saudara`
--
ALTER TABLE `rb_psb_pendaftaran_saudara`
 ADD PRIMARY KEY (`id_saudara`);

--
-- Indexes for table `rb_query_materi`
--
ALTER TABLE `rb_query_materi`
 ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `rb_quiz_cbt`
--
ALTER TABLE `rb_quiz_cbt`
 ADD PRIMARY KEY (`id_cbt`);

--
-- Indexes for table `rb_quiz_cbt_soal`
--
ALTER TABLE `rb_quiz_cbt_soal`
 ADD PRIMARY KEY (`id_cbt_soal`);

--
-- Indexes for table `rb_quiz_jadwal`
--
ALTER TABLE `rb_quiz_jadwal`
 ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `rb_quiz_jawab`
--
ALTER TABLE `rb_quiz_jawab`
 ADD PRIMARY KEY (`id_jawab`);

--
-- Indexes for table `rb_quiz_jenis`
--
ALTER TABLE `rb_quiz_jenis`
 ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `rb_quiz_materi`
--
ALTER TABLE `rb_quiz_materi`
 ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `rb_quiz_materi_kategori`
--
ALTER TABLE `rb_quiz_materi_kategori`
 ADD PRIMARY KEY (`id_materi_kategori`);

--
-- Indexes for table `rb_quiz_ujian`
--
ALTER TABLE `rb_quiz_ujian`
 ADD PRIMARY KEY (`id_quiz_ujian`);

--
-- Indexes for table `rb_ruangan`
--
ALTER TABLE `rb_ruangan`
 ADD PRIMARY KEY (`kode_ruangan`);

--
-- Indexes for table `rb_sesi`
--
ALTER TABLE `rb_sesi`
 ADD PRIMARY KEY (`id_sesi`);

--
-- Indexes for table `rb_siswa`
--
ALTER TABLE `rb_siswa`
 ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `rb_sms`
--
ALTER TABLE `rb_sms`
 ADD PRIMARY KEY (`id_sms`);

--
-- Indexes for table `rb_sms_autoreply`
--
ALTER TABLE `rb_sms_autoreply`
 ADD PRIMARY KEY (`id_autoreply`);

--
-- Indexes for table `rb_sms_inbox`
--
ALTER TABLE `rb_sms_inbox`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rb_sms_outbox`
--
ALTER TABLE `rb_sms_outbox`
 ADD PRIMARY KEY (`id_outbox`);

--
-- Indexes for table `rb_status_keaktifan`
--
ALTER TABLE `rb_status_keaktifan`
 ADD PRIMARY KEY (`id_status_keaktifan`);

--
-- Indexes for table `rb_status_kepegawaian`
--
ALTER TABLE `rb_status_kepegawaian`
 ADD PRIMARY KEY (`id_status_kepegawaian`);

--
-- Indexes for table `rb_status_pernikahan`
--
ALTER TABLE `rb_status_pernikahan`
 ADD PRIMARY KEY (`id_status_pernikahan`);

--
-- Indexes for table `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
 ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indexes for table `rb_users`
--
ALTER TABLE `rb_users`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `rb_users_aktivitas`
--
ALTER TABLE `rb_users_aktivitas`
 ADD PRIMARY KEY (`id_users_aktivitas`);

--
-- Indexes for table `rb_user_admsekolah`
--
ALTER TABLE `rb_user_admsekolah`
 ADD PRIMARY KEY (`id_ser_adm_sekolah`);

--
-- Indexes for table `rb_user_konten`
--
ALTER TABLE `rb_user_konten`
 ADD PRIMARY KEY (`id_user_konten`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `rb_absensi_guru`
--
ALTER TABLE `rb_absensi_guru`
MODIFY `id_absensi_guru` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_absensi_siswa`
--
ALTER TABLE `rb_absensi_siswa`
MODIFY `id_absensi_siswa` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=476;
--
-- AUTO_INCREMENT for table `rb_agama`
--
ALTER TABLE `rb_agama`
MODIFY `id_agama` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_bab`
--
ALTER TABLE `rb_bab`
MODIFY `id_bab` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `rb_bank_pertanyaan_essai`
--
ALTER TABLE `rb_bank_pertanyaan_essai`
MODIFY `id_bank_pertanyaan_essai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `rb_bank_pertanyaan_objektif`
--
ALTER TABLE `rb_bank_pertanyaan_objektif`
MODIFY `id_bank_pertanyaan_objektif` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `rb_bank_topiksoal`
--
ALTER TABLE `rb_bank_topiksoal`
MODIFY `id_topiksoal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_elearning`
--
ALTER TABLE `rb_elearning`
MODIFY `id_elearning` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `rb_elearning_jawab`
--
ALTER TABLE `rb_elearning_jawab`
MODIFY `id_elearning_jawab` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_forum_komentar`
--
ALTER TABLE `rb_forum_komentar`
MODIFY `id_forum_komentar` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `rb_forum_topic`
--
ALTER TABLE `rb_forum_topic`
MODIFY `id_forum_topic` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `rb_golongan`
--
ALTER TABLE `rb_golongan`
MODIFY `id_golongan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rb_guru_akses`
--
ALTER TABLE `rb_guru_akses`
MODIFY `id_guru_akses` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rb_halaman`
--
ALTER TABLE `rb_halaman`
MODIFY `id_halaman` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_identitas_sekolah`
--
ALTER TABLE `rb_identitas_sekolah`
MODIFY `id_identitas_sekolah` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rb_jadwal_pelajaran`
--
ALTER TABLE `rb_jadwal_pelajaran`
MODIFY `kodejdwl` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `rb_jawaban_essai`
--
ALTER TABLE `rb_jawaban_essai`
MODIFY `id_jawaban_essai` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `rb_jawaban_essai_koreksi`
--
ALTER TABLE `rb_jawaban_essai_koreksi`
MODIFY `id_jawaban_essai_koreksi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_jawaban_objektif`
--
ALTER TABLE `rb_jawaban_objektif`
MODIFY `id_jawaban_objektif` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `rb_jenis_kelamin`
--
ALTER TABLE `rb_jenis_kelamin`
MODIFY `id_jenis_kelamin` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_jenis_ptk`
--
ALTER TABLE `rb_jenis_ptk`
MODIFY `id_jenis_ptk` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rb_journal_list`
--
ALTER TABLE `rb_journal_list`
MODIFY `id_journal` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rb_kategori_elearning`
--
ALTER TABLE `rb_kategori_elearning`
MODIFY `id_kategori_elearning` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_kategori_quiz_ujian`
--
ALTER TABLE `rb_kategori_quiz_ujian`
MODIFY `id_kategori_quiz_ujian` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_kelompok_mata_pelajaran`
--
ALTER TABLE `rb_kelompok_mata_pelajaran`
MODIFY `id_kelompok_mata_pelajaran` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_keuangan_bayar`
--
ALTER TABLE `rb_keuangan_bayar`
MODIFY `id_keuangan_bayar` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `rb_keuangan_jenis`
--
ALTER TABLE `rb_keuangan_jenis`
MODIFY `id_keuangan_jenis` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rb_kls_pararel`
--
ALTER TABLE `rb_kls_pararel`
MODIFY `id_kls_pararel` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `rb_kompetensi_dasar`
--
ALTER TABLE `rb_kompetensi_dasar`
MODIFY `id_kompetensi_dasar` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `rb_kurikulum`
--
ALTER TABLE `rb_kurikulum`
MODIFY `kode_kurikulum` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rb_ledger`
--
ALTER TABLE `rb_ledger`
MODIFY `id_ledger` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `rb_materi`
--
ALTER TABLE `rb_materi`
MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rb_menu`
--
ALTER TABLE `rb_menu`
MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `rb_modul`
--
ALTER TABLE `rb_modul`
MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `rb_nilai_extrakulikuler`
--
ALTER TABLE `rb_nilai_extrakulikuler`
MODIFY `id_nilai_extrakulikuler` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_nilai_keterampilan`
--
ALTER TABLE `rb_nilai_keterampilan`
MODIFY `id_nilai_keterampilan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `rb_nilai_pengetahuan`
--
ALTER TABLE `rb_nilai_pengetahuan`
MODIFY `id_nilai_pengetahuan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `rb_nilai_pengetahuan_semester`
--
ALTER TABLE `rb_nilai_pengetahuan_semester`
MODIFY `id_nilai_pengetahuan_semester` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_nilai_pertanyaan_essai`
--
ALTER TABLE `rb_nilai_pertanyaan_essai`
MODIFY `id_nilai_pertanyaan_essai` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rb_nilai_prestasi`
--
ALTER TABLE `rb_nilai_prestasi`
MODIFY `id_nilai_prestasi` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rb_nilai_sikap`
--
ALTER TABLE `rb_nilai_sikap`
MODIFY `id_nilai_sikap` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `rb_nilai_sikap_semester`
--
ALTER TABLE `rb_nilai_sikap_semester`
MODIFY `id_nilai_sikap_semester` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_nilai_uts`
--
ALTER TABLE `rb_nilai_uts`
MODIFY `id_nilai_uts` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rb_peringkat`
--
ALTER TABLE `rb_peringkat`
MODIFY `id_peringkat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=923;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_essai`
--
ALTER TABLE `rb_pertanyaan_essai`
MODIFY `id_pertanyaan_essai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_objektif`
--
ALTER TABLE `rb_pertanyaan_objektif`
MODIFY `id_pertanyaan_objektif` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
MODIFY `id_pertanyaan_penilaian` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_penilaian_jawab`
--
ALTER TABLE `rb_pertanyaan_penilaian_jawab`
MODIFY `id_pertanyaan_penilaian_jawab` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `rb_predikat`
--
ALTER TABLE `rb_predikat`
MODIFY `id_predikat` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rb_psb_aktivasi`
--
ALTER TABLE `rb_psb_aktivasi`
MODIFY `id_aktivasi` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_psb_pendaftaran`
--
ALTER TABLE `rb_psb_pendaftaran`
MODIFY `id_pendaftaran` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_psb_pendaftaran_saudara`
--
ALTER TABLE `rb_psb_pendaftaran_saudara`
MODIFY `id_saudara` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rb_query_materi`
--
ALTER TABLE `rb_query_materi`
MODIFY `kode_kelas` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rb_quiz_cbt`
--
ALTER TABLE `rb_quiz_cbt`
MODIFY `id_cbt` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rb_quiz_cbt_soal`
--
ALTER TABLE `rb_quiz_cbt_soal`
MODIFY `id_cbt_soal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `rb_quiz_jadwal`
--
ALTER TABLE `rb_quiz_jadwal`
MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rb_quiz_jawab`
--
ALTER TABLE `rb_quiz_jawab`
MODIFY `id_jawab` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rb_quiz_jenis`
--
ALTER TABLE `rb_quiz_jenis`
MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_quiz_materi`
--
ALTER TABLE `rb_quiz_materi`
MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `rb_quiz_materi_kategori`
--
ALTER TABLE `rb_quiz_materi_kategori`
MODIFY `id_materi_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rb_quiz_ujian`
--
ALTER TABLE `rb_quiz_ujian`
MODIFY `id_quiz_ujian` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `rb_sesi`
--
ALTER TABLE `rb_sesi`
MODIFY `id_sesi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rb_siswa`
--
ALTER TABLE `rb_siswa`
MODIFY `id_siswa` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2147483648;
--
-- AUTO_INCREMENT for table `rb_sms`
--
ALTER TABLE `rb_sms`
MODIFY `id_sms` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_sms_autoreply`
--
ALTER TABLE `rb_sms_autoreply`
MODIFY `id_autoreply` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_sms_inbox`
--
ALTER TABLE `rb_sms_inbox`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_sms_outbox`
--
ALTER TABLE `rb_sms_outbox`
MODIFY `id_outbox` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rb_status_keaktifan`
--
ALTER TABLE `rb_status_keaktifan`
MODIFY `id_status_keaktifan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_status_kepegawaian`
--
ALTER TABLE `rb_status_kepegawaian`
MODIFY `id_status_kepegawaian` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_status_pernikahan`
--
ALTER TABLE `rb_status_pernikahan`
MODIFY `id_status_pernikahan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
MODIFY `id_tahun_akademik` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20183;
--
-- AUTO_INCREMENT for table `rb_users`
--
ALTER TABLE `rb_users`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `rb_users_aktivitas`
--
ALTER TABLE `rb_users_aktivitas`
MODIFY `id_users_aktivitas` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=672;
--
-- AUTO_INCREMENT for table `rb_user_admsekolah`
--
ALTER TABLE `rb_user_admsekolah`
MODIFY `id_ser_adm_sekolah` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_user_konten`
--
ALTER TABLE `rb_user_konten`
MODIFY `id_user_konten` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
