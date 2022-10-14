-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 14 oct. 2022 à 10:50
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
(151, 153, 'Ea esse cupiditate.', 'Neque recusandae commodi dolorum enim dolor qui quia. Nihil quia consequatur aut ut enim. Veritatis at rerum excepturi voluptatibus provident suscipit sunt voluptas.', 'Capture-d-ecran-2022-09-27-a-15-29-55-1-6348110e27b1e.png', '2022-08-03 18:00:14', NULL, 0),
(152, 152, 'Fugiat est dolorem possimus.', 'Animi sed distinctio consequatur eos voluptatum omnis. Omnis aut perferendis quia. Fuga enim non ipsam neque id ipsam voluptatem dignissimos.', 'ERGO-Tour-white-634810f718280.png', '2022-03-27 05:09:13', '2022-09-03 17:57:54', 0),
(153, 154, 'Sed architecto et qui.', 'Distinctio et est quo repellendus sint fugit consectetur. Repudiandae facilis voluptatum repellendus autem iusto ea aut. Voluptatibus neque et quia pariatur in non.', 'kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png', '2022-05-20 05:17:52', '2022-10-03 09:10:37', 0),
(154, 159, 'Possimus accusamus ipsum illum.', 'Adipisci facere enim ut architecto sint. Laboriosam consequatur porro consectetur nisi dolorum aliquam ipsa. Velit quis id sunt quis. Eos optio eum qui excepturi adipisci alias.', 'kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png', '2022-08-23 12:13:53', NULL, 1),
(155, 152, 'Mollitia modi voluptatem placeat omnis.', 'Officia est sed in molestiae. Repudiandae suscipit reprehenderit necessitatibus aut veniam. Reiciendis non temporibus voluptas et.', 'kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png', '2022-06-23 08:41:57', NULL, 1),
(156, 153, 'Rem eligendi maxime veniam.', 'Vero velit excepturi porro eveniet. Quidem impedit odit modi saepe.', 'ERGO-Tour-white-634810f718280.png', '2022-06-10 20:09:33', '2022-07-24 08:48:06', 1),
(157, 149, 'Ea aut et quos.', 'Tenetur reiciendis velit vel ea modi in velit. Sapiente nemo quo qui praesentium error minus. Autem facere sit voluptate incidunt accusamus cum.', 'kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png', '2022-06-08 04:11:46', NULL, 1),
(158, 164, 'Nesciunt dolor nihil sit.', 'Quis dolore est odit illo iusto dolor ex. Eum consequuntur et dolorum.', 'Capture-d-ecran-2022-09-27-a-15-29-55-1-6348110e27b1e.png', '2022-10-10 21:28:09', NULL, 1),
(159, 164, 'Tempora et voluptatibus nihil.', 'Perferendis neque cumque ea et. Fugiat nobis eveniet quis quis ducimus dolores commodi. Velit ut sed minima est mollitia voluptas ea. Ut non tempora quo magni autem.', 'ERGO-Tour-white-634810f718280.png', '2022-05-05 12:20:46', NULL, 1),
(160, 157, 'In sapiente excepturi.', 'Voluptatem culpa voluptatem unde voluptatem quae quibusdam. Quam ut et voluptas quos quos omnis. Quos quisquam sit consequatur qui sit. Eos debitis architecto cupiditate eum temporibus aliquid.', 'kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png', '2022-07-26 17:08:45', NULL, 0),
(161, 147, 'Nihil consequatur atque.', 'Eum et recusandae non omnis soluta consequatur recusandae. In et et optio sit. Ut amet et maxime quo adipisci tempora voluptatum.', 'kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png', '2022-02-14 12:56:54', '2022-06-26 00:04:04', 0),
(162, 158, 'Reprehenderit iure earum.', 'Dolores ut quo tenetur in id. Dolor rerum possimus qui. Ut omnis nam ab impedit laudantium voluptatem. Blanditiis molestiae est reiciendis aliquid laboriosam sed.', 'kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png', '2022-06-28 11:02:46', NULL, 0),
(163, 163, 'Libero sit est tenetur.', 'Enim pariatur non incidunt suscipit pariatur excepturi. Quae perspiciatis qui possimus minus dolore quos perferendis qui. A in ea consectetur ex iusto. Et sed nihil qui aut molestiae.', 'ERGO-Tour-white-634810f718280.png', '2022-06-01 23:50:19', NULL, 0),
(164, 158, 'Sapiente sapiente quia ut hic.', 'Aut doloremque et quis vero esse vitae est. Soluta nihil tempore eos magni. Aut aspernatur harum iure molestiae fugiat ullam nihil incidunt.', 'kisspng-sass-style-sheet-language-cascading-style-sheets-l-sass-5b4621924f1d20-6170390015313227703241-6348171582274.png', '2022-04-08 13:02:01', '2022-05-06 06:30:29', 0),
(165, 151, 'Aut aut voluptatum ullam.', 'Quia iste quo eos magni ut non. Sunt deserunt ducimus consequatur. Praesentium quae facere rerum debitis qui perspiciatis sed velit.', 'Capture-d-ecran-2022-09-27-a-15-29-55-1-6348110e27b1e.png', '2022-03-23 08:19:06', '2022-07-26 01:14:51', 1),
(166, 162, 'Voluptates nam dolorem.', 'Distinctio harum nesciunt dolores quod. Qui quidem voluptate corrupti laboriosam aut aliquid eius. Laudantium neque eos rem sed. Velit voluptas vitae voluptatum explicabo magni blanditiis.', 'ERGO-Tour-white-634810f718280.png', '2022-05-08 05:47:22', '2022-10-07 06:18:38', 1),
(167, 146, 'Excepturi perferendis.', 'Quam quae animi mollitia explicabo placeat. Reprehenderit exercitationem quis occaecati assumenda ut. Dicta aut velit sit ab sapiente aut est sit.', 'Capture-d-ecran-2022-09-27-a-15-29-55-1-6348110e27b1e.png', '2022-05-09 10:00:57', NULL, 0),
(168, 145, 'Occaecati tenetur fugiat ab.', 'Est omnis alias similique non quos facere esse. Laudantium eveniet velit iure unde velit excepturi ad ea. Quis et quod et odit dolor ut. Laudantium fuga libero commodi est itaque sed.', 'ERGO-Tour-white-634810f718280.png', '2022-05-11 11:06:51', '2022-08-21 07:59:47', 1),
(169, 153, 'Labore facere explicabo.', 'Deserunt nobis et hic mollitia quae commodi ut dolore. Ea omnis ut qui voluptas odit error. Omnis ut velit magni iste repellat.', 'Capture-d-ecran-2022-09-27-a-15-29-55-1-6348110e27b1e.png', '2022-09-05 07:04:48', NULL, 0),
(170, 145, 'Fuga enim quod sapiente.', 'Excepturi est dolore voluptatem aut. Fugit dignissimos in aut enim et libero accusamus. Officiis dolore inventore aperiam dolores magnam ipsum.', 'ERGO-Tour-white-634810f718280.png', '2021-12-22 20:27:43', '2022-04-27 21:49:27', 1);

-- --------------------------------------------------------

--
-- Structure de la table `demand_relation`
--

CREATE TABLE `demand_relation` (
  `id` int(11) NOT NULL,
  `demand_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('DoctrineMigrations\\Version20221013161743', '2022-10-13 16:18:04', 87);

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
(105, 158, 'Sit deserunt consequatur quia.', 'Fugit placeat nostrum repellendus fuga. At placeat quaerat molestias vel dolores aut qui. Labore ex dolorem ut sint ut accusantium minima fugiat.', 'https://via.placeholder.com/100x100.png/002200?text=photo+quae', '2022-08-21 01:02:58', NULL, 0),
(106, 162, 'Nam repellendus dolorem.', 'Atque et vitae quidem ut. Reiciendis et et delectus necessitatibus provident. Fuga qui occaecati consequatur corrupti in aliquid natus est. Magni qui temporibus qui in quisquam tenetur qui.', 'https://via.placeholder.com/100x100.png/007733?text=photo+id', '2022-05-10 00:18:58', NULL, 0),
(107, 164, 'Consequatur rerum aut.', 'Id et commodi ut similique. Repudiandae provident repellat consequuntur est dolorem. Labore commodi adipisci omnis.', 'https://via.placeholder.com/100x100.png/00dd99?text=photo+eum', '2022-09-13 15:47:58', NULL, 0),
(108, 163, 'Ut et officiis quia.', 'Et non facilis quas quod. Animi necessitatibus rerum maxime doloremque. Vitae quam exercitationem porro. Asperiores quo debitis delectus fuga placeat eligendi quod molestias.', 'https://via.placeholder.com/100x100.png/00dd44?text=photo+non', '2022-10-13 14:09:47', NULL, 1),
(109, 154, 'Quia error accusantium.', 'Alias maxime maxime provident dolores fugit hic. Quia a fugit sed. Harum molestias tenetur dolore nostrum. Consectetur praesentium ipsa qui voluptatem provident. Et nobis error voluptatem quidem.', 'https://via.placeholder.com/100x100.png/009977?text=photo+veritatis', '2022-07-23 14:09:47', NULL, 1),
(110, 147, 'Totam et delectus.', 'Laudantium deserunt quidem quisquam libero unde rerum. Ipsam autem veniam deleniti. Voluptatibus soluta commodi ea. Tenetur esse corrupti debitis. Esse voluptatem ad eveniet velit porro qui.', 'https://via.placeholder.com/100x100.png/0088dd?text=photo+id', '2022-07-20 06:24:59', NULL, 1),
(111, 149, 'Sit accusantium illo.', 'Quis tenetur et velit architecto qui amet nemo. At explicabo voluptatem suscipit. Dolor quam facilis aut est eaque.', 'https://via.placeholder.com/100x100.png/0011cc?text=photo+velit', '2022-06-23 21:55:52', NULL, 0),
(112, 146, 'Error incidunt quia placeat eum.', 'Eaque consectetur dolore eius. Voluptates aliquid consequatur ducimus rerum culpa nihil voluptatem. Est facilis laboriosam iste repellendus. Accusamus autem aliquam ratione non recusandae.', 'https://via.placeholder.com/100x100.png/006611?text=photo+quaerat', '2022-04-01 08:24:25', '2022-10-09 14:09:16', 0),
(113, 157, 'Pariatur aliquid asperiores aut.', 'Aut ea esse fugiat id sint voluptas. Et beatae blanditiis cumque blanditiis consequatur ducimus veniam. Animi incidunt voluptates et consequatur.', 'https://via.placeholder.com/100x100.png/00ccbb?text=photo+eaque', '2021-12-05 20:25:28', '2022-09-24 01:36:24', 1),
(114, 152, 'Vitae minus optio occaecati.', 'Pariatur error rerum vitae. Vero veritatis earum nostrum quam velit iste. Animi rerum corporis vel.', 'https://via.placeholder.com/100x100.png/0011ff?text=photo+nesciunt', '2022-08-14 09:16:34', NULL, 1),
(115, 163, 'Consequuntur sunt rerum aliquam impedit.', 'Qui aut quidem a nihil minima maxime. Suscipit sunt laboriosam quia. Eum quia eos vel consequuntur.', 'https://via.placeholder.com/100x100.png/00dd66?text=photo+sed', '2022-05-04 02:32:21', '2022-07-30 11:02:58', 0),
(116, 161, 'Quas architecto.', 'Qui nihil rerum aut veniam magnam nostrum quia. Facere nemo facere eum quia. Autem natus fugit ex voluptatum quidem.', 'https://via.placeholder.com/100x100.png/00bbee?text=photo+nostrum', '2022-01-06 02:38:44', '2022-08-15 06:39:21', 1),
(117, 150, 'Et quas magni.', 'Dolor perspiciatis quia occaecati pariatur porro sit maxime. Et inventore dolor impedit iure esse sit non. Eos dolor soluta harum natus veniam labore distinctio.', 'https://via.placeholder.com/100x100.png/00ccdd?text=photo+sint', '2021-12-15 03:45:53', '2022-09-28 14:50:30', 1),
(118, 153, 'Aperiam perspiciatis.', 'Et minima voluptatem qui atque adipisci doloremque autem. Odit tenetur cumque error. Aut rem nam quis sed numquam.', 'https://via.placeholder.com/100x100.png/009900?text=photo+quam', '2022-03-08 13:09:20', '2022-10-05 01:14:12', 0),
(119, 155, 'Quia voluptate doloribus quas.', 'Voluptatibus ut fugiat placeat nemo. Numquam ullam quia et temporibus. Aliquid sit aut modi adipisci beatae cum repellendus veritatis.', 'https://via.placeholder.com/100x100.png/00ddee?text=photo+est', '2021-11-29 21:24:45', '2022-10-05 22:03:17', 0),
(120, 158, 'Earum quam est omnis.', 'Minima et sint occaecati possimus delectus ipsa quia ut. Omnis qui qui sint est qui maiores. Reprehenderit dolorem recusandae quia et.', 'https://via.placeholder.com/100x100.png/005599?text=photo+consequuntur', '2022-08-10 12:21:14', NULL, 1),
(121, 146, 'Quis nostrum illum.', 'Animi cupiditate facere et amet deserunt. Libero libero qui veniam recusandae ipsam et corporis rerum. Iusto ea architecto fugiat enim.', 'https://via.placeholder.com/100x100.png/00ff66?text=photo+eos', '2022-03-02 00:15:38', '2022-08-12 19:37:06', 0),
(122, 160, 'Tempora error hic.', 'Quidem eaque et aliquid optio. Officiis dolorum omnis sit quia tempora. Illo et et quia deleniti natus quia velit non. Voluptates accusantium nobis eaque alias nobis quidem.', 'https://via.placeholder.com/100x100.png/00dddd?text=photo+ipsa', '2022-09-10 20:57:43', NULL, 0),
(123, 157, 'Et magni corrupti.', 'Eius vitae rerum id omnis voluptas voluptatem culpa. Nam iste nam minus reiciendis vero sed itaque ratione. Maxime eligendi perferendis et praesentium.', 'https://via.placeholder.com/100x100.png/0077aa?text=photo+omnis', '2022-07-23 19:37:31', NULL, 1),
(124, 154, 'Sapiente magni eos.', 'In quo modi dicta ipsa officia. Saepe dolore necessitatibus doloremque quam ab excepturi atque. Qui maiores non ut.', 'https://via.placeholder.com/100x100.png/0088cc?text=photo+et', '2022-07-14 11:03:49', NULL, 1);

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
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `pseudo`, `location`, `photo`) VALUES
(145, 'mathilde48@robert.fr', '[]', '$2y$13$YuXUZsWyZzWlG1fEuKw00eyViVeNMMD9eR/0avupZNdMVVHnOx9k.', 'Dominique', 'Ariège', 'https://via.placeholder.com/100x100.png/0044bb?text=photo+magni'),
(146, 'lucas.christine@wanadoo.fr', '[]', '$2y$13$DM55oQuHyzZc69BLmB5aCOCKSzZPi1IRoDh.q9f5CwA/QH7CoBrLq', 'Christophe', 'Haute-Savoie', 'https://via.placeholder.com/100x100.png/0055dd?text=photo+exercitationem'),
(147, 'glaine@fabre.fr', '[]', '$2y$13$90iS9YPFTut7eQfwPy/H9OsBBAVTnUKeW8UYxC8ONlGR/Uf95qP9G', 'Robert', 'Hauts-de-Seine', 'https://via.placeholder.com/100x100.png/0000bb?text=photo+qui'),
(148, 'andre.baron@normand.fr', '[]', '$2y$13$xhQZkt8X0jxjRDp8c46Bu.d6wTKRKQUaZHLiFErLPziRbZA7A.v6S', 'Alexandrie', 'Gard', 'https://via.placeholder.com/100x100.png/008877?text=photo+ratione'),
(149, 'bbaron@live.com', '[]', '$2y$13$JHpd0wWbMf9vCSLROhuBV.899C5jpFopj/cSmIoy77OKG2UjfY396', 'Philippine', 'Doubs', 'https://via.placeholder.com/100x100.png/004466?text=photo+excepturi'),
(150, 'victor71@laposte.net', '[]', '$2y$13$m9B6wjxvl3jmmvmJGrSBqORXKg9ysDNphjGzwOSBYX9vhox6PeEPq', 'Sébastien', 'Seine-Maritime', 'https://via.placeholder.com/100x100.png/009944?text=photo+dolorum'),
(151, 'zlebrun@sfr.fr', '[]', '$2y$13$scraZveQZbkWjemjhGSQauLxnxIB85zrtg5GsIbZSLOSxkvg8lZwK', 'Adrien', 'Val-d\'Oise', 'https://via.placeholder.com/100x100.png/001111?text=photo+iure'),
(152, 'nicole00@gosselin.net', '[]', '$2y$13$abAx9XKQjDPsP7lM79CRZ.rZSg2RiJzSHErLLkihvG2q7ePaL.wHm', 'Hortense', 'Val-d\'Oise', 'https://via.placeholder.com/100x100.png/000055?text=photo+omnis'),
(153, 'gabriel56@thierry.fr', '[]', '$2y$13$xOkYlZB2FbX27DXY5V61ye7ghdz0eoeunC7xO92uaSFaKpBGF0smS', 'Anastasie', 'Mayenne', 'https://via.placeholder.com/100x100.png/00ee88?text=photo+odio'),
(154, 'gros.leon@orange.fr', '[]', '$2y$13$B2wCFprPJxEwYPVBhH4vmefGYZhWDj/sg7C3X7oRiiGtWHV0GboB.', 'Aimée', 'Doubs', 'https://via.placeholder.com/100x100.png/008844?text=photo+facere'),
(155, 'besnard.yves@wanadoo.fr', '[]', '$2y$13$NQU4xPUhl4ggLhY/BYkSnuc34qrYF1TQstF5PqfXno68Waj33wZeq', 'Guillaume', 'Charente-Maritime', 'https://via.placeholder.com/100x100.png/0099bb?text=photo+quos'),
(156, 'amelie.brunet@hotmail.fr', '[]', '$2y$13$Uqcen4meu816KBm9jF7oqOOUWUBq48w4we5kU3JHdHaIUmH/t2Zqe', 'Bertrand', 'Haute-Loire', 'https://via.placeholder.com/100x100.png/00ddee?text=photo+dolor'),
(157, 'mathilde77@rossi.fr', '[]', '$2y$13$YKHyM.Isj0a1IA30Ik72FukRhKJrBTTgDlL4CCmmAZmWN8fjRtZ1C', 'Martin', 'Meurthe-et-Moselle', 'https://via.placeholder.com/100x100.png/00aa33?text=photo+perferendis'),
(158, 'gilbert71@bertrand.com', '[]', '$2y$13$5M832VLGs9aFlW9oo5TAfO5zkws8waA2RuOhvZO2mh/oopSxdChJW', 'Yves', 'Aude', 'https://via.placeholder.com/100x100.png/00ddaa?text=photo+incidunt'),
(159, 'augustin25@laposte.net', '[]', '$2y$13$3GbeeihlRYMkBMhJosuCS.An8siBzRxBKxBrkqwGfT/fS6iZVy5ZW', 'Stéphane', 'Guyane', 'https://via.placeholder.com/100x100.png/002222?text=photo+praesentium'),
(160, 'rbonnet@boucher.com', '[]', '$2y$13$0TwedmME722zuAYFdESjp./vTiZt8HB65.hysi1dg5MpwZoYYBNNe', 'Luce', 'Somme', 'https://via.placeholder.com/100x100.png/008877?text=photo+dolore'),
(161, 'remy.goncalves@live.com', '[]', '$2y$13$F3hk4axxu6Q64ctZT0qOh.xui3TXARfX6Dt9FJZ8inC13NXBsjGr.', 'Claudine', 'Seine-Saint-Denis', 'https://via.placeholder.com/100x100.png/0000bb?text=photo+rem'),
(162, 'bailly.aimee@lebreton.com', '[]', '$2y$13$hFwPytSsLVuhso45816v6.l25SQpTfnI3ocwG7fwwwkZ..NsGFG3e', 'Martin', 'Guyane', 'https://via.placeholder.com/100x100.png/008822?text=photo+ut'),
(163, 'ujacques@poulain.com', '[]', '$2y$13$m7XS8ojoDkA8LB/fojuDTe76iCyHbPVkzSz3UGPsngYy.9wQFmscy', 'Thibault', 'Paris', 'https://via.placeholder.com/100x100.png/000088?text=photo+aut'),
(164, 'margaret.blanchet@levy.fr', '[]', '$2y$13$O5QxemuR/MItwmZ3GUqRqOKw9yEC90yDU3q2ZfqAojYsZ7vYrm.gy', 'Patrick', 'Hautes-Pyrénées', 'https://via.placeholder.com/100x100.png/000044?text=photo+laborum');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT pour la table `demand_relation`
--
ALTER TABLE `demand_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `proposal`
--
ALTER TABLE `proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

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
-- Contraintes pour la table `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `FK_BFE59472A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
