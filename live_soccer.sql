-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 10:53 AM
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
-- Database: `live_soccer`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(6, 'Mới nhất', '2024-05-21 03:03:33', '2024-05-21 03:03:33'),
(7, 'Chuyển nhượng', '2024-05-21 03:03:40', '2024-05-21 03:03:40'),
(8, 'Anh', '2024-05-21 03:03:44', '2024-05-21 03:03:44'),
(9, 'Tây Ban Nha', '2024-05-21 03:03:52', '2024-05-21 03:03:52'),
(10, 'Ý', '2024-05-21 03:03:55', '2024-05-21 03:03:55'),
(11, 'Đức', '2024-05-21 03:03:59', '2024-05-21 03:03:59'),
(12, 'Pháp', '2024-05-21 03:04:03', '2024-05-21 03:04:03'),
(13, 'Việt Nam', '2024-05-21 03:04:09', '2024-05-21 03:04:09'),
(14, 'Champions League', '2024-05-21 03:04:19', '2024-05-21 03:04:19'),
(15, 'Europa League', '2024-05-21 03:04:24', '2024-05-21 03:04:24'),
(16, 'Euro', '2024-05-21 03:04:33', '2024-05-21 03:04:33'),
(17, 'World Cup', '2024-05-21 03:04:39', '2024-05-21 03:04:39'),
(18, 'Copa America', '2024-05-21 03:05:14', '2024-05-21 03:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `club_name`, `created_at`, `updated_at`) VALUES
(5, 'Manchester United', '2024-05-21 03:21:04', '2024-05-21 03:21:04'),
(6, 'Manchester City', '2024-05-21 03:21:08', '2024-05-21 03:21:08'),
(7, 'Arsenal', '2024-05-21 03:21:11', '2024-05-21 03:21:11'),
(8, 'Chelsea', '2024-05-21 03:21:14', '2024-05-21 03:21:14'),
(9, 'Liverpool', '2024-05-21 03:21:17', '2024-05-21 03:21:17'),
(10, 'Tottenham Hotspur', '2024-05-21 03:21:21', '2024-05-21 03:21:21'),
(11, 'Real Madrid', '2024-05-21 03:21:24', '2024-05-21 03:21:24'),
(12, 'Barcelona', '2024-05-21 03:21:28', '2024-05-21 03:21:28'),
(13, 'AS Roma', '2024-05-21 03:21:33', '2024-05-21 03:21:33'),
(14, 'Juventus', '2024-05-21 03:21:37', '2024-05-21 03:21:37'),
(15, 'AC Milan', '2024-05-21 03:21:40', '2024-05-21 03:21:40'),
(16, 'Inter Milan', '2024-05-21 03:21:44', '2024-05-21 03:21:44'),
(17, 'Paris Saint Germain', '2024-05-21 03:21:48', '2024-05-21 03:21:48'),
(18, 'Bayern Munich', '2024-05-21 03:21:52', '2024-05-21 03:21:52'),
(19, 'Borussia Dortmund', '2024-05-21 03:21:56', '2024-05-21 03:21:56'),
(20, 'Null', '2024-05-21 03:22:15', '2024-05-21 03:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE `leagues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `league_name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leagues`
--

INSERT INTO `leagues` (`id`, `league_name`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Mới nhất', 6, '2024-05-21 03:06:17', '2024-05-21 03:06:17'),
(4, 'Chuyển nhượng', 7, '2024-05-21 03:06:28', '2024-05-21 03:06:28'),
(5, 'Premier League', 8, '2024-05-21 03:06:39', '2024-05-21 03:06:39'),
(7, 'FA Cup', 8, '2024-05-21 03:16:31', '2024-05-21 03:16:31'),
(8, 'EFL Cup', 8, '2024-05-21 03:16:38', '2024-05-21 03:16:38'),
(9, 'Anh/Tin khác', 8, '2024-05-21 03:16:54', '2024-05-21 03:16:54'),
(10, 'La Liga', 9, '2024-05-21 03:17:03', '2024-05-21 03:17:03'),
(11, 'Tây Ban Nha/Tin Khác', 9, '2024-05-21 03:17:14', '2024-05-21 03:17:14'),
(12, 'Bundesliga', 11, '2024-05-21 03:17:24', '2024-05-21 03:17:24'),
(13, 'Đức/Tin Khác', 11, '2024-05-21 03:17:36', '2024-05-21 03:17:36'),
(14, 'Ligue 1', 12, '2024-05-21 03:17:47', '2024-05-21 03:17:47'),
(15, 'Pháp/Tin Khác', 12, '2024-05-21 03:17:58', '2024-05-21 03:17:58'),
(16, 'Đội tuyển quốc gia', 13, '2024-05-21 03:18:08', '2024-05-21 03:18:08'),
(17, 'V-League', 13, '2024-05-21 03:18:19', '2024-05-21 03:18:19'),
(18, 'Bóng đá nữ', 13, '2024-05-21 03:19:49', '2024-05-21 03:19:49'),
(19, 'VN/Tin khác', 13, '2024-05-21 03:19:55', '2024-05-21 03:19:55'),
(20, 'Champions League', 14, '2024-05-21 03:20:11', '2024-05-21 03:20:11'),
(21, 'Europa League', 15, '2024-05-21 03:20:18', '2024-05-21 03:20:18'),
(22, 'Euro', 16, '2024-05-21 03:20:25', '2024-05-21 03:20:25'),
(23, 'World Cup', 17, '2024-05-21 03:20:32', '2024-05-21 03:20:32'),
(24, 'Copa America', 18, '2024-05-21 03:20:41', '2024-05-21 03:20:41'),
(25, 'Serie A', 10, '2024-05-21 07:39:01', '2024-05-21 07:39:01');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_17_141437_create_clubs_table', 1),
(5, '2024_05_17_141503_create_players_table', 1),
(6, '2024_05_18_130448_create_categories_table', 1),
(7, '2024_05_18_151812_create_leagues_table', 1),
(8, '2024_05_18_151816_create_news_table', 1),
(9, '2024_05_18_155857_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `linkimage` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `club_id` bigint(20) UNSIGNED NOT NULL,
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `league_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `linkimage`, `title`, `content`, `author`, `created_at`, `updated_at`, `club_id`, `player_id`, `league_id`, `image_url`) VALUES
(19, '1716302163.png', '3 lý do Arsenal sẽ trở thành tân vương Premier League', '<p>Dù không còn nắm quyền tự quyết song Pháo thủ vẫn có thể hy vọng về một điều kỳ diệu ở vòng đấu cuối.&nbsp;</p><p><strong>Những thống kê&nbsp;</strong></p><figure class=\"image\"><img style=\"aspect-ratio:630/386;\" src=\"https://media.bongda.com.vn/files/thach.pham/2024/05/19/t-0704.jpg\" alt=\"t-0704.jpg (630×386)\" width=\"630\" height=\"386\"></figure><p>Everton thường nhận về kết quả không mấy khả quan trong những chuyến hành quân đến Emirates. Họ chỉ giành đúng 1 chiến thắng sau 27 lần làm khách tại đây và đã thua nhiều trận ở vòng đấu cuối hơn bất kỳ đội nào khác ở Premier League (14). Hơn thế nữa, The Toffees cũng không còn bất kỳ động lực nào để chiến đấu hết sức ở màn chạm trán này.</p><p>Còn ở cặp đấu mà Arsenal cần West Ham United phải làm nên điều kỳ diệu trước Manchester City, lịch sử cũng ủng hộ họ khi David Moyes là huấn luyện viên đánh bại Man City nhiều lần hơn bất kỳ đội nào trong nhóm Big Six (15 trận thắng sau 41 lần đối đầu). Những thống kê dù chỉ mang tính chất tham khảo nhưng cũng đủ để giúp Pháo thủ tiếp thêm động lực.&nbsp;</p><p><strong>Kẻ phá bĩnh&nbsp;</strong></p><p>Không những vậy, West Ham còn nổi tiếng là những kẻ phá bĩnh. Vào năm 2007, pha lập công của Bobby Zamora giúp đại diện miền Đông London trở thành đội khách đầu tiên giành chiến thắng trên sân Emirates. Trong khi Michail Antonio mang về cho họ vinh dự tương tự tại Sân vận động Tottenham Hotspur 5 năm trước.</p><p>Ngoài ra, chúng ta đừng quên việc The Hammers đã giành chiến thắng bất ngờ 2-0 trước Arsenal vào tháng 12 năm ngoái, đó là một phần lý do khiến đoàn quân Mikel Arteta rơi vào tình cảnh như bây giờ. Dù không thể duy trì được sự ổn định trong cuộc đua đường dài tại Premier League, tuy nhiên West Ham luôn biết cách tạo ra những điều thú vị trước các đối thủ được đánh giá cao hơn. Vì vậy, các fan Arsenal có thể hy vọng vào việc đoàn quân David Moyes sẽ khiến giấc mơ giành 4 Premier League liên tiếp của Man City trở nên dang dở.</p><p><strong>Thực lực của West Ham&nbsp;</strong></p><figure class=\"image\"><img style=\"aspect-ratio:650/398;\" src=\"https://media.bongda.com.vn/files/phong.lu/2024/05/07/5-0552.jpg\" alt=\"5-0552.jpg (650×398)\" width=\"650\" height=\"398\"></figure><p>Ở thời điểm hiện tại, West Ham đang sở hữu những cầu thủ cùng với hệ thống có thể gây ra sự khó chịu. Đầu tiên, họ có thể đương cự được với lối chơi kiểm soát mà Man City thiết lập. Họ thích các đối thủ sở hữu phong cách thi đấu kiểm soát, như vậy chiến thuật phòng ngự phản công của David Moyes sẽ dễ dàng triển khai hơn. Còn nhớ trong chiến thắng 2-0 trước Arsenal, dù chỉ sở hữu tỷ lệ cầm bóng 25% nhưng West Ham vẫn là đội giành trọn 3 điểm. Xét về mặt con người, những Jarrod Bowen và Mohammed Kudus được ví như \'\'cơn lốc\'\' bởi khả năng tăng tốc ấn tượng, họ sẽ có nhiều không gian để hoạt động một khi đối thủ mất bóng và những đường chuyền vượt tuyến đến từ Lucas Paqueta và James Ward-Prowse luôn là thứ vũ khí khiến mọi CLB chạm trán West Ham đều phải dè chừng. Nhiệm vụ trước mắt họ vẫn còn khó khăn, và hàng thủ của Hammers (để thủng lưới 15 bàn trong 5 trận gần nhất) không tạo nên sự lạc quan. Nhưng đôi khi điều không thể tưởng tượng được lại xảy ra trong bối cảnh dàn sao Man City sẽ chịu áp lực rất lớn.</p><p>&nbsp;</p><p>Nguồn: giaitri.thoibaovhnt.com.vn</p>', 'Đức Hiền', '2024-05-21 07:36:03', '2024-05-21 07:36:03', 7, 2, 5, NULL),
(20, NULL, 'Có hành động, Mbappe coi như đến Real', '<p>Các báo cáo mới nhất từ ​​Relevo cho thấy Kylian Mbappe đang chuẩn bị cho cuộc sống tại Real Madrid.&nbsp;</p><p>Real Madrid đang đếm ngược từng ngày để công bố sự xuất hiện của Kylian Mbappe. Mbappe đã xác nhận việc rời Paris Saint-Germain khi trận đấu cuối cùng của anh được ấn định là trận chung kết Cúp quốc gia Pháp vào ngày 25 tháng 5.&nbsp;</p><p>Mbappe sẽ ở lại Paris cho đến khi cùng đội tuyển Pháp tham dự EURO 2024, với đợt tập trung trước giải đấu của Les Bleus bắt đầu vào ngày 3/6. Real Madrid vẫn đang tìm thời điểm thích hợp để công bố tân binh Mbappe. Lúc này, họ có sự tập trung vào trận chung kết UEFA Champions League vào ngày 1/6.</p><p>Los Blancos nhiều khả năng sẽ yêu cầu Mbappe rời trại tuyển Pháp trong một ngày để hoàn thành buổi ra mắt chính thức tại Estadio Santiago Bernabeu. Khi thương vụ này gần như đã hoàn tất, các báo cáo mới nhất từ Relevo cho biết, ngôi sao sinh năm 1998 đã liên hệ với Vinicius Junior và các cầu thủ Real Madrid khác để xin lời khuyên về thành phố. Cựu sao AS Monaco đã mua một căn nhà ở Madrid, nhưng anh rất muốn tìm hiểu cuộc sống ở thủ đô Tây Ban Nha, với tư cách là cầu thủ Real.</p><p>&nbsp;</p><p>Nguồn: giaitri.thoibaovhnt.com.vn</p>', 'Đỗ Khoa Minh', '2024-05-21 07:37:33', '2024-05-21 07:52:34', 11, 6, 10, 'https://media.bongda.com.vn/files/phong.lu/2024/05/19/5-0949.jpg'),
(21, NULL, 'Xác nhận: Juve sa thải Allegri', '<p>Nhiều báo cáo ở Ý xác nhận Juventus có thể sa thải Massimiliano Allegri trước khi mùa giải kết thúc, thậm chí là ngay 16/5/2024.&nbsp;</p><p>Thời gian của Allegri ở Juventus có thể đã kết thúc. Sky Sport Italia và Fabrizio Romano xác nhận gã khổng lồ Serie A có thể sa thải chiến thuật gia người Ý trước khi mùa giải kết thúc, thậm chí có thể là ngay hôm nay.&nbsp;</p><p>Football Italia sáng nay đưa tin rằng chiến lược gia người Ý có thể bị sa thải sau những hành vi bột phát của ông chống lại các giám đốc câu lạc bộ và phóng viên của Tuttosport sau trận đấu với Atalanta mới đây.&nbsp;</p><p>Romano viết: \"Juventus và Massimiliano Allegri sẽ chia tay, như dự kiến từ tháng Hai. Chi tiết duy nhất cần làm rõ là liệu Juve quyết định sa thải Allegri bây giờ hay 10 ngày nữa.\"</p><p>Phóng viên Sky Sport, Giovanni Guardala \"không thể đảm bảo\" Allegri sẽ cầm quân trong trận đấu tiếp theo tại Serie A với Bologna. Và chính HLV Bologna, Thiago Motta, là ứng cử viên hàng đầu cho vị trí dẫn dắt đội chủ sân Allianz Stadium mùa tới.&nbsp;</p><p>Giám đốc Juventus Giuntoli đã đàm phán với người đại diện của cựu tuyển thủ Ý một thời gian và định sẽ sa thải Allegri vào cuối mùa giải. Tuy nhiên, hành vi của ông trong trận chung kết Coppa Italia với Atalanta có thể dẫn đến quyết định sớm hơn. Juventus đã lọt vào top 5 ở Serie A, đồng nghĩa với việc họ sẽ được chơi ở Champions League mùa tới.</p><p>Nguồn: giaitri.thoibaovhnt.com.vn</p>', 'Minh Thu', '2024-05-21 07:41:00', '2024-05-21 07:52:20', 14, 2, 25, 'https://media.bongda.com.vn/files/quan.le/2024/03/20/massimiliano-allegri-01-2023.jpg'),
(22, NULL, 'Tuyển Đức nín thở vì ngọc quý Bayern', '<p>Tiền vệ Aleksandar Pavlovic đã dính chấn thương và phải rời sân giữa chừng ở thất bại của Bayern Munich trước Hoffenheim mới đây.&nbsp;</p><p>Bayern đã có lời chia tay HLV Thomas Tuchel không thể tệ hơn khi để Hoffenheim lội ngược dòng ở vòng đấu hạ màn Bundesliga 2023/24.&nbsp;</p><p>5 phút đầu trận, Hùm Xám có lợi thế dẫn trước 2 bàn bởi các pha lập công của Mathys Tel và Alphonso Davies nhưng kể từ đây, trận đấu được kiểm soát hoàn toàn bởi Hoffenheim.&nbsp;</p><p>Phút 8, tiền vệ Maximilian Beier gỡ lại 1 bàn cho đội chủ nhà trước khi tiền vệ Andrej Kramaric lập 1 cú hat-trick trong hiệp 2 để khiến Hùm Xám rời sân Rhein Neckar Arena với 2 bàn tay trắng.</p><p>Không chỉ đón nhận nỗi buồn thua cuộc, CĐV Bayern còn lo lắng bởi chấn thương của tài năng trẻ Pavlovic. Cụ thể ở phút 35, sau tình huống va chạm với cầu thủ đối phương, tiền vệ người Đức đã lăn xuống sân đầy đau đớn, ngay lập tức HLV Tuchel đã tung Lovro Zvonarek vào sân thay thế cho cầu thủ 20 tuổi.</p><p>Hiện chưa có thông tin cập nhật về chấn thương của Pavlovic nhưng khoảnh khắc trên chắc chắn khiến HLV Julian Nagelsmann cũng như người hâm mộ tuyển Đức đau đầu bởi Pavlovic đã có tên trong thành phần Cỗ xe tăng tham dự EURO 2024. Đây là mùa giải tương đối thành công với ngôi sao sinh năm 2004. Sau 22 lần ra sân trên mọi đấu trường, Pavlovic đã ghi được 2 bàn thắng và có 2 kiến tạo.</p><p>Nguồn: xevathethao.vn</p>', 'Việt Tùng', '2024-05-21 07:41:49', '2024-05-21 07:52:01', 18, 2, 12, 'https://media.bongda.com.vn/files/tung.nguyen/2024/05/19/z5454154932012_99ccebc3b8d2b13edab9fda886a8b530-0000.jpg'),
(23, NULL, 'Vì sao Mbappe bị loại khỏi đội hình PSG?', '<p>Trang Football Transfer đã đưa ra nguyên nhân khiến tiền đạo người Pháp không thể góp mặt trong cuộc đối đầu vừa qua.&nbsp;</p><p>Vừa qua Paris Saint-Germain đã có màn chạm trán Nice tại vòng 37 Ligue 1. Đây là cơ hội để Kylian Mbappe có thể cải thiện thành tích ghi bàn mùa này sau khi đã đóng góp 27 pha lập công cùng 7 kiến tạo. Tuy nhiên tiền đạo người Pháp lại không góp mặt trong danh sách đăng ký của nhà vô địch nước Pháp.</p><p>Theo nguồn tin từ Football Transfers, nguyên nhân chính khiến HLV Luis Enrique đưa ra quyết định này là vì Mbappe bị căng gân kheo nhẹ. Hơn thế nữa, họ cũng cần tiền đạo sinh năm 1998 có được thể trạng tốt nhất để chuẩn bị cho trận chung kết Cúp quốc gia Pháp với Lyon diễn ra vào ngày 26.&nbsp;</p><p>Cú đúp quốc nội sẽ là lời chia tay đẹp mà Mbappe dành cho đội bóng quê hương trước khi anh bắt đầu một cuộc hành trình mới. Truyền thông cho rằng, tiền đạo người Pháp sẽ chuyển đến khoác áo Real Madrid với mục tiêu chinh phục Champions League. Real hiện đang sở hữu đội hình trẻ trung giàu khát khao và Mbappe được xem như mảnh ghép hoàn hảo để giúp họ thống trị đấu trường châu lục.</p><p>Nguồn: giaitri.thoibaovhnt.com.vn</p>', 'Trường Sơn', '2024-05-21 07:42:34', '2024-05-21 07:49:07', 17, 6, 14, 'https://media.bongda.com.vn/files/son.le/2024/05/16/m3p-0547.jpg'),
(24, NULL, '21 cầu thủ lên tuyển Việt Nam; Thủ môn mất trí nhớ lên tiếng', '<p>21 cầu thủ lên tuyển Việt Nam hay thủ môn mất trí nhớ lên tiếng là nội dung chính trong bản tin bóng đá Việt Nam ngày 19/05.&nbsp;</p><p>21 cầu thủ lên tuyển Việt Nam&nbsp;</p><p>Đó là lời đề nghị mang tính chất phấn khích của HLV Nguyễn Đức Thắng sau khi Thể Công Viettel có màn lội ngược dòng đầy cảm xúc trước Nam Định tại vòng 19 V-League 2023/2024. Khi được hỏi về những cái tên mà ông tiến cử lên ĐTQG, chiến lược gia sinh năm 1976 cho biết: \"Tôi tiến cử cả 21 cầu thủ Thể Công Viettel lên đội tuyển Việt Nam\".</p><p>Nói về chiến thắng vừa qua của Thể Công Viettel, ông Nguyễn Đức Thắng bày tỏ: \"Tinh thần, thể lực và sự quyết tâm đã giúp Thể Công Viettel giành 3 điểm. Chúng tôi đã có phương án cho trận này. Khát khao của các cầu thủ trẻ, hôm nay có 2 cầu thủ trẻ rất mới đã thi đấu, sau đó lại thêm 1 cầu thủ nữa vào từ ghế dự bị. Họ có sức trẻ, khát khao chứng tỏ bản thân giúp họ hòa nhập. Họ được đào tạo từ chung một cái nôi nên rất hiểu ý nhau, phối hợp dễ dàng hơn cầu thủ trẻ ở các đội mà đến từ các nơi khác về\".</p><p>Thủ môn mất trí nhớ lên tiếng&nbsp;</p><p>Chia sẻ với Zing News, thủ môn Nguyễn Đình Triệu đã lên tiếng về sự cố mất trí nhớ tạm thời của bản thân ở trận gặp Bình Định tại vòng 19 V-League. Người gác đền của Hải Phòng cho biết: \"Tôi ổn, chỉ mất ký ức về những việc xảy ra 5 phút trước va chạm. Tôi ý thức được những gì mình làm và vẫn có thể tiếp tục thi đấu sau đó, chứ không phải tôi không biết mình làm gì mà HLV và bác sĩ vẫn để cho thi đấu\".</p><p>\"Sau 15 phút đầu hiệp hai thì tôi chuột rút, bác sĩ đã khuyên tôi rời sân vì cơ thể tôi không đáp ứng được nữa. Tôi tiếc chứ, đội đang bị dồn ép mà không thể tiếp tục chiến đấu cùng anh em\".&nbsp;</p><p>\"Tôi đã ổn và có thể trở lại tập luyện chiều nay luôn. Cũng cần phân biệt rõ mất ký ức và mất ý thức tạm thời. Đó là 2 khái niệm khác nhau. Nhiều cầu thủ va chạm cũng bị choáng và mất ký ức tạm thời. Gần đây có thủ môn Nguyễn Văn Việt của SLNA trận Bình Dương\", Đình Triệu cho hay.</p><p>Nguồn: giaitri.thoibaovhnt.com.vn</p>', 'Danh Nguyễn', '2024-05-21 07:43:27', '2024-05-21 07:48:52', 20, 2, 17, 'https://media.bongda.com.vn/files/danh.nguyen/2024/05/19/383791904_876148097412871_3492242062123578953_n-2812103218-1410.jpg'),
(25, NULL, 'Real mất trụ cột ở chung kết Champions League', '<p>Theo thông tin từ L’Equipe, tiền vệ Aurelien Tchouameni của Real Madrid nhiều khả năng sẽ vắng mắt ở trận chung kết Champions League sắp tới.&nbsp;</p><p>Real sẽ hành quân tới sân Wembley vào ngày 2/6 tới để thi đấu trận chung kết Champions League 2023/24 với Borussia Dortmund. Dù vậy HLV Carlo Ancelotti nhiều khả năng sẽ không có được đội hình mạnh nhất ở màn chạm trán này bởi bên cạnh chấn thương dài hạn của hậu vệ David Alaba, Los Blancos còn đón nhận tổn thất nặng nề nơi khu vực giữa sân khi tiền vệ Tchouameni gặp phải 1 vấn đề ở bàn chân trong trận bán kết lượt về với Bayern Munich đầu tháng này.&nbsp;</p><p>Nguồn tin từ L’Equipe cho hay ngôi sao người Pháp cần khoảng 3-4 tuần để hồi phục hoàn toàn chấn thương, do đó nguy cơ lớn, cựu sao AS Monaco sẽ không kịp bình phục để ra sân.</p><p>Thậm chí nguồn tin trên còn lo ngại Tchouameni phải bỏ lỡ trận đấu ra quân của tuyển Pháp tại EURO 2024 gặp tuyển Áo diễn ra vào ngày 17/6.&nbsp;</p><p>HLV Didier Deschamps của Gà Trống Gô Loa vẫn đang theo dõi sát sao quá trình dưỡng thương nơi cầu thủ 24 tuổi, nếu Tchouameni gặp khó, tiền vệ Jordan Vertout của Marseille nhiều khả năng sẽ được triệu tập thay thế. Tchouameni gia nhập Real ở kỳ chuyển nhượng hè năm ngoái từ Monaco. Mùa này, tiền vệ sinh năm 2000 đã ra sân tổng cộng 37 trận trên mọi đấu trường, ghi được 3 bàn thắng, góp công giúp đoàn quân Ancelotti đoạt được 1 Siêu cúp Tây Ban Nha và 1 La Liga.</p><p>Nguồn: xevathethao.vn</p>', 'Việt Tùng', '2024-05-21 07:44:25', '2024-05-21 07:48:38', 11, 2, 20, 'https://media.bongda.com.vn/files/tung.nguyen/2024/05/18/tchouameni-casemiro-1119.jpg'),
(26, NULL, 'Girona liên hệ tiền vệ vừa chia tay Liverpool', '<p>Relevo đưa tin Girona đã liên hệ để chiêu mộ tiền vệ Thiago Alcantara vào kỳ chuyển nhượng mùa hè 2024.&nbsp;</p><p>Thiago gia nhập đội bóng của Jurgen Klopp vào mùa hè năm 2020 từ Bayern Munich. Tiền vệ người Tây Ban Nha là một trong những cầu thủ xuất sắc nhất thế giới khi đó, tuy nhiên, mọi thứ diễn ra tại Anfield không được như kỳ vọng do anh phải vật lộn với nhiều chấn thương.</p><p>Cầu thủ 33 tuổi hiện đã thông báo rằng anh sẽ không gia hạn hợp đồng với Liverpool và sẽ ra đi sau mùa bóng này. Đó là tin vui cho Girona - CLB đang tha thiết đưa Thiago trở lại Tây Ban Nha.&nbsp;</p><p>&nbsp;</p><p>Relevo đưa tin Girona đã liên hệ với đại diện của Thiago để xem xét tính khả thi của động thái này. Đội bóng xứ Catalan đã giành được vé dự Champions League và cần bổ sung một cầu thủ đẳng cấp như Thiago vào đội hình.</p><p>Trước mắt, có một trở ngại lớn mà Girona sẽ phải đối mặt, đó là mức lương quá cao của Thiago. Theo báo cáo, cựu ngôi sao Barca kiếm được gần 10 triệu euro mỗi mùa với Liverpool, và nếu chuyển đến Catalonia, anh ấy phải chấp nhận giảm đi mức lương của mình.&nbsp;</p><p>Nguồn: giaitri.thoibaovhnt.com.vn</p>', 'Minh Tuấn', '2024-05-21 07:45:35', '2024-05-21 07:48:10', 9, 2, 4, 'https://media.bongda.com.vn/files/thach.pham/2024/05/19/j-1659.jpg'),
(27, NULL, 'CHÍNH THỨC: Manchester City đi vào lịch sử bóng đá Anh', '<p>Đoàn quân Pep Guardiola thiết lập cột mốc vô tiền khoáng hậu trong lịch sử bóng đá xứ sương mù.&nbsp;</p><p>Không có bất ngờ nào xảy ra ở vòng đấu cuối cùng Premier League. Man City đánh bại West Ham&nbsp; United 3-1, qua đó bảo vệ thành công ngôi vương nước Anh. Trên sân nhà Emirates, Arsenal vượt qua Everton với tỷ số sít sao 2-1. Chiến thắng của Pháo thủ không còn nhiều ý nghĩa khi Man City chiếm ngôi sao BXH sau 38 vòng đấu. Đoàn quân Pep Guardiola thu về 91 điểm, nhỉnh hơn 2 điểm so với Arsenal.&nbsp;</p><p>Theo Squawka, Man City là câu lạc bộ bóng đá nam đầu tiên trong lịch sử nước Anh giành 4 chức vô địch liên tiếp ở hạng đấu cao nhất. Pep Guardiola cùng các học trò đã viết nên trang sử mới.</p><p>Kevin de Bruyne cùng các đồng đội từng trải qua thời điểm tụt lại phía sau Arsenal lẫn Liverpool. Tuy nhiên, Man City đã thể hiện bản lĩnh đúng lúc ở giai đoạn then chốt của mùa giải.&nbsp;</p><p>Phil Foden là một trong những điểm sáng lớn nhất của Man City mùa này. Ngôi sao người Anh được bầu chọn là Cầu thủ xuất sắc nhất Premier League 2023/2024. Ở chiến thắng 3-1 trước West Ham, Foden xuất sắc lập cú đúp bàn thắng. Phong độ ấn tượng ở cấp độ CLB trở thành điểm tựa giúp Foden tỏa sáng ở EURO 2024 sắp tới.</p><p>Nguồn: x.com</p>', 'Nguyễn Hoàng Vũ Anh', '2024-05-22 06:09:05', '2024-05-22 06:09:34', 6, 2, 5, 'https://cdn.tuoitre.vn/471584752817336320/2024/5/20/2024-05-19t175552z1629315584up1ek5j1dt2ycrtrmadp3soccer-england-mci-whu-report-1716141493246874144064.jpg'),
(28, NULL, 'Greenwood bị CĐV xúc phạm ở Tây Ban Nha, trọng tài phải ngừng trận đấu', '<p>Tiền đạo trẻ Mason Greenwood vừa phải trải qua những thời khắc khó khăn khi các CĐV đối thủ tấn công anh bằng những lời lẽ miệt thị từ khắp các khán đài.&nbsp;</p><p>Trận đấu giữa Alaves và Getafe diễn ra ở vòng áp chót La Liga. Trận này về cơ bản không có nhiều tính ăn thua do cả 2 đội đều đã trụ hạng thành công. Thế nhưng các CĐV đội chủ nhà lại bất ngờ tấn công cầu thủ Mason Greenwood bên phía Getafe.</p><p>Theo đó, đám đông đã đồng thanh hô to: “Greenwood, xuống địa ngục đi”. Và đến phút 18, trọng tài Jorge Figueroa Vazquez đã phải thổi còi cảnh cáo các CĐV nhà, cho dừng trận đấu. Ban tổ chức sân Mendizorroza nơi trận đấu diễn ra phải dùng loa thông báo để làm dịu lại đám đông. Trận đấu được ghi nhận đã phải ngừng lại trong hơn 2 phút trước khi có thể tiếp tục như bình thường.&nbsp;</p><p>Phía đội khách Getafe đã liên tục báo cáo sự việc với trọng tài bởi các cuộc tấn công tinh thần đối thủ vẫn diễn trong khắp các thời điểm quan trọng của trận đấu. Lúc này phía Getafe đang cân nhắc có nên nộp đơn điều tra lên ban tổ chức La Liga hay không.</p><p>Trận này, Alaves đánh bại Getafe 1-0 bằng bàn thắng duy nhất của Carlos Vicente ở ngay phút 12. Trên bảng xếp hạng La Liga trước vòng đấu cuối, Getafe của Grenwood đang xếp thứ 10 với 45 điểm. Ở vòng cuối La Liga, Greenwood và đồng đội sẽ đụng độ Mallorca trên sân nhà. Đây là trận đấu cuối của Getafe trước khi tiền đạo này hết hợp đồng cho mượn và phải trở lại MU.</p><p>Ng: tcdulichtphcm.vn</p>', 'Tiến Long', '2024-05-22 06:10:36', '2024-05-22 06:10:36', 20, 2, 10, 'https://cdn.tcdulichtphcm.vn/upload//2-2024/images/2024-05-20/Greenwood-bi-xuc-pham-o-Tay-Ban-Nha-trong-tai-phai-ngung-tran-dau-740-copy-1716173441-340-width740height494.jpg'),
(29, NULL, 'Man City ẵm cúp lo “bóng ma” 115 cáo buộc Công bằng tài chính, bao giờ xử án?', '<p>Man City vừa giành danh hiệu Ngoại hạng Anh thứ 4 liên tiếp. Nhưng 115 cáo buộc liên quan đến luật Công bằng tài chính vẫn đang bủa vây lấy đoàn quân của HLV Pep Guardiola. Giám đốc điều hành Premier League, ông Richard Masters mới đây tiết lộ, phiên điều trần liên quan đến 115 cáo buộc nhắm vào Man City đã được ấn định. Dù người đứng đầu giải đấu cao nhất nước Anh không tiết lộ cụ thể nhưng theo tiết lộ của báo chí Anh, phiên điều trần này sẽ được diễn ra vào mùa thu năm nay.</p><p>Điều đó có nghĩa ngay từ thời điểm này, Man City phải tích cực chuẩn bị cho phiên điều trần. Chờ đợi các quan chức của nhà vô địch Ngoại hạng Anh 4 mùa liên tiếp là khoảng 3 tháng khó khăn sắp tới. Nếu họ không ứng phó đủ tốt, thảm họa có thể ập đến với đội chủ sân Etihad.&nbsp;</p><p>&nbsp;</p><p>Vào tháng 2/2023, một cuộc điều tra độc lập của Premier League đi đến kết luận, Man City đã vi phạm 115 vấn đề liên quan đến luật Công bằng tài chính (FFP). Những vi phạm này được tính bắt đầu từ mùa giải 2009/10 trở đi. Thậm chí theo báo chí Anh, “Man xanh” đứng trước nguy cơ bị tước 3 chức vô địch trong giai đoạn từ 2012 đến 2018. Cho đến nay, Man City luôn phủ nhận mọi cáo buộc nhắm vào họ.&nbsp;</p><p>Trước ngày Ngoại hạng Anh 2023/24 hạ màn, HLV Jurgen Klopp cũng nói về chi tiết quan trọng này: “Mọi người đều biết về 115 cáo buộc, nhưng tôi không biết điều đó như thế nào. Tôi chỉ biết con số. Dẫu vậy bất kể điều gì đã xảy ra ở Man City, Pep Guardiola là huấn luyện viên giỏi nhất thế giới và điều đó thực sự quan trọng\".</p><p>Phán quyết cuối cùng với Man City chỉ đến vào cuối mùa 2024/25. Sắp tới nhà đương kim vô địch Ngoại hạng Anh sẽ phải đối diện với nhiều phiên điều trần kéo dài. Theo tờ Telegraph, điều đó sẽ ảnh hưởng đến sự tập trung của “Man xanh” ở mùa giải kế tiếp. Đây cũng là một phần lý do để HLV Pep Guardiola tuyên bố rằng ông sắp chia tay Man City trong buổi lễ trao cúp vừa qua. Nhiều khả năng nhà cầm quân người Tây Ban Nha sẽ giữ lời, rằng ông có kế hoạch rời đi sau mùa giải 2024/25, thời điểm hợp đồng của ông với “Man xanh” kết thúc.</p><p>Ng: tcdulichtphcm.vn</p>', 'Tiến Long', '2024-05-22 06:11:18', '2024-05-22 06:11:18', 6, 2, 5, 'https://cdn.tcdulichtphcm.vn/upload//2-2024/images/2024-05-20/Man-City-am-cup-lo-bong-ma-115-cao-buoc-Cong-bang-tai-chinh-bao-gio-xu-an-man-city-ffp-copy-1716191214-527-width740height361.jpg'),
(30, NULL, 'Độc lạ Jurgen Klopp ngày chia tay Liverpool, hát vang tên người kế nhiệm Arne Slot', '<p>HLV Jurgen Klopp đã có bài phát biểu xúc động trong ngày chia tay Liverpool sau vòng 38 Ngoại hạng Anh.</p><p>Ở trận đấu cuối cùng vòng 38 Ngoại hạng Anh trên sân Anfield, Liverpool đã giành chiến thắng 2-0 trước Wolverhampton. Đây được xem như món quà ý nghĩa dành tặng HLV Klopp trong ngày chia tay đội chủ sân Anfield.</p><p>Ngay sau trận đấu, \"The Kop\" đã dành thời gian để tri ân những đóng góp to lớn của vị HLV người Đức trong suốt 9 năm nắm quyền. Bản thân Jurgen Klopp cũng đã có bài phát biểu chia tay rất xúc động gửi tới BLĐ, các cầu thủ cũng như toàn thể người hâm mộ đội bóng. Klopp chia sẻ trong sự nghẹn ngào: \"Ngày hôm nay, trong khoảnh khắc này, tôi thực sự cảm động và hạnh phúc. Tôi cảm thấy rất vui và tự hào vì tất cả, vì các bạn đã ở đây, vì chúng ta là 1 phần của CLB vĩ đại này. Tôi yêu bầu không khí, sự cuồng nhiệt, các trận đấu, và cả cái cách chúng ta trải qua cùng nhau. Mọi thứ thật sự ngoài sức tưởng tượng.\"&nbsp;</p><p>\"Với tôi, ngày hôm nay chúng ta chia tay, nhưng đó không phải là sự kết thúc, mà là sự bắt đầu của một điều gì đó mới mẻ hơn. Hôm nay, tôi được chứng kiến 1 đội bóng đã chơi bằng tất cả tài năng, sự nhiệt huyết, khát khao cống hiến, sự sáng tạo và cả tuổi trẻ. Đó là điều rất quan trọng trong quá trình phát triển sắp tới. Trước kia và cho đến tận bây giờ, tôi vẫn là 1 phần của đại gia đình này. Tôi luôn luôn có niềm tin vào các cầu thủ, luôn đặt sự tin tưởng tuyệt đối vào họ. 100% là như vậy\".&nbsp;</p><p>\"Mùa giải sang năm, các bạn sẽ đón chào 1 HLV mới. Tôi hy vọng các bạn sẽ ủng hộ vô điều kiện cho HLV mới giống như khi các bạn ủng hộ tôi. Hãy cứ tiếp tục tin tưởng vào những điều tốt đẹp. Tôi vẫn sẽ luôn ở bên các bạn. Xin cảm ơn vì tất cả!\", HLV Klopp khép lại bài phát biểu chia tay. Sau đó ông còn hát vang ca khúc để động viên cho tân HLV Arne Slot, đồng thời bắt nhịp để các khán đài sân Anfield đồng thanh hát theo. Đây là điều hiếm có, và nó cho thấy phần nào chất độc, lạ trong con người của chiến lược gia tài năng như Jurgen Klopp.&nbsp;</p><p>Trong 9 năm dẫn dắt Liverpool, Klopp đã giành được 8 danh hiệu lớn, một thành tích ấn tượng bao gồm: 1 Premier League, 1 Champions League, 1 Siêu cúp, 1 Cúp thế giới các CLB, 1 Cúp FA, 1 Siêu cúp Anh và 2 Cúp Liên đoàn.</p><p>Ng: tcdulichtphcm.vn</p>', 'Tổng hợp', '2024-05-22 06:12:15', '2024-05-22 06:12:15', 9, 2, 5, 'https://tcdlcdn.click.vn/upload//2-2024/images/2024-05-20/doc-la-Jurgen-Klopp-ngay-chia-tay-Liverpool-hat-vang-ten-nguoi-ke-nhiem-Arne-Slot-klopp-1-1716170793-539-width740height416.jpg'),
(31, NULL, 'Giải bóng đá SJC Open Cup 2024 hạ màn: Khách lấn chủ, 2 tân binh gây ấn tượng', '<p>Sau hơn 1 tháng tranh tài, SJC Open Cup 2024 hạ màn với \"cơn mưa bàn thắng\" được ghi.</p><p>&nbsp;</p><p>\"Duyên nợ\", 2 từ ngắn gọn đó đã nói khái quát về 2 trận đấu cuối cùng của SJC Open Cup 2024 diễn ra vào sáng 19/5 tại Hà Nội, giải đấu do Viện Đào tạo Báo chí và Truyền thông (Trường Đại học Khoa học Xã hội và Nhân văn, Đại học Quốc gia Hà Nội) tổ chức từ 14/4 tới 19/5.</p><p>Vượt qua nhiều đối thủ mạnh, 2 cặp đấu ở trận tranh HCĐ và HCV là 4 đội bóng từng gặp nhau tại trận đầu tiên vòng bảng. Trận đấu đầu tiên bảng D ngày khai mạc, Đại học Đại Nam đánh bại FC 24H với tỷ số 1-0, nhưng ở trận lượt về \"Binh đoàn áo xanh\" 24H đã nỗ lực, chắt chiu từng cơ hội để giành chiến thắng đậm 7-2. Kết quả này giúp FC 24H giành HCĐ trong lần đầu tiên tham dự giải. Cặp đấu duyên nợ khác diễn ra ở chung kết giữa SJC 2 (Đội Báo chí Truyền thông 2) và Báo Tiền Phong.&nbsp;</p><p>Ở trận đấu đầu tiên bảng D ngày khai mạc, Tiền Phong đánh bại các cầu thủ chủ nhà SJC 2 với tỷ số 3-0. Sau hơn 1 tháng họ lại có dịp chạm trán tại chung kết, lần này kết quả vẫn không thay đổi. Phong độ, kinh nghiệm cũng như bản lĩnh đã giúp Tiền Phong thắng 6-2, vô địch SJC Open trong lần đầu tiên tham dự.&nbsp;</p><p>Tại lễ bế mạc giải SJC Open Cup, TS. Phan Văn Kiền, Viện trưởng Viện Đào tạo Báo chí và Truyền thông&nbsp; (Trường ĐH Khoa học Xã hội và Nhân văn) cho biết giải đã diễn ra thành công tốt đẹp. \"Chúng ta đã có một mùa giải thành công với số lượng đội bóng đông đảo và chất lượng các cầu thủ tốt. Những mùa sau, chúng tôi sẽ tổ chức giải đông các đội hơn nữa, hấp dẫn hơn nữa\", ông Kiền cho biết.</p><p>Ng: tcdulichtphcm.vn</p>', 'Nguyễn Hưng', '2024-05-22 06:15:21', '2024-05-22 06:15:21', 20, 2, 19, 'https://cdn.tcdulichtphcm.vn/upload//2-2024/images/2024-05-20/SJC-Open-Cup-2024-ha-man-Khach-lan-chu-2-tan-binh-tao-an-tuong-manh-sjc1-1716201470-964-width740height442.jpg'),
(32, NULL, 'Sếp lớn Barca muốn \"trảm\" HLV Xavi, gặp khó vì phải đền bù 20 triệu euro', '<p>HLV Xavi Hernandez đã liên tục bị lãnh đạo Barcelona từ chối các cuộc thảo luận về tương lai của anh trong vài ngày qua.&nbsp;</p><p>HLV Xavi vẫn chưa được ban lãnh đạo Barcelona thông báo chính thức bất cứ điều gì và khi anh gặp trực tiếp chủ tịch Joan Laporta hôm 19/5 vừa qua, hai người cũng không thảo luận về tương lai của nhà cầm quân 44 tuổi.</p><p>Mặc dù chủ tịch Laporta ban đầu dự kiến sẽ làm rõ những suy đoán về tương lai của HLV Xavi trong tuần này, nhưng tờ Sport tiết lộ rằng cuộc gặp giữa hai người đã bị hoãn lại cho đến tuần tới. HLV Xavi đã yêu cầu “hai mặt một lời” vào thứ Sáu tuần này, sau khi tin đồn anh sắp bị sa thải xuất hiện ngày càng nhiều trên mặt báo, nhưng chủ tịch Laporta lại lảng tránh yêu cầu đó.&nbsp;</p><p>&nbsp;</p><p>Theo tờ Sport, HLV Xavi biết rằng người đứng đầu Barcelona muốn sa thải anh. Nhiều nguồn tin khác nhau cho hay, chi phí để sa thải HLV Xavi và các trợ lý của anh vào khoảng từ 12 đến 20 triệu euro, một số tiền lớn đối với đội bóng đang gặp khó khăn về tài chính như Barcelona. Nếu HLV Xavi không chịu giảm phí đền bù hợp đồng thì quyết định này sẽ gây ra nhiều khó khăn đối với chủ tịch Laporta.&nbsp;</p><p>Hiện vẫn chưa rõ ai sẽ là người thay thế nhà cầm quân 44 tuổi nhưng Barcelona đã liên sẵn danh sách các ứng cử viên tiềm năng. Đó là cựu thuyền trưởng ĐT Đức Hansi Flick, HLV Barcelona B Rafa Marquez và HLV Sergio Conceicao của Porto.&nbsp;</p><p>Đầu năm nay, HLV Xavi từng tuyên bố sẽ thôi dẫn dắt Barcelona vào cuối mùa giải này, tức sớm 1 so với hợp đồng giữa hai bên. Nhưng kể từ đó, phong độ của Barcelona tốt dần lên, giúp cựu tiền vệ người Tây Ban Nha được ban lãnh đạo đội bóng xứ Catalunya thuyết phục ở lại đến mùa hè năm 2025. Tuy nhiên, những phát ngôn mới đây của HLV Xavi có thể khiến anh bị sa thải ngay sau khi mùa giải hiện tại kết thúc.</p><p>Trong cuộc họp báo trước trận Barcelona gặp Almerica hôm 16/5, HLV Xavi thừa nhận đội bóng của anh đang gặp khó khăn về tài chính. Chủ tịch Laporta được cho là rất thất vọng với những gì HLV Xavi chia sẻ với giới truyền thông.</p><p>Ng: tcdulichtphcm.vn</p>', 'Sỹ Ánh', '2024-05-22 06:16:25', '2024-05-22 06:16:25', 12, 2, 10, 'https://cdn.tcdulichtphcm.vn/upload//2-2024/images/2024-05-20/Sep-lon-Barca-muon-4-1716203748-400-width740height493.jpg'),
(33, NULL, 'Bốc thăm AFF Cup: ĐT Việt Nam có thể chung bảng Indonesia, HLV Kim Sang Sik coi chừng', '<p>ĐT Việt Nam có thể gặp những đối thủ khó chịu ở vòng bảng AFF Cup 2024.&nbsp;</p><p>Lễ bốc thăm AFF Cup 2024 sẽ được tổ chức vào 14h ngày 21/5 ở Hà Nội. Đáng chú ý, tân HLV trưởng Kim Sang Sik của ĐT Việt Nam sẽ tham dự buổi lễ này. ĐT Việt Nam được xếp ở nhóm hạt giống số một cùng với ĐT Thái Lan. Điều này đồng nghĩa \"Các chiến binh Sao vàng\" sẽ không phải gặp \"Voi chiến\" ở giai đoạn vòng bảng.</p><p>Việc không phải gặp ứng viên vô địch từ sớm là điều may mắn của ĐT Việt Nam. Tuy nhiên trước mắt thầy trò HLV Kim Sang Sik còn đó không ít đối thủ phải dè chừng. Trong đó, ĐT Indonesia chính là cái tên đáng chú ý hơn cả. ĐT Indonesia nằm ở nhóm hạt giống số 2 nên có khả năng nằm chung bảng với ĐT Việt Nam. Đối thủ này thực sự đáng gờm, bởi họ có dàn sao nhập tịch cộng với những ngôi sao trẻ có chất lượng cao. Họ còn được rèn giũa ở sân chơi U23 châu Á 2024, giải đấu chứng kiến U23 Indonesia tiến tới tận bán kết.&nbsp;</p><p>Những ngôi sao của ĐT Indonesia còn đang có sự tự tin cao khi toàn thắng ĐT Việt Nam ở vòng loại thứ 2 World Cup 2026 khu vực châu Á. Do vậy, họ sẽ rất khát khao khiến ĐT Việt Nam \"ôm hận\" thêm lần nữa nếu gặp nhau tại AFF Cup 2024. Tuy vậy, truyền thông Indonesia lại không chủ quan. Tờ Oke Zone bình luận: \"ĐT Indonesia chắc chắn phải gặp Việt Nam hoặc Thái Lan tại vòng bảng AFF Cup. Đội bóng của HLV Shin Tae Yong phải thực sự cảnh giác, bởi đây là 2 đối thủ rất khó chơi. Họ thường xuyên tiến sâu ở AFF Cup trong những năm qua\".&nbsp;</p><p>ĐT Malaysia là cái tên còn lại nằm ở nhóm hạt giống số 2. \"Harimau Malaya\" không phải đội bóng được đánh giá quá cao, nhưng cũng không thể chủ quan khi gặp đội bóng này. Nên nhớ ĐT Malaysia từng hòa Hàn Quốc ở vòng loại thứ 2 World Cup 2026 khu vực châu Á. Ở nhóm hạt giống số 3 là sự xuất hiện của Singapore và Philipppines. Những đối thủ không quá đáng gờm.&nbsp;</p><p>&nbsp;</p><p>Nếu ĐT Việt Nam có chạm trán tại vòng bảng thì chỉ cần chơi đúng sức, chiến thắng sẽ thuộc về \"Các chiến binh Sao vàng\". Tiến tới nhóm hạt giống số 4, Myanmar và Campuchia trong nhiều năm qua được coi như \"quân xanh\" cho các đội bóng lớn. Họ thường xuyên nhận thất bại, thậm chí còn có những trận thua nặng nề.</p><p>Ở nhóm hạt giống số 5, Lào và đội thắng ở cặp play-off giữa Brunei và Timor Leste cũng không đáng ngại đối với ĐT Việt Nam. Chiến thắng là điều cần thiết mà đoàn quân HLV Kim Sang Sik hướng đến khi gặp các đối thủ này.&nbsp;</p><p>Thể thức thi đấu AFF Cup 2024 10 ĐTQG tham dự AFF Cup được chia làm 2 bảng, mỗi bảng 5 đội thi đấu vòng tròn tính điểm (2 trận sân nhà và 2 trận sân khách). 2 đội nhất, nhì mỗi bảng sẽ tiến tới vòng bán kết. Vòng bán kết và chung kết AFF Cup tiếp tục diễn ra theo thể thức lượt đi và lượt về trên sân nhà và sân khách giống như trước đây.</p><p>Ng: tcdulichtphcm.vn</p>', 'Phong Đức', '2024-05-22 06:17:13', '2024-05-22 06:17:13', 20, 2, 16, 'https://cdn.tcdulichtphcm.vn/upload/2-2024/images/2024-05-20/e32sasaa21-1716217827-728-width740height920.jpg'),
(34, NULL, 'Khốc liệt đua phá lưới La Liga: Bellingham lép vế trước 2 \"cánh chim lạ\"', '<p>Bellingham từng có thời điểm dẫn đầu cuộc đua Vua phá lưới La Liga, nhưng hiện tại mọi thứ đã khác. Trong quá khứ, cuộc đua Vua phá lưới La Liga thường là màn cạnh tranh của riêng những chân sút hàng đầu khoác áo Real Madrid, Barcelona hay Atletico Madrid. Tuy nhiên ở thời điểm hiện tại, mọi thứ đã diễn ra khác hoàn toàn.&nbsp;</p><p>Sorloth hiện dẫn đầu cuộc đua Vua phá lưới La Liga khi tích lũy được tới 23 bàn sau 33 trận ở La Liga. Tiền đạo thuộc biên chế Villarreal bứt phá thần tốc nhờ việc ghi 4 bàn thắng trong trận đấu đội bóng của anh hòa Real Madrid 4-4 vừa qua.</p><p>Vốn dĩ Sorloth chẳng hề là tiền đạo quá danh tiếng. Đây mới là mùa bóng đầu tiên chân sút người Na Uy ghi được số bàn thắng ấn tượng như vậy khi đến 5 giải VĐQG hàng đầu châu Âu thi đấu.&nbsp;</p><p>Xếp ngay sau Sorloth là Dovbyk. Cầu thủ thuộc biên chế Girona đang có trong tay 21 bàn thắng. Ở vòng 37 La Liga vừa qua, Dovbyk cũng để lại dấu ấn với việc ghi 1 bàn trong chiến thắng 3-1 của Girona trước Valencia.&nbsp;</p><p>Bellingham từng liên tục dẫn đầu cuộc đua Vua phá lưới La Liga. Tuy nhiên hiện anh chỉ xếp thứ 3 ở danh sách này khi ghi được 19 bàn thắng.</p><p>Với việc chơi ở hàng tiền vệ, thật khó để đòi hỏi ngôi sao người Anh duy trì phong độ ghi bàn tốt giống các tiền đạo. Chưa kể Real Madrid đã vô địch La Liga từ sớm nên Bellingham sẽ không được sử dụng nhiều để giữ sức cho chung kết Cúp C1. Như ở trận Real Madrid hòa Villarrreal đã qua, Bellingham không vào sân phút nào. La Liga cũng chỉ còn lại 1 vòng đấu nữa. Với tình hình như vậy, thật khó để Bellingham bứt phá trong cuộc đua Vua phá lưới.</p><p>Ng: tcdulichtphcm.vn</p>', 'Phong Đức', '2024-05-22 06:21:52', '2024-05-22 06:21:52', 11, 2, 10, 'https://cdn.tcdulichtphcm.vn/upload/2-2024/images/2024-05-20/d3wsaas11-1716197876-489-width740height495.jpg'),
(35, NULL, 'Hojlund ghi bàn ngang Drogba & Suarez, chờ rực sáng ở chung kết FA Cup', '<p>Tiền đạo Hojlund tỏ ra ngày một nguy hiểm trong màu áo MU, từ đó hứa hẹn tương lai tươi sáng tại sân Old Trafford. Ở trận đấu cuối cùng của MU tại Ngoại hạng Anh 2023/24, Hojlund đã mang đến khác biệt lớn. Tiền đạo người Đan Mạch thực hiện pha độc diễn ấn tượng và sau đó tung ra cú sút rất căng bằng chân không thuận để giúp MU ấn định chiến thắng 2-0 trước Brighton. Pha bóng này cho thấy kỹ năng cá nhân của Hojlund khá ấn tượng, đặc biệt với cầu thủ mới chỉ đang ở tuổi 21.&nbsp;</p><p>Hiện khả năng chơi bóng của Hojlund đã tốt hơn nhiều so với thời điểm anh mới cập bến sân Old Trafford. Trong đó, đáng kể nhất phải nói về kỹ năng sút bóng bằng chân không thuận của cầu thủ này.</p><p>Hojlund đang có trong tay 16 bàn sau 42 trận trên mọi đấu trường cho MU. Con số ấy ngang với Drogba và Suarez trong mùa giải đầu tiên mà 2 ngôi sao này đến nước Anh thi đấu. Số lượng bàn thắng đến từ chân không thuận của Hojlund đã lên đến con số 5, chiếm 1/3 tổng số bàn thắng mùa này của bản thân. Anh cũng tỏ ra mạnh dạn hơn trong việc xử lý bóng hay dứt điểm bằng chân phải. Điều này không phải cầu thủ nào cũng rèn luyện được.&nbsp;</p><p>Có thể đánh giá Hojlund không hề có màn trình diễn tệ ở mùa giải 2023/24. Anh ghi được số bàn thắng như vậy trong bối cảnh những vệ tinh xung quanh bản thân không thực sự chất lượng. Hojlund còn nhiều triển vọng để đạt phong độ bùng nổ hơn nữa trong tương lai. Nhưng trước mắt tiền đạo sinh năm 2003 sẽ hướng tới cuộc chạm trán Man City ở chung kết FA Cup (21h, 25/5).&nbsp;</p><p>MU rất cần Hojlund đạt được phong độ cao nhất ở trận này để gây ra khó khăn cho Man City. Đội chủ sân Etihad đang có tinh thần tốt sau khi vô địch Ngoại hạng Anh, chưa kể lực lượng cũng như phong độ của họ cũng tốt hơn MU. Từ khi đến MU, Hojlund vẫn chưa thể chọc thủng lưới Man City. Do vậy, anh sẽ rất khát khao làm việc đó, nhất là khi trận cầu tới còn là chung kết FA Cup.</p><p>Ng: tcdulichtphcm.vn</p>', 'Phong Đức', '2024-05-22 06:32:22', '2024-05-22 06:32:22', 5, 2, 5, 'https://cdn.tcdulichtphcm.vn/upload/2-2024/images/2024-05-20/3qwasaa-1716206979-234-width740height588.jpg'),
(36, NULL, 'Toni Kroos giải nghệ sau Euro 2024', '<p>Tiền vệ 34 tuổi Toni Kroos không gia hạn hợp đồng với Real và sẽ kết thúc sự nghiệp thi đấu, sau khi cùng tuyển Đức dự Euro 2024.&nbsp;</p><p>\"Ngày 17/7/2014, ngày tôi ra mắt Real Madrid và là ngày đã thay đổi cuộc đời tôi, cả với tư cách cầu thủ bóng đá lẫn con người\", Kroos viết trên mạng xã hội ngày 21/5.&nbsp;</p><p>\"Đó là khởi đầu cho một chương mới tại CLB lớn nhất thế giới. Sau 10 năm, vào cuối mùa giải năm nay, chương này sẽ kết thúc. Tôi sẽ không bao giờ quên thời gian thành công đó\".&nbsp;</p><p>Tiền vệ người Đức gửi lời cảm ơn tới tất cả thành viên Real đã chào đón và tin tưởng anh, cũng như tình cảm và tình yêu của người hâm mộ từ ngày đầu tiên cho đến ngày cuối cùng tại CLB. Kroos nhấn mạnh việc khép lại chương thành công trong màu áo Real đồng nghĩa với việc anh sẽ giải nghệ sau khi dự Euro 2024 trên sân nhà.</p><p>&nbsp;</p><p>\"Như tôi luôn nói, Real đang và sẽ là CLB cuối cùng của tôi\", cầu thủ 34 tuổi viết tiếp. \"Tôi hạnh phúc và tự hào vì tìm được thời điểm phù hợp cho quyết định này, và tôi có thể tự lựa chọn. Tham vọng của tôi luôn là kết thúc sự nghiệp ở đỉnh cao phong độ. Từ giờ trở đi tôi chỉ có một suy nghĩ, đó là giúp Real lần thứ 15 vô địch Champions League. Hala Madrid\".&nbsp;</p><p>Cùng lúc, trang chủ Real cũng thông báo tri ân Kroos, ca ngợi anh là một phần lịch sử và một trong những huyền thoại vĩ đại bậc nhất lịch sử CLB. Chủ tịch Florentino Perez khẳng định Real đã và sẽ luôn là nhà của Kroos, đồng thời gửi lời chúc tới tiền vệ Đức cùng gia đình trước giai đoạn mới của cuộc đời.&nbsp;</p><p>Kroos gia nhập đội trẻ Bayern năm 2006 và được đôn lên đội một từ 2007. Tổng cộng, anh có 25 bàn qua 205 trận khoác áo, cùng Bayern đoạt ba Bundesliga, ba Cup Quốc gia Đức, một Siêu Cup Đức, một Champions League, một Siêu Cup châu Âu và một FIFA Club World Cup.&nbsp;</p><p>Kroos còn khoác áo Leverkusen theo dạng cho mượn giai đoạn 2009-2010, ghi 10 bàn qua 47 trận. Kroos được Real tuyển mộ với giá khoảng 30 triệu USD vào hè 2014. 10 năm qua, anh ghi 28 bàn trong 463 trận, đoạt bốn La Liga, một Cup Nhà Vua, bốn Siêu Cup Tây Ban Nha, bốn Champions League, ba Siêu Cup châu Âu và năm FIFA Club World Cup.</p><p>&nbsp;Tiền vệ 34 tuổi còn hai trận khoác áo Real, gặp Betis ở vòng hạ màn La Liga trên sân Bernabeu ngày 25/5 và Dortmund ở chung kết Champions League tại Wembley ngày 1/6. Sau đó, Kroos sẽ cùng tuyển Đức dự Euro 2024 trên sân nhà, giải diễn ra từ 14/6 đến 14/7. Anh ra mắt tuyển Đức năm 2010 ở tuổi 20, trong trận thua Argentina 0-1. Qua 108 trận cho đội tuyển, tiền vệ 34 tuổi ghi 17 bàn và có 21 kiến tạo, với đỉnh cao là chức vô địch World Cup 2014.</p><p><strong>Tập trung Euro 2024</strong></p><figure class=\"image\"><img style=\"aspect-ratio:1020/680;\" src=\"https://i1-thethao.vnecdn.net/2024/05/21/AFP-20240322-dpa-pa-240322-99-5840-8921-1716306044.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FVNgnqef-IogOQH_XFvWrQ\" width=\"1020\" height=\"680\"></figure><p>Thầy trò Julian Nagelsmann hội quân tại Blankenhain, miền trung Đức, từ ngày 26-31/5, rồi di chuyển đến đại bản doanh tại Herzogenaurach, Bavaria, vào ngày 1/6. Đội sẽ đá giao hữu với Ukraine ngày 3/6, Hy Lạp 7/6 trước khi chính thức dự Euro 2024, nơi họ nằm tại bảng A Euro cùng Scotland, Hungary và Thụy Sĩ.&nbsp;</p><p>Trên kênh podcast \"Einfach mal Luppen\" hôm 21/5, Kroos cũng giải thích về quyết định giải nghệ ở tuổi 34. \"Tôi tin rằng đây là quyết định đúng đắn\", anh nói. \"Tôi đã suy nghĩ về nó trong nhiều tháng, về những điểm tích cực, tiêu cực và những gì tôi muốn. Và tôi muốn được nhớ đến rằng tôi thi đấu với phong độ tốt nhất. Tôi đã hứa rằng khi rời Madrid cũng là lúc tôi sẽ rời bỏ bóng đá\".</p><p>Ng: vnexpress.vn</p>', 'Hồng Duy', '2024-05-22 06:34:04', '2024-05-22 06:34:04', 11, 2, 3, 'https://i1-thethao.vnecdn.net/2024/05/21/2024-05-14T213615Z-1135810658-2550-8111-1716306043.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=tmvII1mR6OoYfNXd9WqhuQ'),
(37, NULL, 'Ronaldo lập kỷ lục sáu lần dự Euro', '<p>Tiền đạo 39 tuổi Cristiano Ronaldo có trong danh sách 23 tuyển thủ Bồ Đào Nha dự Euro 2024 được công bố hôm nay, và sẽ phá sâu hàng loạt kỷ lục nếu tiếp tục ra sân.&nbsp;</p><p>Danh sách tuyển Bồ Đào Nha dự Euro 2024 được HLV Roberto Martinez công bố hôm nay 21/5, với chín ngôi sao hiện chơi ở Ngoại hạng Anh, trong đó có Bernardo Silva, Ruben Dias của nhà vô địch Man City và Bruno Fernandes, Diogo Dalot của Man Utd. Cầu thủ lớn tuổi nhất được triệu tập là trung vệ 41 tuổi Pepe của Porto. Ronaldo, ở tuổi 39, có thâm niên cao nhất đội với 206 trận.&nbsp;</p><p>Ronaldo đang giữ kỷ lục thi đấu tại năm kỳ Euro, vào các năm 2004, 2008, 2012, 2016 và 2020. Tiền đạo Bồ Đào Nha sẽ tự phá sâu cột mốc này nếu đạt thể trạng tốt và thi đấu tại Euro 2024. Cựu thủ thành người Tây Ban Nha, Iker Casillas cũng góp mặt ở năm kỳ Euro, nhưng chỉ ra sân vào các năm 2004, 2006, 2016 và không thi đấu vào năm 2000, 2016.</p><figure class=\"image\"><img style=\"aspect-ratio:1020/654;\" src=\"https://i1-thethao.vnecdn.net/2024/05/21/AFP-20231012-33Y68LN-v1-HighRe-5287-1199-1716301746.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=aKZfCYWwRDnCtlkwsH68VQ\" width=\"1020\" height=\"654\"></figure><p>Ronaldo đã ghi 14 bàn qua 25 trận tại Euro - đều là kỷ lục tại giải, với đỉnh cao là chức vô địch năm 2016. Trong đó, anh ghi hai bàn tại Euro 2003, một bàn vào 2008, ba bàn năm 2012, ba bàn năm 2016 và năm bàn tại 2020. Ronaldo cũng là cầu thủ duy nhất ghi 41 bàn ở vòng loại Euro, ghi tổng cộng 55 bàn tại vòng loại và VCK Euro. Tiền đạo 39 tuổi còn giữ kỷ lục ra sân 2.153 phút, thắng 12 trận và ra sân 16 trận với tư cách là đội trưởng tại Euro.&nbsp;</p><p>Ronaldo có thể phá nhiều cột mốc tại Euro 2024, gồm việc trở thành cầu lớn tuổi nhất ghi bàn tại giải, vượt qua đỉnh cao 38 tuổi 257 ngày của Ivica Vastic. Anh cũng có thể vượt qua Leonardo Bonucci (34 tuổi 71 ngày) để trở thành cầu thủ lớn tuổi nhất ghi bàn trong trận chung kết Euro, nếu cùng Bồ Đào Nha vào đến trận cuối cùng tại Đức hè này.&nbsp;</p><p>Lothar Matthaus giữ kỷ lục là cầu thủ ở tuyến trên, không tính thủ môn, lớn tuổi nhất ra sân ở Euro (39 tuổi 91 ngày). Jens Lehmann là cầu thủ lớn tuổi nhất góp mặt ở chung kết Euro (38 tuổi 232 ngày), và Arnold Muhren là cầu thủ lớn tuổi nhất vô địch Euro (37 tuổi 23 ngày). Đây là những kỷ lục khác mà Ronaldo có thể hướng đến.</p><p>Ng: vnexpress.vn</p>', 'Hồng Duy', '2024-05-22 06:43:59', '2024-05-22 06:43:59', 20, 3, 3, 'https://i1-thethao.vnecdn.net/2024/05/21/portugal-cristiano-ronaldo-eur-5963-9267-1716301746.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=04ZKdmm3GwKjsm963Gsmlg'),
(38, NULL, 'Rashford, Sancho không được dự Euro 2024', '<p>Marcus Rashford, Jordan Henderson, Jadon Sancho, Reece James... không có tên trong trong danh sách sơ bộ 33 tuyển thủ Anh chuẩn bị dự Euro 2024.&nbsp;</p><p>Rashford là nhân tố chủ chốt của \"Tam sư\" dưới thời Southgate, góp mặt tại World Cup 2018, 2022 cũng như Euro 2021, ghi 17 bàn qua 60 trận khoác áo đội tuyển. Nhưng tiền đạo 26 tuổi sa sút mùa này và bị gạch tên khỏi danh sách dự Euro 2024 khi HLV Gareth Southgate công bố hôm nay 21/5. Rashford chỉ có tám bàn qua 42 trận, gồm bảy bàn tại Ngoại hạng Anh và một ở Cup FA. Trong sáu trận cuối tại Ngoại hạng Anh, anh bị chấn thương, nghỉ bốn trận và dự bị hai trận còn lại.</p><p>Jordan Henderson - người góp mặt tại Euro 2016, 2021, World Cup 2018, 2022 - cũng bị gạch tên sau mùa giải biến động. Tiền vệ 33 tuổi gia nhập Al Ettifaq tại Saudi Pro League vào mùa hè, rồi chuyển tới Ajax trong tháng 1/2024. Henderson có 12 lần ra sân cho CLB Hà Lan, nhưng phong độ của tiền vệ kỳ cựu này không đủ để thuyết phục Southgate gọi anh lên tuyển.&nbsp;</p><figure class=\"image\"><img style=\"aspect-ratio:1020/680;\" src=\"https://i1-thethao.vnecdn.net/2024/05/21/AFP-20240407-DPPI-40224173-022-8330-8253-1716303013.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=1PceBDjR0eWVjEp37Gi4ZA\" width=\"1020\" height=\"680\"></figure><p>Một số tên tuổi lớn khác không được Southgate triệu tập còn có Raheem Sterling, Ben Chilwell, Reece James (Chelsea), Kalvin Phillips (khoác áo West Ham theo hợp đồng cho mượn từ Man City), Ben White (Arsenal), Nick Pope (Newcastle), Dominic Solanke (Bournemouth) hay Jadon Sancho (khoác áo Dortmund theo hợp đồng cho mượn từ Man Utd).&nbsp;</p><p>Trong khi đó, Jack Grealish góp mặt dù chỉ đá chính 10 trận trong hành trình vô địch Ngoại hạng Anh của Man City. Tương tự, hậu vệ trái Luke Shaw của Man Utd cũng có suất dù ngồi ngoài vì chấn thương cơ từ tháng 2.&nbsp;</p><p>Tiền vệ 19 tuổi Kobbie Mainoo tiếp tục được triệu tập, sau khi có bốn bàn và ba kiến tạo qua 34 trận khoác áo Man Utd trên mọi đấu trường. Bộ đôi của Crystal Palace, cầu thủ chạy cánh Eberechi Eze và tiền vệ Adam Wharton, góp mặt nhờ phong độ ấn tượng ở nửa sau mùa giải thi đấu dưới thời tân HLV Oliver Glasner.</p><p>Bộ đôi Curtis Jones và Jarell Quansah được triệu tập lần đầu tiên, nhờ ra sân thường xuyên cho Liverpool. Tiền vệ Jones thi đấu 36 trận trên mọi đấu trường, còn Quansah gây ấn tượng khi nhiều lần đá cặp trung vệ với Virgil van Dijk và ghi hai bàn ở hai trận cuối mùa giải, gặp Aston Villa và Wolves tại Ngoại hạng Anh.</p><p>Anh sẽ đá giao hữu với Bosnia trên sân St. James\' Park ngày 3/6 và Iceland tại Wembley ngày 7/6. Sau đó, Southgate sẽ loại bớt 7 người để chốt danh sách 26 tuyển thủ dự Euro 2024, nơi \"Tam sư\" cùng bảng với Serbia, Đan Mạch và Slovenia.</p><p>Ng: vnexpress.vn</p>', 'Hồng Duy', '2024-05-22 06:45:05', '2024-05-22 06:45:05', 20, 2, 3, 'https://i1-thethao.vnecdn.net/2024/05/21/anh-6402-1716304879.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=2-0XI3NztY6VbjlljZMBOQ'),
(39, NULL, 'HLV Shin Tae-yong bật cười khi biết cùng bảng Việt Nam', '<p>HLV Shin Tae-yong cười và không bình luận gì khi được báo tin Indonesia nằm cùng Việt Nam tại bảng B AFF Cup 2024. Đang đi nghỉ dưỡng, nên HLV Shin không dự lễ bốc thăm chia bảng AFF Cup 2024 diễn ra tại Hà Nội chiều 21/5.&nbsp;</p><p>Chủ tịch Cơ quan quản lý các đội tuyển quốc gia Indonesia Kombes Pol Surmadji đi thay, rồi thông báo kết quả qua điện thoại cho nhà cầm quân Hàn Quốc. \"HLV Shin chỉ bật cười\", ông Surmadji nói với tờ Bola (Indonesia). \"Đây là kết quả bốc thăm thú vị, vì chúng tôi lại gặp Việt Nam\".</p><p>HLV Shin sắp đàm phán hợp đồng mới với LĐBĐ Indonesia, sau khi hoàn thành nhiệm vụ vượt qua vòng bảng Asian Cup 2023 và U23 châu Á 2024. Hợp đồng cũ giữa hai bên sẽ hết hạn vào tháng 6/2024, còn hợp đồng mới dự kiến kéo dài đến tháng 7/2027 với nhiệm vụ vô địch AFF Cup.&nbsp;</p><p>Việt Nam và Indonesia tạo nên cặp đấu nhiều duyên nợ những năm gần đây ở Đông Nam Á, bên cạnh Việt Nam với Thái Lan, hay Indonesia với Thái Lan, Indonesia với Malaysia.&nbsp;</p><p>Trong ba tháng đầu năm 2024, Indonesia toàn thắng ba trận trước Việt Nam, gồm 1-0 ở vòng bảng Asian Cup 2023 vào tháng 1, 1-0 và 3-0 ở vòng loại hai World Cup 2026 vào tháng 3. HLV Shin cũng giúp Indonesia khép lại bảy năm không thắng Việt Nam, kể từ bán kết lượt đi AFF Cup 2016, đồng thời lần đầu đánh bại Việt Nam ở sân Mỹ Đình sau 20 năm kể từ vòng bảng AFF Cup 2004.&nbsp;</p><p>Cá nhân HLV Shin cũng phải mất bốn năm làm việc ở Indonesia mới thắng Việt Nam. Trước đó, ông hòa hai, thua hai khi gặp Việt Nam dưới HLV Park Hang-seo, trong có có trận hoà 0-0 ở vòng bảng AFF Cup 2020, hoà 0-0 và thua 0-2 ở bán kết AFF Cup 2022.&nbsp;</p><p>Tại AFF Cup 2024, Indonesia phải làm khách của Việt Nam ở lượt ba vào ngày 30/11. Ba đối thủ còn lại ở bảng B là Philippines, Myanmar và Lào, vì thế bảng đấu này rất khó lường. Trong khi đó, ĐKVĐ Thái Lan được đánh giá mạnh nhất bảng A khi gặp Malaysia, Singapore, Campuchia và đội thắng ở trận play-off giữa Brunei với Timor Leste.&nbsp;</p><p>Tuy nhiên, ông Surmadji vẫn đánh giá kết quả bốc thăm này là tốt với Indonesia. Đội không ngại Việt Nam và đặt mục tiêu lần đầu vô địch, sau sáu lần về nhì tại AFF Cup. \"Các điều kiện của đội tuyển lúc này đã khác\", ông Surmadji cho hay. \"Bóng đá Indonesia và đội tuyển của chúng tôi đang phát triển tốt’.&nbsp;</p><p>AFF Cup 2024 diễn ra từ ngày 23/11 đến 21/12. Ở kỳ này, giải sẽ đổi tên thành ASEAN Cup. Đây là lần thứ hai giải đổi tên, trước đó là Tiger Cup thành AFF Cup. Giải đã tổ chức 14 kỳ, kể từ năm 1996, với bốn nhà vô địch là Thái Lan (bảy chức vô địch), Singapore (4), Việt nam (2) và Malaysia (1).</p><p>Ng: vnexpress.vn</p>', 'Trung Thu', '2024-05-22 06:45:46', '2024-05-22 06:45:46', 20, 2, 3, 'https://i1-thethao.vnecdn.net/2024/05/21/ket-qua-boc-tham-chia-bang-aff-1410-6621-1716292246.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=c1K_vZ7rmNbkoY5PTCUqDQ');
INSERT INTO `news` (`id`, `linkimage`, `title`, `content`, `author`, `created_at`, `updated_at`, `club_id`, `player_id`, `league_id`, `image_url`) VALUES
(40, NULL, 'CĐV Indonesia: \'Hy vọng Việt Nam không bỏ cuộc ở AFF Cup\'', '<p>Truyền thông cũng như người hâm mộ Indonesia cho rằng đội nhà và Việt Nam rơi vào bảng đấu \"tử thần\" nhưng hứa hẹn thú vị tại AFF Cup 2024.&nbsp;</p><p>Theo kết quả chia bảng tại Hà Nội chiều 21/5, đội tuyển Việt Nam cùng bảng B với Indonesia, Philippines, Myanmar và Lào. Đương kim vô địch Thái Lan ở bảng A với Malaysia, Singapore, Campuchia và đội thắng trong cặp đấu giữa Brunei với Timor Leste.</p><p>Sau lễ, trang OkeZone giật tít Indonesia rơi vào \"bảng tử thần\" với Việt Nam. Còn Bola nhận xét kết quả chia bảng \"thú vị\", bởi Việt Nam và Indonesia có nhiều duyên nợ. Trong khi đó, CNN Indonesia dẫn lời CĐV nhà nói rằng thầy trò Shin Tae-yong sẽ tiếp tục thắng, và hy vọng đoàn quân của Kim Sang-sik \"sẽ không bỏ cuộc\".&nbsp;</p><p>Indonesia lạc quan, bởi họ thắng cả ba trận gần nhất gặp Việt Nam tại vòng bảng Asian Cup 2023 và vòng loại hai World Cup 2026. Nhờ đội hình phần lớn cầu thủ sinh trưởng ở châu Âu, đoàn quân của Shin ghi năm bàn, không thủng lưới trong ba trận này.&nbsp;</p><p>Báo Liputan6 cho rằng Indonesia đã \"áp đảo\" Việt Nam gần đây, ở nhiều cấp độ. \"Dưới thời Philippe Troussier, Việt Nam toàn thua Indonesia\", báo viết. \"Dù VFF đã sa thải Troussier và thay bằng Kim, HLV người Hàn Quốc vẫn bị nghi ngờ vì phong cách của ông giống Troussier\".&nbsp;</p><p>LĐBĐ Indonesia đang tiếp tục nhập tịch thêm cầu thủ cho AFF Cup 2024 cuối năm nay. Tuy nhiên, truyền thông cũng lo ngại HLV Shin sẽ không có nhân sự tốt nhất, do giải không nằm trong lịch FIFA, nên các CLB có quyền giữ cầu thủ lại.&nbsp;</p><p>AFF Cup 2024, được đổi tên thành ASEAN Cup, diễn ra từ 23/11 đến 21/12 với 10 đội tuyển trong khu vực tham dự, nhưng Brunei và Timor Leste sẽ phải đá tranh vé vớt vào vòng bảng. Mỗi đội đá hai trận sân nhà, hai trận sân khách ở vòng bảng, chọn ra hai đội mỗi bảng vào bán kết. Từ bán kết, các trận diễn ra hai lượt, sân nhà và sân khách.&nbsp;</p><p>Việt Nam ra quân gặp chủ nhà Lào ngày 24/11, sau đó về sân nhà tiếp Indonesia ngày 30/11. Thầy trò Kim sẽ làm khách tại Philippines ngày 3/12, bốn ngày trước khi tiếp Myanmar ở lượt cuối. Đội tuyển từng hai lần đăng quang, năm 2008 và 2018, trong khi Indonesia sáu lần vào chung kết nhưng chưa vô địch.</p><p>Ng: vnexpress.vn</p>', 'Hoàng An', '2024-05-22 06:46:31', '2024-05-22 06:46:31', 20, 2, 3, 'https://i1-thethao.vnecdn.net/2024/05/21/viet-nam-indonesia-aff-cup-jpe-4317-8115-1716281583.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=_iUHSf6VIvnBjkF_JjF27w'),
(41, NULL, 'Messi lần thứ 7 dự Copa America', '<p>Tiền đạo Lionel Messi có tên trong danh sách sơ bộ 29 tuyển thủ Argentina chuẩn bị bảo vệ danh hiệu tại Copa America 2024.&nbsp;</p><p>Messi lần đầu đá tại Copa America 2007 tại Venezuela, ghi hai bàn qua sáu trận, nhưng Argentina thua Brazil 0-3 ở chung kết. Messi còn cùng Argentina thua Chile trên loạt luân lưu ở chung kết năm 2015 và 2016. Ngôi sao sinh năm 1987 cùng Argentina thua Uruguay ở tứ kết Copa America 2011 và thua Brazil ở bán kết năm 2019.&nbsp;</p><p>Phải đến lần gần nhất dự giải - 2021, Messi mới cùng Argentina vô địch Copa America, qua đó, đoạt danh hiệu đầu tiên ở cấp đội tuyển. Anh cùng các đồng đội đánh bại chủ nhà Brazil 1-0 ở chung kết, đồng thời giành ba giải cá nhân: Cầu thủ hay nhất, Vua phá lưới và Cầu thủ kiến tạo nhiều nhất.</p><p>Tổng cộng, Messi đã 34 lần ra sân tại Copa America, thông số tốt nhất và bằng cố thủ môn Sergio Livingstone của Chile - người dự sáu Copa America vào các năm 1941, 1942, 1945, 1947, 1949, 1953. Messi sẽ độc chiếm kỷ lục này nếu ra sân tại Copa America 2024.&nbsp;</p><p>Messi đã ghi 13 bàn tại Copa America, bằng Jair, Ademir (Brazil) và Gabriel Batistuta, José Manuel Moreno, Héctor Scarone (Argentina). Anh chỉ xếp sau sáu cầu thủ, gồm Eduardo Vargas (Chile), Paolo Guerrero (Peru) với 14 bàn, Lolo Fernandez (Peru), Severino Varela (Uruguay) với 15 bàn và Norberto Mendez (Argentina), Zizinho (Brazil) với kỷ lục 17 bàn. Messi sẽ thiết lập cột mốc mới nếu ghi ít nhất năm bàn tại Copa America 2024.&nbsp;</p><p>Messi có 10 bàn và chín kiến tạo qua mười trận khoác áo Inter Miami tại MLS mùa này, cùng hai bàn và hai kiến tạo qua ba lần ra sân tại CONCACAF Champions Cup. Tiền đạo 36 tuổi đang giữ kỷ lục ghi 106 bàn qua 180 trận thi đấu cho tuyển Argentina.&nbsp;</p><p>Ng: vnexpress.vn</p>', 'Hồng Duy', '2024-05-22 06:47:01', '2024-05-22 07:53:02', 20, 4, 3, 'https://i1-thethao.vnecdn.net/2024/05/21/messi-with-trophy-3656-1716242297.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=0DbV75fsuznnGXD9niVYvA'),
(42, NULL, 'Chelsea thôi hợp đồng với HLV Pochettino', '<p>ANH-Chelsea thông báo đạt thỏa thuận chấm dứt hợp đồng với HLV Mauricio Pochettino và cộng sự, chỉ sau một mùa giải gắn bó.&nbsp;</p><p>Trang chủ Chelsea cho biết quyết định dựa trên cơ sở đồng thuận hai bên, khi Pochettino cùng bốn trợ lý của ông sẽ thôi việc sau chưa đầy 11 tháng làm nhiệm vụ ở Stamford Bridge. \"Thay mặt những người Chelsea, chúng tôi biết ơn Pochettino vì sự phục vụ của ông với đội bóng mùa giải qua\", đồng giám đốc thể thao Laurence Stewart và Paul Winstanley nói trên trang chủ. \"Ông được chào đón trở lại Chelsea bất cứ lúc nào, và chúc ông những điều tốt đẹp nhất trong sự nghiệp huấn luyện phía trước\".</p><p>Trang chủ cũng dẫn lời cuối cùng của Pochettino, khi ông \"cảm ơn giới chủ và ban giám đốc\" vì đã cho ông trở thành một phần lịch sử Chelsea. \"Đội bóng đang có vị trí tốt để thăng tiến tại Ngoại hạng Anh và châu Âu trong những năm tới\", HLV người Argentina nói thêm.&nbsp;</p><p>Quyết định của Chelsea bất ngờ, bởi đội bóng kết thúc mùa giải với năm trận toàn thắng, để leo lên đứng thứ sáu Ngoại hạng Anh, đảm bảo một suất dự Cup châu Âu mùa sau. Một ngày trước thông báo của đội bóng, cũng không có tin đồn nào liên quan tới tương lai của Pochettino.&nbsp;</p><p>Theo Athletic, quyết định được đưa ra sau buổi họp tổng kết mùa giải do Stewart và Winstanley chủ trì. Winstanley gia nhập Chelsea từ Brighton tháng 12/2023, còn Stewart được đưa về từ Monaco sau đó hai tháng. Kể từ đó, đồng sở hữu Todd Boehly ít tham gia các công việc đội bóng hơn, để chia sẻ quyền lực cho hai giám đốc thể thao.</p><p>Pochettino là HLV chính thức thứ sáu của Chelsea chỉ trong năm năm qua, sau Maurizio Sarri, Frank Lampard, Thomas Tuchel và Graham Potter. Trước khi Pochettino dẫn đội, họ chi tới hơn 500 triệu USD hè 2023 để thanh lọc đội hình. HLV 52 tuổi đưa đội tới chung kết Cup Liên đoàn và bán kết Cup FA, lần lượt thua Liverpool và Man City trên sân Wembley.&nbsp;</p><p>Theo Guardian, cựu trợ lý Man Utd, ông Kieran McKenna là ứng viên sáng giá thay thế Pochettino ở Chelsea. Từng làm trợ lý cho Ole Gunnar Solsakjer, McKenna vừa giúp Ipswich Town hai năm thăng liền hai hạng để trở lại Ngoại hạng Anh.&nbsp;</p><p>Các ứng viên sau McKenna là Thomas Frank (Brentford), Michel (Girona) và Sebastian Hoeness (Stuttgart). Ngoài ra, Vincent Kompany, Ruben Amorim và Roberto De Zerbi cũng từng được xét đến nhưng không còn nằm trong toan tính của Stewart và Winstanley.</p><p>Ng: vnexpress.vn</p>', 'Hoàng An', '2024-05-22 08:31:22', '2024-05-22 08:31:22', 8, 2, 3, 'https://i1-thethao.vnecdn.net/2024/05/22/pochettino-chelsea-jpeg-171631-5340-1811-1716316943.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=7p4VHG8ysmNC4EZRCeHy2g'),
(43, NULL, 'MU khó giữ Greenwood: 4 ông lớn mời gọi, gia nhập Dortmund sát cánh Sancho?', '<p>Mason Greenwood khó trở lại MU vì khối áp lực khổng lồ đang bủa vây lấy họ. Trong lúc đó, ông lớn thứ 4 xuất hiện với nguyện vọng chiêu mộ Greenwood.&nbsp;</p><p>Sau Barcelona, Juventus và Atletico Madrid, đến lượt Dortmund gia nhập cuộc đua chiêu mộ Mason Greenwood. Sau một mùa giải thành công trong màu áo CLB Getafe theo dạng cho mượn, dễ hiểu tại sao tài năng trẻ của MU nhận được lời mời gọi từ nhiều đội bóng đến thế.</p><p>&nbsp;</p><p>Theo nguồn tin của tờ Daily Express, Dortmund là đội bóng mới nhất đặt vấn đề với MU để chiêu mộ viên ngọc quý của lò Carrington. Đáng chú ý, Dortmund cũng là đội đã mượn lại Jadon Sancho trong phiên chợ tháng 1 vừa qua và thu về kết quả mỹ mãn. Nhờ vào những đóng góp to lớn của cầu thủ chạy cánh người Anh, đội bóng Đức giành quyền vào chung kết Champions League sau hơn 1 thập kỷ chờ đợi.&nbsp;</p><p>Nguồn tin kể trên cho hay, Dortmund sẵn lòng chiêu mộ nguyên đôi cánh của MU là Jadon Sancho và Mason Greenwood. Trên lý thuyết, bộ đôi này sẽ bổ trợ cho nhau tuyệt vời. Sancho có thể đá tốt ở cả 2 cánh, trong khi Greenwood vừa đá được cánh phải vừa có khả năng chơi như một trung phong nhờ vào khả năng dứt điểm đa dạng bằng cả 2 chân. Đã thế, Dortmund còn có khả năng mua được cả 2 cầu thủ này với giá rẻ. Bởi lẽ, Sancho vì khối mâu thuẫn quá lớn với HLV Ten Hag mới bị đẩy đi theo dạng cho mượn. Nay bản thân Sancho rất muốn rời MU để trở lại đội bóng Đức. Do vậy, phía Dortmund sẽ có lợi thế trên bàn đàm phán trong thương vụ này.&nbsp;</p><p>Trong khi đó, Greenwood có thể được bán rẻ hơn nhiều so với tiềm năng của cầu thủ này. Các đối tác như Barcelona, Juventus, Atletico Madrid hay thậm chí cả Getafe đều hiểu rằng nếu không vì vụ scadal đời tư liên quan đến bạn gái, còn lâu MU mới chấp nhận nhả viên ngọc quý của mình. Do vậy, các đội đều dự định không trả quá 40 triệu euro để chiêu mộ Greenwood.&nbsp;</p><p>&nbsp;</p><p>Nếu Sancho chỉ thực sự trở lại là chính mình sau khi quay lại với sân Signal Iduna Park, thì Dortmund được cho là bến đỗ lớn hơn, phù hợp hơn Getafe để tài năng của Greenwood cất cánh. Do vậy, nếu cả 2 cầu thủ kể trên đều hướng đến mục tiêu gia nhập Dortmund hè này, e rằng MU khó giữ người. Nên nhớ Greenwood chỉ còn 1 năm hợp đồng với MU và có vẻ như đang không muốn gia hạn.</p><p>Ng: tcdulichtphcm.vn</p>', 'Tiến Long', '2024-05-22 23:49:24', '2024-05-22 23:49:24', 5, 2, 4, 'https://cdn.tcdulichtphcm.vn/upload//2-2024/images/2024-05-19/MU-kho-giu-Greenwood-4-ong-lon-moi-goi-gia-nhap-Dortmund-sat-canh-Sancho-jadon-sancho-mason-greenwood-1-copy-1716119398-65-width740height416.jpg'),
(44, NULL, 'Bayern nhắm Theo Hernandez thay thế Alphonso Davies', '<p>Bayern Munich được cho là đang nhắm đến hậu vệ biên Theo Hernandez để thay thế Alphonso Davies vào mùa hè tới.&nbsp;</p><p>Bayern nhắm Theo Hernandez thay thế Alphonso Davies Alphonso Davies đang úp mở khả năng gia nhập Real Madrid vào mùa hè tới. Điều này buộc Bayern phải tìm kiếm người thay thế tiềm năng.</p><p>Theo Hernandez đang là một mục tiêu hàng đầu được Bayern nhắm tới. Gã khổng lồ nước Đức đã bắt đầu thảo luận với AC Milan, nhưng chưa bắt đầu đàm phán chính thức. Theo Sky Sports, Theo Hernandez có thể khiến Bayern phải tiêu tốn 60 triệu Euro tiền phí chuyển nhượng. Cũng theo nguồn tin này, mục tiêu hàng đầu của Bayern vẫn là giữ chân Alphonso Davies ở lại Allianz Arena.&nbsp;</p><p>“Hùm xám” sẽ chỉ đàm phán với Theo Hernandez nếu như Davies quyết định ra đi. Hợp đồng của Davies còn thời hạn đến hè năm 2025. Bayern đã đưa ra một đề nghị hợp đồng mới cho cầu thủ 23 tuổi. Nếu ngôi sao người Canada không gia hạn, Bayern sẽ cố gắng bán anh ngay mùa hè này để tránh mất trắng vào mùa hè năm sau.&nbsp;</p><p>Lucas Hernandez, anh trai của Theo, đang thi đấu ở Bayern Munich. Đây cũng là một lợi thế với Bayern trong thương vụ này. Hai anh em nhà Hernandez bắt đầu sự nghiệp ở Atletico Madrid, nhưng đã không còn chơi chung một câu lạc bộ kể từ khi Theo rời đi vào năm 2017.&nbsp;</p><p>Bayern cũng sẽ chỉ đàm phán chính thức với các cầu thủ sau khi chốt được HLV thay thế Thomas Tuchel. Hiện tại, người cũ Hansi Flick đang là mục tiêu được ưu tiên hàng đầu sau khi Xabi Alonso, Julian Nagelsmann và Ralf Rangnick đều công khai từ chối đội bóng xứ Bavaria.</p><p>Ng: bongda24h.vn</p>', 'Xuân Phong', '2024-05-22 23:50:22', '2024-05-22 23:50:22', 18, 2, 4, 'https://image.bongda24h.vn/medias/640x359twebp/original/2023/07/15/bayern_nham_theo_hernandez_thay_the_alphonso_davies.jpg'),
(45, NULL, 'Kvaratskhelia lên tiếng về tin đồn gia nhập PSG', '<p>Người đại diện của Khvicha Kvaratskhelia đã xác nhận rằng cần có một lời đề nghị thỏa mãn tất cả các bên thì cầu thủ này mới rời khỏi Napoli vào mùa hè.&nbsp;</p><p>Kvaratskhelia lên tiếng về tin đồn gia nhập PSG&nbsp;</p><p>Kvaratskhelia đang được liên hệ chuyển đến PSG khi đội bóng này tìm kiếm người thay thế cho Kylian Mbappe. Kvaratskhelia đã nhận được sự chú ý từ thế giới bóng đá vào mùa giải trước khi tỏa sáng rực rỡ giúp Napoli vô địch Serie A lần đầu tiên sau hơn 30 năm.</p><p>Napoli gặp khó khăn ở mùa giải này với vị trí thứ 9 trên bảng xếp hạng. Tuy vậy, Kvaratskhelia vẫn có được 10 bàn thắng và 6 kiến tạo trong 32 lần ra sân. Chiêu mộ tiền vệ người Georgia dĩ nhiên không phải chuyện đơn giản. Hợp đồng của cầu thủ này với Napoli vẫn còn thời hạn đến năm 2027. Tuy nhiên, chủ tịch Aurelio De Laurentiis không quá chú tâm vào việc đàm phán gia hạn hợp đồng và điều này có thể mở ra cơ hội ra đi cho Kvaratskhelia.&nbsp;</p><p>Người đại diện Mamuka Jugeli của Kvaratskhelia nói: “Chúng tôi không vội đưa ra quyết định bởi vì Naples là ngôi nhà thứ hai của Khvicha. Chúng tôi trân trọng sự quan tâm và tôn trọng mà Napoli và ngài Chủ tịch đã thể hiện với Khvicha. Chỉ khi nào có một lời đề nghị thỏa mãn câu lạc bộ, cầu thủ và nếu De Laurentiis không phản đối thì chúng tôi mới cân nhắc”.&nbsp;</p><p>Napoli sẽ khép lại mùa giải thất vọng này với hai trận đấu gặp Fiorentina và Lecce. Đoàn quân của Francesco Calzona không thể tham dự Champions League mùa sau. Do đó, những ngôi sao của đội như Victor Osimhen hay Khvicha Kvaratskhelia có thể sẽ rời đi.</p><p>Ng: bongda24h.vn</p>', 'Xuân Phong', '2024-05-22 23:51:10', '2024-05-22 23:51:10', 20, 2, 4, 'https://image.bongda24h.vn/medias/640x359twebp/original/2024/05/15/kvaratskhelia-1505202248.jpg'),
(46, '1716475500.png', 'Chơi hơn người, HAGL thắng ngược ở V-League', '<p>GIA LAI-Thủng lưới trước, nhưng nhờ đá hơn người trong hiệp hai, HAGL thắng ngược Hà Tĩnh 2-1 ở vòng 20 V-League 2023-2024 chiều 21/5</p><p>Sau khi đứt mạch chín trận bất bại vì thua Hà Nội FC 0-2 ở vòng 19, HAGL trở về sân nhà với quyết tâm tìm lại chiến thắng trước đối thủ \"vừa miếng\" Hà Tĩnh. Hà Tĩnh cũng quyết tâm cao khi vừa thắng TP HCM và xua đi phần nào khó khăn sau sự cố năm cầu thủ bị khởi tố vì dùng chất cấm. HLV Nguyễn Thành Công đặt mục tiêu mỗi trận sân khách kiếm một điểm để trụ hạng và Hà Tĩnh suýt làm được điều đó, trước khi trả giá vì sai lầm ở hàng thủ.</p><p>Dù chơi lép vế, đội khách bất ngờ mở tỷ số. Phút 17, Lương Xuân Trường đá phạt treo bóng vào vòng cấm, hậu vệ HAGL phá bóng ra. Bóng đến Quang Nam, để anh tạt ngược vào trong cho trung vệ Lâm Anh Quang bật cao đánh đầu tung lưới thủ môn Bùi Tiến Dũng. Đây là lần đầu tiên HAGL thủng lưới trên sân nhà sau gần sáu tháng. Bàn thua buộc HAGL phải tràn lên tấn công nhưng không thể xuyên thủ hàng thủ chắc của đội khách.&nbsp;</p><p>Tuy nhiên, một sai sót của Hà Tĩnh góp phần giúp chủ nhà đảo ngược tình thế. Lâm Anh Quang vào bóng bằng gầm giày trong vòng cấm, trúng ống đồng Huỳnh Tấn Tài và lĩnh thẻ đỏ ở phút 44.&nbsp;</p><p>Nhờ hơn người, đội chủ sân Pleiku thoải mái tấn công dồn dập trong hiệp hai. Họ đẩy trung vệ Jairo lên hàng công để chơi bóng bổng. Hà Tĩnh lùi toàn bộ đội hình về sân nhà để tử thủ, nhưng không thể trụ vững trước sức ép dồn dập của chủ nhà.</p><p>Phút 70, từ pha tấn công chồng biên phải, Phan Du Học tạt vào vòng cấm để Jairo đánh đầu mạnh, nhưng bị Thanh Tùng đẩy ra. Tiền đạo Đinh Thanh Bình nhanh như cắt lao vào đánh đầu bồi, gỡ hòa 1-1. Sau bàn thua, Hà Tĩnh rút Xuân Trường ra sân để đưa Hồ Sỹ Sâm vào gia cố thêm phòng thủ với ý đồ giữ chắc một điểm.&nbsp;</p><p>Trong khi đó, bàn gỡ giúp HAGL tháo bỏ gánh nặng tâm lý để tiếp tục hào hứng dồn ép đối phương. Dù vậy, trước khi cụ thể hóa áp lực, HAGL cũng chịu một phen thót tim ở phút 77, khi hai hậu vệ để Diallo thoát qua. Nhưng trong thế đối mặt, ngoại binh của Hà Tĩnh không thắng được thủ môn Bùi Tiến Dũng.</p><p>Thoát thua, HAGL lại tấn công dồn dập. Phút 82, một phút sau khi Võ Đình Lâm bỏ lỡ cơ hội, họ được hưởng phạt đền, khi Jairo sút bóng trúng tay trung vệ Hà Tĩnh, Văn Hạnh. Ở góc quan sát tốt, trọng tài Mai Xuân Hùng lập tức thổi phạt đền cho chủ nhà, và phạt thẻ vàng cho cầu thủ đối phương.&nbsp;</p><p>Từ chấm 11m, Jairo đặt lòng hiểm hóc vào góc cao, khiến thủ môn Thanh Tùng không thể cứu thua dù đoán trúng hướng. Sau khi Jario ghi bàn, HLV Vũ Tiến Thành ngoài đường biên vung hai tay chạy mừng cuồng nhiệt. Canh bạc đẩy trung vệ lên đá tiền đạo của ông mang lại kết quả mỹ mãn, khi chính Jairo góp dấu giày vào cả hai bàn thắng.</p><p>Thắng ngược Hà Tĩnh, HAGL vượt chính đối thủ để lên thứ chín trên bảng tổng sắp giải VĐQG Night Wolf V-League 2023-2024 với 25 điểm. Còn đội bóng xứ Nghệ xuống thứ 11 với 24 điểm. \"Chiến thắng này rất quan trọng cho HAGL. Nhưng quãng đường phía trước còn dài, và chúng tôi sẽ tiếp tục phấn đấu\", tiền đạo Đinh Thanh Bình nói.&nbsp;</p><p>Sang vòng 21, HAGL sẽ làm khách trên sân CLB TP HCM, còn Hà Tĩnh thi đấu tại Hải Phòng.</p><p>Ng: vnexpress.vn</p>', 'Đức Đồng', '2024-05-23 07:45:00', '2024-05-23 07:45:00', 20, 2, 17, NULL),
(47, '1716475570.png', 'Hàng thủ báo hại Công an Hà Nội', '<p>TP HCM-Hàng thủ liên tục mắc sai lầm khiến Công an Hà Nội thua CLB TP HCM 1-2 ở vòng 20 V-League 2023-2024.</p><p>CAHN bước vào sân Thống Nhất chiều 21/5 với năm sự thay đổi so với trận gần nhất thua Bình Dương 1-4, trong đó thủ môn số một Filip Nguyễn ngồi dự bị. HLV tạm quyền Trần Tiến Đại chỉ giữ Hồ Văn Cường, Bùi Hoàng Việt Anh, Giáp Tuấn Dương, Lê Phạm Thành Long, Geovane Magno và Janio Fialho. Tuy nhiên, những điều chỉnh này không thể cải thiện CAHN. Họ gặp nhiều khó khăn trước chủ nhà TP HCM dùng toàn bộ cầu thủ nội.</p><p>Phút thứ 4, Huỳnh Tấn Sinh chuyền về lỗi khiến thủ môn Đỗ Sỹ Huy phải băng ra vòng cấm phá bóng, trước sự áp sát của hai cầu thủ TP HCM. Đến phút 18, Sầm Ngọc Đức chọc khe để Hồ Tuấn Tài bứt tốc sẵn sàng đối mặt Sỹ Huy. Trong thế rượt đuổi, Tấn Sinh phạm lỗi với tiền đạo TP HCM và ngay lập tức phải nhận thẻ đỏ trực tiếp từ trọng tài Trần Đình Thịnh.&nbsp;</p><p>CAHN chơi chặt chẽ hơn sau khi thiếu người nhưng cũng chỉ chống đỡ được 20 phút. Từ cánh phải, Ngô Tùng Quốc ngoặt bóng khéo léo rồi tạt ra cột xa cho Hồ Tuấn Tài không bị ai kèm đánh đầu đập đất mở tỷ số.</p><p>Sang hiệp hai, HLV Tiến Đại tung Quang Hải, Jeferson Elias và Phạm Văn Luân vào làm mới hàng công và tuyến giữa. Phút 53, Geovane Magno đi bóng nỗ lực ở trung lộ rồi chọc khe cho Elias phá bẫy việt vị vào vòng cấm, rồi sút vào góc trái đánh lừa Patrik Le Giang gỡ hoà. Bốn phút sau, Geovane quan sát nhanh thấy thủ môn đối phương dân cao nên sút từ giữa sân, nhưng bóng chạm cột dọc.&nbsp;</p><p>Khi thế trận đang tốt thì hàng thủ CAHN một lần nữa sai lầm, lần này là Bùi Hoàng Việt Anh ở phút 62. Từ pha rê dắt của Lâm Thuận cắt ngang vòng cấm, Việt Anh giành quyền kiểm soát trong vòng cấm nhưng phá chậm, để Thuận ập vào cướp bóng rồi sút tung lưới Sỹ Huy.</p><p>Trong thời gian còn lại, CAHN chỉ tạo thêm được cơ hội nguy hiểm ở phút 70 với cú sút xa đưa bóng vọt xà của Quang Hải. Trong khi đó, các cầu thủ TP HCM chủ động chơi chậm, không ngần ngại nằm sân câu giờ để bảo toàn thành quả.&nbsp;</p><p>CLB TP HCM tìm lại cảm giác thắng sau hai trận hoà và thua. Đội vươn lên thứ chín với 26 điểm, tạm hơn hai đội xếp cuối SLNA và Khánh Hoà bảy và 16 điểm. Trong khi đó, CAHN thua liền hai trận khi ông Trần Tiến Đại nắm tạm quyền thay Kiatisuk và lỡ cơ hội thu hẹp khoảng cách tám điểm với Nam Định – thi đấu ít hơn một trận. CAHN đang đứng thứ tư với 31 điểm, chỉ còn hơn Hà Nội FC một điểm.</p><p>Ng: vnexpress.vn</p>', 'Hiếu Lương', '2024-05-23 07:46:10', '2024-05-23 07:46:10', 20, 2, 17, NULL);

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
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `player_name`, `created_at`, `updated_at`) VALUES
(2, 'Null', '2024-05-19 07:47:48', '2024-05-19 07:47:48'),
(3, 'Cristiano Ronaldo', '2024-05-21 03:22:40', '2024-05-21 03:22:40'),
(4, 'Lionel Messi', '2024-05-21 03:22:46', '2024-05-21 03:22:46'),
(5, 'Neymar', '2024-05-21 03:22:51', '2024-05-21 03:22:51'),
(6, 'Kylian Mbappe', '2024-05-21 03:22:58', '2024-05-21 03:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0UPnCtYAs1ZYdARWdacq5sqrIxy86xVMSo2L1uo5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFhxTEFNMk52WjBoSFREa0xmakxBZXRQaHM5c1l3Ung5QzRIa1RJSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716627326),
('1StuLHAdLXEAvKwQoSI2cd0pEw1K0Zvl26DHJY0L', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjdLQmp5eXhRMjQ3MTlEZzlleDR4d05RdjFpRkhqak1ISlF3NUpINCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623938),
('2PH2g0raP3wJBkCld5tSyJxyRgGfaiThkVgZvWKQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEQ5MmtoRVJycElPYkoya0NwNEpVUTdUZktLMU9zd3lYTlRaVEdCWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620188),
('2VUBKyi8jk4yexPSFpjXcQo3qi9gxTxGfkhAWVAD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieU1iYzM5dTc0MFNsS1JHblpHSEN4V0hEZ09NMUF1c2lLY0g1ZG9jMiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL0NodXklRTElQkIlODNuJTIwbmglQzYlQjAlRTElQkIlQTNuZy9zaXRlLndlYm1hbmlmZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716621256),
('38KsVjFlFp813Se6hsjN4TmLMMda9hJRzpX3o7HO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkVIT1BQbjFiUU52VXlPVnlaRnZVd0d5ZExWUnBwMDhEbWpqb0FFWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620090),
('3P4COo5XWojNGgtrBEMO8EQnNJ6VvjxzbaNAfL6o', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUg0MTlRWHo1cXY1ajB3T1RYNHhQaDhWeWRTVDdXSVA0eFQzRk9hTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620815),
('3ZxdNfUOXpNHzc3IFH6WJnLa3NdHuRDwlFqyBmCI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieTBGWGg0V1dlZGJXQk5ud0dnYnFSY055R1VqTEc1YmtRbkdIUkZPVyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzX3NwZWNpZmljLyVDNCU5MCVFMSVCQiVBOWMvMTEvc2l0ZS53ZWJtYW5pZmVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716620861),
('4fd4lQBJtZgSGwqXBu3PVflZHbLeVevfCvMBa0TU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUpIOGJPR3JyUWpoOGhsR0V4aXdQZlVldHV4UkxubTBMSzc5NXo5SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624068),
('5ueFRzpf4Q3F9aHwTLM3Bp0jrMfb7Foq5iipvkyX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWm9mUlNxZG56MEpuVVVTWUFOWGlQU0dnVXNFcGMwWDR1S1NGbHBBciI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzLyVDNCU5MCVFMSVCQiVBOWMvc2l0ZS53ZWJtYW5pZmVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716627323),
('675emnZwjMbQHG3yvpytjyQWlJ6oa6hTl5nHzhqH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEdQc3pZdHNHM084SFJOZzRSaFdxTUh3ckJnM2wzS005V3BwMHppUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624797),
('7GfnCPOHnzpR6Vb3Ptv5J6BRB2KfdtBEQzZ8u2cZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU1BmOFpsU2Fra0h6bGRzVjFxSXpGdVVMbE9ra0J0SGpGQ2xZcjJzRSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL1QlQzMlQTJ5JTIwQmFuJTIwTmhhL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716627214),
('7TSpv6q2c4Rcu7lFt8lY3j44djbjfWY3k5MSAPDF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnFndmhHalg2eWhUUEVpOUN4OEswcnZlRlprTTBFZllhVm5lQzZaayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623154),
('8aKB9Sm9zvP2nv1aKyi2eEW7EAmAfBt7iyU1WiHW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2YxcjFMMFV3RUZPNUpjbDBtQUtCdkJOMDhZWGVua1o0NnJreUo0eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626538),
('8hNSIA7Z1MueNbOKiOJiiqnQCcVD9yCiC4oFjH7h', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzZRME1ad29EekVZUHg3TmRrVFVDUFUwM1VTdE1HcWVtbkF4M1FaTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623905),
('8nuFQLdY1GK0FARS4CRis6zqUZuLZrU6WMD27vqe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzVYeTBhN0ZycUhzNzRoSDZKTDZMOWMzU2EwZnZVSkxyaUZvR3dtMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621391),
('8qb66P3DMPsIGqIygtSE59HHUZtnhXP1sYC5m2fk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieURzY2VuZnNHNk5FM01FRlJxTU1rNGlhdXQyWnJqdVZHdzZKUkNJVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624018),
('8SjCql6ZmXtaNlArAEihHsirCbcUdMo2vmWWe42i', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiblZBTlB4eURpQkF3S2l4UmgwbHpYRkF3RkRaT1dpR0FqWDBWdUtOSiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzLyVDNCU5MCVFMSVCQiVBOWMvc2l0ZS53ZWJtYW5pZmVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716627328),
('91jb8hcXnfl38YAVUeKENjBI57w55sPF9XeLjhjj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY2hXNmpjeHU3bFdudlZkaGtLY3JiZkZmODdLbnljMUwzS2ZsYkxQcyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3OToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzX3NwZWNpZmljL1QlQzMlQTJ5JTIwQmFuJTIwTmhhLzkvc2l0ZS53ZWJtYW5pZmVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716627173),
('93rJKMKg7k4KOD6CDKoVhjmrl07BJ8OIDiQWYcVV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjBvdFdTYzNLdkhsallDSWViZ3lqZ2NJTjhxcm45TVQwcDJwOHRvTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624434),
('9HfDfc6gteQ8o1XQtChMX362Yo4MFzKncExRGdeP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVpLQm5IUXJRMEVBY1hqTWh6OEQxSHhOcUZhczhlSjg1cXh5MmRxbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620164),
('9sUb3hQVZgrujZ0z1mnmP3BwvDKm3GtUP4OpjRGf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieGZhRjI5ZkFsT3VKQ3RQQnBjWU95MHNiMndxVjZjdzZCeklGOUFvWSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzLyVDNCU5MCVFMSVCQiVBOWMvc2l0ZS53ZWJtYW5pZmVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716620860),
('aAJuOqtYML354XRfLrpnD1YydSL75gVsFM8ggmoi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakdTNlRMaTdNR0RZME1lNTYxVVh1VG1RNXFWbTN0ckJob1JuNDRvNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624846),
('aBA2Z9dL3s87WRDWBbDacCCoYpX9hGI4ZXooDjTM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDkxR2N4UmVYV3UyUTYyTHZrZ1AyeDRNeFFPTk1HOUxkaVFnd2Z1YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621626),
('aBCHazNyzP95obFV4xvJoNyZ6aIVwINvitti3gyl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWMzVDNYTEVxbEY2SHR2SXVyY3FBU1Y3ZGZEclBaUTltUVM1emNnSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621434),
('BlDShLtZmZGqa55rOVez43PyoQhExyYIjvrymJ4w', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYlhMTnF0ZWt2TGVpQ2xObDhDQXdrMHNXRE5LbFU3ZGwzUUdPM2ZiWSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2OToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzX3NwZWNpZmljL1BoJUMzJUExcC8xMi9zaXRlLndlYm1hbmlmZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716620863),
('BWOq2qeNPE02Tx9rZgkH2qeumYlIEt8ecv4eVPsp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEtJVEE4a1JEYVJReFp0QVBZdWRKZ1VXY0hWV1hxSGM5SWZ6NUtxeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623605),
('CdLoG2Mvl3ZrvQhDEv2I1Q3U6GBoy6ze8V4ad1bW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZktqNzRDdlFncDI3SldVOTh6VGJYUHJwQ25CeXVPZGZueE1oMkNnTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621508),
('CFLB34mrAhUPRgh2jytpbfMpridpeztTQXlbbows', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVpUOEJ0YmRQaWpYV0J5dTZHTmRjWURIanJQeWpwWlVuRkkzaEJKdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621335),
('D9rQkXgZ87su6hXZHuUvi9WkEEXnaaIorjCWHgQG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUw4ZUx4U1pTN3oyaWNJc2J6S3pjVHN2R1V3WEp0cnFnVFpZd2lLNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623970),
('db1gnLQy7Xs5coqT5s1Obe8XQVVq9v3X9EPkWitv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDhXYndDUEM3YnpyUWV5dWEyVlFtOFR2WTdKRG81em5udmE2UjdVQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621656),
('dd75l06HQfYTgBTtG14dVor1k9TUGAQDbJ70OnRc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWklrZWFOQndFRzhYeUZQbTI1NVNhUXg3THljNmVIbk1tTzVENUh4ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626940),
('DSLbxqitgChopVVWdbusMEN04eVnMa9VCKzxMGA9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTQ2SVQwQnhlNW9aaEp1dUFyY0xmMmZmTzJ6VW1XU1FFbVd6WFZERyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624417),
('dVzKN52Vsa3q1PBVpKZu1zDURhwUFFjfAO8D7WRr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnVrTzlzclF1T2Q2Tlo5U0VzVlZYZW5ya2czNEkyWnNiUXoxemlGeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621600),
('f2qZYwW1ZbjKRIXvmHiLGN1huP1TllUbGIVzah3l', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGQzeFhLbEJBUURZZTlybUNVRjNMVnpEZHI4VVVPSUc1UmpDVmxjMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624243),
('fJ1sopbhhdcpEgXn5lnRnHpXXuSsK6JbU6nKa7j2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXpWcnBkNldpT3hPYllvSmk0YnF3UTY4VnZVUUpTTUNZQUNBQ1J2ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623626),
('fOfqc2cLklLh1Z7GRvRROFlvhNOr5AqBIoE5WuDI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjF4SlNIR1VubmRiMDNpOHF5RVRyZkM2QVc2ZUI2VVhyNVFWdFRhbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620735),
('fwleqKwGdNPCuzmgv6yS4Mjnh2P1vvuU6rqzpQSJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYU1GSTdLbnh6WnR1QUE5N1dEdzJGdHJXaE9qWjd3aUc2S0lkazVubSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL1QlQzMlQTJ5JTIwQmFuJTIwTmhhL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620858),
('gcqdkkILjzZZisUcpYcLmAXQHYTOebN5TdsoVALy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0YwbllOeWl6ZjIwdGVwbzE0YkpmU2Z1bEltenowQ0Q2cENXSjFPbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626510),
('gmpOOQF7KSijigK3Sy9LzRdDDZ77eVyWqVZwoVYr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaUprZm5RSXVoMG84WFdjeEhsRUszZUFwYm8xbEFCOGJobk9lRm1icCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzLyVDNCU5MCVFMSVCQiVBOWMvc2l0ZS53ZWJtYW5pZmVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716627301),
('H6vMdLLKWnT1iLw6HSZt0Sk76uddWgppcG097eU1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE04TUtHMlhoMW04M0tCRkFyUEN4WWo4WmpFaGhwNUdhMUpiNWp2WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624023),
('hC5P2nQZpTTCiknEgJcqX3KP75t5OD6yI7XLSf50', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieE1FTnZONnZoQnhCU0phaWljRkhiR2RJRnNzM0NTanZ1bUcyUDRCVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626838),
('hcVYNlIPca16CHQEDuCmVcINcR9z5rQu8cfhQpJU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickRUZkRORDByTFVyUlVzdzR0THJmSTN1WDRFVTRPbkdEalplSldyZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624779),
('hFMJBThbfRCQpWFlKBhiXeyqgaR166ma0unlFJIu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTWVFbTZXdjRucFVFaVd6OGlmUjFuS2R0TzRiOTJCOFRnV3VsWkw0RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2RldGFpbHMvMjIiO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9fQ==', 1716627325),
('hI2iASIxIh1MVV6uq0hKqej9D83prnUUL7jVCYHO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibVoyV2xEenhNY1EwamlCNXJXOXJZbktGaHRpOVRhblhSM28zVHBqMCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9fQ==', 1716885951),
('IdHnsEyGuYnsp5jsnhurHY4iF7Nr4yYRazCspAyb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjRrZnZSS3BScDczZlFZNnNYM0I4SmJZejJjM2VCaGlldjdMZkI2UiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL1QlQzMlQTJ5JTIwQmFuJTIwTmhhL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716627183),
('iLOBER0lii2t00ItpSVd7oyNHyx29IfLunniehfV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibDNVWGxkRUtjYlk5WXlqWlpHbU1INDllRjFpR1pnZHdCMHFaZjVjWSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL1QlQzMlQTJ5JTIwQmFuJTIwTmhhL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716627225),
('imzMXxadvwMeBaHPpXPlCtMgzTATUDEeoWCZrJ73', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEVtV2NFREJzQkN2WEZxRmpmMWNRcFZZVkIxcGpaeVhoSlNxODNGYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623693),
('ivTbcOoLkOXDpWrSnbMU8S7qBizOesvue8iATctt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGJYVFF1cjZ3aEdZWHpadU1qTmMydmlSY2RveTd5clFXWXhvdTNEMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621467),
('J0qvexg82Sb29qAqzDmIuuRZ9dnoVQWHHGwRe5XB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVEZ0WHVwVDVYWDJtaEZ6Ymd2WDRWN3FKRTRHRWRPaFJ4czZrNGM3RSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL0NodXklRTElQkIlODNuJTIwbmglQzYlQjAlRTElQkIlQTNuZy9zaXRlLndlYm1hbmlmZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716624432),
('JGLWsAVEoTFc8ylhYP8DLcGWqZGPUJzXGxV3WOr7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEhTemVRTmd4dVVlQzZRNnI5enFBOTZRRjIwTm1USDBBOVFJRUZyUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621694),
('jiAgeSBt1MQHMlMaobEm4VvREmqCPLPL9ypepZSj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWdCMGtwSEdzeEVMY1FzekRnTWNwTmM0cDF5bTVXVTVoVnRFTWIycCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626499),
('JoGMehXBaL0CkzFuNFQYoVejhKZeyRrbnIspiwdE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQm1kanZIVk9mQ0ZNRDJSQ3hrUDJIVWxsNGN1S2NJdTBvSU5EOHZ5YSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3NlYXJjaD9zZWFyY2g9YXJzZW5hbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716820127),
('k3r4N5rQrGWczl8ioyJ9oogiJk4PTOBf1rupDhNM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXlLaFllYk1DeWt0T25rVnl2ZGtUeVVuT1ZsbzFUSk43cXBRSFQycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624762),
('kaPmIrfjqcOfX5tVmhrY4iFvl2Iwji2l1EUqU5s3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialNNbnlPYmtCeUlrVXIyOXBVM1Vsd2l5OVFrdDdSeUdMSExVOFZFNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623930),
('kYyhThVnVFS2BKLSZKc1GYPCE9ge8GO0fI8BDwvO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDZWREpXR1hiN3I4dHBCMnk4bjV0VTRWS3NiQmJKNlZsRndjcEdiRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623940),
('KzR44gjcvZLb4cGqeIXRbDcp4HOjogGF1iePaIxA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibVVlN0hnWXRvQXhiV0xnZnlsMlBrMmR2am12bHZ3VkhlUktvTXVXUiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzX3NwZWNpZmljL1ZpJUUxJUJCJTg3dCUyME5hbS8xMy9zaXRlLndlYm1hbmlmZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716620867),
('L5OYbRllqtrE5pUBEieiKralcd499ZfyNFczuDQh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1JaVmh2cU5LaTdXMHp0OHlYaTVycTdCb0IwMUFrQ3dzMm9ycndaVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621287),
('lj24F4y59gWq0x9BjFP5v094OMYhekU5kBktnc5i', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXE0emdjVlZBQUVBa01aMVZVWGFCeTNUVHEzZDNVS2ViVzhlYzJmRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621461),
('MeLmGNudZcka4ohvCRrTeQ0fd1Id0XCnnmT7W2Lc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1pjYkdWTE5LNGVFMlJYSUlyTnI2bElrSG5HdGNXazBRaDlDYzVNYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623982),
('Moy33KsRt6iWrqC8IogZMqZmeStZfLhKBHppFEUM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUROZ1I1ZGVEbFpkS1hlR1RVTkduN0pVbTgxbm9LTnZnVVFZSjFwNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623446),
('mYtkULxlgqaltAe9CuSPv4Ofo2cjD7UbK7wvONQw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczRyWFdEc1pOWFdPcW5IQkJCQ1o0NkhoTGdvMEI1OHVsYUFkWUc0SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626489),
('nPLI1OammSt9fC8pI32Tte3OaiZnBL9l08OLshun', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2txM0FXN0hBekxWZ3p3aVlMVlpTbTB5amN2ZU1EZkxMSXhxc09NViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620150),
('NvOlaWwJynOtXaJ8Cid1SmXEAAgKmxJ6UZ8zYZFq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmpHM3JRSTJUWTNsblhxZDVyOU9kQ3FBcDF0bDREWTZBWkZIeTFFTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626519),
('NwuwkPcdtnK5Nb9qAbKQlVhdWvymSw3lJnXuxfDp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajBUellzRGRrdnlwYXZiTkhCNzdsbVBTNFpTa0RvWndyWlU0TWM2bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623040),
('o9smhm0VkMH1TyxRI7WqNQLwYhvR3YKW375Vreal', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTdEbFloS2dzekpPeDRxbUc4NDVmRWJyN3FmNGtoVzVMWWlCRUN5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621259),
('oytCQe5Yg7FiPvQLFkJdHZihDTvrcUitYcrLsDlm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0lIR0RpUW8wRUc1SENYdmlDRjFFNU11VGdCQzJsRWdnb01taDEzOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626795),
('ozrgy8virPgW30r39rzbk5oDesw5hJoLPeLARH4f', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibHVldVRHbW4zRlRLOHJuQ1lKQnVXRDVETE82TnE5VWxvM1BkVmpPTiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL00lRTElQkIlOUJpJTIwbmglRTElQkElQTV0L3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620792),
('p0E4rSaG9vobwYpLJ0xPTqJKGpMo9zWojPwTrvds', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRGRpZnJFbnNOTG1XVm5veEdvWFRqRGJBS1JqcGswaVRpbHg3cXNCVSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzLyVDMyU5RC9zaXRlLndlYm1hbmlmZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716627171),
('P1M3BTyF035kB7ICMcoKLhdw05dMW115Nfie7jpi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQmVQUHZwTVBBd3VVVzZ6cVoyenJ2TnRZMkZ5ZWlObFlUdmVWTjU1OSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL1QlQzMlQTJ5JTIwQmFuJTIwTmhhL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716627179),
('p5bGrDsHZQjgtHmEAczIi5vVoxDf2WpTwbqbsyRn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWNPZFd5SDYyUzl2aWNkV3pwZmFZVm5WcVdnQnVsdVlGVnd5ZFAyYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621383),
('PcBSTMvlqygZmJBTvVY4yowbwIjHeH4movF0NDuF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUhBUHpBVWNiNFBwZnRRREtQVFBIR0ExeFFkNHlDVXZzTFlJZU9vTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621445),
('PExSgCZs7Zt0ucfUdQxU4ROAYwCJQmGKXKh6mG0M', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWFTOXQ5aDVmdWRmSVNDVExrVGV1U2JTVURVblVLbklLVzZPck9qaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623979),
('pIuPJXuVFr6RoPfelOLcTXlD7c6jxtaWrb5N2Ldu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW5iYmU5Z2hlSmJjZnBwUjhYbm1KM25reGF0ckNTRnMzejA2REZTeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623501),
('poJLs7U4Jb6ojEth5dTKXY9r37Omf4nZP1cFcn52', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0N2VzZINkpMUkN2eGFDYkVEMlM1Vm5ib2NFZlJPb2JZS1NXM3o2MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621644),
('PPQUw5jgmqMayGIH0KzuuuB9sd31HV5iRn1WrKbd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTBtZnVzN2JGY0oxV0tYSWY2YUxwUEFWWGVESGtNQXFNM0FFUzJqUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621417),
('Qv4KhH2iuyBBwlymXh19Lwk3YeQ1YizkHCitBwsf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidFFLbW5sMG1lMUFIOGxickkyMzd4cEJtVEd2SEZjdzdMODdIbW9GZCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL0NodXklRTElQkIlODNuJTIwbmglQzYlQjAlRTElQkIlQTNuZy9zaXRlLndlYm1hbmlmZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716621208),
('RmedILPG02lwiVwSbquC3yZRKM0BJJIqMORY5S5X', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnZpeTUxcXlVZU5VRDh5UUhhYVE4aFV4WkxXTDhnQ1RmR2paT1piRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623778),
('rnFVLC3NnLwHy6owPdLaiXLMx5NJzEXpfpj3qb19', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnN5VGFiVXM3U0RVN2hCMmo2TU81UmdVY3c1UGVBZ2lwZVVVNlpZNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626929),
('SMgUBqOidNO17fPCzHalqvCBkukhPeDqEY4ywc9R', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMElWeXVRcGhLVFVwTEZsN1NnSE9xTFltdlo4UHV3MGxIbkpFYjRGNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626483),
('sO64lzZRUzOp7vPm5VxWYLE9KuCc5BRkqAdrRbkR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTZuYktpNlpRaFNydmUwdUU3RmlQRTYxa1BqN0RCM0NPVEFGSURNMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624490),
('t1PuzeDQgrBkR6qgjematCep7M4DAUJ4VcCrA5Vp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3Zxd1VDR2NtTUF5UjNWd1dtRTZHaWlhWnNsaEltYjVTMXJvTThWNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623478),
('Tj85BgaQrNtHN7q2NKJeu4jTpcZ3aqJTevZKkRMQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDltUHdTcnY1bzduOGdsTk01WWd1ZmVJZjhEc01YYWw2R2d2d2lGYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621424),
('TMy6uD9Oa4PYO1Y22FE6b1tQ9TJtD4VKpLWYuvOh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkl5WGhDZ0ljMUV2eDNOdVZ6QkNscmZNcUN5SkVVc2lxMjN5VXQwbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624787),
('Tnqr19Y5YnVHfxpofH17kBWunmMjvvWzaxeZYuvA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGFnTmVhaDdQRk9hQ21pZ2cxcW5hQzY4Q094ZjNGMFpDZEdnV3c5ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626814),
('twc4lj9oQzIwmKBMA3DYYHTRUdoFZPt1mW5LDCkH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWI2emhwTXZoQ094c0tlNGhTQlJXV28zRUU1Z2tPNkVKSURNWXZhWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623909),
('twiAdIJ8Ej3Cdpb1TVn0oJaXhraRnH8TsqEMdaVZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlFMaDQzOE9UOTNUMWtCUUFNNGZOaTM3UldsRkg4T2VCSUVQUXdGNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623497),
('UREB30PgaUlzx3WAsZWAMAAR7EOivuJ0OCMplfpO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm9pcWY4VnJBN2tSOEtva2dYeTRhcGNVWVM5cm5OVklRYnVpaWQwNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621558),
('uyORnvM3WZeMAGT08vm4w8FkLVOZJfIFTigmcWsl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWl6cWlpQ1NrMXJTV3ZvNnU1OTlkVHdiMVhnb3dFTURWVXZZOEJvciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623667),
('v80TtElpbwpW4IIhqjyuB1BLxLlYq3GJ6yEUhcNs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTQ2SU5OeVlCSjVrRk8xY2JjOWFLVkNmcHoyS0s2TFppek8yT0JMViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716627159),
('VfYtj3TtxMBBpKOWU90pHeWdmHr8pL9BbYivGvVq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTdRVDlSdXFnVmJ3OGt0VktYNndKdDRLaGg2bnpESWc5YVNIRkRyZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626509),
('VGzDBzRMIZPiasUhUMRbtkU5e4PC55x9lhFEmozO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWEloRGFpQ2I1ekFaTFRvSmFabzdIVDJIVEZRcFBubVJsUVhseWViQSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzLyVDNCU5MCVFMSVCQiVBOWMvc2l0ZS53ZWJtYW5pZmVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716627307),
('WiJZKIjysBXhRgE5hzs18aZUaqPA48TsAg0aX2hd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGVzU01DdGxXdlIzU2pFNUx3UXplbUNSd2I1QldDdVRzU3diQ1hkcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623879),
('wQY5jvKlXn3s3aKmV0B9fMHZWyX4MRiPQ2KDnXQV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnprNFdRMFNSQnB4eUowdHk1ZGM2VjVWWHd0cHMybkw4NktDalphVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621595),
('xEyxD4F3xLN9o0VKFhaaZ9TSlYj5s1de11EHDQ7T', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWmNYb2tTTmtkOFVKbktLNnBubEVRenU4TndlWUtaMkJwSnFMVkxPRiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzL1QlQzMlQTJ5JTIwQmFuJTIwTmhhL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716627185),
('XngE7z6gefXbGjax4hlku0A5AthwUNGu8mbZJM5t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRERjNTFNSURQOVFybzVyeWptb2owWlQ0aVB5N1lHdWVPY2pWTHhGQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716620103),
('XTJIDOnO20cc7UqDlUr1AdLjYup64YF42g1F4jcJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWE5MbWRpM3BKTE5uS0VXZHV2c3JTQVRNS1ByMGZtQVo1ckFyRFYyTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624122),
('yBSpf1q9yMaSYJNENmnkVeY8hlh6fSF4FD6KYmF4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVNCUEI3dGtsaHdNeE42R3k5VGd4YnZDODVxWjEyVmI5d21PeUI5TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716624062),
('ylYRjcBfpnwMfokxTl74GT6xil5cPoWunE0E5W9O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibDBRVTF6dTFuYjljWHFNb3JTdWlWV09UWVlaejZrbk9QTDdydno2aSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3RvcF9uZXdzLyVDNCU5MCVFMSVCQiVBOWMvc2l0ZS53ZWJtYW5pZmVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716627264),
('yWKfC4uwL94d42piv8I5mNb5SBwIoserNjONoi0c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHJQeXJ2NXpBZ3N6QXhCRXJLb1RkQTRQTjBKVmNOaWRmczNTNmN1aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623995),
('ywl3xwQsNYtK600HsvOERZOz5yRIwo9ajRJ9awwj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidFlTZDVBMndUTHd5YW9BZ0tzRU1IWnlWcmlDdmxXNkRLNkVtenJCTyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716694819),
('za82WvQPyyhBTz6LIrza5Sq0WsvYhVm8oD4HdVdz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoialZOaXlsczFPMHVJZkgxNEQzR002THNUZVRBVzhvMFpVeGN6WFBaVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716626698),
('ZckQ7AQkfNtbpsCk9jshufsitbchlnX9eCvm1ILF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDB6VVFXQ3M3V0MxS0N5MkljeWRYOU5DYTRDTVNTSTQzQkxOR1pldCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716621441),
('zkHYvNlQjX4csiDbYZliKxRpHbJw1pyOWL7fR4YP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDM5aUZsUjhEalJPOHVjU1duQU5URG92OW5uaW5acHcxZ0RqUUlQQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3NpdGUud2VibWFuaWZlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716623829);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '0000000000', NULL, '$2y$12$fbqS5QFZYFZSfJ8iSxUUdeolICRt1j.QNHFyRTmaSyfRMmvwNAani', NULL, '2024-05-18 21:44:07', '2024-05-18 21:44:07'),
(2, 'dokhoa', 'user@gmail.com', 'user', '0000000000', NULL, '$2y$12$3.HW4XGwjUkI4VFw.4djpu7JH1zDsVuGyOa8AK7cWfSZZypjDtsfm', NULL, '2024-05-20 01:18:50', '2024-05-20 01:18:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clubs_club_name_unique` (`club_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_news_id_foreign` (`news_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leagues_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_club_id_foreign` (`club_id`),
  ADD KEY `news_player_id_foreign` (`player_id`),
  ADD KEY `news_league_id_foreign` (`league_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leagues`
--
ALTER TABLE `leagues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leagues`
--
ALTER TABLE `leagues`
  ADD CONSTRAINT `leagues_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_league_id_foreign` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
