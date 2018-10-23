-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Okt 2018 pada 03.59
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsiwildan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_tlp` int(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nik`, `nama_admin`, `password`, `alamat`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_tlp`, `foto`, `level`) VALUES
(1, 14151, 'Muhammad Wildan Fathoni', 'wildanhaifa', 'Bintaro', 'Ceger', '28/07/1995', 'Laki-Laki', 'Islam', 506488557, 'Wildan.jpg', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(10) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_tlp` int(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nik`, `nama_guru`, `password`, `alamat`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_tlp`, `foto`, `level`) VALUES
(1, 24151, 'Syarifuddin, S. Ag', 'syarif123', 'Bintaro', 'Ceger', '28/07/1995', 'Laki-Laki', 'Islam', 506488557, 'Syarif.jpg', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `id_matpel` int(10) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam_pelajaran` varchar(20) NOT NULL,
  `id_guru` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_kelas`, `id_matpel`, `hari`, `jam_pelajaran`, `id_guru`) VALUES
(1, 1, 1, 'Sabtu', '07:00 - 08:20', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(10) NOT NULL,
  `id_guru` int(10) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_guru`, `nama_kelas`) VALUES
(1, 1, 'VII - 1'),
(2, 2, 'VII - 2'),
(3, 3, 'VII - 3'),
(4, 4, 'VII - 4'),
(5, 5, 'VIII - 1'),
(6, 6, 'VIII - 2'),
(7, 7, 'VIII - 3'),
(8, 8, 'VIII - 4'),
(9, 9, 'XI - 1'),
(10, 10, 'XI - 2'),
(11, 11, 'XI - 3'),
(12, 12, 'XI - 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `id_matpel` int(10) NOT NULL,
  `nama_matpel` varchar(20) NOT NULL,
  `kkm` int(2) NOT NULL,
  `id_guru` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matapelajaran`
--

INSERT INTO `matapelajaran` (`id_matpel`, `nama_matpel`, `kkm`, `id_guru`) VALUES
(1, 'Bahasa Arab', 70, 1),
(2, 'Bahasa Arab', 70, 15),
(3, 'Bahasa Indonesia', 70, 2),
(4, 'Bahasa Indonesia', 70, 4),
(5, 'Al-Qur\'an Hadits', 70, 3),
(6, 'Al-Qur\'an Hadits', 70, 4),
(7, 'Aqidah Akhlak', 70, 5),
(8, 'SBK', 70, 6),
(9, 'PKN', 70, 7),
(10, 'Bahasa Inggris', 70, 8),
(11, 'Bahasa Inggris', 70, 14),
(12, 'Bahasa Inggris', 70, 18),
(13, 'SKI', 70, 9),
(14, 'SKI', 70, 10),
(15, 'IPS', 70, 11),
(16, 'Fiqih', 70, 12),
(17, 'Penjaskes', 70, 13),
(18, 'IPA', 70, 16),
(19, 'IPA', 70, 19),
(20, 'MTK', 70, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(10) NOT NULL,
  `id_guru` int(10) NOT NULL,
  `id_matpel` int(10) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `nis` int(10) NOT NULL,
  `nilaitugas1` int(3) NOT NULL,
  `nilaitugas2` int(3) NOT NULL,
  `nilai_uts` int(3) NOT NULL,
  `nilai_uas` int(3) NOT NULL,
  `nilai_akhir` int(3) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_guru`, `id_matpel`, `tahun_ajaran`, `semester`, `id_kelas`, `nis`, `nilaitugas1`, `nilaitugas2`, `nilai_uts`, `nilai_uas`, `nilai_akhir`, `keterangan`) VALUES
(1, 1, 1, '2018/2019', 'Ganjil', 1, 1, 100, 100, 100, 100, 100, 'Lanjutkan!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `nis` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `jumlah_bayar` int(10) NOT NULL,
  `tipe_bayar` varchar(30) NOT NULL,
  `periode_bayar` varchar(50) NOT NULL,
  `inputTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_tatausaha` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `nis`, `id_kelas`, `jumlah_bayar`, `tipe_bayar`, `periode_bayar`, `inputTime`, `id_tatausaha`) VALUES
(1, 1, 1, 150000, 'SPP', 'Oktober', '2018-10-19 09:30:22', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_masuk` int(10) NOT NULL,
  `username` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(10) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_masuk`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 14151, 'wildanhaifa', 'Muhammad Wildan Fathoni', 1, 'Wildan.jpg'),
(2, 24151, 'syarif123', 'Syarifuddin, S. Ag', 2, 'Syarif.jpg'),
(3, 34151, 'wildanhaifa', 'Muhammad Wildan Fathoni', 3, 'Wildan.jpg'),
(4, 44151, 'wildanhaifa', 'Muhammad Wildan Fathoni', 4, 'Wildan.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL,
  `nis` int(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_tlp` int(20) NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `password`, `alamat`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_tlp`, `id_kelas`, `foto`, `level`) VALUES
(1, 34151, 'Muhammad Wildan Fathoni', 'wildanhaifa', 'Bintaro', 'Ceger', '28/07/1995', 'Laki-Laki', 'Islam', 506488557, '1', 'Wildan.jpg', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tatausaha`
--

CREATE TABLE `tatausaha` (
  `id_tatausaha` int(10) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama_tatausaha` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tmp_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `no_tlp` int(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tatausaha`
--

INSERT INTO `tatausaha` (`id_tatausaha`, `nik`, `nama_tatausaha`, `password`, `alamat`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_tlp`, `foto`, `level`) VALUES
(1, 44151, 'Muhammad Wildan Fathoni', 'wildanhaifa', 'Bintaro', 'Ceger', '28/07/1995', 'Laki-Laki', 'Islam', 506488557, 'Wildan.jpg', '4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_matpel` (`id_matpel`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas_2` (`id_kelas`),
  ADD KEY `id_matpel_2` (`id_matpel`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`id_matpel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_matpel` (`id_matpel`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `nis` (`nis`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_tatausaha` (`id_tatausaha`),
  ADD KEY `nis` (`nis`) USING BTREE;

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_masuk`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`,`id_kelas`,`nis`) USING BTREE;

--
-- Indeks untuk tabel `tatausaha`
--
ALTER TABLE `tatausaha`
  ADD PRIMARY KEY (`id_tatausaha`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `matapelajaran`
--
ALTER TABLE `matapelajaran`
  MODIFY `id_matpel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_masuk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tatausaha`
--
ALTER TABLE `tatausaha`
  MODIFY `id_tatausaha` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_matpel`) REFERENCES `matapelajaran` (`id_matpel`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
