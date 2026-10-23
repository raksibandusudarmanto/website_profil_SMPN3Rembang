-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 04:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `photo`) VALUES
(5, 'b901d7e14708a0d861e757c620b8f242.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `text`, `photo`) VALUES
(1, 'Pendidikan adalah kunci', '\"Pendidikan adalah kunci untuk membuka dunia, pintu menuju kebebasan.\" ', '426120fbcda3f4d71d1aa26826335933.jpg'),
(3, 'Pendidikan adalah jalan', ' \"Pendidikan adalah jalan menuju masa depan, karena besok dimulai dengan apa yang lakukan hari ini.\"', '6aac49b87eeaedd6701fa77aec55648f.jpg'),
(7, 'pendidikan adalah pegangan', 'pendidikan adalah pegangan utnuk masa depan', '17fb5b3c1f6bc63d5c959187f6f60b01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bg_majors`
--

CREATE TABLE `bg_majors` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bg_majors`
--

INSERT INTO `bg_majors` (`id`, `photo`) VALUES
(1, 'dd625abd0a093f80a06ccea76b3f769b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `photo`) VALUES
(3, 'Ruang Guru', 'ruang-guru-20231011201542.jpg'),
(4, 'Aula', 'aula-20231011201607.jpg'),
(5, 'Kelas 1', 'kelas-1-20231011201624.jpg'),
(6, 'Kelas 2', 'kelas-2-20231011201636.jpg'),
(9, 'Musholla', 'musholla-20231011201652.jpg'),
(11, 'Parkiran', 'parkiran-20231011201713.jpg'),
(12, 'ruang tamu', 'ruang-tamu-20231011201738.jpg'),
(13, 'Lapangan Upacara', 'lapangan-upacara-20231011201816.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `meta_title`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, '', 'SMP Negeri 3 Satu Atap Rembang merupakan salah satu Instansi Pendidikan tingkat menengah yang berada di Kabupaten Purbalingga tepatnya berada di Jalan Raya Pentul, Desa Gunungwuled, Kec. Rembang. SMP Negeri 3 Satu Atap Rembang didirikan pada tanggal 29 Septemner 2005 sesuai dengan SK pendirian sekolah nomor 421.2/025/ /51/1985 dengan NPSN 20356163. Penyelenggaraan pendidikan dilaksanakan pada pagi hari selama 6 hari dalam seminggu. Saat ini, SMP Negeri 3 Satu Atap Rembang terdiri dari 3 kelas yaitu kelas 7 sampai kelas 9', 'SMP Negeri 3 Satu Atap Rembang', '18efe02e7fcc5c6a4ee8c619e501a7d9.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Pengaturan Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 2, 'Agenda', 'jadwal', 'fas fa-fw fa-users', 'Y'),
(3, 2, 'Manajemen Media', '', 'fas fa-fw fa-school', 'Y'),
(4, 2, 'Struktur Organisasi', 'struktur', 'fas fa-fw fa-sitemap', 'Y'),
(5, 1, 'Manajemen User', 'user', 'fas fa-fw fa-user', 'Y'),
(6, 2, 'Profile', '', 'fas fa-fw fa-home', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `opening`
--

CREATE TABLE `opening` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opening`
--

INSERT INTO `opening` (`id`, `content`, `photo`) VALUES
(1, 'Sebagai lembaga pendidikan, SMPN 3 Satu Atap Rembang tanggap dengan perkembangan teknologi. Dengan dukungan SDM yang di miliki, sekolah ini siap untuk berkompetisi dengan sekolah lain dalam pelayanan informasi publik. Teknologi informasi web khususnya, menjadi sarana bagi SMPN 3 Satu Atap Rembang untuk memberi pelayanan informasi secara cepat, jelas, dan akuntable. Dari layanan ini pula, sekolah siap menerima saran dari semua pihak yang akhirnya dapat menjawab kebutuhan masyarakat.', '03a195ecaab4da2e40405a9b7edb851a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `seo_title`, `content`, `photo`, `is_active`, `date`) VALUES
(2, 'BAKSOS (bersih-bersih jalan)', 'baksos-bersih-bersih-jalan', 'Program Bakti Sosial (Baksos) \"Bersih-bersih Jalan\" adalah inisiatif yang menggabungkan elemen-elemen kebersihan dan kepedulian sosial. Program ini bertujuan untuk menjaga kebersihan lingkungan, seperti jalan-jalan umum, serta menggalang kesadaran tentang pentingnya merawat lingkungan di antara warga. Program Baksos \"Bersih-bersih Jalan\" bukan hanya memperbaiki lingkungan fisik, tetapi juga mengajarkan nilai-nilai tanggung jawab sosial, kebersihan, dan perawatan lingkungan. Ini juga dapat memperkuat rasa kebersamaan dan kepedulian sosial di antara anggota komunitas setempat.', '-20231011172742.jpeg', 'Y', '2023-12-14'),
(3, 'Jumat Religi', 'jumat-religi', 'Program Jumat Religi di SMP Negeri 3 Satu Atap Rembang adalah inisiatif yang bertujuan untuk meningkatkan pemahaman dan praktik agama, serta nilai-nilai keagamaan di kalangan siswa. Program ini dapat berfungsi sebagai wadah untuk pendalaman ajaran agama, refleksi spiritual, dan membangun komunitas keagamaan yang kuat di sekolah. Program Jumat Religi  dapat menjadi wadah yang bermanfaat untuk memahami, menghormati, dan mempraktikkan nilai-nilai agama dalam kehidupan sehari-hari. Hal ini juga dapat membantu siswa mengembangkan pemahaman yang lebih mendalam tentang agama, moral, dan etika yang mereka yakini.', '-20231011172824.jpeg', 'Y', '2023-10-11'),
(4, 'Galang Dana', 'galang-dana', 'Program penggalangan dana adalah inisiatif yang dapat digunakan untuk mengumpulkan dana untuk tujuan tertentu, seperti, keluarga, atau terjadi musibah, Tujuan dari penggalangan dana bantuan adalah untuk menyediakan bantuan finansial atau sumber daya lainnya kepada individu, keluarga, atau komunitas yang membutuhkan dalam situasi-situasi tertentu', '-20231011172834.jpeg', 'Y', '2023-10-11'),
(5, 'Jumat Literasi', 'jumat-literasi', 'Program Jumat Literasi di SMP Negeri 3 Satu Atap Rembang adalah inisiatif yang bertujuan untuk mempromosikan minat membaca dan meningkatkan keterampilan literasi siswa di sekolah. Program ini dapat membantu siswa memahami dan mengapresiasi literatur, serta meningkatkan kemampuan membaca, menulis, dan berbicara. Program Jumat Literasi ini dapat membantu mengembangkan minat membaca siswa, meningkatkan keterampilan literasi mereka, dan memberikan pemahaman yang lebih mendalam tentang dunia literatur. Selain itu, program ini dapat memberikan kesempatan bagi siswa untuk berpartisipasi aktif dalam kegiatan literasi yang mendukung perkembangan akademik dan pribadi mereka.', '-20231011172924.jpeg', 'Y', '2023-10-11'),
(6, 'PILKETOS(pilihan ketua OSIS)', 'pilketos-pilihan-ketua-osis', 'Memilih ketua OSIS (Organisasi Siswa Intra Sekolah) di SMP Negeri 3 Satu Atap Rembang adalah proses yang penting dalam kehidupan sekolah, karena ketua OSIS memiliki tanggung jawab besar dalam memimpin organisasi siswa dan mempengaruhi pengambilan keputusan di sekolah. Program pemilihan ketua OSIS adalah kesempatan bagi siswa untuk belajar tentang demokrasi, kepemimpinan, dan partisipasi aktif dalam kehidupan sekolah. Dengan melaksanakan program ini secara transparan dan adil, sekolah dapat memastikan bahwa siswa memiliki peran penting dalam pengambilan keputusan di lingkungan sekolah mereka.', '-20231011173109.jpg', 'Y', '2023-10-11'),
(7, 'Pengelolaan Sampah', 'pengelolaan-sampah', 'Program pengelolaan sampah di SMP Negeri 3 Satu Atap Rembang adalah inisiatif yang bertujuan untuk meningkatkan kesadaran lingkungan siswa dan mempromosikan praktek pengelolaan sampah yang bertanggung jawab. Program semacam ini dapat membantu mengurangi dampak negatif sampah terhadap lingkungan dan memberikan pendidikan penting tentang pengelolaan sampah. Program pengelolaan sampah ini dapat membantu siswa memahami dampak dari pembuangan sampah sembarangan dan membiasakan mereka dengan praktek yang lebih berkelanjutan dan ramah lingkungan. Program ini juga dapat membantu sekolah menjadi lebih bersih, sehat, dan ramah lingkungan', '-20231011173133.jpeg', 'Y', '2023-10-11'),
(8, 'Jumat Bersih', 'jumat-bersih', 'Program Jumat Bersih di SMP Negeri 3 Satu Atap Rembang adalah inisiatif yang bertujuan untuk menjaga kebersihan dan keindahan sekolah serta mengajarkan siswa tentang tanggung jawab lingkungan. Program ini biasanya dilakukan pada hari Jumat, tetapi dapat disesuaikan dengan jadwal sekolah Program Jumat Bersih adalah salah satu cara yang baik untuk mempromosikan kebersihan dan kesadaran lingkungan di kalangan siswa SMP. Ini mengajarkan nilai-nilai tanggung jawab dan kerjasama, serta membantu menciptakan lingkungan yang lebih bersih dan nyaman di sekolah', '-20231011173156.jpeg', 'Y', '2023-10-11'),
(15, 'bersih-bersih', 'bersih-bersih', 'bersih berish sekolah', 'bersih-bersih-20231214023737.jpeg', 'Y', '2023-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `structure`
--

CREATE TABLE `structure` (
  `id` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `structure`
--

INSERT INTO `structure` (`id`, `photo`) VALUES
(1, '11d87b11cd74583597ddf40baca0780f.png');

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenus`
--

INSERT INTO `submenus` (`id`, `menu_id`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'identitas', 'Y'),
(2, 1, 'Sambutan', 'sambutan', 'Y'),
(3, 3, 'Banner', 'banner', 'Y'),
(4, 3, 'Fasilitas', 'fasilitas', 'Y'),
(5, 3, 'Berita', 'berita', 'Y'),
(6, 3, 'Background Ekstrakulikuler', 'background', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$pfe4X24wUalRwJseC96pLOh2FshRtmYVNRhS8eLTKCSv9KVXRWxBy', 'admin@mail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1705980849, 1, 'raksi', 'bandu s', NULL, '081222332442'),
(3, '::1', 'raksi@ump.ac.id', '$2y$12$TQd8JKgo7q.7/n0r17s0B.7QWwF.3U4M2KxmgYcv5FFpk3am684PW', 'raksi@mail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1697743015, 1702399279, 1, 'raksi', 'bandu', NULL, '091390937247'),
(5, '::1', 'raksibandusudarmanto257@gmail.com', '$2y$12$YvyEHlI6umcD5AzQ4iUwnOhCZOhHzfCMYkk8lZTkzQBdOAYGVuEoi', 'raksibandusudarmanto257@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1702510654, 1702510701, 1, 'bandu', 'sudarmanto', NULL, '081390937247'),
(6, '::1', 'raksibandu@gmail.com', '$2y$12$ghgjLsWNtL.KgKQTgxH7lefvNNydfm27.NZRpCD9xVnpZtghv26Ai', 'raksibandu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1702518012, 1702518106, 1, 'raksi', 'bandu', NULL, '08139093765');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(43, 1, 1),
(44, 1, 2),
(49, 3, 1),
(50, 3, 2),
(54, 5, 1),
(55, 5, 2),
(57, 6, 1),
(58, 6, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bg_majors`
--
ALTER TABLE `bg_majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening`
--
ALTER TABLE `opening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structure`
--
ALTER TABLE `structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bg_majors`
--
ALTER TABLE `bg_majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `opening`
--
ALTER TABLE `opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `structure`
--
ALTER TABLE `structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `submenus`
--
ALTER TABLE `submenus`
  ADD CONSTRAINT `submenus_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
