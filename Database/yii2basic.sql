-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 06:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `id_jenis`, `id_supplier`, `harga`, `stok`) VALUES
(0, '1101', 'Mobil', 'Unit', 0, 104, 200000000, 1000),
(1, '1102', 'Meja', 'Buah', 4, 109, 10000000, 1000),
(2, '1103', 'Sendok', 'Box', 5, 110, 25000, 75),
(3, '1104', 'Kursi', 'Unit', 5, 110, 110, 150000),
(4, '1105', 'Lemari', 'Buah', 7, 106, 5000000, 2),
(5, '1106', 'Pulpen', 'Box', 15, 106, 320000, 54),
(6, '1107', 'Motor', 'Unit', 8, 109, 25000000, 3),
(7, '1108', 'Motor', 'Unix', 9, 108, 500000000, 2),
(8, '1109', 'Motor', 'Unit', 10, 109, 30000000, 5),
(9, '1110', 'Lemari', 'Unit', 6, 110, 500000, 23),
(10, '1111', 'Hp', 'Buah', 12, 115, 400000, 100),
(11, '1112', 'Piring', 'Buah', 6, 111, 25000, 35),
(12, '1113', 'hp', 'Buah', 11, 115, 5000000, 3),
(14, '1115', 'Mouse', 'Buah', 13, 114, 0, 0),
(15, '1116', 'Mouse', 'Buah', 14, 114, 40000, 500),
(119, '1121', 'Penggaris', 'Buah', 112, 102, 8000, 87);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `keterangan`) VALUES
(0, 'Honda BR-V New', 'tampil dengan desain yang gagah dan elegan '),
(1, 'Honda Mobilo E CVT Prestige', 'mobil keluarga terbaik dengan haraga yang relatif'),
(2, 'Jazz RS BLack Top', 'disediakan sebuah vleg berukauran 16 inci dengan w'),
(3, 'Honda City', 'Sistem transmisi Otomatis'),
(4, 'Kayu', 'kokoh dan tahan banting'),
(5, 'jenis', 'anti karat dan tahan lama'),
(6, 'Kaca', 'Anti pecah dan retak'),
(7, 'sportbike', 'Melaju secepat kilat'),
(8, 'Naked-bike', 'kenyamanan posisi berkendara yang lebih baik dan f'),
(9, 'Dual-sport', 'Bisa di jalan aspal, bisa di medan lumpur'),
(10, ' Cruiser', 'mengahasilkan tenaga yang besar'),
(11, ' vivo Y20s [G]', 'Tampilan yang bagus dengan betrai tahan lama'),
(12, 'Xiaomi Redmi 9T', 'full screen sektor baterai di mana perangkat dibek'),
(13, 'iMice ', 'Desain ergonomis,Menggunakan teknologi wireless'),
(14, 'Airmouse ', 'Alcatroz Mouse USB Wireless Airmouse Black'),
(15, 'Ballpoint', 'dengan bola besi bulat dan tumpul lalu di ujungnya'),
(117, 'Sendal', 'Sepatu Untuk Pesta');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kode_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kode_jurusan`, `nama_jurusan`) VALUES
(1, 1, 'Teknologi Infromasi'),
(2, 2, 'Teknik Mesin'),
(3, 3, 'Teknik Elektro'),
(4, 4, 'Teknik Sipil'),
(5, 5, 'Akuntansi'),
(6, 6, 'Adminitrasi Niaga'),
(7, 7, 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(18) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jekel` char(1) DEFAULT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `tanggal_lahir`, `jekel`, `id_jurusan`, `id_prodi`, `email`, `alamat`) VALUES
(2, '1911082111', 'Conan', '17-Feb-2000', 'L', 2, 2, 'conan@gmail.com', 'Bandung'),
(3, '1911081024', 'Siska Nofri Dania', '03-Nov-2001', 'P', 1, 1, 'daniasiskanofri@gmail.com', 'Kp,jambu Pariaman'),
(4, '1911087777', 'Digimon', '20-Jun-1999', 'L', 4, 4, 'digimon@gmail.com', 'Padang'),
(5, '1911081111', 'Saylor moon', '01-Nov-2003', 'P', 6, 15, 'say@gmail.com', 'Suger'),
(6, '1911080111', 'Papazola', '02-Jun-1998', 'L', 7, 18, 'papaz@gmail.com', 'Jakarta'),
(7, '1911080199', 'Yaya', '04-Jul-2001', 'L', 4, 4, 'yayay@gmail.com', 'Sulim'),
(8, '1911080810', 'Ying', '05-Aug-2002', 'P', 2, 2, 'ying@gmail.com', 'Palembang'),
(9, '1911080988', 'Ocobot', '02-Sep-1987', 'L', 3, 9, 'ocobot@gmail.com', 'Padang'),
(10, '1911081079', 'Gopal', '02-May-2000', 'L', 1, 16, 'gopal@gmail.com', 'Kp,Baru Padang'),
(11, '1911080923', 'Adambes', '19-Feb-2021', 'L', 3, 10, 'adambes@gmail.com', 'Tanggerang'),
(12, '1911082010', 'Noillaaaa', '13-Feb-2021', 'P', 1, 1, 'nola@gmail.com', 'Agammm');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `id_jurusan`, `prodi`, `keterangan`) VALUES
(1, 1, 'D4.TRPL', 'D4. Teknologi Rekayasa Perangkat Lunak'),
(2, 2, 'D3. Mesin', 'D3 Teknik Mesin'),
(3, 4, 'D3. TS', 'D3. Teknik Sipil'),
(4, 4, 'D4. PJJ', 'D4. Perencanaan Jalan Dan Jembatan'),
(5, 4, 'D4.TPIR', 'D4. Teknik Perencanaan Irigasi Dan Rawa'),
(6, 4, 'D4. MRK', 'D4. Manajemen Rekayasa Konstruksi'),
(7, 3, 'D3. TL', 'D3. Teknik Listrik'),
(8, 3, 'D3. TE', 'D3. Teknik Elektronika'),
(9, 3, 'D3. TT', 'D3. Teknik Telekomunikasi'),
(10, 3, 'D4. TEL', 'D4. Teknik  Elektronika'),
(11, 3, 'D4. TTEL', 'D4. Teknik Telekomunikasi'),
(12, 5, 'D3. Ak', 'D3. Akuntansi'),
(13, 5, 'D4. AKUN', 'D4. Akuntansi'),
(14, 6, 'D3. AB', 'D3. Adminitrasi Bisnis'),
(15, 6, 'D3 . UPW', 'D3. Usaha Perjalanan Wisata'),
(16, 1, 'D3. TEKOM', 'D3. Teknik Komputer'),
(17, 1, 'D3. MI', 'D3. Manajemen Infromatika'),
(18, 7, 'D3 . BING', 'D3. Bahasa Inggris');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `notelp`, `email`, `alamat`) VALUES
(102, 'Toko Furniture Simpati', ' 0215524091', 'furmiture@gmail.com', 'Jl,Kiasnawi No 85,RT,005/RW,002,Sukarasa,Kec,Tangerang,Kota Tangerang Banten 15111'),
(103, 'Spatu Murah Tanggerang Bekasi', '08999443432', 'SpatuMurahh@gmail.com', 'SpatuMurahh@gmail.comJl,Kebon Kelapa,RT,03/RW07,Tambun,Kec Tambun Sel, Bekasi Jawa Barat 17510'),
(104, 'Siska_Car', '083191277599', 'daniasiskanofri@gmail.com', 'Kp,Jambu(Batu-Basa) IV Koto Aurmalintang'),
(105, 'Karetdrop', '08423537138', 'karet@gmail.com', 'Jl,Panggilingan Baaru,RT,013/04 Kel,Dukuh,Kec,Jl Keramat Utara, RT,13/RW4, Dukuh,jakarta,DKI'),
(106, 'Pulpenku', '08123245353', 'Pulpenku@gmail.com', 'Jl. Malakasari RT.02/RW.08 Desa Ciluncat, Kecamatan Cangkuang Kabupaten Bandung, Jawa Barat .'),
(107, 'Pulpen At-Tarbiyah', '0812 2222 6063', 'Epulpen@gmail.com', 'Jl. Malakasari RT.02/RW.08 Desa Ciluncat, Kecamatan Cangkuang'),
(108, ' Wong Coco Motor', '0721 709999', 'Wongcocomotor@gmail.com', 'Kabupaten Lampung Selatan, Lampung · ('),
(109, 'Mitsubishi Budi Berlian Motor', '0721 709999', 'BudiBerlian@gmail.com', 'Jl. H. Mena No.km, RW.15, Natar, Kec. Natar, Kabupaten Lampung Selatan, Lampung 35362'),
(110, 'Jual kaca - Toko kaca Varia Jaya', '021 6253815', 'Variajaya@gmail.com', 'Jl. Mangga Dua Raya No.9, RT.10/RW.2, Pinangsia, Kec. Taman Sari, Kota Jakarta Barat, Daerah Khusus '),
(111, 'Potong Kaca', '0811632807', 'PotongKaca@gmail.com', 'Jl. Moch. Kahfi II, RT.2/RW.5, Cipedak, Kec. Jagakarsa, Kota Jakarta Selatan, Daerah Khusus Ibukota '),
(112, 'StandartPen+++', '08124556678', 'Standartpen@gmail.com', 'Jl. Cideng Timur No.50, RT.9/RW.6, Petojo Sel., Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus '),
(113, 'PT. Zebra Asaba Industries', '08648385648', 'Zebraasaba@gmail.com', 'Jl. Baru Caracas No.8, RT.024 RW.006 Dusun Pon B, Kel, Caracas, Cilimus, Kuningan Regency, West Java'),
(114, 'Sentra Computer', '0721 488311', 'Sentra@gmail.com', 'Jl. Salim Batubara No.87, Kupang Teba, Kec. Tlk. Betung Utara, Kota Bandar Lampung, Lampung 35212'),
(115, 'Semangat Jaya', '08218348834', 'SemangatJaya@gmail.com', 'Jl. Kartini No.3, Pasir Gintung, Kec. Tj. Karang Pusat, Kota Bandar Lampung, Lampung 35127\r\n'),
(1012, 'Siska Jaya', '083191277599', 'daniasiskanofri@gmail.com', 'Kp,Jambu(Batu-BAsa) Kabupaten Padang Pariaman IV Koto Aurmalintang'),
(1112, 'Siska Jaya', '083191277599', 'daniasiskanofri@gmail.com', 'Kp,Jambu(Batu-BAsa) Kabupaten Padang Pariaman IV Koto Aurmalintang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jurusan` (`id_jurusan`,`id_prodi`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
