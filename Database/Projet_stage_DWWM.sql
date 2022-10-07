-- To avoid problems, instead of creating the database in SQL and import it on your symfony project,
-- you should create the database with the command "symfony console doctrine:database:create" and load the fixtures 

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--git add 
-- Hôte : localhost:8889
-- Généré le : ven. 07 oct. 2022 à 08:11
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
  `date_modified` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `demand`
--

INSERT INTO `demand` (`id`, `user_id`, `title`, `text`, `photo`, `date_created`, `date_modified`, `deleted`) VALUES
(181, 430, 'Nobis architecto sunt.', 'Delectus rerum autem aspernatur ipsum aliquam officia quas. Culpa vitae magni voluptatibus enim optio inventore dolorem quia. Consequatur facilis et sed eius.', 'https://via.placeholder.com/200x200.png/00aaee?text=photo+adipisci', '2021-12-23 20:32:46', '2022-05-02 14:12:52', 0),
(182, 434, 'Ut voluptatem perferendis vel.', 'Eligendi enim ut dolores quasi. Praesentium illo voluptates placeat omnis. Libero vel qui fugit corrupti. Nihil magnam qui corrupti praesentium earum voluptas soluta.', 'https://via.placeholder.com/200x200.png/00ffcc?text=photo+doloribus', '2022-02-08 04:21:40', '2022-09-24 19:09:48', 1),
(183, 430, 'Est aut pariatur ea.', 'Et sit laboriosam qui aut consequuntur est. Itaque ratione quae et velit dolor necessitatibus. Illum veniam excepturi consectetur voluptatibus reprehenderit neque.', 'https://via.placeholder.com/200x200.png/005599?text=photo+aut', '2022-07-22 05:08:27', '2022-10-02 13:13:00', 1),
(184, 421, 'Consequatur et unde voluptates.', 'Magnam neque molestias sequi. Est eum est est aliquid voluptas placeat. Laudantium repudiandae eum sint velit.', 'https://via.placeholder.com/200x200.png/003322?text=photo+blanditiis', '2022-07-15 08:48:44', '2022-09-27 22:30:55', 1),
(185, 422, 'Sint et asperiores.', 'Accusamus molestiae quis quidem. Adipisci tempora vitae id hic eos rerum deleniti. Earum atque placeat praesentium numquam. Sunt dolorum dolor ratione ducimus.', 'https://via.placeholder.com/200x200.png/00bb88?text=photo+iste', '2022-02-03 21:35:16', '2022-10-04 13:17:41', 1),
(186, 424, 'Dolor sint sit.', 'Et quisquam illo omnis. Ipsum at nam aliquam ad laboriosam voluptas fugiat. Veniam vitae eos eum. Soluta rerum ullam qui deserunt enim vero vitae.', 'https://via.placeholder.com/200x200.png/008866?text=photo+dolorem', '2022-02-22 07:15:06', '2022-09-08 23:52:22', 1),
(187, 427, 'Earum eum vero consectetur.', 'Fugiat porro quia omnis non natus officiis dolores expedita. Recusandae suscipit dolor illum a sint magnam. Vel hic iure soluta sunt nihil ut. Hic minus est eum minima sapiente et.', 'https://via.placeholder.com/200x200.png/00ffff?text=photo+labore', '2022-08-13 00:41:35', '2022-09-23 08:15:33', 0),
(188, 436, 'Porro ea ut.', 'Ipsum ab architecto quibusdam maxime praesentium dolorem odio suscipit. Reiciendis magnam sapiente culpa harum. Ut aut est qui possimus voluptas dolorum.', 'https://via.placeholder.com/200x200.png/00bbff?text=photo+et', '2022-02-11 08:07:15', '2022-05-28 20:28:18', 1),
(189, 438, 'Veniam deserunt commodi.', 'Voluptatem optio odio nemo expedita aut deserunt ut. Aut corrupti hic harum possimus minima illum sed. Eaque minima enim quis ipsa sit est.', 'https://via.placeholder.com/200x200.png/0088ff?text=photo+iusto', '2022-07-31 14:12:26', '2022-10-07 07:27:10', 1),
(190, 422, 'Voluptatum laudantium nemo.', 'Eos et consequuntur ut voluptatem. Qui non atque aut et. Et hic aut velit fugiat corrupti vero quidem. Eos earum autem ratione omnis. Consequatur vel molestiae et aut.', 'https://via.placeholder.com/200x200.png/0022cc?text=photo+rerum', '2022-06-12 18:49:38', '2022-09-11 05:05:28', 1),
(191, 438, 'Ipsam architecto aliquam voluptates.', 'Aut accusamus nihil illo et. Officia quibusdam ut hic nostrum.', 'https://via.placeholder.com/200x200.png/00ee00?text=photo+eveniet', '2022-09-18 03:01:41', '2022-10-01 18:39:39', 0),
(192, 422, 'Harum dolores voluptatem et.', 'Incidunt et optio tempora doloribus eos. Nemo itaque esse nam qui quae modi. Quas quis in molestiae vero optio consectetur. Cumque harum ratione eveniet excepturi sint.', 'https://via.placeholder.com/200x200.png/007711?text=photo+libero', '2022-03-19 05:44:39', '2022-07-03 23:04:25', 0),
(193, 423, 'Quam eum.', 'Vero optio sit qui laboriosam ut ex et. Placeat necessitatibus enim sint et ipsum. Quia neque qui sed sint.', 'https://via.placeholder.com/200x200.png/006666?text=photo+molestias', '2022-06-17 13:46:41', '2022-09-26 08:41:26', 1),
(194, 426, 'Sit error dolorem et laborum.', 'Mollitia sit temporibus dolorem odio perspiciatis id ab consequuntur. Soluta molestiae consequuntur dolorem voluptates similique quaerat incidunt.', 'https://via.placeholder.com/200x200.png/003377?text=photo+enim', '2022-06-19 02:10:52', '2022-09-19 09:45:53', 0),
(195, 432, 'Voluptatibus nobis voluptatem et.', 'Distinctio officia dolorem impedit itaque. Eum quis placeat non doloribus nihil quis.', 'https://via.placeholder.com/200x200.png/00cc77?text=photo+nam', '2022-06-28 16:31:46', '2022-08-26 11:43:52', 0),
(196, 431, 'Sunt asperiores rem.', 'Laborum voluptatum vitae dolor a aut fugiat perferendis. Ut id deserunt hic enim temporibus. Repudiandae ut nihil beatae sapiente sunt necessitatibus.', 'https://via.placeholder.com/200x200.png/00ffbb?text=photo+et', '2022-05-28 22:19:15', '2022-08-13 22:30:28', 0),
(197, 424, 'Corrupti consequatur quia.', 'Enim ut qui officia dolorum laudantium. Dolor rem laborum autem voluptatibus nam voluptas totam. Iusto quidem consequatur sapiente cumque.', 'https://via.placeholder.com/200x200.png/0044ee?text=photo+et', '2022-09-18 01:48:33', '2022-10-04 01:16:56', 0),
(198, 425, 'Soluta accusantium molestias modi.', 'Dolorem quam neque aut. Officia aut et neque voluptas quia. Deleniti voluptatum fugit nobis quia beatae delectus. Est recusandae neque assumenda ut et. Dolorem aut optio laudantium aut cumque.', 'https://via.placeholder.com/200x200.png/002266?text=photo+ut', '2022-09-21 17:54:03', '2022-10-02 20:59:39', 1),
(199, 422, 'Voluptatem sed velit.', 'Adipisci similique maxime consequatur incidunt accusamus sequi nam. Consequuntur voluptatem quaerat ad nemo. Dignissimos maxime eum fugit voluptatibus sit voluptas.', 'https://via.placeholder.com/200x200.png/0033cc?text=photo+delectus', '2022-08-28 04:27:13', '2022-09-30 17:21:56', 0),
(200, 426, 'Ratione nostrum et maiores vel.', 'Velit et hic ut ratione tempore dolore. Consequatur quisquam sequi voluptas in. Minus maiores dolorem soluta autem rerum. Corrupti ut sapiente exercitationem.', 'https://via.placeholder.com/200x200.png/0022aa?text=photo+laboriosam', '2022-01-01 03:23:37', '2022-03-17 06:09:55', 0);

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
('DoctrineMigrations\\Version20221006104824', '2022-10-06 10:48:31', 120),
('DoctrineMigrations\\Version20221006123047', '2022-10-06 12:30:52', 69),
('DoctrineMigrations\\Version20221006123219', '2022-10-06 12:32:22', 62);

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
  `date_modified` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `proposal`
--

INSERT INTO `proposal` (`id`, `user_id`, `title`, `text`, `photo`, `date_created`, `date_modified`, `deleted`) VALUES
(1, 422, 'Inventore sed quia necessitatibus.', 'Vel minus atque et ad ut voluptatum. Excepturi rerum maiores quas libero. Vel autem facilis dolorem laboriosam praesentium consequatur sed.', 'https://via.placeholder.com/200x200.png/00dddd?text=photo+et', '2022-09-05 01:56:52', '2022-09-27 11:40:17', 1),
(2, 431, 'Commodi inventore.', 'Dolorem aut debitis incidunt sit. Dolor officia sed commodi. Id similique nisi quam. Et qui officia et nulla rerum. Voluptas eum ex magni qui dolores. Quia dicta delectus sequi et quae sit.', 'https://via.placeholder.com/200x200.png/000033?text=photo+quia', '2021-12-30 08:04:38', '2022-03-30 16:51:11', 1),
(3, 427, 'Adipisci maiores.', 'Omnis neque vel quam quia eveniet nisi sequi. Magni labore sunt nihil dolorem placeat.', 'https://via.placeholder.com/200x200.png/0000bb?text=photo+pariatur', '2022-03-10 15:18:20', '2022-09-11 00:46:50', 0),
(4, 430, 'Quia ipsam deleniti.', 'Fugit corporis et nobis id saepe dolores. Voluptatibus veniam natus beatae dignissimos non. Minus at provident commodi odio minus assumenda qui. Esse ut quidem atque iusto sunt.', 'https://via.placeholder.com/200x200.png/00ee44?text=photo+ut', '2022-07-25 22:07:10', '2022-09-12 18:33:03', 0),
(5, 438, 'Voluptatem fuga consequatur dolores cupiditate.', 'Occaecati voluptatem voluptas iusto ut. Doloribus recusandae voluptas amet architecto vitae et cumque.', 'https://via.placeholder.com/200x200.png/00ffdd?text=photo+similique', '2022-03-18 21:52:02', '2022-10-06 12:38:45', 1),
(6, 429, 'Porro beatae vero.', 'Voluptatibus eligendi voluptas esse dolorem. At tempora explicabo natus distinctio sed quas totam. Sint ut ullam suscipit illo quibusdam tempora iste.', 'https://via.placeholder.com/200x200.png/00eebb?text=photo+nostrum', '2022-05-12 11:58:38', '2022-09-01 09:16:18', 1),
(7, 434, 'Est voluptatem qui.', 'Perspiciatis voluptas inventore dolores deserunt. Alias quam voluptates labore molestiae nisi esse porro ipsam. Qui rerum deleniti debitis et neque.', 'https://via.placeholder.com/200x200.png/001122?text=photo+est', '2022-09-06 08:01:49', '2022-09-20 00:07:15', 0),
(8, 435, 'Voluptate fuga eos provident.', 'Dolorem voluptatem animi ipsa occaecati architecto. Tenetur odit soluta explicabo. Perferendis eum quasi alias reiciendis et eum.', 'https://via.placeholder.com/200x200.png/004488?text=photo+ut', '2022-08-11 09:21:56', '2022-10-01 16:12:31', 0),
(9, 429, 'Itaque adipisci consequatur.', 'Aspernatur sapiente inventore et totam quod natus. Et aperiam aliquid aut incidunt et officiis quo ut. Quia impedit laborum est et illum.', 'https://via.placeholder.com/200x200.png/00aaff?text=photo+explicabo', '2022-01-11 12:12:21', '2022-04-07 23:33:20', 0),
(10, 427, 'Reiciendis enim exercitationem.', 'Et pariatur officiis nostrum accusantium vitae perspiciatis. Soluta ut et odio id sunt. Consequatur magnam autem dolore architecto dolore. Aliquam mollitia quis voluptas.', 'https://via.placeholder.com/200x200.png/0066ee?text=photo+eum', '2021-12-09 11:32:15', '2022-03-12 17:13:36', 0),
(11, 429, 'Fuga sint ut tempora.', 'Mollitia aut repellendus laboriosam dignissimos. At et suscipit sit exercitationem consequatur fugiat. In provident nesciunt est eos architecto.', 'https://via.placeholder.com/200x200.png/00ff44?text=photo+deleniti', '2022-07-09 13:10:40', '2022-10-02 01:43:44', 1),
(12, 428, 'Aliquid voluptates maiores.', 'Illo aut iure aut quis quisquam. Consequatur quia quia debitis doloremque et ratione quisquam. Sit accusamus soluta ratione saepe inventore delectus.', 'https://via.placeholder.com/200x200.png/00bbee?text=photo+non', '2022-07-03 21:49:58', '2022-09-23 05:20:36', 0),
(13, 428, 'Nemo occaecati ab rerum minima.', 'Quasi voluptas veritatis et debitis error recusandae. Cumque adipisci voluptatum dolore omnis accusantium. Perspiciatis harum praesentium eos perferendis consectetur est consequatur ut.', 'https://via.placeholder.com/200x200.png/0055aa?text=photo+voluptatem', '2021-12-16 08:06:12', '2022-10-02 13:43:59', 1),
(14, 426, 'Consequatur dolore voluptates error.', 'Maxime voluptatum vel dolore earum. Ad sunt qui maiores recusandae aut neque dolores similique. Soluta autem aut laboriosam vero eaque voluptas rem.', 'https://via.placeholder.com/200x200.png/0000ff?text=photo+quo', '2022-03-01 22:58:50', '2022-06-01 03:21:29', 1),
(15, 437, 'Quo ut totam.', 'Necessitatibus aut pariatur provident et. Voluptas ab rerum sed non. Labore et aperiam consequatur similique. Dolore quia rerum consequatur ratione sed.', 'https://via.placeholder.com/200x200.png/00bb99?text=photo+in', '2021-12-03 19:03:09', '2022-09-20 02:49:04', 0),
(16, 438, 'Aperiam sit totam esse.', 'Suscipit voluptas explicabo esse consequatur soluta facilis. Cupiditate quam asperiores facere ipsa id accusantium tempore. Voluptates ea dicta corporis qui culpa porro quisquam aperiam.', 'https://via.placeholder.com/200x200.png/00ff99?text=photo+ut', '2022-03-11 01:05:01', '2022-09-24 15:31:23', 0),
(17, 439, 'Dignissimos labore occaecati.', 'Sed blanditiis eveniet quibusdam neque vel. Quo nam molestiae quos earum architecto. Voluptatem et nihil ipsum dolor.', 'https://via.placeholder.com/200x200.png/00dd00?text=photo+quos', '2022-03-19 12:07:22', '2022-08-13 14:16:02', 0),
(18, 432, 'Ratione qui nobis.', 'Doloremque omnis qui et. Optio inventore aut cum consequuntur qui. Ut explicabo unde rerum ut. Non vel adipisci sint rerum.', 'https://via.placeholder.com/200x200.png/009966?text=photo+error', '2022-01-27 08:14:51', '2022-07-19 15:11:56', 1),
(19, 421, 'Est aut excepturi voluptas.', 'Eligendi sunt est natus in est voluptatibus natus qui. Rerum dolorem excepturi labore eos nobis.', 'https://via.placeholder.com/200x200.png/000066?text=photo+aut', '2022-04-12 01:54:03', '2022-05-27 22:09:16', 1),
(20, 429, 'Delectus officia tempora.', 'Commodi sit fugiat aliquam dolor. Reiciendis voluptatem aliquam omnis rerum sit tempora. Eos ad assumenda aut enim totam velit dolorem. Ut doloribus cumque modi porro sit.', 'https://via.placeholder.com/200x200.png/00eecc?text=photo+sed', '2021-12-29 04:14:04', '2022-02-16 00:27:58', 0);

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
(421, 'alexandre56@wanadoo.fr', '[]', '$2y$13$zf4IWKpjOUQaoXqqLn9PGO6WosAwvVfZ1SDGXyUj8T0rXZK84YfLK', 'Théodore', 'Somme', 'https://via.placeholder.com/200x200.png/005533?text=photo+voluptates'),
(422, 'duhamel.theophile@hotmail.fr', '[]', '$2y$13$5rXq8w/qU7Qu2TcL4FPeO.R5y9J.UwZRRCtwvDtZ0G6jQaabdhth6', 'Zacharie', 'Savoie', 'https://via.placeholder.com/200x200.png/001166?text=photo+quibusdam'),
(423, 'dominique30@labbe.fr', '[]', '$2y$13$/Fwp7ibCKx3XzcoWYRHQceZ8kERuH2hBIoF/s/7F6Xd8uQzrc3yne', 'Thierry', 'Indre-et-Loire', 'https://via.placeholder.com/200x200.png/0088cc?text=photo+maiores'),
(424, 'elise38@laposte.net', '[]', '$2y$13$AgxMWUG.91689qjZ/X2PS.drpeLVgTM0Vr2/862b.EJeNttMvjfIi', 'Roland', 'Haute-Loire', 'https://via.placeholder.com/200x200.png/006688?text=photo+dolorem'),
(425, 'alexandre83@dbmail.com', '[]', '$2y$13$W5eHr5LPkisUxdiu8O8.5uUZRf4VAtkb.typWBVXQD6ZEriznGbQm', 'Honoré', 'Lot', 'https://via.placeholder.com/200x200.png/008855?text=photo+tempore'),
(426, 'benoit.renault@voisin.com', '[]', '$2y$13$dAp54FhYp7ONd6ymLuI0L.vKpTOnVsmSUGwgA0u/REcRKSQowHGBC', 'Virginie', 'Loire-Atlantique', 'https://via.placeholder.com/200x200.png/006688?text=photo+ratione'),
(427, 'eugene.valette@garnier.com', '[]', '$2y$13$PUEh511x0SfTQxkXTSO1RuLMlcbRY9nkdjPGIWuq3wG3rGiylIPpa', 'Jacques', 'Yvelines', 'https://via.placeholder.com/200x200.png/003388?text=photo+est'),
(428, 'vrobin@guilbert.com', '[]', '$2y$13$SXO15Df7JKMpHy52MOAydupD6w078X/NRiuvWcsHptIZqqk16lYI6', 'Tristan', 'Doubs', 'https://via.placeholder.com/200x200.png/00aa99?text=photo+voluptate'),
(429, 'alain.lacombe@dbmail.com', '[]', '$2y$13$LWvny5SIqli16.GF9jKJme9E1wx.zZy7wl7i4e5WJ7U22kZvkh4yq', 'Constance', 'Bouches-du-Rhône', 'https://via.placeholder.com/200x200.png/0011cc?text=photo+asperiores'),
(430, 'marianne.hernandez@marion.com', '[]', '$2y$13$eFbccjh5foStnpKaJOZ2BePBd2SodbdyMhipUSOcDqfkVcIGK58Ei', 'Camille', 'Territoire de Belfort', 'https://via.placeholder.com/200x200.png/0033dd?text=photo+voluptatum'),
(431, 'becker.noemi@noos.fr', '[]', '$2y$13$.JlBdnkx2qdnuAFEsrMFV.tcYuIoS96bDImc.G//hIkFRwuIRP4vO', 'Olivier', 'Seine-Saint-Denis', 'https://via.placeholder.com/200x200.png/00eebb?text=photo+tempore'),
(432, 'thomas66@barre.com', '[]', '$2y$13$.geIrZU4kawDYA7jJCxWYe2yHLaDCXnzsbf9Bv6.iq8Gdd/M7w2tW', 'Stéphanie', 'Landes', 'https://via.placeholder.com/200x200.png/00aa66?text=photo+ut'),
(433, 'philippine.boulay@faure.org', '[]', '$2y$13$WjbNW4c2fstNXP0/OkvvkehJCYwJy6.Lbh4WDkN7U8bOcrcoH5FaW', 'Éléonore', 'Gard', 'https://via.placeholder.com/200x200.png/003399?text=photo+magnam'),
(434, 'denis97@sfr.fr', '[]', '$2y$13$GVIOawFO0NtJe8J8DIzuf.vwexxTLzh0j62mZLQivpLM931KML/cu', 'Chantal', 'Territoire de Belfort', 'https://via.placeholder.com/200x200.png/001100?text=photo+voluptas'),
(435, 'martin.joubert@hotmail.fr', '[]', '$2y$13$MOENS4gEcmT866YrSRNMFuBII9pxaO2rGL/pHnYEEYKSTFxMKT3wS', 'Henri', 'Hautes-Alpes', 'https://via.placeholder.com/200x200.png/007799?text=photo+tenetur'),
(436, 'jjoubert@morel.com', '[]', '$2y$13$q1UK92UT0IvFU8WYhFFXnOQdKWQy3MSCv012Mv4fTJ7zqNP0oW4J6', 'Vincent', 'Val-d\'Oise', 'https://via.placeholder.com/200x200.png/0077bb?text=photo+laudantium'),
(437, 'marcel.paris@orange.fr', '[]', '$2y$13$oHnzkPqE/75n7Seapz9Spe0UKu8KYR/uEHU80f/pA3tAiCTW7N/jy', 'Patricia', 'Côte-d\'Or', 'https://via.placeholder.com/200x200.png/003388?text=photo+sequi'),
(438, 'aurore50@blanchard.com', '[]', '$2y$13$uAZ/PTw8p57sAw6shFXupudYTtGjONbUEvlGrru/dTfGJAR8p7b2O', 'Océane', 'Finistère', 'https://via.placeholder.com/200x200.png/00aa66?text=photo+dolore'),
(439, 'sroger@riviere.com', '[]', '$2y$13$pvQnkW4jG3dZd/86DExa3.Fpg40TtMBgnYCb9UlxnhZUKyXpBXL2G', 'Bernard', 'Hautes-Alpes', 'https://via.placeholder.com/200x200.png/005555?text=photo+numquam'),
(440, 'kbenard@orange.fr', '[]', '$2y$13$HPqw/WXTOKM1NUVXmj5lnuJNd5HyvxUDRO2GWVmyyunSJGpIWbhd.', 'Thierry', 'Loir-et-Cher', 'https://via.placeholder.com/200x200.png/008822?text=photo+ut');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `proposal`
--
ALTER TABLE `proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `demand`
--
ALTER TABLE `demand`
  ADD CONSTRAINT `FK_428D7973A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `proposal`
--
ALTER TABLE `proposal`
  ADD CONSTRAINT `FK_BFE59472A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
