-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2023 at 04:09 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `taglines` longtext COLLATE utf8mb4_unicode_ci,
  `social_links` longtext COLLATE utf8mb4_unicode_ci,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `avatar`, `cover`, `email`, `phone`, `address`, `description`, `taglines`, `social_links`, `cv`, `created_at`, `updated_at`) VALUES
(1, 'Naufal Randika Parikesit', 'assets/common/img/avatar/default.png', 'assets/common/img/cover/default.png', 'naufalrandika44@gmail.com', '123456789', 'Semarang, Jawa Tengah, Indonesia', 'My nickname is Randi. Informatics student at Diponegoro University. Inquisitive, energetic computer science specialist skilled in leadership, whit a desire to continue learning in math, logic, and coding. Seeking to leverage solid skills in collaboration, communication, and development as a programmer.', '[\"I am Software Engineer\",\"I am Web Developer\",\"I am Full Stack Engineer\"]', '[{\"title\":\"LinkedIn\",\"iconClass\":\"fab fa-linkedin-in\",\"link\":\"https:\\/\\/www.linkedin.com\"},{\"title\":\"Github\",\"iconClass\":\"fab fa-github\",\"link\":\"https:\\/\\/github.com\"},{\"title\":\"Twitter\",\"iconClass\":\"fab fa-twitter\",\"link\":\"https:\\/\\/twitter.com\"},{\"title\":\"Mail\",\"iconClass\":\"far fa-envelope\",\"link\":\"mailto:johndoe@example.com\"}]', 'assets/common/cv/default.pdf', '2023-08-03 07:06:29', '2023-08-03 10:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$rvzlTbNR8vxO1HFRbIs/0eNDaOnbWZg.5f.6LQg0qe3lWtjGvYhMC', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint UNSIGNED NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cgpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thesis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `institution`, `period`, `degree`, `cgpa`, `department`, `thesis`, `created_at`, `updated_at`) VALUES
(1, 'University of Colorado Boulder', '2006-2010', 'Bachelor of Science', '4.00 out of 4.00', 'Computer Science & Engineering', 'Web Development Track', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'James Buchanan High School', '2002-2006', 'Technology Magnet Program', '3.75 out of 4.00', NULL, NULL, '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `company`, `period`, `position`, `details`, `created_at`, `updated_at`) VALUES
(1, 'ABC LIMITED', '2019-Present', 'Senior Software Engineer', 'Adipisci voluptatem explicabo et corrupti rerum velit est. Sit excepturi modi placeat est.', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'ABC LIMITED', '2017-2019', 'Software Engineer', 'Inventore ut temporibus ratione. Est optio sunt nulla inventore. Ab architecto eveniet inventore facere ut at. Numquam rerum cum optio asperiores reprehenderit consequuntur alias.', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 'XYZ LIMITED', '2015-2017', 'Junior Software Engineer', 'Distinctio illum nihil consequatur ea maiores omnis ipsum. Aut et itaque voluptatem omnis aut. Laborum odio et mollitia voluptatem itaque. Commodi eos unde accusamus laborum accusantium.', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `replied` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'reply back status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `body`, `replied`, `created_at`, `updated_at`) VALUES
(1, 'Reinhold Kihn', 'carli57@herman.com', 'Possimus cumque qui quis laborum voluptatem.', 'Est totam qui optio odio perspiciatis voluptas ut. Voluptatum voluptas iste nobis aut. Consequatur sint molestias cum animi beatae sint natus.', 0, '2023-07-05 00:38:10', '2023-08-03 07:06:30'),
(2, 'Mrs. Magnolia Ortiz MD', 'clyde.roberts@cormier.com', 'Nihil quia aperiam deserunt non enim expedita exercitationem.', 'Iste amet repudiandae vero ut rerum quo. Et reiciendis aut quidem incidunt debitis qui repellat. Sunt aut porro error deserunt.', 0, '2023-07-28 09:05:06', '2023-08-03 07:06:30'),
(3, 'Unique Harber', 'ycassin@kohler.com', 'Voluptatem vero atque quo nam enim.', 'Dolorum reiciendis ut est adipisci. Sunt nesciunt consequatur nobis cumque.', 0, '2023-07-09 04:01:30', '2023-08-03 07:06:30'),
(4, 'Verona Kshlerin MD', 'runolfsson.finn@gmail.com', 'Quia odio quo qui harum.', 'Excepturi molestias mollitia odio. Aspernatur eligendi dolores vitae autem repellat non perspiciatis incidunt. Voluptatem hic distinctio maiores tenetur.', 1, '2023-07-18 03:17:32', '2023-08-03 07:06:30'),
(5, 'Kris Altenwerth', 'celia35@gmail.com', 'Distinctio maiores et est aliquam.', 'Itaque sit repudiandae similique quis omnis id. In in recusandae quasi dolor. Debitis quidem maxime rem earum sit. Natus fuga provident fuga cum nihil corporis dicta.', 1, '2023-07-17 13:28:53', '2023-08-03 07:06:30'),
(6, 'Adele Ritchie', 'jennifer.blanda@hotmail.com', 'Ea quia modi voluptatem voluptatibus.', 'Placeat cupiditate expedita eum facere provident illo perferendis. Consectetur asperiores eius non consectetur veritatis. Porro ad unde perferendis et autem. Error consequatur similique at qui aut.', 1, '2023-07-27 02:05:02', '2023-08-03 07:06:30'),
(7, 'Bernita Botsford', 'obrekke@marvin.com', 'Impedit odio et ipsam inventore dolorem.', 'Inventore est sequi quas et. Quo recusandae doloribus repellat nulla quam repudiandae velit. Dolorum dolorum harum velit doloribus officia non est id. Dolores tempore eligendi odit ipsum.', 0, '2023-07-12 08:20:39', '2023-08-03 07:06:30'),
(8, 'Osborne Barrows', 'regan10@batz.info', 'Nihil perferendis nesciunt aut at ab libero.', 'Officia eligendi alias ipsam fuga omnis. Voluptatibus dolorem perspiciatis quos est itaque autem. Quis maiores nemo architecto laboriosam.', 0, '2023-07-26 22:53:48', '2023-08-03 07:06:30'),
(9, 'Alexa Oberbrunner', 'tbatz@macejkovic.com', 'Blanditiis doloribus non iure eius ut.', 'Quibusdam iure porro magnam recusandae et. Libero reiciendis cupiditate in.', 0, '2023-07-20 03:59:55', '2023-08-03 07:06:30'),
(10, 'Gage Blick I', 'dicki.jeanette@gutmann.com', 'Illum ut nulla deleniti odio possimus.', 'Sunt id itaque aliquam doloribus. Molestiae error quae nobis quis non ducimus praesentium rem. Perspiciatis dolorem natus ad quaerat ipsam nesciunt nulla.', 0, '2023-07-17 04:54:47', '2023-08-03 07:06:30'),
(11, 'Anita Bashirian', 'sschaden@yahoo.com', 'Voluptatem eos rerum id a deserunt ut.', 'Et corporis porro nesciunt ut nostrum nesciunt architecto. Et nesciunt explicabo quia sint qui tempora atque. Id sunt cumque rem vel dolorem est a.', 1, '2023-07-05 22:59:21', '2023-08-03 07:06:30'),
(12, 'Rhiannon Kautzer', 'dach.molly@hotmail.com', 'Reprehenderit consequatur itaque sint.', 'Cupiditate in illo aut perferendis corrupti quibusdam est. Odit qui veniam eum deserunt neque qui. Id est officia quae quis illum sed id. Deleniti dolorem vero illo earum necessitatibus fugit.', 1, '2023-07-07 06:35:08', '2023-08-03 07:06:30'),
(13, 'Shannon Lebsack', 'thompson.karlee@hotmail.com', 'Voluptas quo nostrum eligendi deleniti consectetur magnam.', 'Non voluptatem corporis consequatur voluptatem libero doloremque est commodi. Quibusdam nobis est nulla suscipit. Dicta deleniti numquam dolor repellat ut soluta sequi. Porro aspernatur est eos ea.', 1, '2023-07-29 18:27:57', '2023-08-03 07:06:30'),
(14, 'Joshua Donnelly', 'stark.leila@hermann.biz', 'Facilis ducimus nam ea iste qui distinctio.', 'Placeat iusto exercitationem assumenda laboriosam aliquam. Vel quia rerum beatae et dolor. Molestiae perspiciatis repellendus impedit molestias.', 0, '2023-07-11 11:50:43', '2023-08-03 07:06:30'),
(15, 'Lilla D\'Amore', 'reid52@gmail.com', 'Et eligendi qui nihil animi inventore placeat.', 'Porro ea quaerat nesciunt laudantium adipisci. Est alias ut voluptatem non aut fugiat saepe.', 0, '2023-07-10 06:16:45', '2023-08-03 07:06:30'),
(16, 'Rubye Schneider', 'kuphal.kirk@romaguera.org', 'Est explicabo dolorem eum adipisci nostrum accusantium quis.', 'Tempora ratione dolorum voluptatem eos voluptatem sint. Est sit sequi voluptatem esse laboriosam. Sint minus voluptatem quae officia quidem ut ut hic.', 1, '2023-07-12 16:46:09', '2023-08-03 07:06:30'),
(17, 'Rollin Bogisich', 'aurelie86@yahoo.com', 'Odit facere dolorem quis sequi optio.', 'Eius iure laudantium et recusandae velit. Velit laborum et et. Culpa molestiae odio recusandae eos qui est. Ullam repellendus dolorum rerum suscipit ab.', 1, '2023-07-19 00:04:47', '2023-08-03 07:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_16_170627_create_settings_table', 1),
(2, '2021_03_16_170856_create_admins_table', 1),
(3, '2021_03_16_172519_create_about_table', 1),
(4, '2021_03_17_064942_create_admin_password_resets_table', 1),
(5, '2021_04_06_071031_create_portfolio_configs_table', 1),
(6, '2021_04_11_160456_create_education_table', 1),
(7, '2021_04_12_120441_create_skills_table', 1),
(8, '2021_04_13_174019_create_experiences_table', 1),
(9, '2021_04_14_075437_create_projects_table', 1),
(10, '2021_04_14_113222_create_services_table', 1),
(11, '2021_04_15_213517_create_visitors_table', 1),
(12, '2021_04_16_104901_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_configs`
--

CREATE TABLE `portfolio_configs` (
  `id` bigint UNSIGNED NOT NULL,
  `setting_key` int NOT NULL,
  `setting_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_configs`
--

INSERT INTO `portfolio_configs` (`id`, `setting_key`, `setting_value`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'rigel', 'procyon', '2023-08-03 07:06:29', '2023-08-03 10:08:26'),
(2, 2, '#000000', '#1890ff', '2023-08-03 07:06:29', '2023-08-03 10:08:57'),
(3, 3, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(4, 4, '0', '0', '2023-08-03 07:06:29', '2023-08-03 10:09:56'),
(5, 5, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(6, 6, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(7, 7, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(8, 8, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(9, 9, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(10, 10, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(11, 11, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(12, 12, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(13, 19, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(14, 20, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(15, 13, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(16, 14, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(17, 15, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(18, 16, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(19, 17, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(20, 18, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `categories`, `thumbnail`, `images`, `details`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Demo Project 1', '[\"personal\"]', 'assets/common/img/projects/demo_project_1_1.png', '[\"assets\\/common\\/img\\/projects\\/demo_project_1_1.png\",\"assets\\/common\\/img\\/projects\\/demo_project_1_2.png\"]', 'Nihil omnis officia ullam dolorem. Eum qui occaecati sint corporis sed. Quibusdam sit praesentium quibusdam aut.', 'https://www.youtube.com', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'Demo Project 2', '[\"professional\"]', 'assets/common/img/projects/demo_project_2_1.png', '[\"assets\\/common\\/img\\/projects\\/demo_project_2_1.png\",\"assets\\/common\\/img\\/projects\\/demo_project_2_2.png\"]', 'Molestiae enim exercitationem vitae fugit eius provident facilis. Omnis nesciunt praesentium quis. Necessitatibus illo nobis odit nulla. Iste omnis saepe non aspernatur omnis sapiente non.', 'https://www.facebook.com', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 'Demo Project 3', '[\"personal\"]', 'assets/common/img/projects/demo_project_3_1.png', '[\"assets\\/common\\/img\\/projects\\/demo_project_3_1.png\",\"assets\\/common\\/img\\/projects\\/demo_project_3_2.png\"]', 'Est velit ut quo sed qui. Officiis reiciendis velit tempore dignissimos reiciendis. Nisi qui aliquid id odio neque aut.', 'https://www.linkedin.com', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(4, 'Test', '[\"personal\"]', 'assets/common/img/projects/1692158655_eLyZEGg7Gp.png', '[\"assets\\/common\\/img\\/projects\\/1692158655_BJMoMnK57M.png\"]', NULL, NULL, '2023-08-15 21:04:15', '2023-08-15 21:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'fas fa-code', 'Eligendi explicabo nisi totam quia. Nemo est eius nam exercitationem nesciunt qui libero.', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'UI/UX Design', 'fas fa-basketball-ball', 'Delectus ut sit et nobis. Rerum quod suscipit quia. Velit velit enim ipsa.', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 'Security', 'fas fa-shield-alt', 'Vel maiores quaerat in voluptatibus pariatur. Ipsum quas dolor nihil id. Aut sed quia ut impedit amet laborum sint. Quas dolore ut quod qui.', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `setting_key` int NOT NULL,
  `setting_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 2, '#1890ff', '#1890ff', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 3, '0', '0', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 7, 'mix', 'mix', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(4, 8, 'light', 'light', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(5, 9, 'light', 'light', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(6, 4, 'assets/common/img/logo/default.png', 'assets/common/img/logo/default.png', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(7, 5, 'assets/common/img/favicon/default.png', 'assets/common/img/favicon/default.png', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proficiency` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `proficiency`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 100, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'PHP', 100, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 'JavaScript', 95, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(4, 'React.js', 95, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(5, 'Vue.js', 90, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(6, 'jQuery', 90, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(7, 'MySQL', 90, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(8, 'CSS', 90, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(9, 'Node.js', 80, '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint UNSIGNED NOT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '1',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_desktop` tinyint(1) DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `tracking_id`, `is_new`, `ip`, `is_desktop`, `browser`, `platform`, `location`, `created_at`, `updated_at`) VALUES
(1, '5ohuT78QhpgXy09SZdGgPqVx97LRpB', 0, '195.3.28.203', 0, 'Edge', 'Windows', 'Slovakia (Slovak Republic)', '2023-07-03 07:26:37', '2023-08-03 07:06:29'),
(2, '75mzucpXjvysXX0dJZrIR45DtoyV01', 1, '78.116.203.95', 0, 'Chrome', 'Windows', 'Costa Rica', '2023-07-14 15:26:30', '2023-08-03 07:06:29'),
(3, 'tFzbdKrBX96U39PVjf9b10EtjGewZv', 0, '196.190.48.186', 1, 'Safari', 'iOS', 'Angola', '2023-07-08 17:56:40', '2023-08-03 07:06:29'),
(4, 'qLkGNMitypQlk7W3Kq4Lz3odyC5iMg', 0, '49.125.78.215', 1, 'Safari', 'iOS', 'Armenia', '2023-07-18 20:17:31', '2023-08-03 07:06:29'),
(5, 'IONAchn6LyqknZilTTgAuN11wmTeCa', 1, '245.81.17.221', 1, 'Opera', 'OS X', 'Gibraltar', '2023-07-20 17:56:24', '2023-08-03 07:06:29'),
(6, 'T3kRP59eQfTfhHFkHCMjQb9Kr5SBk9', 1, '134.2.26.153', 0, 'Safari', 'iOS', 'Seychelles', '2023-08-02 14:13:54', '2023-08-03 07:06:29'),
(7, 'aLhkyQq6XIqlzdKLMjicggwMxSUA0h', 0, '248.67.77.158', 0, 'Opera', 'Windows', 'Saint Barthelemy', '2023-07-14 03:43:25', '2023-08-03 07:06:29'),
(8, 'ZyME8EwX5nItMaOBINbQXluXVmzCXV', 1, '220.142.207.78', 1, 'Edge', 'iOS', 'Namibia', '2023-07-11 00:29:58', '2023-08-03 07:06:29'),
(9, 'SpQovP6pDwp7Yfs2n3SZS0AHs0YoP9', 1, '63.44.212.234', 1, 'Firefox', 'Windows', 'Lao People\'s Democratic Republic', '2023-07-18 19:47:22', '2023-08-03 07:06:29'),
(10, 'm9n2K6L0q0kFjn0fKL0mjIwsPcGvvL', 1, '172.224.92.50', 1, 'Edge', 'OS X', 'Guinea', '2023-08-01 11:51:12', '2023-08-03 07:06:29'),
(11, 'Tzj95qQsoSgoypTRHus0KOInjSdweL', 0, '23.17.201.206', 0, 'Chrome', 'iOS', 'Iraq', '2023-07-29 08:16:28', '2023-08-03 07:06:29'),
(12, 'tRg4fD2UciT0zHAPj5W2nvWi2cdkOo', 1, '57.68.78.173', 1, 'Opera', 'AndroidOS', 'El Salvador', '2023-07-07 13:34:55', '2023-08-03 07:06:29'),
(13, '2FVYtYnmu215A17r0dr40vRhe3kNI6', 1, '43.53.10.135', 1, 'Firefox', 'Windows', 'Netherlands Antilles', '2023-08-02 18:39:36', '2023-08-03 07:06:29'),
(14, 'Zv9YUzhozBWARm123mEbPOnRPsc8X7', 1, '178.200.157.182', 0, 'Edge', 'Windows', 'Gibraltar', '2023-07-12 17:02:00', '2023-08-03 07:06:29'),
(15, 'PqvK6YZelSZTb7qu5ixdE60oLRDyJ1', 1, '3.104.209.241', 1, 'Opera', 'OS X', 'Bulgaria', '2023-07-13 05:54:27', '2023-08-03 07:06:30'),
(16, 'H9FNJDBjEJTvOahaICyFffj1JvRtZA', 1, '85.156.211.165', 1, 'Chrome', 'Windows', 'Oman', '2023-08-01 05:55:32', '2023-08-03 07:06:30'),
(17, 'RLjZBGRbKexeZtMH5ynX7wawwBHR2v', 1, '198.206.252.60', 1, 'Chrome', 'OS X', 'Eritrea', '2023-07-20 07:12:19', '2023-08-03 07:06:30'),
(18, 'uBUqIMY8G8Ff4CduB58C5wB7be3Kbh', 1, '66.98.97.212', 0, 'Firefox', 'OS X', 'Nauru', '2023-07-28 22:47:40', '2023-08-03 07:06:30'),
(19, '5mrpmzrv2lQvSsKKtqMZbfUDzcSucP', 0, '161.5.137.84', 0, 'Firefox', 'OS X', 'Sao Tome and Principe', '2023-07-24 14:09:39', '2023-08-03 07:06:30'),
(20, 'BgJIKJH4Rkz2gYTbBDU0s7jjl3bInh', 1, '218.35.163.177', 1, 'Chrome', 'iOS', 'Trinidad and Tobago', '2023-08-01 05:41:26', '2023-08-03 07:06:30'),
(21, 'NirGWVdbA216HXhYQm21Wm8rPR2oYl', 0, '5.16.142.192', 1, 'Firefox', 'AndroidOS', 'Uganda', '2023-07-19 04:54:46', '2023-08-03 07:06:30'),
(22, 'TpxaBZCpqIOi8sGpFXdZEUKSFgmAzJ', 1, '172.108.23.233', 1, 'Chrome', 'AndroidOS', 'Papua New Guinea', '2023-07-24 07:41:34', '2023-08-03 07:06:30'),
(23, 'BaVUog2QCtlS1ke6UcIpq3gxQLagKr', 1, '236.80.20.133', 1, 'Opera', 'iOS', 'United States Virgin Islands', '2023-08-03 01:43:57', '2023-08-03 07:06:30'),
(24, 'ZQvKIkXHDHYSJQrCKhtgKOnVdrEqeB', 1, '144.213.92.226', 1, 'Chrome', 'Windows', 'Brunei Darussalam', '2023-07-07 06:00:15', '2023-08-03 07:06:30'),
(25, '1TlwosjBilp9oOF4q908PhsOu7uGrH', 1, '213.17.62.168', 1, 'Edge', 'AndroidOS', 'Turkey', '2023-07-09 16:31:31', '2023-08-03 07:06:30'),
(26, '00CQ6JvUc65KaRxpbgT9OULdUfAqgr', 1, '192.129.255.119', 0, 'Opera', 'iOS', 'Kuwait', '2023-07-15 08:34:30', '2023-08-03 07:06:30'),
(27, '3rtGPYkfrPvqMjeK9jSjXJPBXCvcba', 0, '240.220.177.15', 0, 'Opera', 'iOS', 'United States of America', '2023-07-17 13:13:34', '2023-08-03 07:06:30'),
(28, 'D5IougMO8jhswymHOCgYdbKrVSliCO', 0, '32.168.195.250', 1, 'Opera', 'Windows', 'Greenland', '2023-07-11 04:24:41', '2023-08-03 07:06:30'),
(29, '3sccJvY2cUl2RlfKc9FZL5p57nSTHW', 1, '169.115.175.93', 1, 'Opera', 'AndroidOS', 'Saint Kitts and Nevis', '2023-08-02 03:43:34', '2023-08-03 07:06:30'),
(30, 'gDXVg05HEzwcpyYmHOH0gOo4NhY6tr', 1, '94.157.7.142', 1, 'Safari', 'AndroidOS', 'Brazil', '2023-07-19 17:01:50', '2023-08-03 07:06:30'),
(31, '6ayWf9Az28gtmFKYiYfck7HfLGpBBc', 0, '128.180.98.33', 1, 'Chrome', 'iOS', 'Morocco', '2023-07-31 18:45:42', '2023-08-03 07:06:30'),
(32, 'qgC78MBLZNow6VoHems5bNVo2ssZci', 1, '170.254.149.151', 1, 'Opera', 'iOS', 'Cape Verde', '2023-07-16 14:43:12', '2023-08-03 07:06:30'),
(33, 'nbRNPYQV1D6YF44q6jViDNMNSAnU8O', 0, '60.253.68.232', 1, 'Chrome', 'iOS', 'Netherlands Antilles', '2023-07-04 17:11:54', '2023-08-03 07:06:30'),
(34, 'eB9vlQdZ9yp5tFWrJeIUEKQ6vDAJIU', 1, '71.80.179.135', 1, 'Chrome', 'AndroidOS', 'Denmark', '2023-07-15 21:52:10', '2023-08-03 07:06:30'),
(35, 'N3WRlAHbhSmuqF6jzMKojgt3TKd2gx', 0, '218.22.137.114', 1, 'Safari', 'OS X', 'Bermuda', '2023-07-24 22:13:10', '2023-08-03 07:06:30'),
(36, '20lKZXEbA18OhkiwXmGgUUkBwMfjRM', 1, '32.203.178.149', 1, 'Safari', 'AndroidOS', 'Grenada', '2023-07-25 21:26:43', '2023-08-03 07:06:30'),
(37, 'RwOLGt9cmDQm52liFrA48ZPJjsO827', 1, '196.208.13.159', 1, 'Opera', 'iOS', 'Haiti', '2023-07-14 23:19:28', '2023-08-03 07:06:30'),
(38, 'lJrfN9XcvDII2XhDOom0G3K9WRhVrv', 1, '19.220.235.8', 1, 'Chrome', 'iOS', 'San Marino', '2023-07-31 00:36:34', '2023-08-03 07:06:30'),
(39, 'jyhgSgI0bzy0DNNr901cfH8zRs5laW', 0, '199.149.83.151', 0, 'Edge', 'OS X', 'New Caledonia', '2023-07-23 01:24:52', '2023-08-03 07:06:30'),
(40, 'OFQWir9eXFc6zLPtx2jPwXKJdXK0zG', 1, '244.25.118.241', 1, 'Edge', 'iOS', 'Falkland Islands (Malvinas)', '2023-07-27 13:02:38', '2023-08-03 07:06:30'),
(41, 'CMfWBDvECDoPq25TfNneaS1xodXoLU', 0, '5.45.153.252', 0, 'Firefox', 'iOS', 'Reunion', '2023-07-15 08:13:05', '2023-08-03 07:06:30'),
(42, 'ARDXC07OPH3ZUFeD3mLyHnoxTRRL92', 1, '243.89.181.122', 0, 'Chrome', 'iOS', 'Lao People\'s Democratic Republic', '2023-07-28 14:43:58', '2023-08-03 07:06:30'),
(43, 'd84p14uzZxgAW9Q0kMBZmPiIRu6cMo', 1, '43.57.87.114', 0, 'Opera', 'OS X', 'Central African Republic', '2023-07-09 07:26:18', '2023-08-03 07:06:30'),
(44, 'OFKD0FdusIg7Hn3B7NobUatTTNHnin', 1, '128.108.2.154', 0, 'Opera', 'OS X', 'Myanmar', '2023-07-19 19:24:09', '2023-08-03 07:06:30'),
(45, 'jRstC2TYvYAx9iAix3gGYyEwdqYXpe', 0, '221.40.192.218', 1, 'Chrome', 'Windows', 'Trinidad and Tobago', '2023-07-06 22:03:56', '2023-08-03 07:06:30'),
(46, 'KBY4ID9d6w90fJ23GoDwCDyVHfr1bR', 1, '139.254.56.86', 1, 'Chrome', 'OS X', 'Timor-Leste', '2023-07-18 09:36:54', '2023-08-03 07:06:30'),
(47, 'KR9SgYiyXlat2xlucbURjhJLt3uNsc', 0, '172.136.69.64', 1, 'Firefox', 'OS X', 'Kiribati', '2023-07-25 04:13:46', '2023-08-03 07:06:30'),
(48, 'iuP8lWud4i7NNJ7xmXGaYomzaiRoJR', 1, '145.177.99.135', 1, 'Safari', 'OS X', 'Christmas Island', '2023-07-31 18:10:42', '2023-08-03 07:06:30'),
(49, 'TEsu0WNM99b7rbccEWSWtO8QsuTiKM', 0, '199.108.40.184', 1, 'Firefox', 'AndroidOS', 'Chile', '2023-07-19 10:35:44', '2023-08-03 07:06:30'),
(50, 'stk3DdpOeu4aHU4NDrnM8DiIR04Qav', 1, '12.82.239.91', 1, 'Opera', 'iOS', 'Guadeloupe', '2023-07-05 09:05:10', '2023-08-03 07:06:30'),
(51, 'Ig4L3zcwkVeximmiCZv5tf64WU67Av', 1, '206.64.94.142', 0, 'Firefox', 'iOS', 'Romania', '2023-07-17 15:25:22', '2023-08-03 07:06:30'),
(52, 'fw7fGLxmxFKrchuksPv4ulvPiZ3EhH', 0, '222.11.93.206', 0, 'Safari', 'iOS', 'Macao', '2023-07-12 23:58:41', '2023-08-03 07:06:30'),
(53, 'YxUSM3JcWPjOdKSNmuF7a9pFf419Kd', 0, '57.139.248.197', 1, 'Edge', 'iOS', 'Tuvalu', '2023-07-19 05:16:33', '2023-08-03 07:06:30'),
(54, 'AImxBFGiOBHSEFNAQnyb9c0sbC15qN', 0, '105.152.210.81', 1, 'Opera', 'Windows', 'Macao', '2023-07-19 18:37:28', '2023-08-03 07:06:30'),
(55, 'lbfD0Fn4WnsucpOloiagmMvbeYTuO7', 0, '70.6.63.87', 1, 'Firefox', 'AndroidOS', 'Papua New Guinea', '2023-07-09 21:43:37', '2023-08-03 07:06:30'),
(56, '0CI4gsUoobVe960nK2o3M0T8jV8vOK', 1, '97.115.230.0', 1, 'Firefox', 'iOS', 'Liberia', '2023-07-30 14:00:52', '2023-08-03 07:06:30'),
(57, 'LjrMQShz7hsEicpPsnyUp8dUv3Nqgt', 0, '190.215.71.178', 0, 'Safari', 'iOS', 'Chad', '2023-07-16 14:15:32', '2023-08-03 07:06:30'),
(58, 'kGnxbAb1rXab3F2aH4AbrjcHvkDnV5', 0, '71.86.162.242', 1, 'Chrome', 'Windows', 'Slovakia (Slovak Republic)', '2023-07-11 17:43:50', '2023-08-03 07:06:30'),
(59, 'hd7VUCBvnI77j4IlcioVYW5e6L3CCf', 1, '81.68.123.24', 1, 'Opera', 'OS X', 'French Guiana', '2023-07-18 15:37:29', '2023-08-03 07:06:30'),
(60, 'ZUGxQosSc0MrxFYwV9hhQVk2Z2Cyyr', 0, '89.90.5.84', 1, 'Opera', 'iOS', 'Philippines', '2023-07-12 08:48:08', '2023-08-03 07:06:30'),
(61, '1xv2xG8aVtIjzp5s0mDCsQGlCi3SmB', 0, '32.132.225.15', 1, 'Chrome', 'OS X', 'Haiti', '2023-07-21 04:29:04', '2023-08-03 07:06:30'),
(62, 'm89ioCsfoKrjuzpbuQeo41HIdqVszm', 1, '255.90.151.113', 0, 'Edge', 'AndroidOS', 'Cote d\'Ivoire', '2023-07-13 17:59:37', '2023-08-03 07:06:30'),
(63, 'ClqZMz2lWQhGWUSNUaFApVJBH6dIOD', 0, '55.24.225.226', 1, 'Chrome', 'OS X', 'Dominican Republic', '2023-07-05 10:16:51', '2023-08-03 07:06:30'),
(64, 'BrAWSVaepyOSZVeBvXhmwhg0X9N5kf', 1, '70.235.165.87', 0, 'Safari', 'AndroidOS', 'Faroe Islands', '2023-08-03 06:29:16', '2023-08-03 07:06:30'),
(65, 'mdoWSh6bO53sS6UWaoqm3by2vA7Wdd', 1, '28.225.64.247', 0, 'Chrome', 'Windows', 'United States Minor Outlying Islands', '2023-08-03 04:06:30', '2023-08-03 07:06:30'),
(66, 'v7ikkXZmLSwwgWHLGP5ugghyb4bNk6', 1, '173.226.121.240', 1, 'Safari', 'iOS', 'Somalia', '2023-08-02 05:44:04', '2023-08-03 07:06:30'),
(67, '6sVFB2Ol1gMiwC5qkjamEa7Lzy3HCI', 1, '209.39.24.239', 1, 'Safari', 'Windows', 'Philippines', '2023-07-30 16:12:33', '2023-08-03 07:06:30'),
(68, 'IAt3Uz1ihPzKXb7b4QRMfXNReUprSP', 1, '236.51.68.64', 1, 'Edge', 'OS X', 'Malta', '2023-07-07 15:58:09', '2023-08-03 07:06:30'),
(69, 'bS8K2kvIK1dEfOGD1RkcOi8JOIMw7i', 0, '166.197.106.3', 0, 'Edge', 'Windows', 'Angola', '2023-07-09 21:42:25', '2023-08-03 07:06:30'),
(70, 'PMO3ku09y591388NqpS5pmomDE2O3J', 1, '176.43.80.210', 0, 'Edge', 'iOS', 'Northern Mariana Islands', '2023-07-16 18:53:33', '2023-08-03 07:06:30'),
(71, 'MfXawXpanEWE3DjUSFaAyWJZ6RsFud', 0, '156.37.7.249', 1, 'Firefox', 'Windows', 'Namibia', '2023-08-02 02:02:24', '2023-08-03 07:06:30'),
(72, 'xwaW8ZdRbWZaAit5eYNIkbW4Zu9260', 0, '44.134.67.105', 0, 'Safari', 'OS X', 'Paraguay', '2023-07-24 12:20:17', '2023-08-03 07:06:30'),
(73, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 1, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 07:14:08', '2023-08-03 07:14:08'),
(74, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 07:35:49', '2023-08-03 07:35:49'),
(75, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 07:51:54', '2023-08-03 07:51:54'),
(76, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 08:17:08', '2023-08-03 08:17:08'),
(77, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 08:18:30', '2023-08-03 08:18:30'),
(78, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:08:40', '2023-08-03 10:08:40'),
(79, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:09:04', '2023-08-03 10:09:04'),
(80, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:10:02', '2023-08-03 10:10:02'),
(81, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:26:49', '2023-08-03 10:26:49'),
(82, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:30:00', '2023-08-03 10:30:00'),
(83, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 20:11:05', '2023-08-03 20:11:05'),
(84, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-13 20:43:29', '2023-08-13 20:43:29'),
(85, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-13 20:44:45', '2023-08-13 20:44:45'),
(86, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-15 21:02:22', '2023-08-15 21:02:22'),
(87, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-15 21:04:29', '2023-08-15 21:04:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_configs`
--
ALTER TABLE `portfolio_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `portfolio_configs`
--
ALTER TABLE `portfolio_configs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
