-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 07:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `id_post`, `id_user`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Mantap', '2024-01-23 22:20:40', '2024-01-23 22:20:40'),
(2, 1, 2, 'to ganjel too....', '2024-01-24 06:50:52', '2024-01-24 06:50:52'),
(3, 2, 18, 'Dalam sebuah paragraf hanya akan ada satu ide pokok, dimana ide pokok ini berada pada kalimat utama dalam paragraf tersebut. Tetapi pada teks tersebut, awal kalimat tidak menunjukkan adanya ide pokok pada teks tersebut', '2024-01-24 23:35:17', '2024-01-24 23:35:17'),
(4, 2, 19, 'ketika duduk di bangku sd', '2024-01-24 23:35:49', '2024-01-24 23:35:49'),
(5, 2, 16, 'ide pokok dari teks tersebut adalah perjalanan penulis dalam menemukan dan mendefinisikan kesuksesan sepanjanh hidupnya dari awal sekolah dasar hingga sekolah menengah', '2024-01-24 23:36:22', '2024-01-24 23:36:22'),
(6, 3, 18, 'Indonesia sebagai salah satu negara dengan intensitas gempa sangat tinggi memaksa segala infrastruktur yang ada harus lebih aman terhadap gempa.', '2024-01-24 23:36:27', '2024-01-24 23:36:27'),
(7, 2, 20, 'di paragraf pertama, kalimat ketiga', '2024-01-24 23:38:14', '2024-01-24 23:38:14'),
(8, 2, 14, 'Ide pokok yang saya dapatkan dari teks tersebut adalah  pengalaman hidup seseorang dari mulai ia duduk di bangku SD hingga SMA dan kegiatannya selama di sekolah(Untuk mendaftar beasiswa LPDP) .', '2024-01-24 23:39:05', '2024-01-24 23:39:05'),
(9, 3, 19, 'indonesia adalah salah satu negara dengan intensitas gempa tinggi memaksa segala infrastruktur  yang ada harus aman dari gempa', '2024-01-24 23:39:26', '2024-01-24 23:39:26'),
(10, 3, 16, 'menurut saya ide pokok dari teks ini adalah pentingnya penggunaan material ringan pada bangunan non-enginnered upaya mewujudkan infrastruktur tahan gempa di Indonesia', '2024-01-24 23:40:07', '2024-01-24 23:40:07'),
(11, 2, 14, 'Pesan moral yang bisa saya tangkap dari teks tersebut adalah kesuksesan seseorang tidak selalu diraih dengan menempati tempat nomor satu atau pertama. Pengalaman yang berharga dan juga dampak nyata yang kita lakukan untuk meraih kesuksesan.', '2024-01-24 23:41:29', '2024-01-24 23:41:29'),
(12, 3, 7, 'Peraturan dan standar yang berlaku tentang ketahanan', '2024-01-24 23:41:36', '2024-01-24 23:41:36'),
(13, 3, 7, 'Peraturan dan standar yang berlaku tentang ketahanan gempa pada dasarnya ditujukan untuk meminimalisir korban jiwa', '2024-01-24 23:44:07', '2024-01-24 23:44:07'),
(14, 2, 23, 'sistem pendidikan dan kebijakan pembelajaran di indonesia yang menghambat siswanya untuk berkembang', '2024-01-24 23:44:08', '2024-01-24 23:44:08'),
(15, 3, 20, 'ada di paragraf pertama, kalimat kedua', '2024-01-24 23:45:52', '2024-01-24 23:45:52'),
(16, 4, 16, 'Kesimpulan dari teks ini adalah bahwa kesuksesan bukan hanya tentang mendapatkan nilai tertinggi atau menjadi nomor satu di kelas, tetapi juga tentang usaha yang kita lakukan, menghargai apa yang kita dapatkan, dan berkontribusi pada masyarakat.', '2024-01-24 23:46:06', '2024-01-24 23:46:06'),
(17, 3, 23, 'peraturan dan ketentuan tentang standar bangunan tahan gempa di indonesia', '2024-01-24 23:46:32', '2024-01-24 23:46:32'),
(18, 2, 7, 'Tujuan kegiatan pencinta alam bukan hanya menaklukkan puncak, melainkan membangkitkan kecintaan kepada alam dan turut serta melestarikan', '2024-01-24 23:47:33', '2024-01-24 23:47:33'),
(19, 3, 14, 'Ide pokok yang saya temukan dari teks tersebut adalah Usaha mewujudkan infrastruktur tahan gempa di Indonesia yang rawan ancaman gempa dengan menggunakan material ringan pada bangunan non-enginnered.', '2024-01-24 23:47:38', '2024-01-24 23:47:38'),
(20, 2, 11, 'Ide pokok dalam teks berikut adalah narasi hidup dan jalan sukses seseorang. Teks esai ini memberikan gambaran hidup penulis dari bangku SD sampai si penulis melaksanakan kuliah.', '2024-01-24 23:49:06', '2024-01-24 23:49:06'),
(21, 3, 11, 'Ide pokok pada teks esai berikut adalah upaya penanggulangan isu gempa di kawasan rawan gempa dengan menggunakan material ringan pada bangunan non-engineered.', '2024-01-24 23:50:58', '2024-01-24 23:50:58'),
(22, 4, 14, 'Kesimpulan yang bisa saya dapatkan dari teks tersebut adalah kesuksesan tidak selalu didapatkan dengan menempati posisi pertama dan dilambangkan oleh sebuah angka. Tapi, melakukan kontribusi yang berdampak nyata pada sekitar dan membuat kenangan yang berharga.', '2024-01-24 23:51:34', '2024-01-24 23:51:34'),
(23, 2, 22, 'Ide pokok di atas menceritakan pengalaman berada di sekolah dari bangku SD sampai SMA', '2024-01-24 23:51:40', '2024-01-24 23:51:40'),
(24, 5, 16, 'Penggunaan material ringan pada bangunan non-engineered dianggap sebagai upaya untuk mewujudkan infrastruktur tahan gempa di Indonesia. Meskipun peraturan untuk ketahanan gempa ditujukan pada bangunan publik, standarisasi sulit dilakukan untuk bangunan milik pribadi. Sebagian besar kerusakan dan korban jiwa pada gempa di Indonesia berasal dari bangunan non-engineered, terutama rumah warga yang tidak didesain dengan baik.', '2024-01-24 23:52:06', '2024-01-24 23:52:06'),
(25, 4, 7, 'Kesimpulan dari teks ini adalah bahwa di balik semua kegiatan sosial tersebut, terdapat pegunungan yang hijau yang akan membawa keuntungan bagi umat manusiat', '2024-01-24 23:52:16', '2024-01-24 23:52:16'),
(26, 4, 23, 'kesuksesan bukan hanya tentang nilai tertinggi atau memiliki uang yang banyak tetapi bagaimama menjadi berguna bagi sesama manusia dan berguna bagi pembangunan di indonesia', '2024-01-24 23:52:28', '2024-01-24 23:52:28'),
(27, 4, 19, 'jadi kesimpulan yang saya ambil ada seorang anak yang merasa dirinya gagal dalam ke suksessan dikarna kan tidak mendapatkan rengking kelas namun orang tuanya menasehatinya bawasannya kesuksesan itu bukan di tunjukan dari rengking kelas namun seberapa besar kita usahakan', '2024-01-24 23:52:28', '2024-01-24 23:52:28'),
(28, 4, 20, 'Kesuksesan hidup saya tidak hanya terukur dari prestasi akademis, melainkan juga dari kontribusi positif dalam kegiatan sosial seperti pramuka dan pecinta alam. Melalui pengalaman ini, saya belajar nilai-nilai gotong royong, kecintaan pada alam, dan pelestarian budaya. Kesuksesan sejati bagi saya adalah memberikan dampak positif pada masyarakat dan lingkungan, menciptakan keseimbangan antara prestasi individu dan kontribusi untuk kebaikan bersama.', '2024-01-24 23:53:55', '2024-01-24 23:53:55'),
(29, 4, 11, 'Kesimpulan yang saya dapatkan dari esai berikut adalah bahwa kesuksesan yang sejati dapat diraih dengan upaya yang besar dan keinginan yang tinggi. Kesuksesan juga adalah menghargai hasil dari perjuangan kita meskipun hal itu tidak sesuai dengan keinginan.', '2024-01-24 23:55:17', '2024-01-24 23:55:17'),
(30, 5, 23, 'penggunaan material ringan bangunan untuk mewujudkan infrastruktur tahan gempa di indonesia', '2024-01-24 23:55:19', '2024-01-24 23:55:19'),
(31, 5, 19, 'penggunaan materia ringan pada bangunan non-enginneered dianggap sebagai upaya upaya untuk mewujudkan infrastruktur tahan gempa di indonesia', '2024-01-24 23:55:39', '2024-01-24 23:55:39'),
(32, 6, 23, 'teks pertama membahas topik berdasarkan pengalaman pribadi penulis', '2024-01-24 23:56:10', '2024-01-24 23:56:10'),
(33, 3, 22, 'Ide poko di atas aturan untuk pembangunan di Indonesia yang rawan gempar untuk meminimalisir Korban jiwa', '2024-01-24 23:56:27', '2024-01-24 23:56:27'),
(34, 7, 23, 'teks 2 membahas topik berdasarkan data dam fakta yang ada di indonesia', '2024-01-24 23:56:41', '2024-01-24 23:56:41'),
(35, 5, 14, 'Intensitas dan ancaman gempa yang tinggi menjadi alasan penggunaan material ringan pada bangunan non-engineered dilakukan untuk mewujudkan infrastruktur tahan gempa di Indonesia. Sebagian besar kerusakan dan korban jiwa pada gempa di Indonesia didominasi oleh bangunan non-engginered.', '2024-01-24 23:57:14', '2024-01-24 23:57:14'),
(36, 6, 19, 'teks pertama mebahas tentang dirinya merasa sukses karna mendapatkan rengking kelas', '2024-01-24 23:58:05', '2024-01-24 23:58:05'),
(37, 6, 19, 'teks pertama mebahas tentang dirinya merasa sukses karna mendapatkan rengking kelas', '2024-01-24 23:58:07', '2024-01-24 23:58:07'),
(38, 6, 19, 'teks pertama mebahas tentang dirinya merasa sukses karna mendapatkan rengking kelas', '2024-01-24 23:58:08', '2024-01-24 23:58:08'),
(39, 5, 7, 'Kesimpulannya,  warga perlu menerapkan konsep bangunan  tahan gempa ditujukan untuk meminimalisir korban jiwa dan kerugian material pada bangunan-bangunan publik', '2024-01-24 23:59:48', '2024-01-24 23:59:48'),
(40, 5, 20, 'menggunakan material ringan pada bangunan non-engineered untuk mengurangi terjadinya bangunan hancur karna gempa, karna Indonesia berada di daerah yang sering terjadinya gempa', '2024-01-25 00:00:00', '2024-01-25 00:00:00'),
(41, 7, 16, 'perbedaan dari teks ini adalah teks ke 2 lebih menjelaskan gagasan dalam sebuah penelitian', '2024-01-25 00:00:14', '2024-01-25 00:00:14'),
(42, 6, 14, 'Teks pertama merupakan sebuah esai personal/pribadi yang lebih menekankan kepada pengalaman dan pandangan dari seorang penulis sehingga cenderung lebih naratif dan menggunakan sudut pandang orang pertama ( kata \"Saya\" sebagai indikasi)', '2024-01-25 00:01:00', '2024-01-25 00:01:00'),
(43, 7, 19, 'teks 2 membahas topik tentang penangannan anti genpa', '2024-01-25 00:01:05', '2024-01-25 00:01:05'),
(44, 4, 22, 'Kesimpulan di atas bahwa peringkat satu di kelas bukan  suatu kesuksesan tapi seberapa keras kita berusaha', '2024-01-25 00:01:16', '2024-01-25 00:01:16'),
(45, 6, 16, 'perbedaan teks ini adalah teks pertama lebih menjelaskan tentang pengalaman pribadi nya dalam mendefinisikan sebuah kesuksesan', '2024-01-25 00:01:30', '2024-01-25 00:01:30'),
(46, 5, 11, 'Kesimpulan yang saya dapatkan dari teks berikut adalah, bahwa pembangunan non-engineered building adalah salah satu upaya yang cukup menjanjikan. Dengan mengurangi massa bangunan dan mengokohkan struktur dan posisi, bangunan dapat menjadi lebih tahan akan ancaman dari bencana seperti gempa.', '2024-01-25 00:01:47', '2024-01-25 00:01:47'),
(47, 6, 14, 'Teks pertama juga membahas pengalaman pribadi penulis semenjak ia duduk di bangku SD hingga bangku SMA dan segala kegiatannya pada masa sekolah.', '2024-01-25 00:01:57', '2024-01-25 00:01:57'),
(48, 6, 20, 'teks pertama membahas topik personalitas', '2024-01-25 00:02:41', '2024-01-25 00:02:41'),
(49, 4, 18, 'Kesuksesan terbesar adalah saat penerimaan rapor tiba. Karena pada saat itu menentukan peringkat yang diperoleh dari hasil pembelajaran selama duduk di bangku SD. Tetapi menjadi nomor satu bukan satu-satunya ukuran kesuksesan, melainkan tentang seberapa besar usaha yang sudah dilakukan. Kehidupan manusia bukan hanya tentang keberhasilan diri sendiri tetapi juga tentang berguna bagi sesama dan berdampak bagi kemakmuran bangsa dan negara. Kita harus mensyukuri apa yang kita dapatkan dari hasil usaha tersebut.', '2024-01-25 00:03:58', '2024-01-25 00:03:58'),
(50, 7, 11, 'Berbeda dengan teks pertama, teks ini adalah teks yang membahas sebuah solusi dari suatu masalah, dalam hal ini menanggulangi dan mengurangi dampak gempa terhadap bangunan non-engineered.', '2024-01-25 00:04:06', '2024-01-25 00:04:06'),
(51, 7, 14, 'Teks esai kedua menekankan tentang suatu gagasan dan ide dari sudut pandang orang ketiga. Teks kedua juga menambahkan data dan juga gagasan yang dikutip dari sumber lain. Sehingga, teks ini mengandung fakta dan juga didukung data.', '2024-01-25 00:04:51', '2024-01-25 00:04:51'),
(52, 6, 11, 'Teks ini merupakan salah satu teks esai yang menceritakan narasi hidup seseorang.', '2024-01-25 00:05:00', '2024-01-25 00:05:00'),
(53, 7, 20, 'teks 2 membahas tentang bagaimana tentang gempa yang sering terjadi di indonesia dan membahas penggunaan material ringan pada bangunan non-engineered untuk tahan terhadap gempa', '2024-01-25 00:05:54', '2024-01-25 00:05:54'),
(54, 7, 14, 'Teks ini mengandung istilah teknis dan berisi tentang upaya penggunaan material ringan pada bangunan non-engineered untuk mewujudkan infrastruktur tahan gempa di Indonesia.', '2024-01-25 00:06:24', '2024-01-25 00:06:24'),
(55, 7, 7, 'Teks 2 membahas tentang gempa', '2024-01-25 00:06:48', '2024-01-25 00:06:48'),
(56, 5, 22, 'Kesimpulan teks di atas adalah memujudkan insfastruktur tahan gempa dengan menggunakan material ringan pada teknik Non-Engineered, akan tetapi ini baru di awasi di banguan publik sedangkan di bangunan pribadi belum di awasi karena cakupan pengerjaan yang sangat luas', '2024-01-25 00:09:50', '2024-01-25 00:09:50'),
(57, 6, 22, 'Teks 1 membahas pengalaman pribadi', '2024-01-25 00:11:00', '2024-01-25 00:11:00'),
(58, 5, 18, 'Indonesia sebagai salah satu negara dengan intensitas gempa sangat tinggi memaksa segala infrastruktur yang ada harus lebih aman terhadap gempa. Pembangunan non-engineered building adalah salah satu upaya yang cukup menjanjikan. Selanjutnya, penerapan konsep redaman dan kekakuan pada struktur juga dapat dilakukan untuk menambah tingkat ketahanan gempa pada bangunan misalnya dengan penambahan bracing dan perkuatan pada sambungan balok kolom bangunan. Penerapan konsep redaman dan kekakuan pada bangunan tentunya dapat disesuaikan dengan peruntukan bangunan dengan meninjau aspek ekonomis dari bangunan.', '2024-01-25 00:11:25', '2024-01-25 00:11:25'),
(59, 2, 26, 'ide pokok pada paragraf ke dua adalah bahwa kesuksesan bukan hanya diukur dari peringkat di kelas, tetapi juga dari usaha yang dilakukan, rasa syukur terhadap hasil usaha, dan kontribusi positif terhadap orang lain dan budaya.', '2024-01-25 00:13:20', '2024-01-25 00:13:20'),
(60, 7, 22, 'Teks 2 membahas tentang cara meminimalisir atau mencegah korban jiwa dengan menggunakan material Non-Engineered pada bencana gempa', '2024-01-25 00:13:25', '2024-01-25 00:13:25'),
(61, 6, 18, 'Pada teks pertama menceritakan apa yang pernah terjadi / pengalaman yang pernah di alami oleh penulis.', '2024-01-25 00:14:14', '2024-01-25 00:14:14'),
(62, 7, 18, 'Menurut saya teks 2 berbera dengan teks 1, karena dalam sudut pandang nya saja sudah berbeda. Jika teks 2 membahas tentang “bagaimana solusi yang harus di lakukan untuk mengurangi dampak dari gempa”.', '2024-01-25 00:21:27', '2024-01-25 00:21:27'),
(63, 2, 30, 'Ide pokok dari paragraf pertama meliputi cerita pribadi dari penulis yang membahas keberhasilannya dalam meraih peringkat satu saat masa sekolah dasar.', '2024-01-25 00:25:31', '2024-01-25 00:25:31'),
(64, 2, 15, 'Teks tersebut menceritakan tentang perjalanan hidup seseorang yang pada awal', '2024-01-25 00:28:14', '2024-01-25 00:28:14'),
(65, 3, 15, 'Menjelaskan tentang peningnya rumah tahan gempa dan bagaimana struktur rumah dapat dibuat agar tahan gempa.', '2024-01-25 00:30:10', '2024-01-25 00:30:10'),
(66, 2, 12, 'Ide pokok pada paragraf 5 adalah kemampuan yang lebih baik dan pengetahuan yang lebih banyak akan membuahkan otoritas yang tinggi sehingga berdampak luas bagi masyarakat.', '2024-01-25 00:30:15', '2024-01-25 00:30:15'),
(67, 2, 28, 'Ide pokok paragraf kesatu adalah ketika duduk di bangku SD, penulis merasa kesuksesan terbesarnya yaitu saat menerima rapor karena ia mendapatkan peringkat pertama.', '2024-01-25 00:30:34', '2024-01-25 00:30:34'),
(68, 3, 30, 'Ide pokok dalam paragraf 2 adalah penerapan konsep bangunan tahan gempa juga perlu  diaplikasikan pada bangunan-bangunan sederhana, tentunya dengan konsep yang lebih  sederhana pula sehingga mudah diimplementasikan di masyarakat.', '2024-01-25 00:30:41', '2024-01-25 00:30:41'),
(69, 3, 28, 'Ide pokok pada paragraf ke tiga adalah gaya gempa pada bangunan dapat dijelaskan melalui persamaan yang melibatkan massa, redaman, dan kekakuan bangunan.', '2024-01-25 00:31:56', '2024-01-25 00:31:56'),
(70, 2, 29, 'ide pokok paragraf ke 2 yang bisa saya dapatkan adalah kesuksesan bisa mendapatkan kepuasan diri sendiri namun belum tentu berguna bagi oranglain', '2024-01-25 00:32:33', '2024-01-25 00:32:33'),
(71, 2, 3, 'Ide pokok dari paragraf dua', '2024-01-25 00:32:38', '2024-01-25 00:32:38'),
(72, 4, 15, 'Sukses pada setiap orang berbeda. Kita dapat menentukan titik sukses kita tanpa adanya patokan yang diberikan oleh orang lain.', '2024-01-25 00:32:59', '2024-01-25 00:32:59'),
(73, 2, 3, 'Ide pokok dari paragraf dua adalah kesuksesan tidak di ukur dari nomor tetapi dari seberapa besar usaha kita untuk mencapai hal tersebut', '2024-01-25 00:33:38', '2024-01-25 00:33:38'),
(74, 3, 12, 'Ide pokok paragraf dua adalah peraturan dan standart yang berlaku tentang ketahanan gempa pada dasarnya ditujukan untuk meminimalisir korban jiwa  dan kerugian material berskala besar karena proses perencanaan dan pembangunannya mudah diawasi.', '2024-01-25 00:34:56', '2024-01-25 00:34:56'),
(75, 4, 30, 'Kesimpulan dalam teks ini adalah segala usaha akan membuahkan hasil, walaupun tidak seperti yang kita inginkan, pengalaman baru akan datang sebanding dengan usaha yang dilakukan.', '2024-01-25 00:35:01', '2024-01-25 00:35:01'),
(76, 5, 15, 'Pentingnya menggunakan material lightweight dan pembangunan rumah yang tidak asal - asalan. Hal itu untuk mewujudkan bangunan tahan gempa.', '2024-01-25 00:35:39', '2024-01-25 00:35:39'),
(77, 4, 12, 'Kesimpulan dari teks ini adalah keinginan yang kuat tanpa disertai kapasitas yang besar berupa kemampuan, pengetahuan, dan otoritas tidak akan menghasilkan kesuksesan besar. Perkembangan diri dengan  penambahan kemampuan dan pengetahuan dapat ditempuh melalui jalur pendidikan.', '2024-01-25 00:36:29', '2024-01-25 00:36:29'),
(78, 2, 27, 'ide pokok paragraf pertama : pemikiran bahwa keberhasilan di sekolah adalah segalanya', '2024-01-25 00:36:45', '2024-01-25 00:36:45'),
(79, 6, 15, 'Teks ini bersifat pribadi dan menceritakan pengalaman penulis berdasarkan sudut pandangnya.', '2024-01-25 00:36:55', '2024-01-25 00:36:55'),
(80, 5, 30, 'Kesimpulannya adalah Penggunaan material ringan pada bangunan non-engineered dapat diadopsi dari beberapa  contoh konsep dan material yang disebutkan sebelumnya, sehingga kerugian materil dan  korban jiwa akibat gempa dapat diminimalisir.', '2024-01-25 00:37:33', '2024-01-25 00:37:33'),
(81, 7, 15, 'Memberikan opini dan solusi dari adanya bangunan tahan gempa.', '2024-01-25 00:37:56', '2024-01-25 00:37:56'),
(82, 4, 28, 'Dalam esai teks 1 ini, penulis menceritakan perjalanan hidupnya dari SD hingga pendidikan tinggi. Kesuksesan baginya tidak hanya tentang prestasi sekolah, tapi juga memberi kontribusi sosial dan berdampak positif bagi orang lain, penulis juga ingin lebih bermanfaat dalam pembangunan negara. Penulis menekankan pentingnya pengembangan diri melalui pendidikan untuk mencapai kesuksesan, terutama dalam pembangunan Indonesia.', '2024-01-25 00:38:23', '2024-01-25 00:38:23'),
(83, 6, 30, 'Téks ini berjenis teks esai pribadi karena menceritakan pandangan, sikap, dan pengalaman penulis secara langsung.', '2024-01-25 00:39:50', '2024-01-25 00:39:50'),
(84, 5, 12, 'Kesimpulan teks diatas adalah pentingnya penerapan konsep redaman dan kekakuan pada bangunan tentunya dapat disesuaikan dengan peruntukan bangunan dengan meninjau aspek ekonomis dari bangunan.', '2024-01-25 00:40:29', '2024-01-25 00:40:29'),
(85, 5, 28, 'Kesimpulan dari esai teks 2 ini adalah pembahasan menghadapi resiko gempa di Indonesia dengan struktur bangunan anti gempa menggunakan konsep engineered building.', '2024-01-25 00:41:00', '2024-01-25 00:41:00'),
(86, 3, 29, 'Ide pokok paragraf ke 1 perencanaan indonesia untuk membuat bangunan yang tahan dari gempa kecil maupun besar', '2024-01-25 00:41:13', '2024-01-25 00:41:13'),
(87, 3, 32, 'Pada masa SD, kesuksesan diukur melalui peringkat di kelas dan penerimaan rapor. Banyak anak di kampung berpandangan bahwa keberhasilan di sekolah adalah segalanya.', '2024-01-25 00:41:49', '2024-01-25 00:41:49'),
(88, 3, 3, 'upaya tahan gempa pada dasarnya untuk meminimalisirkan korban jiwa dan kerugian material', '2024-01-25 00:42:15', '2024-01-25 00:42:15'),
(89, 5, 32, 'Pada awal SMP, kegagalan meraih peringkat satu mengubah fokus narator. Orang tua memberi nasehat tentang kesuksesan bukan hanya peringkat, melainkan usaha dan rasa syukur. Narator terlibat dalam pramuka dan kesenian Jawa, memperoleh nilai gotong royong, tenggang rasa, dan melestarikan budaya. Meskipun tidak peringkat satu, ia meraih pengalaman berharga dan peringkat dua puluh besar.', '2024-01-25 00:42:51', '2024-01-25 00:42:51'),
(90, 6, 28, 'Teks ini adalah esai beasiswa dengan jenis esai pribadi, karena dalam teks ini menjelaskan kejadian yang pernah dihadapi oleh penulis.', '2024-01-25 00:43:06', '2024-01-25 00:43:06'),
(91, 6, 12, 'Teks pertama ini bejenis teks esai pribadi karena berisikan pengalaman pribadi yang pernah dialami oleh penulis.', '2024-01-25 00:43:30', '2024-01-25 00:43:30'),
(92, 3, 32, 'Perjalanan hidup seseorang mencerminkan evolusi pandangannya tentang kesuksesan. Awalnya, kesuksesan diukur dari prestasi pribadi di sekolah, namun kemudian berkembang menjadi konsep kesuksesan yang melibatkan kontribusi sosial dan pengembangan diri. Selama perjalanan ini, penulis menemukan bahwa pendidikan yang adil dan kesejahteraan masyarakat juga krusial dalam mencapai kesuksesan yang lebih luas. Keinginan untuk terus belajar dan berkontribusi dalam pembangunan Indonesia menjadi motivasi utama penulis.', '2024-01-25 00:43:34', '2024-01-25 00:43:34'),
(93, 7, 30, 'Téks ini membahas tentang bangunan. Téks ini berjenis deskriptif karena penulis membahas suatu hal secara lengkap.', '2024-01-25 00:43:36', '2024-01-25 00:43:36'),
(94, 4, 3, 'kehidupan kita bukan hanya untuk diri sendiri tapi berguna untuk orang lain', '2024-01-25 00:43:54', '2024-01-25 00:43:54'),
(95, 3, 27, 'ide pokok paragraf pertama adalah intensitas gempa yang tinggi di Indonesia memaksa infrastruktur dirancang lebih aman terhadap gempa', '2024-01-25 00:44:32', '2024-01-25 00:44:32'),
(96, 7, 28, 'Esai teks 2 ini, menurut saya menggunakan jenis esai deskriptif karena membahas suatu hal yang menjadi daya tarik dari penulis.', '2024-01-25 00:45:04', '2024-01-25 00:45:04'),
(97, 2, 31, 'pg 1 Pemikiran seorang anak  kampung pada umumnya bahwa keberhasilan di sekolah adalah segalanya.  pg 2 Tetapi orang tua saya memberi nasehat bahwa menjadi nomor satu bukan satu-satunya  ukuran kesuksesan, melainkan tentang seberapa besar usaha yang sudah kita  lakukan kemudian mensyukuri apa yang kita dapatkan dari hasil usaha tersebut.   pg 3 Kegiatan pramuka terus saya lanjutkan di SMA dan bertambah dengan kegiatan pecinta  alam juga.  pg 4 Saat itulah sayasemakin menyadari bahwa kehidupan manusia bukan hanya tentang  keberhasilan diri sendiri tetapi juga tentang berguna bagi sesama dan berdampak bagi  kemakmuran bangsa dan negara.  pg 5 Jadi, seberapa hidup saya berguna dan berdampak baik bagi sesama, sejauh  itulah pencapaian kesuksesan sejati saya.   pg 6 Aktivitas yang padat adalah pembangkit  semangat, bukan penghalang untuk meraih kesuksesan  pg 7 Saya berpindah-pindah sekolah bukan untuk mencari gaji yang lebih tinggi apalagi karena  bosan namun karena menemukan fakta peraturan dan kebijakan sekolah tempat saya mengajar tidak mendukung perkembangan siswa  pg 8 Tidak hanya pendidikan yang belum adil dan merata bagi masyarakat namun kesuksesan pemerintah  mewujudkan kesejahteraan dan keadilan sosial bagi masyarakat pun masih meragukan  pg 9 Pengembangankapasitas diri dengan penambahan kemampuan dan pengetahuan serta  peningkatan otoritas dapat ditempuh melalui jalur pendidikan', '2024-01-25 00:45:23', '2024-01-25 00:45:23'),
(98, 7, 12, 'Teks kedua ini berjenis deskriptif karena membahas tentang pencegahan dan peminimalisiran terhadap dampak dari gempa yang terjadi.', '2024-01-25 00:45:37', '2024-01-25 00:45:37'),
(99, 6, 32, 'Teks pertama membahas tentang pengalaman pribadinya mendapatkan rangking 1 di kelas', '2024-01-25 00:47:17', '2024-01-25 00:47:17'),
(100, 4, 29, 'Kesimpulan dari teks 1 adalah menjadi yang pertama belum tentu bisa berguna bagi orang sekitar dan prestasi yang menurun saat ditengah jalan belum tentu menjadi gagal, perlu banyak perjuangan untuk menjadi yang terbaik dan berguna bagi orang lain', '2024-01-25 00:47:21', '2024-01-25 00:47:21'),
(101, 5, 3, 'konsep bangunan tahan gempa juga harus diaplikasikan pada bangunan-bangunan sederhana dengan konsep sederhana juga sehingga gampang untuk diaplikasikan untuk masyarakat', '2024-01-25 00:47:23', '2024-01-25 00:47:23'),
(102, 3, 32, 'Paragraf pertama intesitas gempa yang tinggi di indonesia dan di rancang untuk lebih aman', '2024-01-25 00:48:50', '2024-01-25 00:48:50'),
(103, 6, 3, 'esai pribadi dari pengalaman penulisnya tentang pendidikan', '2024-01-25 00:50:13', '2024-01-25 00:50:13'),
(104, 2, 32, 'Pada masa SD, kesuksesan diukur melalui peringkat di kelas dan penerimaan rapor. Banyak anak di kampung berpandangan bahwa keberhasilan di sekolah adalah segalanya.', '2024-01-25 00:50:28', '2024-01-25 00:50:28'),
(105, 5, 29, 'Kesimpulan teks ke 2 adalah bagaimana upaya bangunan bangunan terhindar dari gempa karena indonesia negara yang mendapat kemungkinan terjadinya gempa', '2024-01-25 00:51:34', '2024-01-25 00:51:34'),
(106, 2, 4, 'Ide pokok pada paragraf 4 adalah sang penulis menyadari bahwa keberhasilan manusia bukan hanya keberhasilan diri.', '2024-01-25 00:52:02', '2024-01-25 00:52:02'),
(107, 3, 31, 'pg 1 Untuk bangunan-bangunan yang dirancang tidak dengan kaidah keteknikan  biasanya dikenal dengan non-engineered bulding misalnya pada bangunan rumah tinggal, rumah ibadah skala kecil, dan bangunan sederhana lainnya.  pg 2 Peraturan dan standar yang berlaku tentang ketahanan gempa pada dasarnya ditujukan untuk meminimalisir korban jiwa dan kerugian materil pada bangunan-bangunan publik skala besar karena proses perencanaan dan pembangunannya lebih mudah diawasi  pg 3 Gaya gempa yang terjadi pada bangunan secara sederhana dapat dijelaskan dalam sebuah persamaan yang melibatkan parameter massa, redaman, dan kekakuan bangunan.   pg 4 Konsep material ringan pada bangunan tahan gempa mengacu pada pengurangan pemakaian material berat seperti beton dan batu bata dan menggantinya menjadi material ringan misalnya kayu atau baja sehingga mengurangi beban bangunan  pg 5 Berbagai macam penelitian telah dilakukan untuk mencari material ringan yang cocok untuk konsep rumah tahan gempa, misalnya penelitian yang dilakukan oleh Satyarno (2004) yang menguji kekuatan beton ringan yang menggunakan tambahan agregat dari limbah styrofoam yang disebut sebagai Batafoam.   pg 6 Penerapan konsep redaman dan kekakuan pada bangunan tentunya dapat  disesuaikan dengan peruntukan bangunan dengan meninjau aspek ekonomis dari bangunan', '2024-01-25 00:52:23', '2024-01-25 00:52:23'),
(108, 2, 37, 'Ide pokok pada paragraf ke 4 adalah kehidupan penulis di masa SMA yang berhasil menduduki peringkat ke 10 besar SNPTN', '2024-01-25 00:52:44', '2024-01-25 00:52:44'),
(109, 7, 3, 'teks kedua membahas solusi yang ada di masyarakat terutama gempa pada bangunan yang sederhana yang bisa memakan korban jiwa', '2024-01-25 00:52:52', '2024-01-25 00:52:52'),
(110, 6, 29, 'teks ke 1 menceritakan pribadinya bagaimana ia mencapai hal yang dia punya sekarang', '2024-01-25 00:53:08', '2024-01-25 00:53:08'),
(111, 4, 32, 'Perjalanan hidup seseorang mencerminkan evolusi pandangannya tentang kesuksesan. Awalnya, kesuksesan diukur dari prestasi pribadi di sekolah, namun kemudian berkembang menjadi konsep kesuksesan yang melibatkan kontribusi sosial dan pengembangan diri. Selama perjalanan ini, penulis menemukan bahwa pendidikan yang adil dan kesejahteraan masyarakat juga krusial dalam mencapai kesuksesan yang lebih luas. Keinginan untuk terus belajar dan berkontribusi dalam pembangunan Indonesia menjadi motivasi utama penulis.', '2024-01-25 00:53:17', '2024-01-25 00:53:17'),
(112, 7, 29, 'teks ke 2 mendeskripsikan bangunan yang tahan akan gempa', '2024-01-25 00:53:53', '2024-01-25 00:53:53'),
(113, 4, 31, 'kesuksesan tidak dilihat dari peringkat dikelas, harta benda dan semacamnya. Namun dilihat dari seberapa kita mensyukuri hasil yang kita dapat dari usaha kita dan menjadi berguna, bermanfaat, dan berdampak baik bagi sesama juga bangsa dan negara', '2024-01-25 00:54:22', '2024-01-25 00:54:22'),
(114, 3, 4, 'Ide pokok paragraf 1 adalah Indonesia yang memiliki intensitas gempa yang sangat tinggi', '2024-01-25 00:54:23', '2024-01-25 00:54:23'),
(115, 3, 37, 'Indonesia merupakan salah satu negara dengan intensitas bencana alam yang tinggi, yang dibahas pada teks ini adalah bencana alam gempa bumi. Bagaimana cara menanggulangi', '2024-01-25 00:55:14', '2024-01-25 00:55:14'),
(116, 4, 4, 'Sang penulis dulu sangat sering mendapat ranking satu. Setelah lulus SD, dia menjadi jarang ranking satu dan mulai fokus dalam organisasi. Saat SMA, dia menyadari bahwa keberhasilan manusia bukan hanya keberhasilan diri dan dia mulai merasa kesuksesannya berasal dari dampaknya terhadap masyarakat. Saat kuliah, dia berhasil lulus tepat waktu. Setelah kuliah, dia mulai mengaplikasikan ilmunya bagi masyarakat. Saat dia bekerja sebagai guru, dia merasa bahwa kebijakan pendidikan seperti tidak sesuai dengan pengembangan siswa. Setelah itu, dia kembali berkuliah dalam program pasca sarjana guna memahami pokok persoalan siswa.', '2024-01-25 00:55:14', '2024-01-25 00:55:14'),
(117, 2, 38, 'Ide pokok dari paragraf kedua dalam essay tersebut adalah: \"Pada masa awal SMP, saya belajar bahwa kesuksesan bukan hanya tentang meraih peringkat satu di kelas, tetapi juga tentang usaha yang telah dilakukan dan keberhasilan dalam menjalankan kegiatan sosial yang berguna bagi orang lain.\"', '2024-01-25 00:55:23', '2024-01-25 00:55:23'),
(118, 4, 27, 'kesimpulannya bahwa kesuksesan bukan hanya soal nilai di sekolah tapi tentang bagaimana kita berdampak baik bagi kehidupan orang lain, keinginan yang kuat tanpa disertai kapasitas yang besar berupa kemampuan, pengetahuan, dan otoritas tidak akan menghasilkan kesuksesan besar.', '2024-01-25 00:56:02', '2024-01-25 00:56:02'),
(119, 5, 31, 'konsep bangunan tahan gempa harus diterapkan diindonesia yang sangat rentan terkena pergeseran lempeng. konsep bangunan tahan gempa ini bisa dilakukan dengan mengurangi beban struktur bisa dilakukan dengan mengganti dengan kayu atau baja dan juga dengan mengurangi beban bangunan bisa dilakukan dengan menggunakan bata ringan atau hebal seperti batafoam', '2024-01-25 00:56:58', '2024-01-25 00:56:58'),
(120, 5, 32, 'Kesimpulan dari teks  di atas adalah menerapkan redaman untuk meminimalisir korban jiwa', '2024-01-25 00:58:13', '2024-01-25 00:58:13'),
(121, 4, 37, 'Menurut saya, kesimpulan pada teks ini adalah kesuksesan tidak hanya diraih di bidang pendidikan saja, pengalaman baik yang kita dapati adalah salah satu pencapaian yang kita dapat banggakan', '2024-01-25 00:58:21', '2024-01-25 00:58:21'),
(122, 3, 38, 'ide pokok dari salah satu paragraf yaitu paragraf 3 adalah: \"Penggunaan material ringan pada bangunan non-engineered merupakan salah satu solusi untuk mewujudkan infrastruktur tahan gempa di Indonesia dengan meminimalisir korban jiwa dan kerugian materil akibat gempa.\"', '2024-01-25 00:58:24', '2024-01-25 00:58:24'),
(123, 6, 31, 'teks satu merupakan teks esai pribadi, disini penulis menceritakan pengalaman dia tentang prestasi bukan sekedar peringkat atau harta benda', '2024-01-25 00:58:58', '2024-01-25 00:58:58'),
(124, 7, 31, 'teks esai ke 2, merupakan teks esai deskripsi karna menjelaskan apa itu bangunan tahan gempa dan menjelaskan tentang struktur bangunan tahan gempa', '2024-01-25 01:00:49', '2024-01-25 01:00:49'),
(125, 5, 37, 'Menurut saya, teks tersebut membahas tentang bagaimana cara membangun rumah untuk mengahadapi kejadian bencana alam, khususnya gempa', '2024-01-25 01:01:43', '2024-01-25 01:01:43'),
(126, 5, 38, 'Kesimpulan dari setiap bagian teks adalah:  1. Dalam essay ini, penulis menggambarkan bahwa kesuksesan terbesar pada awalnya diukur dari prestasi akademis di sekolah, tetapi kemudian berubah menjadi pengabdian sosial dan dampak positif bagi masyarakat setelah mendapat pemahaman yang lebih dalam tentang arti sejati kesuksesan. 2. Penulis menyoroti bahwa kehidupan bukanlah hanya tentang diri sendiri, tetapi juga tentang berkontribusi bagi orang lain dan kemakmuran bangsa serta negara. 3. Penulis menekankan pentingnya pengembangan kapasitas diri melalui pendidikan dan pengalaman sosial dalam mencapai kesuksesan yang sejati, yang tidak hanya berguna bagi dirinya sendiri, tetapi juga bagi masyarakat luas. 4. Penulis menyimpulkan bahwa untuk mencapai kesuksesan yang sejati, dibutuhkan tidak hanya keinginan yang kuat, tetapi juga kapasitas yang besar berupa kemampuan, pengetahuan, dan otoritas yang diperoleh melalui pendidikan. 5. Penulis menegaskan keinginannya untuk terus mengembangkan diri melalui studi lanjutan ke program Magister Penyuluhan dan Komunikasi Pembangunan untuk lebih berguna dan berdampak baik bagi sesama demi mewujudkan cita-cita pembangunan Indonesia.', '2024-01-25 01:03:19', '2024-01-25 01:03:19'),
(127, 6, 37, 'Teks satu ini termasuk kedalam jenis teks esai pribadi, karena isi dari trks tersebut adalah menjelaskan diri penulis sendiri, tentang pencapaian yang didapat oleh penulis', '2024-01-25 01:03:35', '2024-01-25 01:03:35'),
(128, 7, 32, 'teks 2 membahas tentang mengurangi dampak gempa terhadap bangunan', '2024-01-25 01:04:18', '2024-01-25 01:04:18'),
(129, 3, 38, 'Kesimpulan dari setiap bagian teks adalah:  1. Dalam essay ini, penulis menggambarkan bahwa kesuksesan terbesar pada awalnya diukur dari prestasi akademis di sekolah, tetapi kemudian berubah menjadi pengabdian sosial dan dampak positif bagi masyarakat setelah mendapat pemahaman yang lebih dalam tentang arti sejati kesuksesan. 2. Penulis menyoroti bahwa kehidupan bukanlah hanya tentang diri sendiri, tetapi juga tentang berkontribusi bagi orang lain dan kemakmuran bangsa serta negara. 3. Penulis menekankan pentingnya pengembangan kapasitas diri melalui pendidikan dan pengalaman sosial dalam mencapai kesuksesan yang sejati, yang tidak hanya berguna bagi dirinya sendiri, tetapi juga bagi masyarakat luas. 4. Penulis menyimpulkan bahwa untuk mencapai kesuksesan yang sejati, dibutuhkan tidak hanya keinginan yang kuat, tetapi juga kapasitas yang besar berupa kemampuan, pengetahuan, dan otoritas yang diperoleh melalui pendidikan. 5. Penulis menegaskan keinginannya untuk terus mengembangkan diri melalui studi lanjutan ke program Magister Penyuluhan dan Komunikasi Pembangunan untuk lebih berguna dan berdampak baik bagi sesama demi mewujudkan cita-cita pembangunan Indonesia.', '2024-01-25 01:04:49', '2024-01-25 01:04:49'),
(130, 2, 33, 'Ide pokok dari paragraf 4 adalah kehidupan sang penulis di masa masa SMA yg berhasil mendapatkan peringkat sepuluh besar di snptn', '2024-01-25 01:05:30', '2024-01-25 01:05:30'),
(131, 5, 4, 'Indonesia adalah salah satu negara dengan intensitas gempa yang sangat tinggi. Karena hal tersebut, pemerintah mencoba meminimalisir kerugian yang akan terjadi. Salah satu cara meminimalisirnya adalah dengan membuat bangunan dengan standar tahan gempa. Bangunan yang belum tentu tahan gempa adalah bangunan Non-Engineered. Bangunan non-engineered kebanyakan adalah rumah-rumah warga yang tidak dibangun dengan benar. Karena hal tersebut, kementerian PUPR memberikan solusi berupa konsep, tata cara, dan material yang diperlukan untuk membangun rumah yang dapat tahan gempa.', '2024-01-25 01:06:35', '2024-01-25 01:06:35'),
(132, 3, 33, 'Ide pokok pada paragraf 3 adalah Penggunaan material ringan pada bangunan non-engineered merupakan salah satu solusi untuk mewujudkan infrastruktur tahan gempa di Indonesia dengan meminimalisir korban jiwa dan kerugian materil akibat gempa.', '2024-01-25 01:06:48', '2024-01-25 01:06:48'),
(133, 7, 37, 'Teks esai kedua ini termasuk kedalam jenis teks esai deskriptif, karena menjelaskan tentang suatu kejadian, dan cara menanggulangi nya dengan membuat bangunan yang tahan gempa', '2024-01-25 01:07:18', '2024-01-25 01:07:18'),
(134, 5, 38, 'Kesimpulan dari setiap bagian teks adalah:  1. Dalam essay ini, penulis menggambarkan bahwa kesuksesan terbesar pada awalnya diukur dari prestasi akademis di sekolah, tetapi kemudian berubah menjadi pengabdian sosial dan dampak positif bagi masyarakat setelah mendapat pemahaman yang lebih dalam tentang arti sejati kesuksesan. 2. Penulis menyoroti bahwa kehidupan bukanlah hanya tentang diri sendiri, tetapi juga tentang berkontribusi bagi orang lain dan kemakmuran bangsa serta negara. 3. Penulis menekankan pentingnya pengembangan kapasitas diri melalui pendidikan dan pengalaman sosial dalam mencapai kesuksesan yang sejati, yang tidak hanya berguna bagi dirinya sendiri, tetapi juga bagi masyarakat luas. 4. Penulis menyimpulkan bahwa untuk mencapai kesuksesan yang sejati, dibutuhkan tidak hanya keinginan yang kuat, tetapi juga kapasitas yang besar berupa kemampuan, pengetahuan, dan otoritas yang diperoleh melalui pendidikan. 5. Penulis menegaskan keinginannya untuk terus mengembangkan diri melalui studi lanjutan ke program Magister Penyuluhan dan Komunikasi Pembangunan untuk lebih berguna dan berdampak baik bagi sesama demi mewujudkan cita-cita pembangunan Indonesia.', '2024-01-25 01:07:22', '2024-01-25 01:07:22'),
(135, 6, 4, 'Teks ini adalah teks esai pribadi yang memaparkan tentang kehidupan sang penulis', '2024-01-25 01:08:33', '2024-01-25 01:08:33'),
(136, 4, 33, 'Kesimpulan yg dapat di sampaikan adalah kesuksesan tidak di raih dengan nilai tapi kita harus berusaha dengan keras, menambah pengalaman adalah salah satu pencapaian yg di banggakan', '2024-01-25 01:09:02', '2024-01-25 01:09:02'),
(137, 5, 27, 'kesimpulannya adalah Berdasarkan data bahwa Indonesia memiliki intensitas gempa yang tinggi, pemerintah membuat aturan konsep keteknikan yang digunakan untuk menanggulangi hancurnya struktural bangunan di Indonesia akibat gempa. Tujuannya adalah untuk meminimalisir korban jiwa dan kerugian materil bangunan-bangunan skala besar.', '2024-01-25 01:09:05', '2024-01-25 01:09:05'),
(138, 2, 34, 'perjalanan dalam mengatasi rasa gagal di awal SMP, dengan orang tua memberikan nasehat tentang kesuksesan yang tidak hanya diukur dari peringkat, melainkan dari usaha dan pengalaman yang diperoleh. Keterlibatan dalam kegiatan sosial seperti pramuka dan kesenian Jawa menjadi bagian penting dalam membentuk nilai-nilai gotong royong, tenggang rasa, dan pelestarian budaya', '2024-01-25 01:09:20', '2024-01-25 01:09:20'),
(139, 4, 38, 'Kesimpulan dari setiap bagian teks adalah:  1. Dalam essay ini, penulis menggambarkan bahwa kesuksesan terbesar pada awalnya diukur dari prestasi akademis di sekolah, tetapi kemudian berubah menjadi pengabdian sosial dan dampak positif bagi masyarakat setelah mendapat pemahaman yang lebih dalam tentang arti sejati kesuksesan. 2. Penulis menyoroti bahwa kehidupan bukanlah hanya tentang diri sendiri, tetapi juga tentang berkontribusi bagi orang lain dan kemakmuran bangsa serta negara. 3. Penulis menekankan pentingnya pengembangan kapasitas diri melalui pendidikan dan pengalaman sosial dalam mencapai kesuksesan yang sejati, yang tidak hanya berguna bagi dirinya sendiri, tetapi juga bagi masyarakat luas. 4. Penulis menyimpulkan bahwa untuk mencapai kesuksesan yang sejati, dibutuhkan tidak hanya keinginan yang kuat, tetapi juga kapasitas yang besar berupa kemampuan, pengetahuan, dan otoritas yang diperoleh melalui pendidikan. 5. Penulis menegaskan keinginannya untuk terus mengembangkan diri melalui studi lanjutan ke program Magister Penyuluhan dan Komunikasi Pembangunan untuk lebih berguna dan berdampak baik bagi sesama demi mewujudkan cita-cita pembangunan Indonesia.', '2024-01-25 01:09:34', '2024-01-25 01:09:34'),
(140, 3, 34, 'ide pokok pada paragraf 1 adalah perlunya peningkatan ketahanan infrastruktur terhadap gempa di Indonesia, tercermin dari aturan pemerintah seperti SNI 1726:2019. Dibahas pula perbedaan antara bangunan yang dirancang dengan keteknikan (engineered building) yang tahan terhadap gempa, dan bangunan tanpa keteknikan (non-engineered building) seperti rumah tinggal, rumah ibadah kecil, dan bangunan sederhana.', '2024-01-25 01:10:30', '2024-01-25 01:10:30'),
(141, 5, 33, 'Kesimpulannya adalah Penulis menegaskan keinginannya untuk terus mengembangkan diri melalui studi lanjutan ke program Magister Penyuluhan dan Komunikasi Pembangunan untuk lebih berguna dan berdampak baik bagi sesama demi mewujudkan cita-cita pembangunan Indonesia.', '2024-01-25 01:10:31', '2024-01-25 01:10:31'),
(142, 6, 33, 'Tesk ini adalah tesk esai pribadi', '2024-01-25 01:11:16', '2024-01-25 01:11:16'),
(143, 7, 4, 'Teks 2 adalah teks esai deskriptif yang menjelaskan mengenai pentingnya infrastruktur tahan gempa pada bangunan-bangunan di Indonesia', '2024-01-25 01:12:04', '2024-01-25 01:12:04'),
(144, 7, 33, 'Tesk kedua merupakan tesk esai deskriptif', '2024-01-25 01:12:04', '2024-01-25 01:12:04'),
(145, 2, 40, 'ide pokok pada paragraf ke 2 adalah : Mengajarkan bahwa keberhasilan bukan hanya tentang menjadi nomor satu, melainkan menghargai usaha dan memberi manfaat kepada orang lain', '2024-01-25 01:12:17', '2024-01-25 01:12:17'),
(146, 5, 38, 'Kesimpulan dari setiap teksnya adalah:  1. Tulisan memperkenalkan masalah risiko gempa di Indonesia dan pentingnya infrastruktur yang tahan gempa. Meskipun ada standar untuk bangunan tahan gempa, banyak bangunan non-engineered yang tidak memenuhi standar tersebut, menyebabkan kerugian materiil dan korban jiwa yang tinggi. 2. Tulisan menjelaskan bahwa penggunaan material ringan pada bangunan non-engineered dapat menjadi solusi untuk meminimalisir kerusakan dan korban jiwa akibat gempa. Penggunaan material ringan, seperti kayu atau baja, telah terbukti efektif dalam beberapa kasus gempa di Indonesia dan negara lain. 3. Tulisan menyoroti bahwa pemerintah telah mengeluarkan petunjuk praktis untuk bangunan tahan gempa yang memanfaatkan material ringan, seperti rumah RISHA dan rumah kayu tahan gempa. Petunjuk praktis ini dapat membantu masyarakat membangun bangunan yang lebih tahan gempa dengan biaya yang terjangkau. 4. Tulisan menyimpulkan bahwa penggunaan material ringan pada bangunan non-engineered dapat menjadi solusi yang efektif untuk mewujudkan infrastruktur yang tahan gempa di Indonesia. Dengan menerapkan konsep ini dan mengikuti petunjuk praktis yang telah disediakan oleh pemerintah, kerugian materiil dan korban jiwa akibat gempa dapat diminimalisir.', '2024-01-25 01:12:31', '2024-01-25 01:12:31'),
(147, 2, 39, 'Ide pokok dari paragraf kedua dalam esai tersebut adalah, di masa jenjang SMP penulis tidak dapat berhasil di bidang studi namun penulis berhasil di bidang eskul Pramuka dan kesenian Jawa. Pada paragraf ketiga penulis menjadi pencipta alam', '2024-01-25 01:13:11', '2024-01-25 01:13:11'),
(148, 6, 27, 'teks 1 ini berisi tentang pengalaman pribadi penulis, penulis menceritakan perjalanan hidupnya dan curhatan nya. Teks tersebut adalah teks esai pribadi', '2024-01-25 01:13:48', '2024-01-25 01:13:48'),
(149, 4, 34, 'keberhasilan tidak hanya diukur dari peringkat di sekolah, tetapi juga dari usaha, nilai-nilai sosial, dan kontribusi terhadap lingkungan. Kegiatan pramuka, kesenian Jawa, dan pecinta alam menjadi bagian integral dalam membentuk karakter dan memberikan pengalaman berharga', '2024-01-25 01:15:11', '2024-01-25 01:15:11'),
(150, 3, 26, 'Ide pokok dari paragraf pertama adalah tentang upaya pemerintah Indonesia dalam meningkatkan ketahanan infrastruktur terhadap gempa, yang tercermin dalam aturan dan regulasi seperti SNI 1726:2019.', '2024-01-25 01:15:12', '2024-01-25 01:15:12'),
(151, 3, 39, 'Ide pokok paragraf pertama adalah penerapan konsep bangunan tahan gempa perlu diaplikasikan pada bangunan sederhana', '2024-01-25 01:15:40', '2024-01-25 01:15:40'),
(152, 6, 38, '1.Teks Essay LPDP Sukses Terbesar di Hidupku:**    - Topik utama: Pengalaman hidup dan definisi kesuksesan pribadi penulis.    - Fokus pembahasan: Penulis menceritakan perjalanan hidupnya dari masa kecil hingga dewasa, yang mencakup pencapaian di sekolah, partisipasi dalam kegiatan sosial, perjalanan pendidikan, dan cita-cita untuk memberikan dampak positif bagi masyarakat. Kesuksesan diukur dari seberapa berguna dan berdampaknya hidup penulis bagi sesama.', '2024-01-25 01:16:22', '2024-01-25 01:16:22'),
(153, 7, 38, '2. Teks tentang Penggunaan Material Ringan pada Bangunan Non-Engineered:    - Topik utama: Penggunaan material ringan dalam bangunan non-engineered untuk meningkatkan ketahanan terhadap gempa di Indonesia.    - Fokus pembahasan: Pembahasan mengenai risiko gempa di Indonesia, pentingnya infrastruktur yang tahan gempa, perbedaan antara bangunan engineered dan non-engineered, peraturan terkait ketahanan gempa, konsep material ringan dalam bangunan tahan gempa, contoh implementasi material ringan dalam bangunan, serta upaya-upaya untuk meningkatkan ketahanan gempa pada bangunan non-engineered.  Dengan kata lain, teks pertama adalah narasi pribadi tentang pengalaman hidup dan konsep kesuksesan pribadi, sementara teks kedua adalah pembahasan tentang masalah teknis terkait keamanan bangunan terhadap gempa bumi dan upaya-upaya untuk meningkatkan ketahanannya.', '2024-01-25 01:17:24', '2024-01-25 01:17:24'),
(154, 3, 40, 'ide pokok paragraf 1 : Indonesia menerapkan aturan ketahanan gempa, terutama pada bangunan engineered seperti yang diatur dalam SNI 1726:2019. Tujuan utamanya adalah memastikan bangunan dapat bertahan pada gempa kecil dan sedang, dengan kerusakan terbatas, sementara pada gempa besar, kerusakan struktural diperbolehkan tanpa menyebabkan keruntuhan', '2024-01-25 01:17:35', '2024-01-25 01:17:35'),
(155, 5, 34, 'kesimpulanny, intensitas gempa tinggi di Indonesia mendorong pemerintah untuk mengeluarkan aturan, seperti SNI 1726:2019, untuk memastikan infrastruktur tahan gempa', '2024-01-25 01:17:52', '2024-01-25 01:17:52'),
(156, 2, 21, 'Ide Pokok P2 : Kegagalan bukanlah akhir dari sesuatu tapi kegagalan dapat memberi kita power untuk bangkit dan melangkah maju \" saya merasa gagal karena tidak lagi menduduki peringkatsatu di kelas.\"/\"melihat pegunungan kembali hijau berseri merupakan kesuksesan yang sangat  berarti\"', '2024-01-25 01:18:33', '2024-01-25 01:18:33'),
(157, 4, 26, 'Kesimpulan dari teks di atas adalah bahwa kesuksesan sejati tidak hanya diukur dari prestasi individu semata, tetapi juga dari seberapa besar dampak yang dapat kita berikan bagi orang lain dan masyarakat secara luas. Melalui perjalanan pendidikan dan kegiatan sosial, penulis menyadari pentingnya memiliki kemampuan, pengetahuan, dan otoritas yang cukup untuk mencapai kesuksesan yang berarti.', '2024-01-25 01:19:26', '2024-01-25 01:19:26'),
(158, 2, 24, 'Kalimat utama dari paragraf satu yaitu “ Ketika duduk di bangku SD, saya merasa bahwa kesuksesan terbesar adalah saat penerimaan rapor tiba. ” . Dari sini kita bisa menyimpulkan bahwa ide pokoknya adalah Kesuksesan besar saat SD adalah mendapat peringkat ke satu di kelas setiap menerima rapor karena itu merupakan pemikirsn anak kampung yang menganggap keberhasilan di sekolah adalah segalanya.', '2024-01-25 01:19:28', '2024-01-25 01:19:28'),
(159, 6, 34, 'Teks ini bersifat pengalaman pribadi tentang mengejar kesuksesan', '2024-01-25 01:20:18', '2024-01-25 01:20:18'),
(160, 7, 27, 'Teks 2 berisi tentang pentingnya struktural bangunan untuk meminimalisir kerusakan akibat gempa, penulis menuliskan gagasan secara serius tentang pembangunan. Teks esai tersebut adalah teks esai reflektif', '2024-01-25 01:20:29', '2024-01-25 01:20:29'),
(161, 3, 21, 'Indonesia menerapkan aturan ketahanan gempa tercermin dalam aturan SNI (1726:2019)', '2024-01-25 01:21:14', '2024-01-25 01:21:14'),
(162, 3, 24, 'Kalimat utamanya adalah “ Indonesia sebagai salah satu negara dengan intensitas gempa sangat tinggi memaksa segala infrastruktur yang ada harus lebih aman terhadap gempa. ”. Maka ide pokoknya adalah Infrastruktur tahan gempa di Indonesia tercermin dalam aturan seperti SNI 1726:2019. Bangunan \"engineered\" dirancang untuk tahan gempa, sedangkan \"non-engineered\" umumnya diterapkan pada bangunan sederhana. Langkah ini penting mengingat risiko gempa tinggi di Indonesia.', '2024-01-25 01:21:18', '2024-01-25 01:21:18'),
(163, 2, 36, 'Ide pokok paragraf pertama adalah bahwa ketika di bangku SD, penulis merasa sukses besar saat menerima rapot. Selama enam tahun penulis selalu menepati peringkat pertama dalam kelas, dan pada saat itu keberhasilan di sekolah dianggap hal yang paling penting.', '2024-01-25 01:21:57', '2024-01-25 01:21:57'),
(164, 2, 17, 'Ide Pokok: 1. Kesuksesan di Sekolah SD: Awalnya, kesuksesan diukur dari prestasi akademis di SD, di mana menjadi nomor satu di kelas dianggap sebagai pencapaian terbesar.', '2024-01-25 01:22:07', '2024-01-25 01:22:07'),
(165, 2, 10, 'Ide pokok menurut saya yaitu Keinginan yang kuat tanpa disertai kapasitas yang besar  berupa kemampuan,pengetahuan dan otoritas tidak akan menghasilkan kesuksesan besar.', '2024-01-25 01:22:29', '2024-01-25 01:22:29'),
(166, 3, 17, 'Ide pokok dari paragraf pertama adalah membahas pentingnya infrastruktur yang tahan gempa di Indonesia, khususnya dalam konteks regulasi seperti SNI 1726:2019. Paragraf ini juga memperkenalkan perbedaan antara engineered building dan non-engineered building, serta menyoroti kerusakan dan korban jiwa yang sering terjadi pada bangunan non-engineered saat gempa.', '2024-01-25 01:22:55', '2024-01-25 01:22:55'),
(167, 4, 40, 'Kesimpulannya adalah kesuksesan bukan hanya diujur dari prestasi, namun dilihat dari dampak positif bagi diri sendiri maupun orang lain', '2024-01-25 01:23:18', '2024-01-25 01:23:18');
INSERT INTO `comments` (`id`, `id_post`, `id_user`, `content`, `created_at`, `updated_at`) VALUES
(168, 2, 9, 'teks 1: Sebagai siswa SD, kesuksesan tertinggi bagiku adalah konsisten menduduki peringkat satu di kelas dan momen penerimaan rapor yang selalu menjadi puncak kegembiraan. Namun, di awal masa SMP, pandangan saya tentang kesuksesan mengalami perubahan ketika saya tidak lagi menempati peringkat tertinggi. Orang tua memberikan nasehat berharga bahwa kesuksesan bukan hanya sebatas prestasi akademis, melainkan juga usaha dan kontribusi kepada orang lain.  Pengalaman dan pembelajaran yang berharga muncul dari keterlibatan dalam kegiatan sosial seperti pramuka dan kesenian Jawa. Meskipun tidak lagi menjadi peringkat satu, pemahaman akan nilai-nilai gotong royong, tenggang rasa, dan upaya pelestarian budaya menjadi landasan baru kesuksesan.   Di SMA, kegiatan sosial tetap menjadi fokus, bahkan ditambah dengan keterlibatan dalam kegiatan pecinta alam. Mengikuti program reboisasi di sekitar Gunung Lawu, saya menyadari bahwa keberhasilan sejati terletak pada usaha untuk mencintai dan melestarikan alam. Melihat pegunungan yang hijau berseri bukan hanya menjadi pencapaian pribadi, tetapi juga memberikan manfaat nyata bagi lingkungan dan masyarakat. Kesuksesan tak lagi hanya terukur dari prestasi individu, melainkan dari dampak positif yang dapat kita berikan pada dunia sekitar.', '2024-01-25 01:23:33', '2024-01-25 01:23:33'),
(169, 3, 36, 'Ide pokok paragraf pertama adalah penerapan konsep bangunan tahan gempa perlu diaplikasikan pada bangunan yang sederhana', '2024-01-25 01:23:54', '2024-01-25 01:23:54'),
(170, 7, 34, 'Teks ini berdasarkan fakta dan data yang sudah ada penelitian nya', '2024-01-25 01:23:55', '2024-01-25 01:23:55'),
(171, 4, 17, 'Melalui perjalanan hidupnya, penulis menyadari bahwa kesuksesan sejati tidak hanya tentang pencapaian pribadi, melainkan juga tentang pengaruh positif yang dapat diberikan kepada masyarakat. Pendidikan, pengalaman sosial, dan keinginan untuk terus berkembang menjadi kunci menuju kesuksesan yang berkelanjutan, yang pada akhirnya diharapkan dapat memberikan dampak positif pada sistem pendidikan dan pembangunan negara.', '2024-01-25 01:23:57', '2024-01-25 01:23:57'),
(172, 3, 10, 'Ide pokok dari Paragraf 4 menurut saya adalah konsep material ringan pada bangunan tahan gempa. Hal ini mencakup pengurangan penggunaan material berat seperti beton dan batu bata, dengan menggantinya oleh material ringan seperti kayu atau baja.', '2024-01-25 01:24:05', '2024-01-25 01:24:05'),
(173, 3, 9, 'teks gempa, paragraph 2 ide pokok: perlunya peraturan dan standar ketahanan gempa untuk bangunan publik skala besar guna meminimalisir kerugian jiwa dan materi. Sementara itu, tantangan menerapkan standar tersebut pada bangunan pribadi, terutama rumah warga, karena cakupan pekerjaan yang luas. Fakta di lapangan menunjukkan bahwa banyak kerugian dan korban jiwa berasal dari runtuhnya bangunan non-engineered, menyoroti pentingnya menerapkan konsep bangunan tahan gempa bahkan pada bangunan sederhana dengan konsep yang lebih mudah diimplementasikan di masyarakat.', '2024-01-25 01:24:19', '2024-01-25 01:24:19'),
(174, 3, 17, 'Dengan memanfaatkan material ringan pada bangunan non-engineered, seperti yang diilustrasikan dalam konsep Rumah Instan Struktur Baja (RISBA) dan Rumah Instan Sederhana Sehat (RISHA), diharapkan dapat meminimalisir kerugian materil dan korban jiwa akibat gempa. Selain itu, penerapan konsep redaman dan kekakuan pada struktur juga menjadi faktor penting dalam meningkatkan ketahanan gempa pada bangunan, dengan mempertimbangkan aspek ekonomis dari bangunan tersebut.', '2024-01-25 01:24:21', '2024-01-25 01:24:21'),
(175, 2, 5, 'Paragraf 8 :', '2024-01-25 01:24:33', '2024-01-25 01:24:33'),
(176, 4, 39, 'Kesimpulan dalam teks pertama adalah kesuksesan tidak selalu mendapatkan peringkat 1, kesuksesan juga bisa diraih dari pengalaman, kita juga berkontribusi untuk mengikuti kegiatan eskul yang ada di sekolah', '2024-01-25 01:24:52', '2024-01-25 01:24:52'),
(177, 4, 9, 'Dalam perjalanan hidup saya, kesuksesan tak hanya tentang prestasi pribadi, tapi juga kontribusi bagi masyarakat. Melalui gelar sarjana, kegiatan sosial, dan studi magister, saya berupaya memberi dampak positif pada pendidikan dan pembangunan di Indonesia. Kesuksesan sejati bagi saya adalah ketika hidup ini memberi manfaat bukan hanya untuk diri sendiri, tapi juga bagi orang lain dan pembangunan negara..', '2024-01-25 01:25:03', '2024-01-25 01:25:03'),
(178, 5, 17, 'Dengan memanfaatkan material ringan pada bangunan non-engineered, seperti yang diilustrasikan dalam konsep Rumah Instan Struktur Baja (RISBA) dan Rumah Instan Sederhana Sehat (RISHA), diharapkan dapat meminimalisir kerugian materil dan korban jiwa akibat gempa. Selain itu, penerapan konsep redaman dan kekakuan pada struktur juga menjadi faktor penting dalam meningkatkan ketahanan gempa pada bangunan, dengan mempertimbangkan aspek ekonomis dari bangunan tersebut.', '2024-01-25 01:25:09', '2024-01-25 01:25:09'),
(179, 5, 26, 'Kesimpulan dari teks di atas adalah bahwa Indonesia, sebagai negara dengan intensitas gempa yang tinggi, membutuhkan infrastruktur yang lebih aman terhadap gempa. Pemerintah telah mengeluarkan berbagai aturan untuk mewujudkan infrastruktur yang tahan gempa, seperti SNI 1726:2019. Namun, masih terdapat tantangan dalam menerapkan standar tahan gempa pada bangunan non-engineered, terutama pada bangunan rumah tangga dan bangunan sederhana lainnya.', '2024-01-25 01:25:20', '2024-01-25 01:25:20'),
(180, 3, 9, 'Dalam menghadapi risiko gempa di Indonesia, khususnya pada bangunan non-engineered seperti rumah warga, perlu adopsi konsep tahan gempa yang sederhana. Aturan seperti SNI 1726:2019 menjadi acuan, dan solusi praktis menggunakan material ringan, seperti kayu dan beton pracetak, memberikan harapan untuk mengurangi dampak gempa. Inisiatif dari Kementerian PUPR, seperti rumah RISBA dan RISHA, menawarkan alternatif yang berpotensi mengurangi risiko kerugian materil dan korban jiwa, membuka jalan menuju infrastruktur bangunan yang lebih tahan gempa di Indonesia.', '2024-01-25 01:25:23', '2024-01-25 01:25:23'),
(181, 3, 35, 'ide pokok paragraf ke 2 : menjadi nomor satu bukan satu-satunya  ukuran kesuksesan, melainkan tentang seberapa besar usaha yang sudah kita  lakukan kemudian mensyukuri apa yang kita dapatkan dari hasil usaha tersebut.', '2024-01-25 01:25:24', '2024-01-25 01:25:24'),
(182, 4, 21, 'Kesimpulan yang saya dapat adalah butuh pengorbanan dalam setiap kesuksesan karena pada dasarnya kegagalan memberikan kita pengalaman penting dalam hidup,untuk mencapai sesuatu kita butuh waktu karena proses mencapai kesuksesan itu tidak lah mudah namun tidak juga susah', '2024-01-25 01:25:30', '2024-01-25 01:25:30'),
(183, 2, 6, 'Ide pokok paragraf pertama yaitu, pandangan penulis tentang \"keberhasilan\" di masa ketika ia kecil adalah mendapatkan nilai yang bagus dang ranking satu adalah segalanya dan keberhasilan terbesar', '2024-01-25 01:25:34', '2024-01-25 01:25:34'),
(184, 4, 10, 'Menurut saya kesimpulan dari Esai diatas adalah menyoroti pentingnya memiliki keinginan kuat yang didukung oleh kapasitas yang besar, termasuk kemampuan, pengetahuan, dan otoritas.', '2024-01-25 01:25:40', '2024-01-25 01:25:40'),
(185, 4, 24, 'Kesimpulan dari teks ini yaitu kesuksesan tidak hanya bisa diukur dari prestasi kita sendiri, tetapi juga bisa memberikan dampak yang besar dan berguna bagi orang di sekitar. Seperti menjadi guru di sekolah. Pengalaman tersebut melalui perjalanan pendidikan, kegiatan sosial, dan pengetahuan yang perlu dicari.', '2024-01-25 01:25:51', '2024-01-25 01:25:51'),
(186, 2, 5, 'Ide Pokok : Penulis kembali masuk ke program pasca sarjana Universitas Semarang.', '2024-01-25 01:25:57', '2024-01-25 01:25:57'),
(187, 5, 9, 'Dalam menghadapi risiko gempa di Indonesia, khususnya pada bangunan non-engineered seperti rumah warga, perlu adopsi konsep tahan gempa yang sederhana. Aturan seperti SNI 1726:2019 menjadi acuan, dan solusi praktis menggunakan material ringan, seperti kayu dan beton pracetak, memberikan harapan untuk mengurangi dampak gempa. Inisiatif dari Kementerian PUPR, seperti rumah RISBA dan RISHA, menawarkan alternatif yang berpotensi mengurangi risiko kerugian materil dan korban jiwa, membuka jalan menuju infrastruktur bangunan yang lebih tahan gempa di Indonesia.', '2024-01-25 01:26:09', '2024-01-25 01:26:09'),
(188, 3, 5, 'Ide Pokok : Penerapan konsep bangunan tahan gempa terhadap bangunan sederhana.', '2024-01-25 01:26:55', '2024-01-25 01:26:55'),
(189, 5, 10, 'Menurut saya kesimpulan dari Esai diatas adalah menyoroti pentingnya memiliki keinginan kuat yang didukung oleh kapasitas yang besar, termasuk kemampuan, pengetahuan, dan otoritas.', '2024-01-25 01:27:09', '2024-01-25 01:27:09'),
(190, 2, 35, 'ide pokok paragraf ke 2 : menjadi nomor satu bukan satu-satunya ukuran kesuksesan, melainkan tentang seberapa besar usaha yang sudah kita lakukan kemudian mensyukuri apa yang kita dapatkan dari hasil usaha tersebut.', '2024-01-25 01:27:42', '2024-01-25 01:27:42'),
(191, 5, 10, 'Menurut saya kesimpulan dari esai diatas adalah penggunaan material ringan pada bangunan non-engineered merupakan upaya untuk mewujudkan infrastruktur tahan gempa di Indonesia. Dalam menghadapi intensitas gempa yang tinggi, pemerintah telah mengeluarkan aturan dan standar ketahanan gempa, terutama untuk bangunan engineered. Namun, sebagian besar kerugian dan korban jiwa terjadi pada bangunan non-engineered seperti rumah tinggal dan rumah ibadah skala kecil.', '2024-01-25 01:27:50', '2024-01-25 01:27:50'),
(192, 6, 17, 'Teks ini isinya berupa perjalanan hidupnya dalam hal pendidikan untuk menceritakan gimana perjalanan hidupnya', '2024-01-25 01:28:03', '2024-01-25 01:28:03'),
(193, 5, 21, 'Dalam konsep rumah dengan material ringan biasanya pemakaian batu bata hanya dibuat  setinggi setengah dinding saja, hal ini dilakukan untuk mengurangi massa bangunan sekaligus  menambah kekakuan struktur dan pelindung dari gaya angin yang bekerja pada bangunan.  Untuk setengah dinding yang lain biasanya digunakan partisi berupa panel kayu atau gypsum yang tahan terhadap air hujan. Penggunaan material ringan pengganti batu bata konvensional  dapat dilakukan misalnya dengan menggunakan material bata hebel atau beton ringan.  Berbagai macam penelitian telah dilakukan untuk mencari material ringan yang cocok untuk  konsep rumah tahan gempa, misalnya penelitian yang dilakukan oleh Satyarno (2004) yang  menguji kekuatan beton ringan yang menggunakan tambahan agregat dari limbah styrofoam yang disebut sebagai Batafoam.', '2024-01-25 01:28:14', '2024-01-25 01:28:14'),
(194, 4, 36, 'perbedaan masa SD dan awal SMP menggambarkan pandangan kesuksesan penulis. Ketika SD kesuksesan diukur dari peringkat, ketika SMP penulis mengalami perubahan pandangan setelah tidak lagi menduduki peringkat pertama.', '2024-01-25 01:28:23', '2024-01-25 01:28:23'),
(195, 6, 9, 'Teks 1 merupakan teks esai cukilan watak yang menceritakan karir dan semoga bisa memotivasi', '2024-01-25 01:28:23', '2024-01-25 01:28:23'),
(196, 5, 39, 'Kesimpulan di teks kedua adalah cara mengatasi kejadian gempa dan dalam menghadapi risiko gempa di Indonesia khusunya pada bangunan non-egineered seperti rumah atau bangunan bangunan kecil, perlu konsep tahan gempa', '2024-01-25 01:28:43', '2024-01-25 01:28:43'),
(197, 2, 8, 'Ide pokok yang dapat saya ambil adalah kesuksesan hidup penulis bisa melewati batasan/kapasitas diri dan juga tidak hanya jadi nomor satu tapi bermanfaat dari lingkungan juga merupakan kesuksesan', '2024-01-25 01:28:48', '2024-01-25 01:28:48'),
(198, 7, 17, 'Teks ini berupa kumparan untuk membuat fondasi atau prmbangunan dalam penelitianya', '2024-01-25 01:28:55', '2024-01-25 01:28:55'),
(199, 7, 9, 'teks ini merupakan teks esai deskriptif', '2024-01-25 01:29:03', '2024-01-25 01:29:03'),
(200, 6, 10, 'Teks ini bersifat pribadi karena menceritakan pengalaman tentang sendiri', '2024-01-25 01:29:44', '2024-01-25 01:29:44'),
(201, 4, 5, 'Kesimpulan teks ini adalah pandangan penulis yang menyadari bahwa kesuksesan tidak hanya berasal dari diri sendiri namun berasal dari manfaat dirinya terhadap lingkungan dan orang lain.', '2024-01-25 01:30:39', '2024-01-25 01:30:39'),
(202, 5, 40, 'kesimpulan: Dalam menghadapi risiko gempa di Indonesia, khususnya pada bangunan non-engineered seperti rumah warga, perlu adopsi konsep tahan gempa yang sederhana. Aturan seperti SNI 1726:2019 menjadi acuan, dan solusi praktis menggunakan material ringan, seperti kayu dan beton pracetak, memberikan harapan untuk mengurangi dampak gempa. Inisiatif dari Kementerian PUPR, seperti rumah RISBA dan RISHA, menawarkan alternatif yang berpotensi mengurangi risiko kerugian materil dan korban jiwa, membuka jalan menuju infrastruktur bangunan yang lebih tahan gempa di Indonesia.', '2024-01-25 01:30:52', '2024-01-25 01:30:52'),
(203, 3, 35, 'ide pokok paragraf ke 1: Indonesia, sebagai negara dengan intensitas gempa tinggi, menghadapi kebutuhan untuk meningkatkan keamanan infrastruktur terhadap gempa.', '2024-01-25 01:31:03', '2024-01-25 01:31:03'),
(204, 6, 39, 'Teks pertama merupakan jenis teks esai pribadi, karena menceritakan pengalaman pribadi dan termasuk esai beasiswa', '2024-01-25 01:31:31', '2024-01-25 01:31:31'),
(205, 3, 6, 'ide pokok paragraf pertama : Indonesia merupakan negara yang sering mengalami gempa, hal tersebut membuat memaksa infrastruktur di indonesia dirancang harus lebih aman terhadap gempa', '2024-01-25 01:31:32', '2024-01-25 01:31:32'),
(206, 7, 10, 'Teks 2 lebih menceritakan cara mencegah dan cara membuat bangunan yang layak untuk anti gempa, ini adalah teks esai deskriptif', '2024-01-25 01:31:35', '2024-01-25 01:31:35'),
(207, 6, 21, 'di dalam teks ini banyak sekali isi yang sangat bermanfaat seperti contoh nya yaitu \"Menceritakan perjalanan hidup seseorang\"', '2024-01-25 01:31:36', '2024-01-25 01:31:36'),
(208, 3, 8, 'Ide pokok yang saya dapat saya ambil adalah material ringan pada bangunan juga dapat mengurangi dampak gempa. Tidak hanya material berat seperti baja, kayu, beton dapat diadopsi untuk bangunan tahan gempa.', '2024-01-25 01:32:13', '2024-01-25 01:32:13'),
(209, 6, 26, 'Teks ini termasuk teks esai jenis deskriptif', '2024-01-25 01:32:41', '2024-01-25 01:32:41'),
(210, 5, 36, 'cara mengatasi gempa dalam menghadapi resiko gempa di Indonesia khususnya pada bangunan non-egineered.', '2024-01-25 01:32:46', '2024-01-25 01:32:46'),
(211, 6, 40, 'teks 1 termasuk jenis teks esai pribadi karena isinya menceritakan pengalaman pribadi', '2024-01-25 01:32:47', '2024-01-25 01:32:47'),
(212, 7, 21, 'berbeda dengan sebelum nya disini kita memiliki pembahasan tentang bencana alam yaitu gempa dan membuat cara-cara bangunan yang anti terhadap gempa.', '2024-01-25 01:33:31', '2024-01-25 01:33:31'),
(213, 6, 36, 'membahas pengalaman pribadi', '2024-01-25 01:33:41', '2024-01-25 01:33:41'),
(214, 5, 24, 'Kesimpulan teks kedua yaitu adalah cara mencegah dan menghadapi bencana gempa bumi di Indonesia, dengan menggunakan material ringan pada bangunan non-engineered untuk mewujudkan infrastruktur tahan gempa.', '2024-01-25 01:33:45', '2024-01-25 01:33:45'),
(215, 4, 35, 'kesimpulan teks ini adalah kesuksesan sejati bukan hanya mencakup pencapaian pribadi, tetapi juga kemampuan dan kapasitas untuk membawa perubahan positif bagi sesama dan masyarakat.', '2024-01-25 01:33:57', '2024-01-25 01:33:57'),
(216, 7, 39, 'Perbedaan teks 2 merupakan jenis teks esai deskriptif, karena menceritakan cara mengatasi gempa dan cara membuat bangunan bangunan anti gempa, teks esai tersebut merupakan teks esai lomba', '2024-01-25 01:34:11', '2024-01-25 01:34:11'),
(217, 6, 26, 'teks ini termasuk ke dalam teks esai pribadi (perbaikan)', '2024-01-25 01:34:14', '2024-01-25 01:34:14'),
(218, 7, 40, 'teks 2 merupakan teks esai deksriptif karena menjelaskan tentang suatu kejadian dengan jelas', '2024-01-25 01:34:19', '2024-01-25 01:34:19'),
(219, 4, 6, 'Kesimpulan teks ini membuat saya sadar bahwa nilai bukanlah segalanya, kesuksesan tidak diukur sebatas nilai dan diri sendiri, kesukesan adalah ketika anda berguna untuk orang lain dan masyarskat sekitar, nilai dan pendidikan hanya menjadi poin plus namun tidak kalah penting', '2024-01-25 01:34:21', '2024-01-25 01:34:21'),
(220, 5, 5, 'Kesimpulan teks ini adalah bahwa bangunan sederhana di Indonesia masih banyak terdampak gempa karena bangunan tidak mengadopsi konsep tahan gempa yang dimana dengan teknologi saat ini sudah bisa diterapkan dengan mudah dan sederhana agar mengurangi dampak gempa yang sering terjadi di Indonesia.', '2024-01-25 01:34:28', '2024-01-25 01:34:28'),
(221, 4, 8, 'Kesimpulan teks ini adalah kesuksesan tidak selalu berbentuk/berupa menjadi nomor 1, tetapi juga bisa menjadi manfaat bagi orang banyak adalah kesuksesan. Peningkatan kapasitas juga diperlukan untuk kesuksesan, seperti pendidikan', '2024-01-25 01:34:30', '2024-01-25 01:34:30'),
(222, 7, 26, 'teks ini termasuk teks esai deskriptif', '2024-01-25 01:34:57', '2024-01-25 01:34:57'),
(223, 7, 36, 'membahas topik menggunakan fakta', '2024-01-25 01:35:06', '2024-01-25 01:35:06'),
(224, 6, 5, 'Teks ini merupakan jenis teks pribadi yang membahas sudut pandang penulis terhadap kondisi pendidikan di Indonesia dan kesuksesan menurut penulis.', '2024-01-25 01:36:12', '2024-01-25 01:36:12'),
(225, 5, 35, 'kesimpulannya adalah Indonesia sebagai negara dengan intensitas gempa tinggi telah mengeluarkan berbagai aturan, seperti SNI 1726:2019, untuk memastikan infrastruktur tahan gempa.', '2024-01-25 01:36:30', '2024-01-25 01:36:30'),
(226, 7, 24, 'Teks ke dua merupakan jenis teks esai deskriptif, karena memberi solusi cara mengatasi gempa dengan cara membuat material ringan.', '2024-01-25 01:37:14', '2024-01-25 01:37:14'),
(227, 5, 6, 'Kesimpulan teks ini adalah, membuat saya sadar bahwa infrastruktur di indonesia belum semuanya sudah tahan gempa, walau sudah ada fitur non-engineered', '2024-01-25 01:37:42', '2024-01-25 01:37:42'),
(228, 7, 5, 'Teks ini merupakan jenis esai deskriptif karena membahas suatu fenomena rumah sederhana di Indonesia masih terdampak dengan gempa karena tidak menerapkan konsep bangunan tahan gempa.', '2024-01-25 01:38:01', '2024-01-25 01:38:01'),
(229, 5, 8, 'Kesimpulan teks di atas adalah bahwa banyak bangunan indonesia yang tidak mengadopsi bangunan/rumah tahan gempa. Dan juga material ringan dapat menjadi bahan bangunan tahan gempa.', '2024-01-25 01:40:05', '2024-01-25 01:40:05'),
(230, 6, 6, 'Teks 1, merupakan teks narasi penulis tentang perjalanan hidupnya tentang kesuksesan dalam sudut pandang penulis', '2024-01-25 01:40:15', '2024-01-25 01:40:15'),
(231, 6, 35, 'teks ini adalah teks pribadi karena isinya menceritakan tentang pandangan sang penulis tentang kesuksesan dan perjalanan pendidikan nya.', '2024-01-25 01:41:14', '2024-01-25 01:41:14'),
(232, 7, 6, 'Teks kedua merupakan esai menggunakan topik yang fakta tidak seperti teks 1, yg merupakan opini pribadi sang penulis', '2024-01-25 01:41:26', '2024-01-25 01:41:26'),
(233, 6, 8, 'Teks ini membahas tentang definisi kesuksesan dan upaya peningkatan kapasitas diri melalui pendidikan.', '2024-01-25 01:41:56', '2024-01-25 01:41:56'),
(234, 7, 8, 'Teks ini mebahas tentang penerapan material bangunan ringan pada rumah tinggal untuk meningkatkan ketahanan terhadap gempa.', '2024-01-25 01:43:31', '2024-01-25 01:43:31'),
(235, 7, 35, 'teks ini adalah teks deskriptif karena membahas tentang penggunaan material ringan pada bangunan Non-Engineered sebagai upaya  mewujudkan infrastruktur tahan gempa di Indonesia.', '2024-01-25 01:44:07', '2024-01-25 01:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soal_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pilihanuser` varchar(24) NOT NULL,
  `pilihanbenar` varchar(24) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id`, `soal_id`, `user_id`, `pilihanuser`, `pilihanbenar`, `created_at`, `updated_at`) VALUES
(38, 1, 23, 'a', 'a', '2024-01-24 16:59:37', '2024-01-24 16:59:37'),
(39, 2, 23, 'c', 'c', '2024-01-24 17:01:25', '2024-01-24 17:01:25'),
(40, 3, 23, 'c', 'c', '2024-01-24 17:03:49', '2024-01-24 17:03:49'),
(41, 1, 19, 'a', 'a', '2024-01-24 17:04:41', '2024-01-24 17:04:41'),
(42, 1, 16, 'a', 'a', '2024-01-24 17:04:51', '2024-01-24 17:04:51'),
(43, 4, 23, 'a', 'a', '2024-01-24 17:05:59', '2024-01-24 17:05:59'),
(44, 2, 19, 'e', 'c', '2024-01-24 17:06:01', '2024-01-24 17:06:01'),
(45, 2, 16, 'c', 'c', '2024-01-24 17:06:10', '2024-01-24 17:06:10'),
(46, 3, 19, 'a', 'c', '2024-01-24 17:07:21', '2024-01-24 17:07:21'),
(47, 5, 23, 'e', 'b', '2024-01-24 17:07:32', '2024-01-24 17:07:32'),
(48, 1, 11, 'a', 'a', '2024-01-24 17:07:37', '2024-01-24 17:07:37'),
(49, 4, 19, 'a', 'a', '2024-01-24 17:07:39', '2024-01-24 17:07:39'),
(50, 1, 14, 'a', 'a', '2024-01-24 17:07:51', '2024-01-24 17:07:51'),
(51, 1, 20, 'a', 'a', '2024-01-24 17:07:57', '2024-01-24 17:07:57'),
(52, 5, 19, 'b', 'b', '2024-01-24 17:08:05', '2024-01-24 17:08:05'),
(53, 6, 23, 'a', 'a', '2024-01-24 17:08:09', '2024-01-24 17:08:09'),
(54, 7, 23, 'a', 'a', '2024-01-24 17:08:15', '2024-01-24 17:08:15'),
(55, 2, 14, 'c', 'c', '2024-01-24 17:08:21', '2024-01-24 17:08:21'),
(56, 2, 11, 'c', 'c', '2024-01-24 17:08:45', '2024-01-24 17:08:45'),
(57, 6, 19, 'a', 'a', '2024-01-24 17:08:52', '2024-01-24 17:08:52'),
(58, 3, 16, 'e', 'c', '2024-01-24 17:09:02', '2024-01-24 17:09:02'),
(59, 3, 14, 'c', 'c', '2024-01-24 17:09:15', '2024-01-24 17:09:15'),
(60, 7, 19, 'a', 'a', '2024-01-24 17:09:27', '2024-01-24 17:09:27'),
(61, 2, 20, 'e', 'c', '2024-01-24 17:09:57', '2024-01-24 17:09:57'),
(62, 8, 19, 'a', 'b', '2024-01-24 17:09:57', '2024-01-24 17:09:57'),
(63, 1, 7, 'a', 'a', '2024-01-24 17:09:57', '2024-01-24 17:09:57'),
(64, 4, 16, 'b', 'a', '2024-01-24 17:10:09', '2024-01-24 17:10:09'),
(65, 3, 11, 'c', 'c', '2024-01-24 17:10:11', '2024-01-24 17:10:11'),
(66, 9, 19, 'a', 'b', '2024-01-24 17:10:12', '2024-01-24 17:10:12'),
(67, 4, 14, 'a', 'a', '2024-01-24 17:10:15', '2024-01-24 17:10:15'),
(68, 8, 23, 'a', 'b', '2024-01-24 17:10:31', '2024-01-24 17:10:31'),
(69, 9, 23, 'b', 'b', '2024-01-24 17:10:42', '2024-01-24 17:10:42'),
(70, 10, 19, 'b', 'b', '2024-01-24 17:10:57', '2024-01-24 17:10:57'),
(71, 3, 20, 'c', 'c', '2024-01-24 17:11:04', '2024-01-24 17:11:04'),
(72, 5, 14, 'b', 'b', '2024-01-24 17:11:13', '2024-01-24 17:11:13'),
(73, 6, 14, 'a', 'a', '2024-01-24 17:11:24', '2024-01-24 17:11:24'),
(74, 7, 14, 'a', 'a', '2024-01-24 17:11:31', '2024-01-24 17:11:31'),
(75, 5, 16, 'b', 'b', '2024-01-24 17:11:33', '2024-01-24 17:11:33'),
(76, 2, 7, 'c', 'c', '2024-01-24 17:11:35', '2024-01-24 17:11:35'),
(77, 8, 14, 'a', 'b', '2024-01-24 17:11:37', '2024-01-24 17:11:37'),
(78, 4, 11, 'a', 'a', '2024-01-24 17:11:40', '2024-01-24 17:11:40'),
(79, 9, 14, 'b', 'b', '2024-01-24 17:11:49', '2024-01-24 17:11:49'),
(80, 10, 14, 'b', 'b', '2024-01-24 17:11:57', '2024-01-24 17:11:57'),
(81, 6, 16, 'a', 'a', '2024-01-24 17:12:30', '2024-01-24 17:12:30'),
(82, 10, 23, 'b', 'b', '2024-01-24 17:12:31', '2024-01-24 17:12:31'),
(83, 7, 16, 'a', 'a', '2024-01-24 17:12:42', '2024-01-24 17:12:42'),
(84, 8, 16, 'a', 'b', '2024-01-24 17:12:52', '2024-01-24 17:12:52'),
(85, 5, 11, 'b', 'b', '2024-01-24 17:12:54', '2024-01-24 17:12:54'),
(86, 4, 20, 'a', 'a', '2024-01-24 17:12:57', '2024-01-24 17:12:57'),
(87, 3, 7, 'd', 'c', '2024-01-24 17:13:04', '2024-01-24 17:13:04'),
(88, 6, 11, 'a', 'a', '2024-01-24 17:13:05', '2024-01-24 17:13:05'),
(89, 9, 16, 'a', 'b', '2024-01-24 17:13:19', '2024-01-24 17:13:19'),
(90, 7, 11, 'a', 'a', '2024-01-24 17:13:22', '2024-01-24 17:13:22'),
(91, 10, 16, 'b', 'b', '2024-01-24 17:13:42', '2024-01-24 17:13:42'),
(92, 4, 7, 'a', 'a', '2024-01-24 17:13:45', '2024-01-24 17:13:45'),
(93, 8, 11, 'a', 'b', '2024-01-24 17:14:02', '2024-01-24 17:14:02'),
(94, 9, 11, 'b', 'b', '2024-01-24 17:14:10', '2024-01-24 17:14:10'),
(95, 5, 20, 'c', 'b', '2024-01-24 17:14:14', '2024-01-24 17:14:14'),
(96, 10, 11, 'b', 'b', '2024-01-24 17:14:30', '2024-01-24 17:14:30'),
(97, 6, 20, 'a', 'a', '2024-01-24 17:15:12', '2024-01-24 17:15:12'),
(98, 5, 7, 'c', 'b', '2024-01-24 17:15:26', '2024-01-24 17:15:26'),
(99, 7, 20, 'a', 'a', '2024-01-24 17:15:32', '2024-01-24 17:15:32'),
(100, 6, 7, 'a', 'a', '2024-01-24 17:15:43', '2024-01-24 17:15:43'),
(101, 8, 20, 'a', 'b', '2024-01-24 17:15:55', '2024-01-24 17:15:55'),
(102, 7, 7, 'a', 'a', '2024-01-24 17:16:01', '2024-01-24 17:16:01'),
(103, 8, 7, 'a', 'b', '2024-01-24 17:16:13', '2024-01-24 17:16:13'),
(104, 9, 20, 'b', 'b', '2024-01-24 17:16:17', '2024-01-24 17:16:17'),
(105, 9, 7, 'b', 'b', '2024-01-24 17:16:29', '2024-01-24 17:16:29'),
(106, 10, 7, 'b', 'b', '2024-01-24 17:16:46', '2024-01-24 17:16:46'),
(107, 10, 20, 'b', 'b', '2024-01-24 17:16:51', '2024-01-24 17:16:51'),
(108, 1, 22, 'd', 'a', '2024-01-24 17:16:55', '2024-01-24 17:16:55'),
(109, 2, 22, 'c', 'c', '2024-01-24 17:19:42', '2024-01-24 17:19:42'),
(110, 3, 22, 'e', 'c', '2024-01-24 17:21:54', '2024-01-24 17:21:54'),
(111, 4, 22, 'a', 'a', '2024-01-24 17:23:15', '2024-01-24 17:23:15'),
(112, 1, 18, 'a', 'a', '2024-01-24 17:23:43', '2024-01-24 17:23:43'),
(113, 5, 22, 'b', 'b', '2024-01-24 17:24:23', '2024-01-24 17:24:23'),
(114, 6, 22, 'a', 'a', '2024-01-24 17:24:41', '2024-01-24 17:24:41'),
(115, 7, 22, 'a', 'a', '2024-01-24 17:25:24', '2024-01-24 17:25:24'),
(116, 8, 22, 'a', 'b', '2024-01-24 17:25:35', '2024-01-24 17:25:35'),
(117, 2, 18, 'e', 'c', '2024-01-24 17:25:49', '2024-01-24 17:25:49'),
(118, 9, 22, 'b', 'b', '2024-01-24 17:26:03', '2024-01-24 17:26:03'),
(119, 10, 22, 'b', 'b', '2024-01-24 17:26:50', '2024-01-24 17:26:50'),
(120, 3, 18, 'e', 'c', '2024-01-24 17:29:38', '2024-01-24 17:29:38'),
(121, 4, 18, 'a', 'a', '2024-01-24 17:33:37', '2024-01-24 17:33:37'),
(122, 5, 18, 'b', 'b', '2024-01-24 17:35:54', '2024-01-24 17:35:54'),
(123, 6, 18, 'a', 'a', '2024-01-24 17:37:22', '2024-01-24 17:37:22'),
(124, 7, 18, 'a', 'a', '2024-01-24 17:37:32', '2024-01-24 17:37:32'),
(125, 8, 18, 'b', 'b', '2024-01-24 17:38:43', '2024-01-24 17:38:43'),
(126, 1, 15, 'a', 'a', '2024-01-24 17:39:46', '2024-01-24 17:39:46'),
(127, 9, 18, 'b', 'b', '2024-01-24 17:40:41', '2024-01-24 17:40:41'),
(128, 10, 18, 'b', 'b', '2024-01-24 17:41:43', '2024-01-24 17:41:43'),
(129, 2, 15, 'e', 'c', '2024-01-24 17:41:50', '2024-01-24 17:41:50'),
(130, 3, 15, 'a', 'c', '2024-01-24 17:42:42', '2024-01-24 17:42:42'),
(131, 4, 15, 'a', 'a', '2024-01-24 17:43:50', '2024-01-24 17:43:50'),
(132, 5, 15, 'b', 'b', '2024-01-24 17:45:08', '2024-01-24 17:45:08'),
(133, 1, 30, 'a', 'a', '2024-01-24 17:45:17', '2024-01-24 17:45:17'),
(134, 6, 15, 'a', 'a', '2024-01-24 17:45:59', '2024-01-24 17:45:59'),
(135, 7, 15, 'a', 'a', '2024-01-24 17:46:09', '2024-01-24 17:46:09'),
(136, 8, 15, 'a', 'b', '2024-01-24 17:46:17', '2024-01-24 17:46:17'),
(137, 9, 15, 'b', 'b', '2024-01-24 17:46:29', '2024-01-24 17:46:29'),
(138, 10, 15, 'b', 'b', '2024-01-24 17:46:57', '2024-01-24 17:46:57'),
(139, 2, 30, 'c', 'c', '2024-01-24 17:48:08', '2024-01-24 17:48:08'),
(140, 3, 30, 'a', 'c', '2024-01-24 17:49:04', '2024-01-24 17:49:04'),
(141, 1, 28, 'a', 'a', '2024-01-24 17:49:20', '2024-01-24 17:49:20'),
(142, 1, 12, 'a', 'a', '2024-01-24 17:50:22', '2024-01-24 17:50:22'),
(143, 2, 12, 'c', 'c', '2024-01-24 17:52:12', '2024-01-24 17:52:12'),
(144, 4, 30, 'a', 'a', '2024-01-24 17:52:31', '2024-01-24 17:52:31'),
(145, 2, 28, 'c', 'c', '2024-01-24 17:52:38', '2024-01-24 17:52:38'),
(146, 5, 30, 'b', 'b', '2024-01-24 17:53:27', '2024-01-24 17:53:27'),
(147, 6, 30, 'a', 'a', '2024-01-24 17:53:41', '2024-01-24 17:53:41'),
(148, 7, 30, 'a', 'a', '2024-01-24 17:53:53', '2024-01-24 17:53:53'),
(149, 8, 30, 'a', 'b', '2024-01-24 17:54:10', '2024-01-24 17:54:10'),
(150, 9, 30, 'b', 'b', '2024-01-24 17:54:18', '2024-01-24 17:54:18'),
(151, 10, 30, 'a', 'b', '2024-01-24 17:54:36', '2024-01-24 17:54:36'),
(152, 3, 12, 'e', 'c', '2024-01-24 17:54:36', '2024-01-24 17:54:36'),
(153, 3, 28, 'c', 'c', '2024-01-24 17:55:35', '2024-01-24 17:55:35'),
(154, 1, 29, 'd', 'a', '2024-01-24 17:55:40', '2024-01-24 17:55:40'),
(155, 1, 3, 'a', 'a', '2024-01-24 17:55:40', '2024-01-24 17:55:40'),
(156, 2, 29, 'c', 'c', '2024-01-24 17:56:24', '2024-01-24 17:56:24'),
(157, 2, 3, 'c', 'c', '2024-01-24 17:56:39', '2024-01-24 17:56:39'),
(158, 4, 12, 'a', 'a', '2024-01-24 17:57:05', '2024-01-24 17:57:05'),
(159, 3, 29, 'a', 'c', '2024-01-24 17:57:55', '2024-01-24 17:57:55'),
(160, 3, 3, 'e', 'c', '2024-01-24 17:58:00', '2024-01-24 17:58:00'),
(161, 4, 28, 'a', 'a', '2024-01-24 17:58:30', '2024-01-24 17:58:30'),
(162, 4, 29, 'a', 'a', '2024-01-24 17:58:48', '2024-01-24 17:58:48'),
(163, 4, 3, 'e', 'a', '2024-01-24 17:59:42', '2024-01-24 17:59:42'),
(164, 5, 12, 'b', 'b', '2024-01-24 18:00:39', '2024-01-24 18:00:39'),
(165, 5, 29, 'b', 'b', '2024-01-24 18:00:43', '2024-01-24 18:00:43'),
(166, 5, 3, 'b', 'b', '2024-01-24 18:00:50', '2024-01-24 18:00:50'),
(167, 6, 12, 'a', 'a', '2024-01-24 18:01:09', '2024-01-24 18:01:09'),
(168, 5, 28, 'd', 'b', '2024-01-24 18:01:09', '2024-01-24 18:01:09'),
(169, 6, 29, 'a', 'a', '2024-01-24 18:01:23', '2024-01-24 18:01:23'),
(170, 7, 12, 'a', 'a', '2024-01-24 18:01:33', '2024-01-24 18:01:33'),
(171, 7, 29, 'a', 'a', '2024-01-24 18:01:35', '2024-01-24 18:01:35'),
(172, 6, 3, 'a', 'a', '2024-01-24 18:01:43', '2024-01-24 18:01:43'),
(173, 8, 29, 'a', 'b', '2024-01-24 18:01:44', '2024-01-24 18:01:44'),
(174, 6, 28, 'a', 'a', '2024-01-24 18:01:47', '2024-01-24 18:01:47'),
(175, 1, 31, 'a', 'a', '2024-01-24 18:01:48', '2024-01-24 18:01:48'),
(176, 7, 3, 'a', 'a', '2024-01-24 18:01:54', '2024-01-24 18:01:54'),
(177, 9, 29, 'b', 'b', '2024-01-24 18:01:54', '2024-01-24 18:01:54'),
(178, 8, 3, 'a', 'b', '2024-01-24 18:02:05', '2024-01-24 18:02:05'),
(179, 9, 3, 'b', 'b', '2024-01-24 18:02:16', '2024-01-24 18:02:16'),
(180, 7, 28, 'a', 'a', '2024-01-24 18:02:18', '2024-01-24 18:02:18'),
(181, 2, 31, 'c', 'c', '2024-01-24 18:02:24', '2024-01-24 18:02:24'),
(182, 8, 28, 'a', 'b', '2024-01-24 18:02:31', '2024-01-24 18:02:31'),
(183, 8, 12, 'a', 'b', '2024-01-24 18:02:33', '2024-01-24 18:02:33'),
(184, 8, 28, 'b', 'b', '2024-01-24 18:02:42', '2024-01-24 18:02:42'),
(185, 10, 29, 'a', 'b', '2024-01-24 18:02:50', '2024-01-24 18:02:50'),
(186, 10, 3, 'b', 'b', '2024-01-24 18:02:51', '2024-01-24 18:02:51'),
(187, 9, 28, 'b', 'b', '2024-01-24 18:02:57', '2024-01-24 18:02:57'),
(188, 9, 12, 'b', 'b', '2024-01-24 18:03:17', '2024-01-24 18:03:17'),
(189, 4, 28, 'a', 'a', '2024-01-24 18:03:55', '2024-01-24 18:03:55'),
(190, 10, 12, 'a', 'b', '2024-01-24 18:03:58', '2024-01-24 18:03:58'),
(191, 5, 28, 'd', 'b', '2024-01-24 18:04:26', '2024-01-24 18:04:26'),
(192, 5, 28, 'b', 'b', '2024-01-24 18:04:35', '2024-01-24 18:04:35'),
(193, 6, 28, 'a', 'a', '2024-01-24 18:04:42', '2024-01-24 18:04:42'),
(194, 3, 31, 'd', 'c', '2024-01-24 18:04:47', '2024-01-24 18:04:47'),
(195, 1, 28, 'a', 'a', '2024-01-24 18:04:59', '2024-01-24 18:04:59'),
(196, 2, 28, 'c', 'c', '2024-01-24 18:05:14', '2024-01-24 18:05:14'),
(197, 3, 28, 'c', 'c', '2024-01-24 18:05:24', '2024-01-24 18:05:24'),
(198, 4, 28, 'a', 'a', '2024-01-24 18:05:39', '2024-01-24 18:05:39'),
(199, 5, 28, 'b', 'b', '2024-01-24 18:05:46', '2024-01-24 18:05:46'),
(200, 6, 28, 'a', 'a', '2024-01-24 18:05:50', '2024-01-24 18:05:50'),
(201, 7, 28, 'b', 'a', '2024-01-24 18:05:56', '2024-01-24 18:05:56'),
(202, 7, 28, 'a', 'a', '2024-01-24 18:06:02', '2024-01-24 18:06:02'),
(203, 4, 31, 'a', 'a', '2024-01-24 18:06:06', '2024-01-24 18:06:06'),
(204, 8, 28, 'b', 'b', '2024-01-24 18:06:09', '2024-01-24 18:06:09'),
(205, 9, 28, 'b', 'b', '2024-01-24 18:06:19', '2024-01-24 18:06:19'),
(206, 5, 31, 'a', 'b', '2024-01-24 18:06:27', '2024-01-24 18:06:27'),
(207, 6, 31, 'a', 'a', '2024-01-24 18:06:39', '2024-01-24 18:06:39'),
(208, 7, 31, 'a', 'a', '2024-01-24 18:07:05', '2024-01-24 18:07:05'),
(209, 10, 28, 'b', 'b', '2024-01-24 18:07:10', '2024-01-24 18:07:10'),
(210, 8, 31, 'a', 'b', '2024-01-24 18:07:31', '2024-01-24 18:07:31'),
(211, 9, 31, 'b', 'b', '2024-01-24 18:07:43', '2024-01-24 18:07:43'),
(212, 10, 31, 'b', 'b', '2024-01-24 18:07:51', '2024-01-24 18:07:51'),
(213, 1, 32, 'a', 'a', '2024-01-24 18:10:29', '2024-01-24 18:10:29'),
(214, 1, 28, 'a', 'a', '2024-01-24 18:11:48', '2024-01-24 18:11:48'),
(215, 2, 32, 'c', 'c', '2024-01-24 18:12:01', '2024-01-24 18:12:01'),
(216, 2, 28, 'c', 'c', '2024-01-24 18:12:25', '2024-01-24 18:12:25'),
(217, 1, 37, 'a', 'a', '2024-01-24 18:12:33', '2024-01-24 18:12:33'),
(218, 3, 28, 'c', 'c', '2024-01-24 18:12:42', '2024-01-24 18:12:42'),
(219, 4, 28, 'a', 'a', '2024-01-24 18:13:00', '2024-01-24 18:13:00'),
(220, 5, 28, 'b', 'b', '2024-01-24 18:13:11', '2024-01-24 18:13:11'),
(221, 2, 37, 'c', 'c', '2024-01-24 18:13:13', '2024-01-24 18:13:13'),
(222, 6, 28, 'a', 'a', '2024-01-24 18:13:22', '2024-01-24 18:13:22'),
(223, 7, 28, 'a', 'a', '2024-01-24 18:13:29', '2024-01-24 18:13:29'),
(224, 1, 4, 'a', 'a', '2024-01-24 18:13:31', '2024-01-24 18:13:31'),
(225, 1, 33, 'b', 'a', '2024-01-24 18:13:36', '2024-01-24 18:13:36'),
(226, 8, 28, 'b', 'b', '2024-01-24 18:13:37', '2024-01-24 18:13:37'),
(227, 3, 32, 'c', 'c', '2024-01-24 18:13:44', '2024-01-24 18:13:44'),
(228, 9, 28, 'b', 'b', '2024-01-24 18:14:11', '2024-01-24 18:14:11'),
(229, 10, 28, 'b', 'b', '2024-01-24 18:14:18', '2024-01-24 18:14:18'),
(230, 2, 4, 'c', 'c', '2024-01-24 18:14:51', '2024-01-24 18:14:51'),
(231, 3, 37, 'c', 'c', '2024-01-24 18:15:37', '2024-01-24 18:15:37'),
(232, 4, 37, 'a', 'a', '2024-01-24 18:16:25', '2024-01-24 18:16:25'),
(233, 3, 4, 'c', 'c', '2024-01-24 18:16:58', '2024-01-24 18:16:58'),
(234, 1, 12, 'a', 'a', '2024-01-24 18:17:10', '2024-01-24 18:17:10'),
(235, 2, 33, 'c', 'c', '2024-01-24 18:17:31', '2024-01-24 18:17:31'),
(236, 1, 12, 'a', 'a', '2024-01-24 18:17:32', '2024-01-24 18:17:32'),
(237, 4, 32, 'a', 'a', '2024-01-24 18:17:39', '2024-01-24 18:17:39'),
(238, 2, 12, 'c', 'c', '2024-01-24 18:17:50', '2024-01-24 18:17:50'),
(239, 5, 37, 'b', 'b', '2024-01-24 18:18:05', '2024-01-24 18:18:05'),
(240, 4, 4, 'b', 'a', '2024-01-24 18:18:06', '2024-01-24 18:18:06'),
(241, 3, 12, 'c', 'c', '2024-01-24 18:18:13', '2024-01-24 18:18:13'),
(242, 5, 32, 'b', 'b', '2024-01-24 18:18:27', '2024-01-24 18:18:27'),
(243, 4, 12, 'a', 'a', '2024-01-24 18:18:34', '2024-01-24 18:18:34'),
(244, 6, 37, 'a', 'a', '2024-01-24 18:18:35', '2024-01-24 18:18:35'),
(245, 7, 37, 'a', 'a', '2024-01-24 18:18:44', '2024-01-24 18:18:44'),
(246, 4, 12, 'a', 'a', '2024-01-24 18:19:09', '2024-01-24 18:19:09'),
(247, 6, 32, 'b', 'a', '2024-01-24 18:19:12', '2024-01-24 18:19:12'),
(248, 8, 37, 'a', 'b', '2024-01-24 18:19:22', '2024-01-24 18:19:22'),
(249, 9, 37, 'b', 'b', '2024-01-24 18:19:34', '2024-01-24 18:19:34'),
(250, 3, 33, 'b', 'c', '2024-01-24 18:19:47', '2024-01-24 18:19:47'),
(251, 5, 4, 'e', 'b', '2024-01-24 18:19:56', '2024-01-24 18:19:56'),
(252, 1, 38, 'a', 'a', '2024-01-24 18:19:57', '2024-01-24 18:19:57'),
(253, 7, 32, 'a', 'a', '2024-01-24 18:19:59', '2024-01-24 18:19:59'),
(254, 6, 4, 'a', 'a', '2024-01-24 18:20:04', '2024-01-24 18:20:04'),
(255, 5, 12, 'b', 'b', '2024-01-24 18:20:17', '2024-01-24 18:20:17'),
(256, 7, 4, 'b', 'a', '2024-01-24 18:20:21', '2024-01-24 18:20:21'),
(257, 8, 4, 'b', 'b', '2024-01-24 18:20:31', '2024-01-24 18:20:31'),
(258, 10, 37, 'b', 'b', '2024-01-24 18:20:32', '2024-01-24 18:20:32'),
(259, 2, 38, 'c', 'c', '2024-01-24 18:20:35', '2024-01-24 18:20:35'),
(260, 9, 4, 'b', 'b', '2024-01-24 18:20:41', '2024-01-24 18:20:41'),
(261, 5, 12, 'b', 'b', '2024-01-24 18:20:42', '2024-01-24 18:20:42'),
(262, 6, 12, 'a', 'a', '2024-01-24 18:20:56', '2024-01-24 18:20:56'),
(263, 4, 33, 'a', 'a', '2024-01-24 18:21:05', '2024-01-24 18:21:05'),
(264, 7, 12, 'a', 'a', '2024-01-24 18:21:05', '2024-01-24 18:21:05'),
(265, 8, 12, 'b', 'b', '2024-01-24 18:21:17', '2024-01-24 18:21:17'),
(266, 10, 4, 'b', 'b', '2024-01-24 18:21:20', '2024-01-24 18:21:20'),
(267, 8, 32, 'b', 'b', '2024-01-24 18:21:26', '2024-01-24 18:21:26'),
(268, 9, 12, 'b', 'b', '2024-01-24 18:21:38', '2024-01-24 18:21:38'),
(269, 10, 12, 'b', 'b', '2024-01-24 18:21:46', '2024-01-24 18:21:46'),
(270, 5, 33, 'b', 'b', '2024-01-24 18:22:09', '2024-01-24 18:22:09'),
(271, 9, 32, 'b', 'b', '2024-01-24 18:22:26', '2024-01-24 18:22:26'),
(272, 1, 27, 'a', 'a', '2024-01-24 18:22:28', '2024-01-24 18:22:28'),
(273, 6, 33, 'a', 'a', '2024-01-24 18:22:28', '2024-01-24 18:22:28'),
(274, 7, 33, 'a', 'a', '2024-01-24 18:22:48', '2024-01-24 18:22:48'),
(275, 8, 33, 'a', 'b', '2024-01-24 18:23:01', '2024-01-24 18:23:01'),
(276, 10, 32, 'b', 'b', '2024-01-24 18:23:07', '2024-01-24 18:23:07'),
(277, 9, 33, 'b', 'b', '2024-01-24 18:23:16', '2024-01-24 18:23:16'),
(278, 10, 33, 'a', 'b', '2024-01-24 18:23:33', '2024-01-24 18:23:33'),
(279, 3, 38, 'c', 'c', '2024-01-24 18:23:34', '2024-01-24 18:23:34'),
(280, 2, 27, 'c', 'c', '2024-01-24 18:24:02', '2024-01-24 18:24:02'),
(281, 4, 38, 'a', 'a', '2024-01-24 18:24:39', '2024-01-24 18:24:39'),
(282, 1, 34, 'a', 'a', '2024-01-24 18:25:10', '2024-01-24 18:25:10'),
(283, 5, 38, 'b', 'b', '2024-01-24 18:25:15', '2024-01-24 18:25:15'),
(284, 6, 38, 'a', 'a', '2024-01-24 18:25:47', '2024-01-24 18:25:47'),
(285, 7, 38, 'a', 'a', '2024-01-24 18:26:13', '2024-01-24 18:26:13'),
(286, 3, 27, 'c', 'c', '2024-01-24 18:26:38', '2024-01-24 18:26:38'),
(287, 2, 34, 'c', 'c', '2024-01-24 18:26:39', '2024-01-24 18:26:39'),
(288, 8, 38, 'a', 'b', '2024-01-24 18:26:42', '2024-01-24 18:26:42'),
(289, 9, 38, 'b', 'b', '2024-01-24 18:27:03', '2024-01-24 18:27:03'),
(290, 1, 12, 'a', 'a', '2024-01-24 18:27:14', '2024-01-24 18:27:14'),
(291, 10, 38, 'b', 'b', '2024-01-24 18:27:22', '2024-01-24 18:27:22'),
(292, 2, 12, 'c', 'c', '2024-01-24 18:27:47', '2024-01-24 18:27:47'),
(293, 4, 27, 'a', 'a', '2024-01-24 18:28:25', '2024-01-24 18:28:25'),
(294, 3, 12, 'c', 'c', '2024-01-24 18:28:45', '2024-01-24 18:28:45'),
(295, 4, 12, 'b', 'a', '2024-01-24 18:29:42', '2024-01-24 18:29:42'),
(296, 1, 17, 'b', 'a', '2024-01-24 18:29:57', '2024-01-24 18:29:57'),
(297, 2, 17, 'e', 'c', '2024-01-24 18:30:26', '2024-01-24 18:30:26'),
(298, 5, 12, 'b', 'b', '2024-01-24 18:30:34', '2024-01-24 18:30:34'),
(299, 3, 34, 'c', 'c', '2024-01-24 18:30:45', '2024-01-24 18:30:45'),
(300, 5, 27, 'b', 'b', '2024-01-24 18:30:51', '2024-01-24 18:30:51'),
(301, 6, 27, 'a', 'a', '2024-01-24 18:31:05', '2024-01-24 18:31:05'),
(302, 6, 12, 'a', 'a', '2024-01-24 18:31:08', '2024-01-24 18:31:08'),
(303, 7, 27, 'a', 'a', '2024-01-24 18:31:19', '2024-01-24 18:31:19'),
(304, 7, 12, 'a', 'a', '2024-01-24 18:31:20', '2024-01-24 18:31:20'),
(305, 1, 9, 'a', 'a', '2024-01-24 18:31:24', '2024-01-24 18:31:24'),
(306, 8, 27, 'a', 'b', '2024-01-24 18:31:30', '2024-01-24 18:31:30'),
(307, 8, 12, 'b', 'b', '2024-01-24 18:31:32', '2024-01-24 18:31:32'),
(308, 9, 27, 'b', 'b', '2024-01-24 18:31:42', '2024-01-24 18:31:42'),
(309, 6, 12, 'a', 'a', '2024-01-24 18:31:46', '2024-01-24 18:31:46'),
(310, 2, 9, 'b', 'c', '2024-01-24 18:31:49', '2024-01-24 18:31:49'),
(311, 6, 12, 'b', 'a', '2024-01-24 18:31:51', '2024-01-24 18:31:51'),
(312, 3, 17, 'e', 'c', '2024-01-24 18:31:55', '2024-01-24 18:31:55'),
(313, 10, 27, 'b', 'b', '2024-01-24 18:31:56', '2024-01-24 18:31:56'),
(314, 6, 12, 'a', 'a', '2024-01-24 18:31:57', '2024-01-24 18:31:57'),
(315, 7, 12, 'a', 'a', '2024-01-24 18:32:06', '2024-01-24 18:32:06'),
(316, 4, 34, 'a', 'a', '2024-01-24 18:32:15', '2024-01-24 18:32:15'),
(317, 3, 9, 'c', 'c', '2024-01-24 18:32:16', '2024-01-24 18:32:16'),
(318, 8, 12, 'b', 'b', '2024-01-24 18:32:27', '2024-01-24 18:32:27'),
(319, 4, 17, 'a', 'a', '2024-01-24 18:32:32', '2024-01-24 18:32:32'),
(320, 9, 12, 'b', 'b', '2024-01-24 18:32:34', '2024-01-24 18:32:34'),
(321, 5, 17, 'a', 'b', '2024-01-24 18:32:49', '2024-01-24 18:32:49'),
(322, 5, 34, 'b', 'b', '2024-01-24 18:32:52', '2024-01-24 18:32:52'),
(323, 4, 9, 'a', 'a', '2024-01-24 18:32:53', '2024-01-24 18:32:53'),
(324, 6, 17, 'a', 'a', '2024-01-24 18:32:57', '2024-01-24 18:32:57'),
(325, 6, 17, 'a', 'a', '2024-01-24 18:32:58', '2024-01-24 18:32:58'),
(326, 10, 12, 'b', 'b', '2024-01-24 18:33:03', '2024-01-24 18:33:03'),
(327, 7, 17, 'a', 'a', '2024-01-24 18:33:05', '2024-01-24 18:33:05'),
(328, 8, 17, 'a', 'b', '2024-01-24 18:33:14', '2024-01-24 18:33:14'),
(329, 5, 9, 'b', 'b', '2024-01-24 18:33:19', '2024-01-24 18:33:19'),
(330, 6, 34, 'a', 'a', '2024-01-24 18:33:23', '2024-01-24 18:33:23'),
(331, 9, 17, 'b', 'b', '2024-01-24 18:33:30', '2024-01-24 18:33:30'),
(332, 6, 9, 'a', 'a', '2024-01-24 18:33:33', '2024-01-24 18:33:33'),
(333, 10, 17, 'a', 'b', '2024-01-24 18:33:39', '2024-01-24 18:33:39'),
(334, 1, 10, 'a', 'a', '2024-01-24 18:33:45', '2024-01-24 18:33:45'),
(335, 7, 9, 'a', 'a', '2024-01-24 18:33:47', '2024-01-24 18:33:47'),
(336, 7, 34, 'a', 'a', '2024-01-24 18:33:52', '2024-01-24 18:33:52'),
(337, 8, 9, 'b', 'b', '2024-01-24 18:33:54', '2024-01-24 18:33:54'),
(338, 2, 10, 'c', 'c', '2024-01-24 18:33:56', '2024-01-24 18:33:56'),
(339, 9, 9, 'b', 'b', '2024-01-24 18:34:02', '2024-01-24 18:34:02'),
(340, 3, 10, 'c', 'c', '2024-01-24 18:34:04', '2024-01-24 18:34:04'),
(341, 10, 9, 'b', 'b', '2024-01-24 18:34:08', '2024-01-24 18:34:08'),
(342, 8, 34, 'a', 'b', '2024-01-24 18:34:25', '2024-01-24 18:34:25'),
(343, 4, 10, 'e', 'a', '2024-01-24 18:34:44', '2024-01-24 18:34:44'),
(344, 1, 21, 'a', 'a', '2024-01-24 18:34:46', '2024-01-24 18:34:46'),
(345, 9, 34, 'b', 'b', '2024-01-24 18:35:03', '2024-01-24 18:35:03'),
(346, 5, 10, 'b', 'b', '2024-01-24 18:35:30', '2024-01-24 18:35:30'),
(347, 10, 34, 'b', 'b', '2024-01-24 18:35:35', '2024-01-24 18:35:35'),
(348, 2, 21, 'a', 'c', '2024-01-24 18:35:45', '2024-01-24 18:35:45'),
(349, 6, 10, 'a', 'a', '2024-01-24 18:35:51', '2024-01-24 18:35:51'),
(350, 7, 10, 'a', 'a', '2024-01-24 18:35:56', '2024-01-24 18:35:56'),
(351, 3, 21, 'a', 'c', '2024-01-24 18:36:00', '2024-01-24 18:36:00'),
(352, 8, 10, 'b', 'b', '2024-01-24 18:36:10', '2024-01-24 18:36:10'),
(353, 1, 36, 'a', 'a', '2024-01-24 18:36:19', '2024-01-24 18:36:19'),
(354, 9, 10, 'b', 'b', '2024-01-24 18:36:25', '2024-01-24 18:36:25'),
(355, 4, 21, 'e', 'a', '2024-01-24 18:36:33', '2024-01-24 18:36:33'),
(356, 10, 10, 'b', 'b', '2024-01-24 18:36:37', '2024-01-24 18:36:37'),
(357, 1, 26, 'a', 'a', '2024-01-24 18:36:40', '2024-01-24 18:36:40'),
(358, 5, 21, 'e', 'b', '2024-01-24 18:36:53', '2024-01-24 18:36:53'),
(359, 6, 21, 'a', 'a', '2024-01-24 18:37:06', '2024-01-24 18:37:06'),
(360, 1, 39, 'a', 'a', '2024-01-24 18:37:09', '2024-01-24 18:37:09'),
(361, 1, 40, 'a', 'a', '2024-01-24 18:37:11', '2024-01-24 18:37:11'),
(362, 7, 21, 'a', 'a', '2024-01-24 18:37:14', '2024-01-24 18:37:14'),
(363, 2, 40, 'c', 'c', '2024-01-24 18:37:19', '2024-01-24 18:37:19'),
(364, 8, 21, 'a', 'b', '2024-01-24 18:37:23', '2024-01-24 18:37:23'),
(365, 3, 40, 'c', 'c', '2024-01-24 18:37:25', '2024-01-24 18:37:25'),
(366, 2, 39, 'c', 'c', '2024-01-24 18:37:28', '2024-01-24 18:37:28'),
(367, 2, 36, 'e', 'c', '2024-01-24 18:37:29', '2024-01-24 18:37:29'),
(368, 9, 21, 'b', 'b', '2024-01-24 18:37:40', '2024-01-24 18:37:40'),
(369, 10, 21, 'a', 'b', '2024-01-24 18:37:44', '2024-01-24 18:37:44'),
(370, 1, 24, 'a', 'a', '2024-01-24 18:39:37', '2024-01-24 18:39:37'),
(371, 3, 36, 'b', 'c', '2024-01-24 18:39:42', '2024-01-24 18:39:42'),
(372, 4, 40, 'a', 'a', '2024-01-24 18:39:43', '2024-01-24 18:39:43'),
(373, 3, 39, 'c', 'c', '2024-01-24 18:39:43', '2024-01-24 18:39:43'),
(374, 5, 40, 'b', 'b', '2024-01-24 18:39:49', '2024-01-24 18:39:49'),
(375, 4, 39, 'a', 'a', '2024-01-24 18:39:56', '2024-01-24 18:39:56'),
(376, 6, 40, 'a', 'a', '2024-01-24 18:39:59', '2024-01-24 18:39:59'),
(377, 5, 39, 'b', 'b', '2024-01-24 18:40:04', '2024-01-24 18:40:04'),
(378, 7, 40, 'a', 'a', '2024-01-24 18:40:05', '2024-01-24 18:40:05'),
(379, 7, 40, 'a', 'a', '2024-01-24 18:40:07', '2024-01-24 18:40:07'),
(380, 6, 39, 'a', 'a', '2024-01-24 18:40:10', '2024-01-24 18:40:10'),
(381, 2, 24, 'e', 'c', '2024-01-24 18:40:14', '2024-01-24 18:40:14'),
(382, 7, 39, 'a', 'a', '2024-01-24 18:40:18', '2024-01-24 18:40:18'),
(383, 1, 5, 'a', 'a', '2024-01-24 18:40:21', '2024-01-24 18:40:21'),
(384, 8, 39, 'b', 'b', '2024-01-24 18:40:24', '2024-01-24 18:40:24'),
(385, 8, 40, 'a', 'b', '2024-01-24 18:40:27', '2024-01-24 18:40:27'),
(386, 4, 36, 'a', 'a', '2024-01-24 18:40:27', '2024-01-24 18:40:27'),
(387, 9, 39, 'b', 'b', '2024-01-24 18:40:35', '2024-01-24 18:40:35'),
(388, 2, 26, 'c', 'c', '2024-01-24 18:40:37', '2024-01-24 18:40:37'),
(389, 3, 24, 'a', 'c', '2024-01-24 18:40:38', '2024-01-24 18:40:38'),
(390, 9, 40, 'b', 'b', '2024-01-24 18:40:41', '2024-01-24 18:40:41'),
(391, 3, 26, 'c', 'c', '2024-01-24 18:40:43', '2024-01-24 18:40:43'),
(392, 10, 39, 'b', 'b', '2024-01-24 18:40:43', '2024-01-24 18:40:43'),
(393, 5, 36, 'b', 'b', '2024-01-24 18:40:44', '2024-01-24 18:40:44'),
(394, 6, 36, 'a', 'a', '2024-01-24 18:40:58', '2024-01-24 18:40:58'),
(395, 2, 5, 'c', 'c', '2024-01-24 18:40:59', '2024-01-24 18:40:59'),
(396, 10, 40, 'b', 'b', '2024-01-24 18:41:01', '2024-01-24 18:41:01'),
(397, 4, 26, 'a', 'a', '2024-01-24 18:41:01', '2024-01-24 18:41:01'),
(398, 5, 26, 'b', 'b', '2024-01-24 18:41:19', '2024-01-24 18:41:19'),
(399, 7, 36, 'a', 'a', '2024-01-24 18:41:21', '2024-01-24 18:41:21'),
(400, 4, 24, 'a', 'a', '2024-01-24 18:41:23', '2024-01-24 18:41:23'),
(401, 6, 26, 'a', 'a', '2024-01-24 18:41:28', '2024-01-24 18:41:28'),
(402, 7, 26, 'a', 'a', '2024-01-24 18:41:33', '2024-01-24 18:41:33'),
(403, 8, 36, 'b', 'b', '2024-01-24 18:41:41', '2024-01-24 18:41:41'),
(404, 5, 24, 'a', 'b', '2024-01-24 18:41:43', '2024-01-24 18:41:43'),
(405, 8, 26, 'b', 'b', '2024-01-24 18:41:51', '2024-01-24 18:41:51'),
(406, 3, 5, 'e', 'c', '2024-01-24 18:41:52', '2024-01-24 18:41:52'),
(407, 9, 36, 'b', 'b', '2024-01-24 18:41:55', '2024-01-24 18:41:55'),
(408, 9, 26, 'b', 'b', '2024-01-24 18:41:59', '2024-01-24 18:41:59'),
(409, 6, 24, 'a', 'a', '2024-01-24 18:42:02', '2024-01-24 18:42:02'),
(410, 10, 26, 'b', 'b', '2024-01-24 18:42:05', '2024-01-24 18:42:05'),
(411, 10, 36, 'b', 'b', '2024-01-24 18:42:09', '2024-01-24 18:42:09'),
(412, 7, 24, 'a', 'a', '2024-01-24 18:42:17', '2024-01-24 18:42:17'),
(413, 1, 6, 'a', 'a', '2024-01-24 18:42:27', '2024-01-24 18:42:27'),
(414, 8, 24, 'a', 'b', '2024-01-24 18:42:29', '2024-01-24 18:42:29'),
(415, 9, 24, 'b', 'b', '2024-01-24 18:42:53', '2024-01-24 18:42:53'),
(416, 4, 5, 'a', 'a', '2024-01-24 18:42:54', '2024-01-24 18:42:54'),
(417, 10, 24, 'b', 'b', '2024-01-24 18:43:18', '2024-01-24 18:43:18'),
(418, 2, 6, 'c', 'c', '2024-01-24 18:43:43', '2024-01-24 18:43:43'),
(419, 5, 5, 'b', 'b', '2024-01-24 18:43:55', '2024-01-24 18:43:55'),
(420, 6, 5, 'a', 'a', '2024-01-24 18:44:03', '2024-01-24 18:44:03'),
(421, 3, 6, 'e', 'c', '2024-01-24 18:44:09', '2024-01-24 18:44:09'),
(422, 7, 5, 'b', 'a', '2024-01-24 18:44:14', '2024-01-24 18:44:14'),
(423, 8, 5, 'a', 'b', '2024-01-24 18:44:26', '2024-01-24 18:44:26'),
(424, 9, 5, 'b', 'b', '2024-01-24 18:44:37', '2024-01-24 18:44:37'),
(425, 4, 6, 'a', 'a', '2024-01-24 18:44:52', '2024-01-24 18:44:52'),
(426, 10, 5, 'b', 'b', '2024-01-24 18:44:59', '2024-01-24 18:44:59'),
(427, 1, 8, 'a', 'a', '2024-01-24 18:45:02', '2024-01-24 18:45:02'),
(428, 5, 6, 'b', 'b', '2024-01-24 18:45:17', '2024-01-24 18:45:17'),
(429, 1, 35, 'a', 'a', '2024-01-24 18:45:31', '2024-01-24 18:45:31'),
(430, 2, 8, 'c', 'c', '2024-01-24 18:45:40', '2024-01-24 18:45:40'),
(431, 6, 6, 'a', 'a', '2024-01-24 18:45:49', '2024-01-24 18:45:49'),
(432, 3, 8, 'c', 'c', '2024-01-24 18:45:50', '2024-01-24 18:45:50'),
(433, 4, 8, 'a', 'a', '2024-01-24 18:46:03', '2024-01-24 18:46:03'),
(434, 7, 6, 'a', 'a', '2024-01-24 18:46:11', '2024-01-24 18:46:11'),
(435, 5, 8, 'b', 'b', '2024-01-24 18:46:17', '2024-01-24 18:46:17'),
(436, 8, 6, 'a', 'b', '2024-01-24 18:46:24', '2024-01-24 18:46:24'),
(437, 6, 8, 'a', 'a', '2024-01-24 18:46:28', '2024-01-24 18:46:28'),
(438, 2, 35, 'c', 'c', '2024-01-24 18:46:28', '2024-01-24 18:46:28'),
(439, 7, 8, 'a', 'a', '2024-01-24 18:46:38', '2024-01-24 18:46:38'),
(440, 9, 6, 'b', 'b', '2024-01-24 18:46:40', '2024-01-24 18:46:40'),
(441, 8, 8, 'b', 'b', '2024-01-24 18:46:47', '2024-01-24 18:46:47'),
(442, 10, 6, 'b', 'b', '2024-01-24 18:46:50', '2024-01-24 18:46:50'),
(443, 9, 8, 'b', 'b', '2024-01-24 18:46:53', '2024-01-24 18:46:53'),
(444, 10, 8, 'b', 'b', '2024-01-24 18:46:58', '2024-01-24 18:46:58'),
(445, 3, 35, 'c', 'c', '2024-01-24 18:47:19', '2024-01-24 18:47:19'),
(446, 4, 35, 'a', 'a', '2024-01-24 18:47:52', '2024-01-24 18:47:52'),
(447, 5, 35, 'b', 'b', '2024-01-24 18:48:27', '2024-01-24 18:48:27'),
(448, 6, 35, 'a', 'a', '2024-01-24 18:48:37', '2024-01-24 18:48:37'),
(449, 7, 35, 'a', 'a', '2024-01-24 18:48:53', '2024-01-24 18:48:53'),
(450, 8, 35, 'b', 'b', '2024-01-24 18:48:59', '2024-01-24 18:48:59'),
(451, 9, 35, 'b', 'b', '2024-01-24 18:49:04', '2024-01-24 18:49:04'),
(452, 10, 35, 'b', 'b', '2024-01-24 18:49:10', '2024-01-24 18:49:10'),
(453, 1, 43, 'a', 'a', '2024-05-29 20:14:31', '2024-05-29 20:14:31'),
(454, 2, 43, 'a', 'c', '2024-05-29 20:14:34', '2024-05-29 20:14:34'),
(455, 3, 43, 'b', 'c', '2024-05-29 20:14:40', '2024-05-29 20:14:40'),
(456, 4, 43, 'a', 'a', '2024-05-29 20:14:44', '2024-05-29 20:14:44'),
(457, 5, 43, 'a', 'b', '2024-05-29 20:14:47', '2024-05-29 20:14:47'),
(458, 6, 43, 'a', 'a', '2024-05-29 20:14:50', '2024-05-29 20:14:50'),
(459, 7, 43, 'a', 'a', '2024-05-29 20:14:55', '2024-05-29 20:14:55'),
(460, 8, 43, 'a', 'b', '2024-05-29 20:14:59', '2024-05-29 20:14:59'),
(461, 9, 43, 'b', 'b', '2024-05-29 20:15:02', '2024-05-29 20:15:02'),
(462, 10, 43, 'b', 'b', '2024-05-29 20:15:06', '2024-05-29 20:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_pemantik`
--

CREATE TABLE `jawaban_pemantik` (
  `id` int(11) NOT NULL,
  `user_id` bigint(12) NOT NULL,
  `pertanyaan_id` int(12) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jawaban_pemantik`
--

INSERT INTO `jawaban_pemantik` (`id`, `user_id`, `pertanyaan_id`, `jawaban`, `created_at`, `updated_at`) VALUES
(28, 1, 1, 'Test', '2024-01-24 16:24:08', '2024-01-24 16:24:08'),
(29, 1, 2, 'Test', '2024-01-24 16:24:08', '2024-01-24 16:24:08'),
(30, 1, 3, 'Test', '2024-01-24 16:24:08', '2024-01-24 16:24:08'),
(31, 22, 1, 'Pernah', '2024-01-24 16:25:55', '2024-01-24 16:25:55'),
(32, 22, 2, 'Tidak tau', '2024-01-24 16:25:55', '2024-01-24 16:25:55'),
(33, 22, 3, 'Untuk meningkatkan berpikir kritis dan kreatif', '2024-01-24 16:25:55', '2024-01-24 16:25:55'),
(34, 16, 1, 'Pernah', '2024-01-24 16:26:24', '2024-01-24 16:26:24'),
(35, 16, 2, 'kehidupan, lingkungan, budaya', '2024-01-24 16:26:24', '2024-01-24 16:26:24'),
(36, 16, 3, 'menyampaikan pendapat pribadi, mendiskusikan suatu topik secara mendalam, memaparkan analisis', '2024-01-24 16:26:24', '2024-01-24 16:26:24'),
(37, 20, 1, 'pernah', '2024-01-24 16:26:40', '2024-01-24 16:26:40'),
(38, 20, 2, 'pencapaian diri', '2024-01-24 16:26:40', '2024-01-24 16:26:40'),
(39, 20, 3, 'untuk mengungkapkan pemikiran pada suatu topik', '2024-01-24 16:26:40', '2024-01-24 16:26:40'),
(40, 11, 1, 'Ya, pernah', '2024-01-24 16:27:25', '2024-01-24 16:27:25'),
(41, 11, 2, 'Dari yang saya ketahui, teks esai biasanya memuat tema pendidikan, kritik dari sebuah karya, atau personal seseorang.', '2024-01-24 16:27:25', '2024-01-24 16:27:25'),
(42, 11, 3, 'Teks esai bagi pembaca dapat menambah wawasan dan ilmu pengetahuan. Esai bisa juga menjadi kritik dan bahan evaluasi yang dapat kemudian direfleksikan untuk pihak yang menjadi target kritikan.', '2024-01-24 16:27:25', '2024-01-24 16:27:25'),
(43, 7, 1, 'Pernah', '2024-01-24 16:27:31', '2024-01-24 16:27:31'),
(44, 7, 2, 'Pengalaman pribadi', '2024-01-24 16:27:31', '2024-01-24 16:27:31'),
(45, 7, 3, 'Pengungkapan pemikiran', '2024-01-24 16:27:31', '2024-01-24 16:27:31'),
(46, 19, 1, 'pernah', '2024-01-24 16:27:36', '2024-01-24 16:27:36'),
(47, 19, 2, 'suatu permasalahan', '2024-01-24 16:27:36', '2024-01-24 16:27:36'),
(48, 19, 3, 'yaitu menggambarkan pandangan dan sikap surat kabar/majalah tersebut terhadap suatu topik dan isu dalam masyarakat', '2024-01-24 16:27:36', '2024-01-24 16:27:36'),
(49, 18, 1, 'pernah', '2024-01-24 16:27:46', '2024-01-24 16:27:46'),
(50, 18, 2, 'biasanya diangkat pada suatu permasalahan untuk dicarikan suatu solusinya', '2024-01-24 16:27:46', '2024-01-24 16:27:46'),
(51, 18, 3, 'untuk menggambarkan pandangan dan sikap surat kabar/majalah tersebut terhadap suatu topik dan isu dalam masyarakat.', '2024-01-24 16:27:46', '2024-01-24 16:27:46'),
(55, 23, 1, 'pernah', '2024-01-24 16:27:55', '2024-01-24 16:27:55'),
(56, 23, 2, 'makhluk hidup', '2024-01-24 16:27:55', '2024-01-24 16:27:55'),
(57, 23, 3, 'berisi opini penulis tentang suatu hal atau topik yang menarik', '2024-01-24 16:27:55', '2024-01-24 16:27:55'),
(58, 14, 1, 'Ya, saya sudah pernah membaca teks esai.', '2024-01-24 16:30:24', '2024-01-24 16:30:24'),
(59, 14, 2, 'Tema yang sering diangkat pada teks esai biasanya berkaitan dengan ekonomi, kesehatan, dan juga fenomena sosial.', '2024-01-24 16:30:24', '2024-01-24 16:30:24'),
(60, 14, 3, '1. Memberi informasi spesifik kepada hal layak umum melalui media teks\r\n2. Meningkatkan kemampuan menulis\r\n3. Syarat suatu beasiswa ataupun digunakan sebagai perlombaan', '2024-01-24 16:30:24', '2024-01-24 16:30:24'),
(61, 23, 1, 'pernah', '2024-01-24 16:44:54', '2024-01-24 16:44:54'),
(62, 23, 2, 'makhluk hidup', '2024-01-24 16:44:54', '2024-01-24 16:44:54'),
(63, 23, 3, 'berisi opini penulis tentang suatu hal atau topik yang menarik', '2024-01-24 16:44:54', '2024-01-24 16:44:54'),
(64, 26, 1, 'Pernah', '2024-01-24 17:07:42', '2024-01-24 17:07:42'),
(65, 26, 2, 'Pendidikan', '2024-01-24 17:07:42', '2024-01-24 17:07:42'),
(66, 26, 3, 'menggambarkan sudut pandang sang penulis', '2024-01-24 17:07:42', '2024-01-24 17:07:42'),
(67, 3, 1, 'Tidak', '2024-01-24 17:20:30', '2024-01-24 17:20:30'),
(68, 3, 2, 'Masalah ekonomi, pendidikan', '2024-01-24 17:20:30', '2024-01-24 17:20:30'),
(69, 3, 3, 'Memberikan pendapat pribadi sang penulis', '2024-01-24 17:20:30', '2024-01-24 17:20:30'),
(70, 27, 1, 'pernah', '2024-01-24 17:20:46', '2024-01-24 17:20:46'),
(71, 27, 2, 'kehidupan', '2024-01-24 17:20:46', '2024-01-24 17:20:46'),
(72, 27, 3, 'untuk memberikan ide atau gagasan dari sudut pandang penulis pada pembaca', '2024-01-24 17:20:46', '2024-01-24 17:20:46'),
(73, 15, 1, 'Pernah', '2024-01-24 17:20:48', '2024-01-24 17:20:48'),
(74, 15, 2, 'Inovasi dan pendapat', '2024-01-24 17:20:48', '2024-01-24 17:20:48'),
(75, 15, 3, 'Mengungkapkan opini', '2024-01-24 17:20:48', '2024-01-24 17:20:48'),
(76, 28, 1, 'Ya, saya pernah membaca', '2024-01-24 17:20:56', '2024-01-24 17:20:56'),
(77, 28, 2, 'Esai beasiswa', '2024-01-24 17:20:56', '2024-01-24 17:20:56'),
(78, 28, 3, 'Yang saya ketahui diantaranya untuk mengutarakan pandangan penulis dan mendapatkan beasiswa', '2024-01-24 17:20:56', '2024-01-24 17:20:56'),
(79, 29, 1, 'pernah', '2024-01-24 17:21:06', '2024-01-24 17:21:06'),
(80, 29, 2, 'beasiswa', '2024-01-24 17:21:06', '2024-01-24 17:21:06'),
(81, 29, 3, 'gak tau', '2024-01-24 17:21:06', '2024-01-24 17:21:06'),
(82, 30, 1, 'Pernah dalam bentuk sebuah buku, dari Mark Twain Panduan Bercerita.', '2024-01-24 17:21:23', '2024-01-24 17:21:23'),
(83, 30, 2, 'Kehidupan sehari-hari.', '2024-01-24 17:21:23', '2024-01-24 17:21:23'),
(84, 30, 3, 'Untuk pemantik sebuah diskusi.', '2024-01-24 17:21:23', '2024-01-24 17:21:23'),
(85, 12, 1, 'Pernah', '2024-01-24 17:22:12', '2024-01-24 17:22:12'),
(86, 12, 2, 'Pendidikan', '2024-01-24 17:22:12', '2024-01-24 17:22:12'),
(87, 12, 3, 'Untuk menambah pengetahuan', '2024-01-24 17:22:12', '2024-01-24 17:22:12'),
(88, 32, 1, 'Baru saja saya membacannya', '2024-01-24 17:24:54', '2024-01-24 17:24:54'),
(89, 32, 2, 'Sekolah', '2024-01-24 17:24:54', '2024-01-24 17:24:54'),
(90, 32, 3, 'Tidak tahu', '2024-01-24 17:24:54', '2024-01-24 17:24:54'),
(91, 31, 1, 'pernah', '2024-01-24 17:25:42', '2024-01-24 17:25:42'),
(92, 31, 2, 'ilmu pengetahuan, politik, penelitian, kritik dll', '2024-01-24 17:25:42', '2024-01-24 17:25:42'),
(93, 31, 3, 'untuk menyampaikan gagasan, kritikan, menceritakan hal hal yang ingin penulis sampaikan dengan argumen argumen yang dapat dipertanggung jawabkan', '2024-01-24 17:25:42', '2024-01-24 17:25:42'),
(94, 4, 1, 'Pernah', '2024-01-24 17:45:28', '2024-01-24 17:45:28'),
(95, 4, 2, 'Opini pribadi penulis', '2024-01-24 17:45:28', '2024-01-24 17:45:28'),
(96, 4, 3, 'Menuangkan opini ke dalam teks', '2024-01-24 17:45:28', '2024-01-24 17:45:28'),
(97, 37, 1, 'Pernah', '2024-01-24 17:47:19', '2024-01-24 17:47:19'),
(98, 37, 2, 'masalah yang terdapat solusi', '2024-01-24 17:47:19', '2024-01-24 17:47:19'),
(99, 37, 3, 'Untuk mengungkapkan pendapat penulis tentang suatu tema', '2024-01-24 17:47:19', '2024-01-24 17:47:19'),
(100, 38, 1, 'pernah', '2024-01-24 17:49:48', '2024-01-24 17:49:48'),
(101, 38, 2, 'pengalaman pribadi dan perkembangan diri', '2024-01-24 17:49:48', '2024-01-24 17:49:48'),
(102, 38, 3, 'esai naratif digunakan untuk menceritakan pengalaman pribadi atau peristiwa tertentu dengan narasi yang berurutan. Kegunaannya adalah untuk menghibur pembaca, mengilustrasikan pengalaman yang menginspirasi, atau menyampaikan pelajaran moral.', '2024-01-24 17:49:48', '2024-01-24 17:49:48'),
(103, 33, 1, 'Pernah', '2024-01-24 18:02:02', '2024-01-24 18:02:02'),
(104, 33, 2, 'Debat', '2024-01-24 18:02:02', '2024-01-24 18:02:02'),
(105, 33, 3, 'Yg saya tau hanya untuk alat merangsang debat atau diskusi', '2024-01-24 18:02:02', '2024-01-24 18:02:02'),
(106, 39, 1, 'Ya, saya pernah', '2024-01-24 18:03:50', '2024-01-24 18:03:50'),
(107, 39, 2, 'Tema yang melibatkan pengalaman pribadi', '2024-01-24 18:03:50', '2024-01-24 18:03:50'),
(108, 39, 3, 'Untuk menyampaikan pendapat pribadi', '2024-01-24 18:03:50', '2024-01-24 18:03:50'),
(109, 34, 1, 'Pernah', '2024-01-24 18:04:42', '2024-01-24 18:04:42'),
(110, 34, 2, 'Sukses Terbesar di Hidupku', '2024-01-24 18:04:42', '2024-01-24 18:04:42'),
(111, 34, 3, 'Menyampaikan pendapat dan argumen, Mengemukakan ide dan analisis, memberikan perspektif pribadi', '2024-01-24 18:04:42', '2024-01-24 18:04:42'),
(112, 21, 1, 'Tentu saja', '2024-01-24 18:04:55', '2024-01-24 18:04:55'),
(113, 21, 2, 'Sukses Terbesar di Hidupku', '2024-01-24 18:04:55', '2024-01-24 18:04:55'),
(114, 21, 3, 'menggambarkan pandangan dan sikap surat kabar,majalah tersebut terhadap suatu topik dan isu dalam masyarakat.', '2024-01-24 18:04:55', '2024-01-24 18:04:55'),
(115, 40, 1, 'pernah', '2024-01-24 18:05:53', '2024-01-24 18:05:53'),
(116, 40, 2, 'berdasarkan esai yang telah saya baca, saya pikir tema pembelajaran', '2024-01-24 18:05:53', '2024-01-24 18:05:53'),
(117, 40, 3, 'untuk memberikan suatu informasi/pendapat', '2024-01-24 18:05:53', '2024-01-24 18:05:53'),
(118, 12, 1, 'Pernah', '2024-01-24 18:16:10', '2024-01-24 18:16:10'),
(119, 12, 2, 'Pendidikan', '2024-01-24 18:16:10', '2024-01-24 18:16:10'),
(120, 12, 3, 'Untuk menambah pengetahuan', '2024-01-24 18:16:10', '2024-01-24 18:16:10'),
(121, 9, 1, 'Pernah', '2024-01-24 18:16:40', '2024-01-24 18:16:40'),
(122, 9, 2, 'Tentang kehidupan pribadi', '2024-01-24 18:16:40', '2024-01-24 18:16:40'),
(123, 9, 3, 'untuk mengemukakan pandangan serta opini penulis ke pada audience', '2024-01-24 18:16:40', '2024-01-24 18:16:40'),
(124, 35, 1, 'pernah', '2024-01-24 18:16:55', '2024-01-24 18:16:55'),
(125, 35, 2, 'tidak tau', '2024-01-24 18:16:55', '2024-01-24 18:16:55'),
(126, 35, 3, 'menggambarkan atau mengemukakan pendapat', '2024-01-24 18:16:55', '2024-01-24 18:16:55'),
(127, 24, 1, 'pernah', '2024-01-24 18:16:56', '2024-01-24 18:16:56'),
(128, 24, 2, 'biasanya tentang kependidikan dan politik di indonesia', '2024-01-24 18:16:56', '2024-01-24 18:16:56'),
(129, 24, 3, 'memberikan informasi dari penulis kepada pembaca', '2024-01-24 18:16:56', '2024-01-24 18:16:56'),
(130, 10, 1, 'Pernah Tapi Jarang', '2024-01-24 18:17:01', '2024-01-24 18:17:01'),
(131, 10, 2, 'Pendidikan', '2024-01-24 18:17:01', '2024-01-24 18:17:01'),
(132, 10, 3, 'Menggambarkan pandangan penulis', '2024-01-24 18:17:01', '2024-01-24 18:17:01'),
(133, 5, 1, 'Iya, pernah.', '2024-01-24 18:17:28', '2024-01-24 18:17:28'),
(134, 5, 2, 'Pandangan seseorang tentang suatu fenomena', '2024-01-24 18:17:28', '2024-01-24 18:17:28'),
(135, 5, 3, 'Sebagai media penulis untuk memaparkan pandangan dan hal yang penulis ingin bahas sesuai sudut pandang penulis.', '2024-01-24 18:17:28', '2024-01-24 18:17:28'),
(136, 36, 1, 'pernah', '2024-01-24 18:18:01', '2024-01-24 18:18:01'),
(137, 36, 2, 'tentang kehidupan sehari-hari', '2024-01-24 18:18:01', '2024-01-24 18:18:01'),
(138, 36, 3, 'untuk memberi suara pribadi dan pandangan ke subjektif', '2024-01-24 18:18:01', '2024-01-24 18:18:01'),
(139, 6, 1, 'pernah', '2024-01-24 18:18:12', '2024-01-24 18:18:12'),
(140, 6, 2, 'tergantung masalah dan opini yang ingin diungkapkan sang penulis', '2024-01-24 18:18:12', '2024-01-24 18:18:12'),
(141, 6, 3, 'pandangan mengenai sebuah permasalahan serta meyakinkan pembaca mengenai opini dari penulis', '2024-01-24 18:18:12', '2024-01-24 18:18:12'),
(142, 17, 1, 'Pernah', '2024-01-24 18:20:35', '2024-01-24 18:20:35'),
(143, 17, 2, 'Temanya sekolah atau digital', '2024-01-24 18:20:35', '2024-01-24 18:20:35'),
(144, 17, 3, 'menggambarkan pandangan dan sikap surat kabar/majalah tersebut terhadap suatu topik dan isu dalam masyarakat', '2024-01-24 18:20:35', '2024-01-24 18:20:35'),
(145, 8, 1, 'Iya saya pernah membaca teks esai', '2024-01-24 18:21:33', '2024-01-24 18:21:33'),
(146, 8, 2, 'Tema yang biasanya digunakan dalam teks esai biasanya mengikuti topik yang akan di bawa. Tapi jika umumnya yang digunakan biasanya dalam pengalaman pribadi.', '2024-01-24 18:21:33', '2024-01-24 18:21:33'),
(147, 8, 3, 'Kegunaan teks esai yaitu menyampaikan pendapat pribadi atau ekspresi diri dan juga menyampaikan ide yang baru.', '2024-01-24 18:21:33', '2024-01-24 18:21:33'),
(148, 43, 1, 'Ad', '2024-05-29 20:08:14', '2024-05-29 20:08:14'),
(149, 43, 2, 'wd', '2024-05-29 20:08:14', '2024-05-29 20:08:14'),
(150, 43, 3, 'dw', '2024-05-29 20:08:14', '2024-05-29 20:08:14'),
(151, 43, 1, 'daw', '2024-05-29 20:12:01', '2024-05-29 20:12:01'),
(152, 43, 2, 'dwa', '2024-05-29 20:12:01', '2024-05-29 20:12:01'),
(153, 43, 3, 'dw', '2024-05-29 20:12:01', '2024-05-29 20:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `quiz_id`, `judul`, `konten`, `created_at`, `updated_at`) VALUES
(1, 1, 'Teks esai', 'Teks Prosedural adalah', '2024-01-18 02:39:06', '2024-01-18 02:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_07_083640_create_quiz_table', 1),
(6, '2023_11_07_083659_create_materi_table', 1),
(7, '2023_11_07_083746_create_soal_table', 1),
(8, '2023_11_07_083812_create_jawaban_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `pertanyaan_pemantik`
--

CREATE TABLE `pertanyaan_pemantik` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertanyaan_pemantik`
--

INSERT INTO `pertanyaan_pemantik` (`id`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(1, 'Pernahkah kamu membaca teks esai?', '2024-01-24 12:56:14', '2024-01-24 12:56:14'),
(2, 'Apa tema yang sering diangkat pada teks esai?', '2024-01-24 12:56:33', '2024-01-24 12:56:33'),
(3, 'Sebutkan kegunaan teks esai yang kamu ketahui!', '2024-01-24 12:56:41', '2024-01-24 12:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `judul_konten` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `path_pdf` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `judul_konten`, `content`, `id_user`, `path_pdf`, `type`, `created_at`, `updated_at`) VALUES
(2, 'Teks 1', 'Temukan ide pokok dari teks ini', 1, 'pdfs/Teks1.pdf', 'idepokok', '2024-01-24 13:57:50', '2024-01-24 13:57:50'),
(3, 'Teks 2', 'Temukan ide pokok dari teks ini', 1, 'pdfs/Teks2.pdf', 'idepokok', '2024-01-24 13:58:06', '2024-01-24 13:58:06'),
(4, 'Teks 1', 'Berikan kesimpulan dari teks ini', 1, 'pdfs/Teks1.pdf', 'kesimpulan', '2024-01-24 13:59:12', '2024-01-24 13:59:12'),
(5, 'Teks 2', 'Berikan kesimpulan dari teks ini', 1, 'pdfs/Teks2.pdf', 'kesimpulan', '2024-01-24 13:59:33', '2024-01-24 13:59:33'),
(6, 'Teks 1', 'Temukan perbedaan teks ini dari teks 2', 1, 'pdfs/Teks1.pdf', 'perbedaan', '2024-01-24 14:03:51', '2024-01-24 14:03:51'),
(7, 'Teks 2', 'Temukan perbedaan teks ini dari teks 1', 1, 'pdfs/Teks2.pdf', 'perbedaan', '2024-01-24 14:04:15', '2024-01-24 14:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_quiz` varchar(255) NOT NULL,
  `jumlah_soal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `nama_quiz`, `jumlah_soal`, `created_at`, `updated_at`) VALUES
(1, 'Teks Esai', 10, '2024-01-17 13:10:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reflection`
--

CREATE TABLE `reflection` (
  `id` int(11) NOT NULL,
  `nama_refleksi` varchar(255) NOT NULL,
  `soal_refleksi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reflection`
--

INSERT INTO `reflection` (`id`, `nama_refleksi`, `soal_refleksi`) VALUES
(1, 'Testing Nama Refleksi', 'Bagaimana pembelajaran anda hari ini?'),
(2, 'Refleksi 2', 'Apakah ada yang tidak anda mengerti?'),
(3, 'Refleksi 3', 'Bagaimana materi ini membantu Anda memahami cara menyusun sebuah esai?');

-- --------------------------------------------------------

--
-- Table structure for table `reflection_answer`
--

CREATE TABLE `reflection_answer` (
  `id` int(11) NOT NULL,
  `reflection_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pilihanuser` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reflection_answer`
--

INSERT INTO `reflection_answer` (`id`, `reflection_id`, `user_id`, `pilihanuser`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'sangat senang', '2024-01-24 03:01:22', '2024-01-24 03:01:22'),
(2, 2, 1, 'tidak ada', '2024-01-24 03:01:22', '2024-01-24 03:01:22'),
(3, 3, 1, 'sangat membantu', '2024-01-24 03:01:22', '2024-01-24 03:01:22'),
(4, 1, 1, 'Senang', '2024-01-24 05:37:26', '2024-01-24 05:37:26'),
(5, 2, 1, 'Tidak ada', '2024-01-24 05:37:26', '2024-01-24 05:37:26'),
(6, 3, 1, 'Forum diskusi sangat membantu', '2024-01-24 05:37:26', '2024-01-24 05:37:26'),
(7, 1, 1, 'TRest', '2024-01-24 05:51:35', '2024-01-24 05:51:35'),
(8, 2, 1, 'Teszt', '2024-01-24 05:51:35', '2024-01-24 05:51:35'),
(9, 3, 1, 'Test', '2024-01-24 05:51:35', '2024-01-24 05:51:35'),
(10, 1, 1, 'Bagus', '2024-01-24 10:19:55', '2024-01-24 10:19:55'),
(11, 2, 1, 'Tidak', '2024-01-24 10:19:55', '2024-01-24 10:19:55'),
(12, 3, 1, 'Forum Diskusi', '2024-01-24 10:19:55', '2024-01-24 10:19:55'),
(13, 1, 19, 'sangat senang', '2024-01-24 17:12:44', '2024-01-24 17:12:44'),
(14, 2, 19, 'ada', '2024-01-24 17:12:44', '2024-01-24 17:12:44'),
(15, 3, 19, 'cukup membantu', '2024-01-24 17:12:44', '2024-01-24 17:12:44'),
(16, 1, 14, 'Cukup menarik dan membantu saya untuk memahami apa itu teks esai.', '2024-01-24 17:14:18', '2024-01-24 17:14:18'),
(17, 2, 14, 'Sejauh ini belum.', '2024-01-24 17:14:18', '2024-01-24 17:14:18'),
(18, 3, 14, 'Materi yang ditampilkan sangat bagus dan mudah dipahami untuk pemula seperti saya untuk memahami pengertian dan menyusun sebuah esai.', '2024-01-24 17:14:18', '2024-01-24 17:14:18'),
(19, 1, 23, 'seru', '2024-01-24 17:14:49', '2024-01-24 17:14:49'),
(20, 2, 23, 'lebih banyak yang saya pelajari', '2024-01-24 17:14:49', '2024-01-24 17:14:49'),
(21, 3, 23, 'sangat baik. dalam sebentar saja saya sudah hampir menguasai materi teks esai', '2024-01-24 17:14:49', '2024-01-24 17:14:49'),
(22, 1, 16, 'masih banyak yang harus di perbaiki', '2024-01-24 17:15:13', '2024-01-24 17:15:13'),
(23, 2, 16, 'masih ada beberapa yang kurang mengerti', '2024-01-24 17:15:13', '2024-01-24 17:15:13'),
(24, 3, 16, 'ya, cukup membantu memahami', '2024-01-24 17:15:13', '2024-01-24 17:15:13'),
(25, 1, 11, 'Sangat seru.', '2024-01-24 17:16:22', '2024-01-24 17:16:22'),
(26, 2, 11, 'Sejauh ini tidak.', '2024-01-24 17:16:22', '2024-01-24 17:16:22'),
(27, 3, 11, 'Materi ini memberikan saya insight atau pemahaman mendalam, gambaran, dan ide pokok dari teks esai secara keseluruhan.', '2024-01-24 17:16:22', '2024-01-24 17:16:22'),
(28, 1, 20, 'seru dan pusing', '2024-01-24 17:18:12', '2024-01-24 17:18:12'),
(29, 2, 20, 'ada', '2024-01-24 17:18:12', '2024-01-24 17:18:12'),
(30, 3, 20, 'lumayan', '2024-01-24 17:18:12', '2024-01-24 17:18:12'),
(31, 1, 7, 'Seru', '2024-01-24 17:18:48', '2024-01-24 17:18:48'),
(32, 2, 7, 'Ada', '2024-01-24 17:18:48', '2024-01-24 17:18:48'),
(33, 3, 7, 'Dengan membaca teks esai', '2024-01-24 17:18:48', '2024-01-24 17:18:48'),
(34, 1, 18, 'menyenangkan, aplikasi nya sangat bagus dan gampang untuk belajar', '2024-01-24 17:43:04', '2024-01-24 17:43:04'),
(35, 2, 18, 'tidak ada', '2024-01-24 17:43:04', '2024-01-24 17:43:04'),
(36, 3, 18, 'ya sangat membantu, dengan mempelajari ini pengetahuan saya bertambah', '2024-01-24 17:43:04', '2024-01-24 17:43:04'),
(37, 1, 15, 'Biasa aja', '2024-01-24 17:48:03', '2024-01-24 17:48:03'),
(38, 2, 15, 'Mungkin', '2024-01-24 17:48:03', '2024-01-24 17:48:03'),
(39, 3, 15, 'Sangat', '2024-01-24 17:48:03', '2024-01-24 17:48:03'),
(40, 1, 29, 'sangat baik', '2024-01-24 18:04:06', '2024-01-24 18:04:06'),
(41, 2, 29, 'masih belum mengerti sangat tentang teks esai', '2024-01-24 18:04:06', '2024-01-24 18:04:06'),
(42, 3, 29, 'sedikit membantu saya', '2024-01-24 18:04:06', '2024-01-24 18:04:06'),
(43, 1, 3, 'Lumayan', '2024-01-24 18:05:54', '2024-01-24 18:05:54'),
(44, 2, 3, 'Tidak', '2024-01-24 18:05:54', '2024-01-24 18:05:54'),
(45, 3, 3, 'Lumayan', '2024-01-24 18:05:54', '2024-01-24 18:05:54'),
(46, 1, 31, 'cukup menarik, namun karna saya sedang mengantuk jadi sedikit terganggu dengan itu. Materi yang disampaikan juga mudah dipahami oleh saya', '2024-01-24 18:10:31', '2024-01-24 18:10:31'),
(47, 2, 31, 'sejauh ini tidak ada', '2024-01-24 18:10:31', '2024-01-24 18:10:31'),
(48, 3, 31, 'seharusnya iya', '2024-01-24 18:10:31', '2024-01-24 18:10:31'),
(49, 1, 12, 'Lumayan', '2024-01-24 18:11:14', '2024-01-24 18:11:14'),
(50, 2, 12, 'Mengenai perbedaan esai formal dan informal, dan pengunaan kata konotatif pada teks esai.', '2024-01-24 18:11:14', '2024-01-24 18:11:14'),
(51, 3, 12, 'Materi ini menjelaskan secara rinci mengenai materi teks esai seperti pengertian,jenis,ciri ciri, dll hingga contoh soal dan pengerjaan soal secara langsung', '2024-01-24 18:11:14', '2024-01-24 18:11:14'),
(52, 1, 32, 'Baik', '2024-01-24 18:24:53', '2024-01-24 18:24:53'),
(53, 2, 32, 'Semua mengert', '2024-01-24 18:24:53', '2024-01-24 18:24:53'),
(54, 3, 32, 'ya', '2024-01-24 18:24:53', '2024-01-24 18:24:53'),
(55, 1, 33, 'Menyenangkan', '2024-01-24 18:25:36', '2024-01-24 18:25:36'),
(56, 2, 33, 'Ada', '2024-01-24 18:25:36', '2024-01-24 18:25:36'),
(57, 3, 33, 'Iya ini sangat membantu saya dalam membuat esai', '2024-01-24 18:25:36', '2024-01-24 18:25:36'),
(58, 1, 37, 'banyak mempelajari teks esai lebih banyak', '2024-01-24 18:27:05', '2024-01-24 18:27:05'),
(59, 2, 37, 'ada, tentang kata konotatif', '2024-01-24 18:27:05', '2024-01-24 18:27:05'),
(60, 3, 37, 'dengan memberikan contoh teks', '2024-01-24 18:27:05', '2024-01-24 18:27:05'),
(61, 1, 4, 'Mantap, cukup memakan waktu', '2024-01-24 18:27:46', '2024-01-24 18:27:46'),
(62, 2, 4, 'Ada beberapa', '2024-01-24 18:27:46', '2024-01-24 18:27:46'),
(63, 3, 4, 'Dengan memahami struktur esai dan membaca contoh-contoh tek esai yang ada', '2024-01-24 18:27:46', '2024-01-24 18:27:46'),
(64, 1, 27, 'berat dan sulit dalam mencari ide pokok dan kesimpulan', '2024-01-24 18:34:48', '2024-01-24 18:34:48'),
(65, 2, 27, 'cara mencari ide pokok yang paling benar', '2024-01-24 18:34:48', '2024-01-24 18:34:48'),
(66, 3, 27, 'iya', '2024-01-24 18:34:48', '2024-01-24 18:34:48'),
(67, 1, 28, 'Seruu, karena pembelajarannya yang berbeda dari biasanya', '2024-01-24 18:34:51', '2024-01-24 18:34:51'),
(68, 2, 28, 'Karena sebelumnya saya membaca materi esai, jadi sedikit yang saya tidak mengerti', '2024-01-24 18:34:51', '2024-01-24 18:34:51'),
(69, 3, 28, 'Cukup membantu dalam penyusunan esai, karena menampilkan materi yang cukup lengkap dan soal soalnya yang cukup menantang.', '2024-01-24 18:34:51', '2024-01-24 18:34:51'),
(70, 1, 9, 'SENANG KARENA BANYAK HAL SERU', '2024-01-24 18:36:11', '2024-01-24 18:36:11'),
(71, 2, 9, 'perbedaan teks esai dengan teks protokol(?)', '2024-01-24 18:36:11', '2024-01-24 18:36:11'),
(72, 3, 9, 'dari sebuah quiz yg dibantu dengan notif yg menyebutkan bena atau salahnya, saya jadi paham', '2024-01-24 18:36:11', '2024-01-24 18:36:11'),
(73, 1, 17, 'Sangat baik', '2024-01-24 18:36:27', '2024-01-24 18:36:27'),
(74, 2, 17, 'Tidak', '2024-01-24 18:36:27', '2024-01-24 18:36:27'),
(75, 3, 17, 'Agak kurang mengerti', '2024-01-24 18:36:27', '2024-01-24 18:36:27'),
(76, 1, 34, 'cukup baik', '2024-01-24 18:36:44', '2024-01-24 18:36:44'),
(77, 2, 34, 'ada', '2024-01-24 18:36:44', '2024-01-24 18:36:44'),
(78, 3, 34, 'ya, saya paham sedikit', '2024-01-24 18:36:44', '2024-01-24 18:36:44'),
(79, 1, 10, 'Sangat baik', '2024-01-24 18:37:35', '2024-01-24 18:37:35'),
(80, 2, 10, 'Tidak ada', '2024-01-24 18:37:35', '2024-01-24 18:37:35'),
(81, 3, 10, 'Sangat membantu', '2024-01-24 18:37:35', '2024-01-24 18:37:35'),
(82, 1, 21, 'lumayan membingungkan namun banyak pelajaran baru', '2024-01-24 18:40:32', '2024-01-24 18:40:32'),
(83, 2, 21, 'ada beberapa namun masih dapat dipahami', '2024-01-24 18:40:32', '2024-01-24 18:40:32'),
(84, 3, 21, 'Sepertinya menambah wawasan terhadap teks esai', '2024-01-24 18:40:32', '2024-01-24 18:40:32'),
(85, 1, 36, 'baik', '2024-01-24 18:42:50', '2024-01-24 18:42:50'),
(86, 2, 36, 'tidak', '2024-01-24 18:42:50', '2024-01-24 18:42:50'),
(87, 3, 36, 'ya', '2024-01-24 18:42:50', '2024-01-24 18:42:50'),
(88, 1, 40, 'menyenangkan, terima kasih atas pembelajarannya', '2024-01-24 18:43:22', '2024-01-24 18:43:22'),
(89, 2, 40, 'ada, mengenai konotatif', '2024-01-24 18:43:22', '2024-01-24 18:43:22'),
(90, 3, 40, 'terdapat materi diawal yang membuat saya lebih paham tentang teks esai', '2024-01-24 18:43:22', '2024-01-24 18:43:22'),
(91, 1, 39, 'Seruu, asik dan menyenangkan \r\nAanya ganteng', '2024-01-24 18:43:32', '2024-01-24 18:43:32'),
(92, 2, 39, 'Kata konotatif', '2024-01-24 18:43:32', '2024-01-24 18:43:32'),
(93, 3, 39, 'Terdapat contoh teks esai', '2024-01-24 18:43:32', '2024-01-24 18:43:32'),
(94, 1, 30, 'Menambah wawasan.', '2024-01-24 18:44:50', '2024-01-24 18:44:50'),
(95, 2, 30, 'Ada beberapa teks mengalami saltik, sehingga sulit dipahami.', '2024-01-24 18:44:50', '2024-01-24 18:44:50'),
(96, 3, 30, 'Lumayan bagus.', '2024-01-24 18:44:50', '2024-01-24 18:44:50'),
(97, 1, 5, 'Menyenangkan dan mudah dipahami dengan pemaparan materi di awal.', '2024-01-24 18:49:11', '2024-01-24 18:49:11'),
(98, 2, 5, 'Tidak ada', '2024-01-24 18:49:11', '2024-01-24 18:49:11'),
(99, 3, 5, 'Dengan pemaparan materi dan berbagai jenis esai dapat saya jadikan referensi untuk membuat sebuah esai.', '2024-01-24 18:49:11', '2024-01-24 18:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `soal` text NOT NULL,
  `pilihan` longtext NOT NULL,
  `pilihan_benar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `quiz_id`, `soal`, `pilihan`, `pilihan_benar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Beberapa tahun belakangan ini kesenjangan di Indonesia cenderung naik. Kesenjangan tersebut terlihat dengan adanya berbagai perubahan di negeri ini. Pertama, adanya peningkatan kesenjangan pemilikan lahan dalam sektor pertanian. Kedua, adanya kesenjangan akses untuk bergabung dalam aktivitas ekonomi sebagai sumber pendapatan. Misalnya saja di sektor pertanian, banyak petani kecil yang merasa kesulitan untuk mendapatkan kredit. Ketiga, adanya kesenjangan untuk mendapatkan akses pelayanan dasar bagi masyarakat, contohnya seperti mendapatkan Pendidikan dan kesehatan. Hal yang diungkapkan dalam esai di atas adalah …', '[\n  {\n    \"Key\": \"a\",\n    \"Value\": \"Kesenjangan merupakan salah satu pokok persoalan ekonomi kita akhir-akhir ini.\"\n  },\n  {\n    \"Key\": \"b\",\n    \"Value\": \"Pendidikan dan kesehatan semakin tidak dijangkau oleh petani.\"\n  },\n  {\n    \"Key\": \"c\",\n    \"Value\": \"Petani kecil selalu mendapatkan kesulitan untuk memperoleh kredit dari pemerintah.\"\n  },\n  {\n    \"Key\": \"d\",\n    \"Value\": \"Kesenjangan yang terjadi antara petani dengan pemerintah Indonesia.\"\n  },\n  {\n    \"Key\": \"e\",\n    \"Value\": \"Petani semakin sulit hidupnya sehingga lahan pertaniannya semakin menipis.\"\n  }\n]', 'a', NULL, NULL),
(2, 1, 'Antibiotik merupakan substansi yang dihasilkan organisme hidup yang dalam konsentrasi rendah dapat membunuh organisme lain nya. Dengan kata lain, antibiotik adalah obat yang berfungsi untuk menanggulangi infeksi bakteri. Antibiotik memiliki peran yang sangat penting untuk melindungi tubuh dari penyakit karena infeksi bakteri dapat menyerang di bagian tubuh mana pun. Jika infeksi bakteri sampai menyerang otak, maka akan menjadi penyakit meningitis, sedangkan jika terkena paruparu, maka akan menjadi penyakit bronkitis. Hal yang diungkapkan dalam kutipan esai tersebut adalah …', '[\n  {\n    \"Key\": \"a\",\n    \"Value\": \"Infeksi yang mengenai paru-paru manusia\"\n  },\n  {\n    \"Key\": \"b\",\n    \"Value\": \"Infeksi yang menyerang otak manusia\"\n  },\n  {\n    \"Key\": \"c\",\n    \"Value\": \"Kegunaan antibiotik bagi tubuh manusia\"\n  },\n  {\n    \"Key\": \"d\",\n    \"Value\": \"Antibiotik yang diproduksi dari tumbuhan tingkat tinggi\"\n  },\n  {\n    \"Key\": \"e\",\n    \"Value\": \"Infeksi bakteri yang menyerang bagian tubuh tertentu\"\n  }\n]', 'c', NULL, NULL),
(3, 1, 'Latar sosial dan budaya yang disuguhkan oleh S.M.Ardan dalam terang cerita memperlihatkan lingkungan urban Betawi di Jakarta seperti lingkungan di sekitar Senen, Stasiun Gambir, Kwitang, Tanah Abang, dan Harmoni. Apabila kita pinjam terminologi Keith Foulcher dalam talaahnya tentang lenong, kita pun dapat mengatakan bahwa Ardan menekankan bagian community dari lingkungan metropolis yang disebut Jakarta. Hal yang diungkapkan dalam kutipan esai tesebut adalah', '[\n  {\n    \"Key\": \"a\",\n    \"Value\": \"S. M. Ardan menulis Terang Cerita berisi tentang telaah terhadap lenong Betawi dan penduduknya.\"\n  },\n  {\n    \"Key\": \"b\",\n    \"Value\": \"Keith Foulcher menympaikan telaah tentang lenong Betawi sebagai kesenian tradisional.\"\n  },\n  {\n    \"Key\": \"c\",\n    \"Value\": \"Terang Cerita menggambarkan latar belakang sosial dan budaya kaum urban Betawi yang beragam.\"\n  },\n  {\n    \"Key\": \"d\",\n    \"Value\": \"Suasana daerah urban Betawi di Jakarta Stasiun Gambir, Kwitang, Tanah Abang.\"\n  },\n  {\n    \"Key\": \"e\",\n    \"Value\": \"Menggambarkan lingkungan metropolis Jakarta yang diwakili oleh daerah urban Betawi.\"\n  }\n]', 'c', NULL, NULL),
(4, 1, 'Sajak-sajak yang ditulis generasi penyair masa kini termasuk karya yang cukup baik. Para penyair masa kini merupakan orang-orang kreatif pada zamannya. Hanya mereka masih membutuhkan kemampuan lain untuk mengasah kepekaan estetis dalam memilih diksi dan metafora. Kemampuan yang dapat ditingkatkan dari kebiasaan membaca realitas yang hadir di lingkungannya. Kebiasaan yang tidak akan didapat di bangku sekolah. Hal yang ingin diungkap dalam esai tersebut adalah...', '[\n  {\n    \"Key\": \"a\",\n    \"Value\": \"Sajak penyair saat ini cukup baik, namun perlu adanya latihan dalam mengasah kepekaan estetis dan membaca realitas lingkungan sekitar.\"\n  },\n  {\n    \"Key\": \"b\",\n    \"Value\": \"Para penyair masa kini merupakan orang-orang kreatif pada zamannya karena selalu mengasah kemampuannya.\"\n  },\n  {\n    \"Key\": \"c\",\n    \"Value\": \"Agar sajak yang ditulis penyiar bagus, penyiar harus selalu berlatih dalam menulis sajak.\"\n  },\n  {\n    \"Key\": \"d\",\n    \"Value\": \"Penyair saat ini memiliki kebiasaan yang tidak didapat dari bangku sekolah.\"\n  },\n  {\n    \"Key\": \"e\",\n    \"Value\": \"Kepribadian penyair perlu diasah dengan membaca realitas lingkungan sekitar agar sajak yang dihasilkan bagus.\"\n  }\n]', 'a', NULL, NULL),
(5, 1, 'Sajak-sajak yang ditulis generasi penyair masa kini termasuk karya yang cukup baik. Para penyair masa kini merupakan orang-orang kreatif pada zamannya. Hanya mereka masih membutuhkan kemampuan lain untuk mengasah kepekaan estetis dalam memilih diksi dan metafora. Kemampuan yang dapat ditingkatkan dari kebiasaan membaca realitas yang hadir di lingkungannya. Kebiasaan yang tidak akan didapat di bangku sekolah. Kalimat kesimpulan yang sesuai dengan isi paragraph berikut adalah', '[\n  {\n    \"Key\": \"a\",\n    \"Value\": \"Kepekaaan estetis dapat diasah melalui kebiasaan membaca realitas yang hadir di lingkungan dan di bangku sekolah.\"\n  },\n  {\n    \"Key\": \"b\",\n    \"Value\": \"Generasi penyair masa kini harus mengasah kepekaan estetis melalui membaca realitas yang hadir di lingkungannya.\"\n  },\n  {\n    \"Key\": \"c\",\n    \"Value\": \"Kreativitas penyair masa kini tercermin melalui karyanya yang teliti dalam memilih diksi dan metafora.\"\n  },\n  {\n    \"Key\": \"d\",\n    \"Value\": \"Pemilihan diksi dan metafora dalam karya-karya penyair masa kini tidak diperoleh dari bangku sekolah.\"\n  },\n  {\n    \"Key\": \"e\",\n    \"Value\": \"Kepekaan penyair masa kini mencerminkan kreativitas yang diasah melalui belajar di lingkungannya.\"\n  }\n]', 'b', NULL, NULL),
(6, 1, 'Teks esai merupakan teks yang bersifat subjektif', '[\r\n  {\r\n    \"Key\": \"a\",\r\n    \"Value\": \"Benar\"\r\n  },\r\n  {\r\n    \"Key\": \"b\",\r\n    \"Value\": \"Salah\"\r\n  }\r\n]', 'a', NULL, NULL),
(7, 1, 'Dalam menulis teks esai, harus memenuhi kaidah kebahasaannya.', '[\r\n  {\r\n    \"Key\": \"a\",\r\n    \"Value\": \"Benar\"\r\n  },\r\n  {\r\n    \"Key\": \"b\",\r\n    \"Value\": \"Salah\"\r\n  }\r\n]', 'a', NULL, NULL),
(8, 1, 'Selain logis, teks esai harus ditulis dengan memperhatikan faktor kebakuan kata maupun kalimat.', '[\r\n  {\r\n    \"Key\": \"a\",\r\n    \"Value\": \"Benar\"\r\n  },\r\n  {\r\n    \"Key\": \"b\",\r\n    \"Value\": \"Salah\"\r\n  }\r\n]', 'b', NULL, NULL),
(9, 1, 'Struktur pertama dalam teks adalah isi teks esai', '[\r\n  {\r\n    \"Key\": \"a\",\r\n    \"Value\": \"Benar\"\r\n  },\r\n  {\r\n    \"Key\": \"b\",\r\n    \"Value\": \"Salah\"\r\n  }\r\n]', 'b', NULL, NULL),
(10, 1, 'Kata yang digunakan dalam menulis esai juga harus menggunakan kata konotatif', '[\r\n  {\r\n    \"Key\": \"a\",\r\n    \"Value\": \"Benar\"\r\n  },\r\n  {\r\n    \"Key\": \"b\",\r\n    \"Value\": \"Salah\"\r\n  }\r\n]', 'b', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `poin` int(11) DEFAULT NULL,
  `streak` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `poin`, `streak`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'HERLANGGA MAULANI', 'notlyxa@gmail.com', NULL, '$2y$12$ooZRkNw/gpwh3au3QEM/k..acB6/8ZfNrThp/377rx/ReJTwNWY.u', 2, 7, 1, NULL, '2024-01-24 16:06:55', '2024-01-24 18:02:51'),
(4, 'Ginanjar Al Farizi', 'araya.danger.pro.player@gmail.com', NULL, '$2y$12$A56xSf7bE29SiHMUSNyf5.IEXg7vVudiFdMhQcL8kY9Dwe6Qd6Wlm', 2, 7, 1, NULL, '2024-01-24 16:07:05', '2024-01-24 18:21:20'),
(5, 'Lukman Danubrata', 'lukmandanubrata@gmail.com', NULL, '$2y$12$P99wVJ1udWmwzG14oZ/Nb.78Rwax7QoN2mFEXWL90pQH8PVzO0Wbq', 2, 7, 0, NULL, '2024-01-24 16:07:28', '2024-01-24 18:44:59'),
(6, 'Satriya Galank M', 'satriyaglmlyd@gmail.com', NULL, '$2y$12$7iA4xebQtQtm5icVzc7TGOV16yuPMM6YA1xmZTQmTW6rTIFk4018m', 2, 8, 1, NULL, '2024-01-24 16:07:35', '2024-01-24 18:46:50'),
(7, 'Renan', 'ramadhanirenan09@gmail.com', NULL, '$2y$12$BtGzppqam7cRMyxeSERmfevfuyfKzOo4HnsX0ZyqiCeCEDKWJGHaa', 2, 7, 1, NULL, '2024-01-24 16:07:42', '2024-01-24 17:16:46'),
(8, 'Nabil Ahmad Zulva', 'ahmadzulva07@gmail.con', NULL, '$2y$12$SzDQdRPS5ZRSn28h6QL7GOgybeMgppi5XokUYx4FYqVmVCp2fxEie', 2, 10, 10, NULL, '2024-01-24 16:07:43', '2024-01-24 18:46:58'),
(9, 'Muhamad Aditya Rusdani', 'diditrusdani@gmail.com', NULL, '$2y$12$kbnwBMk8op1cExr8P2pu6.W9PIWtHU1xwuvO5lR4SsDEPy5QCupda', 2, 9, 7, NULL, '2024-01-24 16:07:49', '2024-01-24 18:34:08'),
(10, 'Raffasha Ariadiza', 'ariadizaraffasha@gmail.com', NULL, '$2y$12$9sUHT6kMsP8hwf7Q7odOrexrFQ2PBwjvYKfNH5oEGiXyiNTd9k.1S', 2, 9, 5, NULL, '2024-01-24 16:07:50', '2024-01-24 18:36:37'),
(11, 'Rayhan Ilham Rabbani', 'rayhanilhamrabbani@gmail.com', NULL, '$2y$12$sYAcawhv8pwKYuWKVphjtuqUBWKmt5M39wrN6EVW/7dsWwYZpwPvy', 2, 9, 1, NULL, '2024-01-24 16:07:57', '2024-01-24 17:14:30'),
(12, 'Krisna Rizki Dermawan', 'krisna.rizkydermawan@gmail.com', NULL, '$2y$12$HuxXXbE2Bq6Do.kaeWU0BevijYMTZ4AIrpjgeImdFPOqOTadAUcMu', 2, 10, 4, NULL, '2024-01-24 16:07:58', '2024-01-24 18:33:03'),
(14, 'Muhammad Nafis Azzaky Hendrawan', 'mhmdnafis199@gmail.com', NULL, '$2y$12$Ib2s/Mk/NQOKzeCkjwoxO.FVTkC11WfBWEH/oW6xuPqQS0BOI0oSG', 2, 9, 1, NULL, '2024-01-24 16:20:12', '2024-01-24 17:11:57'),
(15, 'Muhammad Athhar Faris', 'beigeprawn2867@gmail.com', NULL, '$2y$12$20H9OTqnJ.NiRYPPvJR0POfkRE24kur74/Js6RULMI8H.hW8uJ1.K', 2, 7, 1, NULL, '2024-01-24 16:20:27', '2024-01-24 17:46:57'),
(16, 'Moch Indra K', 'mochindraaak@gmail.com', NULL, '$2y$12$MBCFOpYJ6Hfuff5hguDGreAttF9WGIZPyWhiCTI/4vyQf797NX8Dq', 2, 6, -1, NULL, '2024-01-24 16:21:03', '2024-01-24 17:13:42'),
(17, 'Irsyad hidayat', 'kaiyadiyadi024@gmail.com', NULL, '$2y$12$fzVmTsyBl6vkLBlLIvtJn.CmOGY7Fn1E5cv89ZI.ZJR6fD.IDId06', 2, 5, -1, NULL, '2024-01-24 16:21:07', '2024-01-24 18:33:39'),
(18, 'Natasya Alena Putri', 'natasyeuuualena@gmail.com', NULL, '$2y$12$mwEHSJM6S6jK18GfwfZUhOlFYUzuJ2V5IpUYXaFGfGWxquBJqaC9.', 2, 8, 5, NULL, '2024-01-24 16:21:13', '2024-01-24 17:41:43'),
(19, 'andika putra hambara', 'andiiikaaaputraaa12@gmail.com', NULL, '$2y$12$.E4xWsjgLF3/16Q4Ba9wdOC3SSEDTliEfpubDIuq7P.POswvyl9CC', 2, 6, -1, NULL, '2024-01-24 16:21:15', '2024-01-24 17:10:57'),
(20, 'Shahdian Putra Vindra', 'shahdian1006@gmail.com', NULL, '$2y$12$vtJCAQJS/fLOMO7TkDbzpeDK0ZCgqBXe0jPEKz52goNS6gIN4pto2', 2, 7, 1, NULL, '2024-01-24 16:21:26', '2024-01-24 17:16:51'),
(21, 'MUHAMAD SHOLIHIN', 'oflegendarytsz@gmail.com', NULL, '$2y$12$E/78oyj4UbP87cZTW3mKMufRb.1WOJqJ5.5fAjlKSwrIX1nKCJnQi', 2, 4, -3, NULL, '2024-01-24 16:21:27', '2024-01-24 18:37:44'),
(22, 'sajjad', 'assajjad04@gmail.com', NULL, '$2y$12$Fh4OULp3g61uwCmOEcJLwu27Krpbu9MbBKgkG3s5j/qS5DaeAGfgG', 2, 7, 1, NULL, '2024-01-24 16:21:28', '2024-01-24 17:26:50'),
(23, 'najwan', 'najwanmuttaqin44@gmail.com', NULL, '$2y$12$rszdeHIxX4u1ZkCfsaALde1B2EC6Zjzb840obpuap/.q/8L93ffEq', 2, 8, 1, NULL, '2024-01-24 16:24:22', '2024-01-24 17:12:31'),
(24, 'Muhammad Arsal Nawfal Ali', 'arsalnaufal1301@gmail.com', NULL, '$2y$12$wGMjipsBlbu1ldbbkznpheCSsMjl9q1v4EaqEgUaBwRJFWOeFHfzu', 2, 6, 1, NULL, '2024-01-24 17:00:28', '2024-01-24 18:43:18'),
(26, 'Farrel Raza Sigak Amrullah', 'syaelendrafarrelraza@gmail.com', NULL, '$2y$12$/OSr3Dtwm/oy77G37qU9FO/YrqKf.NQZP2hewlJsvTRZajss3rZk.', 2, 10, 10, NULL, '2024-01-24 17:02:57', '2024-01-24 18:42:05'),
(27, 'Mochamad Akhsan', 'akhsanhafizh1@gmail.com', NULL, '$2y$12$Qu5Pfhg7FgTK.nTFhxhn7erh9Zf5ztZLlTKWeCKDUZNzPDBaoOxbC', 2, 9, 1, NULL, '2024-01-24 17:04:24', '2024-01-24 18:31:56'),
(28, 'Alghani Muhammad Fadhillah', 'muhammadfadhillahalghani@gmail.com', NULL, '$2y$12$.ZX2MWM5N6LJ4VPUu4Kq.erhG43t1ghvGeqafkItpuIiSfKiO2fUO', 2, 10, 10, NULL, '2024-01-24 17:17:56', '2024-01-24 18:14:18'),
(29, 'Ninfa Luthfiyatul Maudy', 'Ninfaninfa81@gmail.com', NULL, '$2y$12$3iRlHKl0y8qPvrl02qrxkuLk/6WUszd6QEX7OU1cFkLaP1fP5AjAO', 2, 6, -1, NULL, '2024-01-24 17:18:50', '2024-01-24 18:02:50'),
(30, 'Aurel Kysa Budiman', 'aurelkysabudiman@gmail.com', NULL, '$2y$12$f5zP8qyEfauLP7ILyX8jN.dBi5J.Cia8sCeW6.VYTFE8p6cfRH6xy', 2, 7, -1, NULL, '2024-01-24 17:19:10', '2024-01-24 17:54:36'),
(31, 'Adrian Abdul Hakim', 'adrianabdulhakim@gmail.com', NULL, '$2y$12$Bde/EpXmNUc99ErW5KcRZOE97E/AvFCKoYMxHNgl6VBnJJ0tTwXlu', 2, 7, 1, NULL, '2024-01-24 17:19:46', '2024-01-24 18:07:51'),
(32, 'Muhammad Rafi', 'rafialfinodinova43@gmail.com', NULL, '$2y$12$/UowkCbKox.7.5jFMyzPkuPAKFKeNAAg23kJQ/eC0xGcbx8lMxkgi', 2, 9, 3, NULL, '2024-01-24 17:20:51', '2024-01-24 18:23:07'),
(33, 'GabidHabib', 'gabidhabib@gmail.com', NULL, '$2y$12$viXG5kK3xz.8AISdXWHSZeGj1FSQ6K1Pb2BEHNg7DGdtFIsgUOw4O', 2, 6, -1, NULL, '2024-01-24 17:21:02', '2024-01-24 18:23:33'),
(34, 'Muhammad Yusuf Haekal', 'yusufhaekal007@gmail.com', NULL, '$2y$12$1xVDsOz1dIvUuIu0VfyStekSwD.Vy6uNd8y57E6M4YPccnuQc/ZZW', 2, 9, 1, NULL, '2024-01-24 17:22:52', '2024-01-24 18:35:35'),
(35, 'Balyan Farrel Safaraz', 'safaraz28@gmail.com', NULL, '$2y$12$0rNQWEORLL0zaCAoEgRUn.ddvOVkL/45.SUCrneFPpOWTUUMgBa0.', 2, 10, 10, NULL, '2024-01-24 17:23:12', '2024-01-24 18:49:10'),
(36, 'Muhammad Nouval', 'muhammad.nouval139@gmail.com', NULL, '$2y$12$mEKUJGqUloIiYjF49z/4tO4nF6DCZRpLjiuAKO0uBVhJQjDIXlHse', 2, 8, 5, NULL, '2024-01-24 17:37:34', '2024-01-24 18:42:09'),
(37, 'Siti Haula Fauziah', 'sitihaulafauziah06@gmail.com', NULL, '$2y$12$H5iUZwQzMtAiJ5VcmAfsVOSuMj0iB/ln9DLHz4KDCoshHogJDL8Ay', 2, 9, 1, NULL, '2024-01-24 17:43:48', '2024-01-24 18:20:32'),
(38, 'raka', 'raka08987126239@gmail.com', NULL, '$2y$12$IahNhIwE4Pr2RYTYmiUHNOit0dm3LOWsIC6yeUvuSHGwAebMRWBoS', 2, 9, 1, NULL, '2024-01-24 17:46:13', '2024-01-24 18:27:22'),
(39, 'Putri Junita Andieni', 'putrijunita761@gmail.com', NULL, '$2y$12$k5TEKzt956B2aTP3GkWOGelvrTwNoRj5ZoZsn3z47XZkPLxeU3qce', 2, 10, 10, NULL, '2024-01-24 17:56:27', '2024-01-24 18:40:43'),
(40, 'Muhammad Rayhan Maulana Farid', 'rayhanfarid20@gmail.com', NULL, '$2y$12$4whue5Ox.XTzPMMANaZnnuPlA.BZ.Q.sUDuPUc4EKLv/DQShv1DUa', 2, 10, 1, NULL, '2024-01-24 18:01:24', '2024-01-24 18:41:01'),
(43, 'Siswa Ex', 'siswa@mail.com', NULL, '$2y$12$anBtZaldJykbeSOaxK/uZeoBDfF/7UZSnrLFTtH5b3.Vy2swM344y', 2, 6, 1, NULL, '2024-05-29 20:05:55', '2024-05-29 20:15:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jawaban_soal_id_foreign` (`soal_id`),
  ADD KEY `jawaban_user_id_foreign` (`user_id`);

--
-- Indexes for table `jawaban_pemantik`
--
ALTER TABLE `jawaban_pemantik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pertanyaan_pemantik`
--
ALTER TABLE `pertanyaan_pemantik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reflection`
--
ALTER TABLE `reflection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reflection_answer`
--
ALTER TABLE `reflection_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `soal_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT for table `jawaban_pemantik`
--
ALTER TABLE `jawaban_pemantik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pertanyaan_pemantik`
--
ALTER TABLE `pertanyaan_pemantik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reflection`
--
ALTER TABLE `reflection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reflection_answer`
--
ALTER TABLE `reflection_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_soal_id_foreign` FOREIGN KEY (`soal_id`) REFERENCES `soal` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jawaban_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `materi`
--
ALTER TABLE `materi`
  ADD CONSTRAINT `materi_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `soal_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
