-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2026 at 03:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdailyjournal`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Perpustakaan', 'Apabila anda membutuhkan inspirasi atau motivasi munngkin bisa dibaca - baca buku di sini.', 'perpus.jpg', '2023-12-13 13:29:28', 'admin'),
(2, 'Kelas Bersama', 'Tempat untuk berkumpul dan hang out dengan teman - teman.', 'kelas.jpg', '2023-12-15 13:29:28', 'admin'),
(3, 'Konsultasi Kelompok', 'Apabila kamu mencari teman dengan perasaan yang kira - kira sama seperti dirimu bisa bergabung disini', 'grup.jpg', '2024-12-10 13:34:45', 'admin'),
(4, 'Konsultasi', 'Jika kamu memliki pendaman emosi yang tidak bisa diceritakan ke siapa - siapa, mungkin bisa dimulai dari sini.', 'konsultasi.jpg', '2024-12-19 13:34:45', 'admin'),
(5, 'Q & A', 'Kalian memiliki pertanyaan apapun dan seabsurd apapun, Kami memiliki jawabannya', 'q&a.jpg', '2025-12-08 13:34:45', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `history_chat`
--

CREATE TABLE `history_chat` (
  `id` int(11) NOT NULL,
  `pesan_user` text DEFAULT NULL,
  `respon_ai` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history_chat`
--

INSERT INTO `history_chat` (`id`, `pesan_user`, `respon_ai`, `tanggal`) VALUES
(1, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:03:53'),
(2, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:00'),
(3, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:00'),
(4, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:04'),
(5, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:05'),
(6, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:05'),
(7, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:05'),
(8, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:05'),
(9, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:05'),
(10, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:06'),
(11, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:06'),
(12, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:06'),
(13, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:07'),
(14, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:07'),
(15, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:07'),
(16, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:12'),
(17, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:12'),
(18, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:12'),
(19, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:12'),
(20, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:13'),
(21, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:04:13'),
(22, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:05:14'),
(23, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:05:14'),
(24, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:09:07'),
(25, 'Coba berikan aku contoh kegiatan yang harus aku lakukan hari ini?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:09:46'),
(26, 'Coba berikan aku contoh kegiatan yang harus aku lakukan hari ini?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:09:59'),
(27, 'Kegiatan hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:13:58'),
(28, 'Enaknya hari ini ngapain ya?', 'Coba hari ini fokus pada satu hal penting dan beri reward kecil untuk dirimu ?', '2026-01-07 10:17:16'),
(29, 'Enaknya hari ini ngapain ya?', 'Tetap semangat menjalani hari ini ?', '2026-01-07 10:28:14'),
(30, 'Ide hari ini dong', 'Tetap semangat menjalani hari ini ?', '2026-01-07 10:29:32'),
(31, 'Enaknya hari ini ngapain ya?', 'Tetap semangat menjalani hari ini ?', '2026-01-07 10:31:28'),
(32, 'Berikan rencana hari ini enaknya ngapain', 'Tetap semangat menjalani hari ini ?', '2026-01-07 10:45:54'),
(33, 'Berikan rencan hari ini', 'Tetap semangat menjalani hari ini ?', '2026-01-07 10:46:31'),
(34, 'Hari ini enaknya ngapain?', 'Tetap semangat menjalani hari ini ?', '2026-01-07 10:49:08'),
(35, 'Hari ini enaknya ngapain', 'Tetap semangat menjalani hari ini ?', '2026-01-07 10:50:44'),
(36, 'Kegiatan hari ini apa?', 'Tetap semangat menjalani hari ini ?', '2026-01-07 10:55:18'),
(37, 'Kegiatan hari ini apa?', 'Tetap semangat menjalani hari ini ?', '2026-01-07 11:06:51'),
(38, 'Hari enaknya apa', 'Tetap semangat menjalani hari ini ?', '2026-01-07 11:07:39'),
(39, 'Hari ini ngapain?', 'Tetap semangat menjalani hari ini ?', '2026-01-07 11:11:06'),
(40, 'Hari ini enaknya ngapain?', 'Tetap semangat menjalani hari ini ?', '2026-01-07 11:13:11'),
(41, 'Sebaiknya ngapain?', 'Tetap semangat menjalani hari ini ?', '2026-01-07 11:15:06'),
(42, 'Berikan saran hari ini', 'Tetap semangat menjalani hari ini ?', '2026-01-07 11:18:34'),
(43, 'Saran kegiatan hari ini dong', 'Tetap semangat menjalani hari ini ?', '2026-01-08 08:54:02'),
(44, 'Saran hari ini', 'Tetap semangat menjalani hari ini ?', '2026-01-08 08:55:41'),
(45, 'Saran hari ini', 'Tetap semangat menjalani hari ini ?', '2026-01-08 09:08:25'),
(46, 'enaknya hari ini ngapain?', 'Tetap semangat menjalani hari ini ?', '2026-01-08 09:15:10'),
(47, 'Kegiatan hari ini enaknya apa?', 'Tetap semangat menjalani hari ini ?', '2026-01-08 09:16:09'),
(48, 'Saran dong', 'Halo! Bagaimana kalau hari ini kamu coba luangkan waktu sebentar untuk berjalan kaki di sekitar rumah atau melakukan peregangan ringan? Aktivitas sederhana ini bisa menyegarkan pikiran dan memberi energi positif untuk memulai harimu dengan semangat baru! Yuk dicoba!', '2026-01-08 09:17:32'),
(49, 'Enakknya hari ini ngapain ya', 'Wah, hari ini kesempatan sempurna untuk melakukan sesuatu yang menyenangkan! Bagaimana kalau kita mencoba hal baru yang sudah lama ingin kamu lakukan, atau sekadar menikmati waktu santai dengan hobi favoritmu? Apapun pilihanmu, semoga hari ini penuh kebahagiaan dan energimu tetap semangat!', '2026-01-08 09:18:06'),
(50, 'Saran hari ini', 'Halo! Untuk hari ini, yuk coba luangkan waktu sejenak untuk merapikan satu sudut kecil di rumahmu. Setelah itu, berikan dirimu hadiah dengan secangkir minuman hangat dan baca buku atau dengarkan musik kesukaanmu. Langkah kecil ini bisa membawa ketenangan dan semangat baru untuk hari yang indah! Semangat!', '2026-01-08 09:19:12'),
(51, 'Enaknya hari ini ngapain ya', 'Halo! Hari ini adalah kesempatan emas untuk melakukan sesuatu yang menyenangkan. Bagaimana kalau kamu mencoba mengeksplorasi hobi baru atau menyelesaikan proyek kecil yang sudah lama tertunda? Apapun pilihanmu, nikmati setiap momennya dan buat hari ini istimewa!', '2026-01-08 09:23:22'),
(52, 'Saran dong', 'Tentu saja! Untuk hari ini, bagaimana kalau kita mulai dengan minum segelas air putih besar dan melakukan peregangan ringan selama 5-10 menit? Kebiasaan kecil ini sangat ampuh untuk menyegarkan tubuh dan pikiranmu, lho. Dijamin kamu akan merasa lebih siap dan bersemangat menjalani aktivitasmu! Selamat mencoba!', '2026-01-08 10:10:07'),
(53, 'Saran kegiatan hari ini', 'Halo! Semoga harimu menyenangkan hari ini. Coba luangkan waktu untuk hal yang kamu sukai, seperti membaca buku atau menikmati secangkir teh hangat dengan tenang. Jangan lupa bergerak dan rasakan energi positif di setiap momennya, ya!', '2026-01-11 20:18:06'),
(54, 'Enaknya hari ini ngapain?', 'Wah, hari ini adalah kesempatan sempurna untuk melakukan sesuatu yang menyenangkan! Mungkin kamu bisa mencoba resep baru, membaca buku yang sudah lama antre, atau sekadar berjalan-jalan santai menikmati udara segar. Apapun pilihanmu, semoga harimu penuh kebahagiaan dan semangat!', '2026-01-11 21:10:58'),
(55, 'Berikan saran kegiatan hari ini', 'Halo! Hari ini adalah kesempatan luar biasa untuk merawat diri dan mencoba hal baru. Bagaimana kalau kita mulai dengan sedikit olahraga ringan untuk menyegarkan badan, lalu lanjutkan dengan membaca buku atau mempelajari sesuatu yang selalu ingin kamu kuasai? Pasti akan membuat harimu lebih bermakna dan menyenangkan! Semangat!', '2026-01-11 21:23:38'),
(56, 'enaknya ngapain ya', 'Wah, pas sekali nih! Bagaimana kalau hari ini kamu mencoba melakukan sesuatu yang membuat hatimu senang dan rileks? Entah itu membaca buku, mendengarkan musik, atau sekadar menikmati secangkir teh hangat. Semangat, ya, semoga harimu menyenangkan!', '2026-01-12 11:13:38'),
(57, 'Saran dong hari ini', 'Tetap semangat menjalani hari ini ?', '2026-01-12 11:20:01'),
(58, 'Saran kegiatan', 'Tetap semangat menjalani hari ini ?', '2026-01-12 11:25:05'),
(59, 'Saran kegiatan', 'Tentu! Bagaimana kalau hari ini kita coba fokus pada **kesejahteraan diri dan sedikit eksplorasi baru**?\n\nMulailah dengan meluangkan 15-30 menit untuk kegiatan yang kamu nikmati, seperti membaca buku, mendengarkan musik favorit, atau berjalan-jalan singkat. Setelah itu, tantang dirimu untuk mencoba hal baru yang kecil, misalnya resep minuman yang berbeda atau mempelajari satu fakta menarik. Ini akan menyegarkan pikiranmu dan membuat harimu terasa lebih istimewa!', '2026-01-12 11:28:13'),
(60, 'saran hari ini', 'Hai! Selamat pagi! ? Untuk hari ini, bagaimana kalau kamu mencoba hal baru atau melanjutkan hobi yang sempat tertunda? Luangkan waktu sejenak untuk kreativitas atau belajar sesuatu yang menarik, pasti akan menyenangkan. Semangat ya, semoga harimu penuh inspirasi dan kebahagiaan! ?', '2026-01-12 11:45:28'),
(61, 'Enaknya main pubg atau main dota', 'Wah, keduanya game keren yang seru banget! Kalau kamu suka adu tembak yang intens dan bertahan hidup di medan perang, PUBG bisa jadi pilihan yang pas. Namun, jika kamu lebih suka strategi tim yang mendalam dan pertarungan heroik dengan hero-hero unik, Dota adalah jawabannya. Yang terpenting, pilihlah yang paling membuatmu senang dan bersemangat untuk bermain!', '2026-01-12 11:46:01'),
(62, 'Enaknya hari ini ngapain ya', 'Selamat pagi! Bagaimana kalau hari ini kamu mencoba hal baru yang menyenangkan atau menyelesaikan satu hal yang sudah lama tertunda? Apapun pilihanmu, nikmati setiap momennya dan rasakan kepuasan di akhir hari. Kamu pasti bisa!', '2026-01-12 13:30:45'),
(63, 'Saran hari ini', 'Halo! Untuk hari ini, bagaimana kalau kita luangkan waktu sejenak untuk merenung dan bersyukur? Coba tuliskan tiga hal kecil yang paling kamu syukuri hari ini, sekecil apa pun itu. Pasti harimu akan terasa lebih ringan, positif, dan penuh semangat baru! Yuk, coba sekarang!', '2026-01-12 15:08:17'),
(64, 'Enaknya ngapain?', 'Wah, sepertinya hari ini cocok untuk mencoba hal baru yang menyenangkan! Bagaimana kalau kamu mencari ide resep masakan, mencoba melukis, atau sekadar jalan-jalan di tempat yang belum pernah dikunjungi? Pasti seru dan bisa membuat harimu lebih berwarna! Yuk, semangat!', '2026-01-12 15:09:29'),
(65, 'Mendung nih enaknya ngapain?', 'Wah, mendung memang paling pas untuk bersantai dengan nyaman di rumah! Kamu bisa menikmati waktu membaca buku favorit, menonton film seru, atau membuat minuman hangat. Manfaatkan suasana tenang ini untuk mengisi ulang energimu dan melakukan hal-hal yang membuatmu bahagia. Semangat!', '2026-01-12 15:17:52'),
(66, 'Mendung nih enaknya ngapain?', 'Wah, mendung memang paling pas untuk menghabiskan waktu dengan santai dan nyaman di rumah! Kamu bisa menikmati secangkir teh hangat sambil membaca buku favorit, atau maraton serial kesukaanmu. Jangan lupa siapkan camilan enak biar makin betah dan harimu tetap ceria, ya!', '2026-01-12 15:20:44'),
(67, 'Sedang hujan enaknya ngapain ya?', 'Tetap semangat menjalani hari ini ?', '2026-01-12 15:21:37'),
(68, 'Sedang hujan enaknya ngapain ya?', 'Wah, kalau hujan memang paling enak bersantai di dalam rumah! Kamu bisa baca buku favorit sambil ditemani secangkir teh hangat, atau mungkin menonton film seru yang sudah lama ingin kamu tonton. Manfaatkan waktu ini untuk me time yang menenangkan dan membuatmu nyaman, ya!', '2026-01-12 15:22:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', ''),
(2, 'bagas', 'e10adc3949ba59abbe56e057f20f883e', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_chat`
--
ALTER TABLE `history_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history_chat`
--
ALTER TABLE `history_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
