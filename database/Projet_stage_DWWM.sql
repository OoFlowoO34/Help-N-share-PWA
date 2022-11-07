-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 07 nov. 2022 à 12:34
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Projet_stage_DWWM`
--

-- --------------------------------------------------------

--
-- Structure de la table `demand`
--

CREATE TABLE `demand` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `demand`
--

INSERT INTO `demand` (`id`, `user_id`, `title`, `text`, `photo`, `date_created`, `date_modified`, `deleted`) VALUES
(305, 309, 'Est consequatur a molestiae.', 'Facere aut quia rerum ipsum ea omnis. Earum ipsum excepturi mollitia et quia officia. Molestiae sit nesciunt illo est eos dolores voluptates. Expedita quo cum sint est repellendus qui similique.', 'fixture_photo_3.jpg', '2022-05-24 15:50:17', '2022-09-20 08:35:27', 0),
(306, 318, 'Inventore suscipit est.', 'Omnis aspernatur et sit vero harum et. Atque qui vitae consequatur nemo fuga. Beatae esse ullam nulla nihil. Omnis error molestiae eos aut porro corporis.', 'fixture_photo_2.jpg', '2022-10-12 23:28:00', NULL, 1),
(307, 304, 'Laborum dolorem fugiat.', 'Architecto id adipisci qui perspiciatis vero. Velit laboriosam repellat ut voluptatum aut asperiores aut. Quidem ut est recusandae dolorem aperiam aut debitis. Qui in dolor sequi sit et debitis.', 'fixture_photo_1.jpg', '2022-06-09 06:17:55', '2022-09-16 01:05:52', 0),
(308, 301, 'Animi quo unde dignissimos.', 'Quae quia quaerat totam velit error. Aliquam deserunt non eos sed. Reiciendis iusto accusamus autem sunt aperiam. Ut voluptas nostrum iusto.', 'fixture_photo_2.jpg', '2021-12-18 10:16:04', '2022-08-15 06:48:19', 0),
(309, 310, 'Dicta voluptate est quis.', 'Sit consequatur optio consectetur tempora sed nam. Tenetur qui sed rem id numquam officiis. Nihil dolores nulla porro nobis exercitationem non ad neque.', 'fixture_photo_1.jpg', '2022-06-15 02:07:02', '2022-08-07 23:33:32', 1),
(310, 313, 'Facilis quam natus sed.', 'Dolore voluptas quisquam numquam laudantium qui. Exercitationem accusamus rerum iste dolores officiis tempora aut.', 'fixture_photo_3.jpg', '2022-09-13 12:43:36', NULL, 0),
(311, 317, 'Est praesentium libero.', 'Exercitationem facere commodi voluptatem vel. Quo nesciunt voluptatem dolore est. Corrupti quia sit nesciunt quia.', 'fixture_photo_5.jpg', '2022-06-28 17:42:32', '2022-10-12 15:02:55', 1),
(312, 318, 'Vel sint dolores.', 'Et nihil hic sit magnam dolore nam. Ut eos quibusdam quia error unde. Laboriosam est animi repudiandae est voluptatem. Quia aut sit voluptatem atque et doloremque.', 'fixture_photo_1.jpg', '2022-02-05 09:39:45', '2022-10-30 14:12:49', 0),
(313, 301, 'Ea vero est dolor.', 'Praesentium quibusdam similique magnam sed fugit. Quidem laboriosam occaecati facilis commodi voluptas. Nisi aut labore quia tenetur.', 'fixture_photo_2.jpg', '2022-08-21 10:10:45', NULL, 1),
(314, 307, 'Praesentium est fugit enim.', 'Earum ratione unde eius voluptatem voluptatem voluptatem dolores aut. Quod est laboriosam eligendi sed nobis ut est placeat.', 'fixture_photo_6.jpg', '2022-04-28 04:47:01', '2022-10-21 18:52:11', 0),
(315, 306, 'Et ut vel voluptas.', 'Eveniet sint sint nihil et explicabo. Et doloremque consequatur odit qui voluptatem nihil eum. Quam voluptatem aliquid quas illo.', 'fixture_photo_6.jpg', '2022-05-29 22:45:35', NULL, 0),
(316, 315, 'Et praesentium maiores.', 'Commodi tempore quis iusto. Reprehenderit soluta exercitationem ut fuga debitis quia. Repudiandae excepturi quae sequi natus voluptatem ipsum a quasi. Hic tenetur animi et labore omnis veritatis.', 'fixture_photo_1.jpg', '2022-08-01 13:12:59', NULL, 0),
(317, 312, 'Veniam non aut.', 'Officia nam cumque qui qui voluptas quae. Autem dolorem suscipit ut rem nostrum. Ut voluptatem totam sequi dolores eum est a.', 'fixture_photo_6.jpg', '2022-07-06 18:52:31', NULL, 1),
(318, 320, 'Nulla nam maiores ad.', 'Facere impedit in molestias at. Quo non sint explicabo debitis repellat vel. Occaecati natus dolore voluptas dolor quidem et nulla ratione. Enim non voluptatibus et quae cupiditate quia architecto.', 'fixture_photo_3.jpg', '2022-08-11 23:17:04', NULL, 0),
(319, 318, 'Error et saepe est.', 'Quos quod perferendis sint dolor unde ut est. Porro delectus sunt ad omnis consectetur rerum optio. Eveniet aspernatur illo sit ut corporis. Eos repellat consequatur consequatur nostrum.', 'fixture_photo_2.jpg', '2022-10-06 07:31:39', NULL, 0),
(320, 301, 'Reprehenderit et dolores nulla.', 'Est possimus autem deleniti est aut recusandae eum. Accusamus dolores voluptatem alias est eum. Sit repellat et quisquam quas.', 'fixture_photo_2.jpg', '2022-03-05 23:15:56', '2022-09-05 16:45:58', 0),
(321, 314, 'Veniam ratione labore unde.', 'Est velit consectetur et itaque. Molestias ex hic modi aut ratione ea quo. Quas doloribus repudiandae omnis ex consequatur minus sint.', 'fixture_photo_1.jpg', '2022-10-09 23:12:54', NULL, 0),
(322, 310, 'Laudantium eos similique.', 'Sit deserunt quis ipsa sed iusto quisquam et. Et possimus natus et voluptatibus. Rerum veniam aut optio dignissimos eos. Earum eum nisi numquam quos ducimus expedita iusto.', 'fixture_photo_3.jpg', '2022-02-12 19:29:15', '2022-07-31 22:51:13', 0),
(323, 315, 'Qui recusandae dolorum qui.', 'Fugiat ut facere sint earum consequatur. Ab quia et eius necessitatibus rerum cum. Hic et sit id dolores dolor consequatur.', 'fixture_photo_6.jpg', '2022-07-05 06:28:12', NULL, 0),
(324, 313, 'Praesentium sapiente dolore.', 'Dignissimos autem vel debitis ut. Aut perferendis distinctio incidunt commodi quae. Et repellat dolor est iste omnis.', 'fixture_photo_3.jpg', '2022-06-26 00:21:18', NULL, 0),
(325, 321, 'azefazef', 'azefazef', NULL, '2022-11-02 21:08:59', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `demand_relation`
--

CREATE TABLE `demand_relation` (
  `id` int(11) NOT NULL,
  `demand_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `demand_relation`
--

INSERT INTO `demand_relation` (`id`, `demand_id`, `user_id`) VALUES
(61, 305, 321),
(62, 305, 304),
(63, 307, 321);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221006104824', '2022-10-12 08:24:56', 170),
('DoctrineMigrations\\Version20221006123047', '2022-10-12 08:24:56', 46),
('DoctrineMigrations\\Version20221006123219', '2022-10-12 08:24:56', 37),
('DoctrineMigrations\\Version20221011140350', '2022-10-12 08:24:56', 26),
('DoctrineMigrations\\Version20221013082158', '2022-10-13 08:22:10', 82),
('DoctrineMigrations\\Version20221013161743', '2022-10-13 16:18:04', 87),
('DoctrineMigrations\\Version20221019075130', '2022-10-19 07:51:53', 192),
('DoctrineMigrations\\Version20221102220700', '2022-11-02 22:07:07', 234),
('DoctrineMigrations\\Version20221102221233', '2022-11-02 22:12:52', 116);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `demand_relation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `user_id`, `text`, `demand_relation_id`) VALUES
(9, 321, 'Florian à Marthe', 61),
(10, 309, 'Marthe à Florian', 61),
(11, 321, 'Florian à Marthe 2eme message ', 61),
(12, 309, 'Marthe à Florian 2 eme message', 61),
(13, 309, 'marthe à florian 3', 61),
(14, 304, 'Elise à Marthe', 62),
(15, 321, 'Florian à Marthe', 61),
(16, 321, 'Florian à Elise', 63);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(1, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:17:\\\"hello@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-10-16 12:40:29', '2022-10-16 12:40:29', NULL),
(2, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:17:\\\"hello@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-10-16 12:49:24', '2022-10-16 12:49:24', NULL),
(3, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:28:\\\"Symfony\\\\Component\\\\Mime\\\\Email\\\":6:{i:0;s:28:\\\"Sending emails is fun again!\\\";i:1;s:5:\\\"utf-8\\\";i:2;s:56:\\\"<p>See Twig integration for better HTML integration!</p>\\\";i:3;s:5:\\\"utf-8\\\";i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:17:\\\"hello@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"you@example.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:24:\\\"Time for Symfony Mailer!\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'default', '2022-10-16 13:30:31', '2022-10-16 13:30:31', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `proposal`
--

CREATE TABLE `proposal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `proposal`
--

INSERT INTO `proposal` (`id`, `user_id`, `title`, `text`, `photo`, `date_created`, `date_modified`, `deleted`) VALUES
(245, 315, 'Corrupti sequi culpa.', 'Architecto ut consequatur aut et. Reiciendis molestiae quasi occaecati. Qui pariatur molestiae ut voluptatem. Ipsam illum placeat ut eius.', 'https://via.placeholder.com/100x100.png/00bb22?text=photo+est', '2022-10-03 03:05:20', NULL, 1),
(246, 310, 'Possimus reiciendis aut.', 'Voluptatum qui architecto laborum explicabo nisi. Quis et earum atque sit aut. Dolores voluptates asperiores repellat aut est autem ea.', 'https://via.placeholder.com/100x100.png/00ffee?text=photo+asperiores', '2022-10-17 06:12:11', NULL, 0),
(247, 310, 'Neque quod.', 'Magni dolor non dolores nihil ut et. Adipisci veniam nam nostrum quia et neque expedita. Totam aut voluptatum commodi velit qui.', 'https://via.placeholder.com/100x100.png/005511?text=photo+non', '2022-09-16 22:54:47', NULL, 0),
(248, 305, 'Neque voluptatem voluptates.', 'Enim sunt debitis beatae voluptas. Hic quos blanditiis exercitationem maiores aut. Ea aliquam laborum illo. Nesciunt dolores molestiae nihil. Commodi illo quas et et eius ullam.', 'https://via.placeholder.com/100x100.png/00cccc?text=photo+nihil', '2022-05-30 20:46:10', '2022-09-28 15:21:48', 1),
(249, 309, 'Est est ut.', 'Temporibus sint qui quo ut iure architecto esse. Qui deleniti molestiae ex distinctio exercitationem pariatur architecto. Maiores ea illum iste iure.', 'https://via.placeholder.com/100x100.png/00cc33?text=photo+quos', '2022-10-17 21:03:52', NULL, 1),
(250, 313, 'Quidem sint et.', 'Eveniet cupiditate iure atque quia voluptas voluptatem. Praesentium ut sint in sed nihil delectus cumque. Voluptas unde sed totam inventore at temporibus magni. Veritatis totam beatae quia.', 'https://via.placeholder.com/100x100.png/006600?text=photo+pariatur', '2022-10-25 10:58:17', NULL, 1),
(251, 310, 'Rerum sit omnis.', 'Deleniti quia blanditiis velit iusto natus consequuntur. Ut error nulla accusamus animi.', 'https://via.placeholder.com/100x100.png/00aa88?text=photo+hic', '2022-09-23 17:33:00', '2022-10-30 03:10:37', 0),
(252, 316, 'Iste voluptas rem.', 'Non et non repellat voluptatibus. Ea quisquam optio est rerum maxime velit ut. Reprehenderit veritatis qui delectus minima magni praesentium.', 'https://via.placeholder.com/100x100.png/00bb77?text=photo+quis', '2022-03-28 18:58:43', '2022-10-30 22:41:46', 0),
(253, 304, 'Quod sed voluptas facilis.', 'Animi aperiam minima id. Mollitia qui aut quos illo. Veritatis saepe cum aut unde modi.', 'https://via.placeholder.com/100x100.png/006666?text=photo+quis', '2022-04-14 01:44:37', '2022-07-02 11:35:28', 0),
(254, 306, 'Possimus modi dolorem.', 'Itaque ut placeat voluptas suscipit labore assumenda illo. Et officiis vel non exercitationem quis temporibus. Ducimus quia velit recusandae voluptatibus.', 'https://via.placeholder.com/100x100.png/000022?text=photo+et', '2022-08-06 09:28:56', NULL, 1),
(255, 312, 'Voluptate corporis eum.', 'Dolores harum voluptatibus consequatur architecto ut. Sit nostrum omnis molestiae molestiae dolor sapiente distinctio. Qui eum dolorem et est tempore et.', 'https://via.placeholder.com/100x100.png/00bb00?text=photo+maxime', '2022-07-23 06:25:36', NULL, 0),
(256, 312, 'Omnis est id unde.', 'Dicta molestiae ut et et et dolorem porro. Adipisci maiores voluptatum tempora consequatur molestias doloribus. Aut corporis ducimus tempora esse rem excepturi. Modi sed doloribus facere expedita.', 'https://via.placeholder.com/100x100.png/00aa33?text=photo+nostrum', '2021-11-29 09:48:44', '2022-04-09 07:19:03', 0),
(257, 308, 'Voluptatem eum eum odio.', 'Voluptas qui sint quo cum omnis harum nemo. Quisquam est excepturi sed esse. Aliquid suscipit consequatur illum nihil cum ut non.', 'https://via.placeholder.com/100x100.png/002244?text=photo+laudantium', '2022-08-25 03:43:14', NULL, 0),
(258, 308, 'Doloribus dolorem delectus sed.', 'Aliquam nihil praesentium sapiente aut fuga magnam commodi. Architecto eum ut atque rerum molestiae. Dolores sed soluta minima dolorem sequi ipsum.', 'https://via.placeholder.com/100x100.png/00ee88?text=photo+et', '2022-08-15 15:35:36', NULL, 1),
(259, 304, 'Nobis porro officia sed et.', 'Aspernatur fugiat non iure voluptas fuga sint. Possimus optio sunt quis similique odio. Dolorem quis et iste exercitationem.', 'https://via.placeholder.com/100x100.png/004499?text=photo+vitae', '2022-07-31 19:48:47', '2022-10-17 07:41:46', 0),
(260, 316, 'Est consectetur blanditiis.', 'Voluptatibus possimus voluptate quod voluptatem dicta nulla. Fuga iste tenetur sit odio et repellat sed. Ut qui corporis sequi nihil nobis.', 'https://via.placeholder.com/100x100.png/00dd44?text=photo+cum', '2022-04-11 14:10:25', '2022-10-13 20:18:34', 0),
(261, 303, 'Nesciunt sed vitae.', 'Ut at voluptas eaque repellendus provident et dolores dolore. Consectetur et commodi fugit ut ipsa incidunt molestias cupiditate. Harum fugit velit eligendi ipsum.', 'https://via.placeholder.com/100x100.png/00cc00?text=photo+eligendi', '2022-06-23 07:46:42', NULL, 1),
(262, 306, 'Dolor perferendis.', 'Expedita et quibusdam fugiat aperiam atque libero. Consequatur qui nostrum molestiae facere qui. Perferendis exercitationem enim sapiente.', 'https://via.placeholder.com/100x100.png/00ff66?text=photo+nam', '2022-02-17 01:20:28', '2022-08-22 20:58:02', 1),
(263, 319, 'Necessitatibus saepe sed rerum.', 'Aspernatur optio ipsa et enim harum similique enim at. Ab sed iusto optio eligendi doloremque quia. Dolorem saepe mollitia molestiae laboriosam. Quas ullam voluptatem ipsum dolorem vel dolores.', 'https://via.placeholder.com/100x100.png/009988?text=photo+in', '2022-02-03 07:46:20', '2022-06-07 19:40:32', 1),
(264, 307, 'Dolor dolor consequatur.', 'Excepturi nihil voluptate sit qui suscipit repellat dolore. Quasi eos sunt fuga nobis et et architecto. Similique delectus aut est ad voluptatem deleniti.', 'https://via.placeholder.com/100x100.png/00ff55?text=photo+sunt', '2022-10-26 20:06:25', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `pseudo`, `location`, `photo`, `is_verified`) VALUES
(301, 'emilie.lacroix@seguin.com', '[]', '$2y$13$yDmnyTpOnZPn4ykoycZt2uhJRsFo8Z.VnymHpHsgfcBIQK64uMu7e', 'Roland', 'La Réunion', '', 1),
(302, 'jourdan.andre@live.com', '[]', '$2y$13$SJWJ4E.gp23rAhWfzbuzXukDm3iBaBzmMe2yg0FojgSYTmi.4pA0C', 'Catherine', 'Creuse', '', 1),
(303, 'constance83@traore.com', '[]', '$2y$13$9T3M8MhSEOmj8ltcpdt.cuyqn9nf.bh12fPZo1CBN3aj9bpdULJuq', 'Simone', 'Haute-Garonne', 'fixture_photo_profile_11.jpg', 0),
(304, 'dominique73@benard.fr', '[]', '$2y$13$nYA9Weqd7XrwL2SjXPk8DeJESFc7kinuok35DxHBe.s1q05X94rb2', 'Élise', 'Haute-Saône', 'fixture_photo_profile_7.jpg', 1),
(305, 'roche.philippine@huet.com', '[]', '$2y$13$guQYNTtohx1fbd3KMSuaLuF4kjOyyCj4DldDU7IO5/3wlYFb.D8Pi', 'Aimée', 'La Réunion', 'fixture_photo_profile_12.jpg', 0),
(306, 'aurore29@free.fr', '[]', '$2y$13$ndq5vXmPV9Po0I7GEzpwo.cPgH.d73gEyTqtZ.PTAEf6ApS8khNfm', 'Augustin', 'Marne', 'fixture_photo_profile_12.jpg', 0),
(307, 'marc05@dbmail.com', '[]', '$2y$13$MuoHklTha26sQxK61z2kDuFTtMQ8LaP/2ah9x4hnSdsoSpyCyfACm', 'Célina', 'Aveyron', 'fixture_photo_profile_14.jpg', 0),
(308, 'amelie93@gmail.com', '[]', '$2y$13$ywTF4RoTOOUsGWt6NwhWDOZPqBSyDC8yqBUYvW9u7C5fF9zV8rZLq', 'Thomas', 'Guyane', 'fixture_photo_profile_10.jpg', 0),
(309, 'vnicolas@gmail.com', '[]', '$2y$13$HOi7Nuqes9DbIPYOUAo2jOKdFSp4KLmhKGJxvC8SGyJr7zweD/28.', 'Marthe', 'Haute-Saône', 'fixture_photo_profile_10.jpg', 1),
(310, 'hortense.riou@noos.fr', '[]', '$2y$13$3J1ihWb18VFG2CCS5rreNOTYMDVoqfT2aII/JK8HEEIVXifoQHZXO', 'Claude', 'Meuse', '', 0),
(311, 'helene96@live.com', '[]', '$2y$13$KQCugYYG32OYboyOgtiYP.khTaYUb4UtWtqYxWUJX5RoS9WWhF.A.', 'Martine', 'Tarn-et-Garonne', 'fixture_photo_profile_12.jpg', 0),
(312, 'guy65@sfr.fr', '[]', '$2y$13$p6Xd5iJOv88rVGkZRfl.u.JDBwxbDxtZsm.WI8Quv.txsQChAi1DO', 'William', 'Ariège', 'fixture_photo_profile_8.jpg', 0),
(313, 'emmanuel36@peron.fr', '[]', '$2y$13$uFTFIJmvevi0WVjDK4sE0O8KNMbiaJWqAxr3lCdt6ls44HeL6Z2kS', 'Astrid', 'Creuse', 'fixture_photo_profile_12.jpg', 0),
(314, 'guillet.benjamin@guibert.fr', '[]', '$2y$13$ZwSLt7j2mRMAePyXkf62Ce5YXjdYXds6d24ttd.F76C2GXqcjxfYK', 'Jacques', 'Pas-de-Calais', 'fixture_photo_profile_6.jpg', 0),
(315, 'mallet.alice@salmon.net', '[]', '$2y$13$G2rHyePO/4IZaM1LUQsUpuVzXe4UM3qg3B7Jacxha0d0VqyI/nlTO', 'Élisabeth', 'Haute-Savoie', '', 0),
(316, 'pbernard@tele2.fr', '[]', '$2y$13$GCH.ew5wjThMZLxReJJxg.plgKypVe7I0eGHagBq26FUy5j8VUZFG', 'Charles', 'Doubs', 'fixture_photo_profile_8.jpg', 0),
(317, 'lregnier@mallet.org', '[]', '$2y$13$/CmhVzfBhiWKQlEW7/wMx.WJCwzdxvot1hd62YZpnKoFkyBwFgOBu', 'Olivier', 'Cantal', 'fixture_photo_profile_14.jpg', 0),
(318, 'blanchet.alexandrie@brunet.com', '[]', '$2y$13$P/C2pcXgRozWTrIlzVSAV.Doz4G/7.8OjeQoVZJ8/j.PGOALisw3C', 'Théodore', 'Pas-de-Calais', 'fixture_photo_profile_12.jpg', 0),
(319, 'hortense81@leroy.fr', '[]', '$2y$13$pl/m7bA.BrP2DiaFCVfHOOghE2nBpNVEXhAS/iAal9O1HXS3YuNzK', 'Brigitte', 'Deux-Sèvres', 'fixture_photo_profile_11.jpg', 0),
(320, 'bernier.remy@lebreton.com', '[]', '$2y$13$FRW0bVWc5lHs7C4FJUVEteVx/rHlsnklsAMqI.u5TwWyff7yEQRYu', 'Anaïs', 'Ariège', '', 0),
(321, 'Florian.batt@hotmail.fr', '[]', '$2y$13$iB6HoYlx4koBCkS3NgERM./1ujauHKmAPwp0X1kX1dkX0H6iZaqpe', 'Florian', 'Clapiers', 'fixture-photo-profile-12-6362d0840a6ac.jpg', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `demand`
--
ALTER TABLE `demand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_428D7973A76ED395` (`user_id`);

--
-- Index pour la table `demand_relation`
--
ALTER TABLE `demand_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9D2957D75D022E59` (`demand_id`),
  ADD KEY `IDX_9D2957D7A76ED395` (`user_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6BD307FA76ED395` (`user_id`),
  ADD KEY `IDX_B6BD307F59CFB5E7` (`demand_relation_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `proposal`
--
ALTER TABLE `proposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BFE59472A76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `demand`
--
ALTER TABLE `demand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT pour la table `demand_relation`
--
ALTER TABLE `demand_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `proposal`
--
ALTER TABLE `proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `demand`
--
ALTER TABLE `demand`
  ADD CONSTRAINT `FK_428D7973A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `demand_relation`
--
ALTER TABLE `demand_relation`
  ADD CONSTRAINT `FK_9D2957D75D022E59` FOREIGN KEY (`demand_id`) REFERENCES `demand` (`id`),
  ADD CONSTRAINT `FK_9D2957D7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_B6BD307F59CFB5E7` FOREIGN KEY (`demand_relation_id`) REFERENCES `demand_relation` (`id`),
  ADD CONSTRAINT `FK_B6BD307FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `FK_BFE59472A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
