-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 16 2021 г., 08:07
-- Версия сервера: 10.4.10-MariaDB
-- Версия PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `symfony_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`id`, `name`, `email`, `path`, `website`) VALUES
(24, '2', '2@2.a', '55f4769d52f77-60c1495e4d294.jpg', '2'),
(25, '3', '3', '55f4769d52f77-60c1495e4d294.jpg', '3'),
(26, '333', '333@a.a', '55f4769d52f77-60bff8abef700.jpg', '333'),
(27, '8', '8@a.z', '55f44aa06f14e-60c93d7a270e5237640941.jpg', '8'),
(28, '5', '5@a.a', '55f4769d52f77-60c1495e4d294.jpg', '5'),
(29, '6', '6', '55f4769d52f77-60c1495e4d294.jpg', '6'),
(30, '7', '7', '55f4769d52f77-60c1495e4d294.jpg', '7'),
(31, '8', '8', '55f4769d52f77-60c1495e4d294.jpg', '8'),
(32, '9', '9', '55f4769d52f77-60c1495e4d294.jpg', '9'),
(33, '10', '10', '55f4769d52f77-60c1495e4d294.jpg', '10'),
(34, '11', '11', '55f4769d52f77-60c1495e4d294.jpg', '11'),
(35, 'test', 'test@test.com', '55f4769d52f77-60c132ec5dada.jpg', 'test'),
(36, '11', '11@a.a', '55f4769d52f77-60c1365e89ce6.jpg', '11'),
(37, 'ss', 'ss@s.s', '55f4769d52f77-60c140af66a49.jpg', 'sss'),
(39, '1', '1@1.a', '55f45ecfd0f26-60c9394c27abb590592327.jpg', '1'),
(40, 'TestApi', 'TestApi@test.com', '55f4769d52f77-60c94780692fb558853473.jpg', 'TestApi.com');

-- --------------------------------------------------------

--
-- Структура таблицы `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210606103542', '2021-06-06 10:36:20', 505),
('DoctrineMigrations\\Version20210608171224', '2021-06-08 17:13:31', 502),
('DoctrineMigrations\\Version20210609160858', '2021-06-09 16:09:11', 610);

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BA82C300979B1AD6` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`id`, `company_id`, `first_name`, `last_name`, `email`) VALUES
(1, 26, 'Alex', 'Emelyanov', 'alex.pp.ua@gmail.com'),
(2, 24, '1', '1', '1@i.ua');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`) VALUES
(1, 'admin@admin.com', '[\"ROLE_USER\"]', '$2y$13$5hx4yHAXcQ3.eT54X7kLGehPW46uTpsJnd4dc4pI96cdn77Z.NkQ2', 'admin'),
(2, 'test@test.com', '[\"ROLE_USER\"]', '$2y$13$OwF/r7/4iV8JjMDK/b38x.P1rrIGts/s4HRAdHED3SM6VNDLt5f/q', 'test'),
(3, 'fcdnipro268@gmail.com', '[\"ROLE_USER\"]', '$2y$13$u7QiIGiNc1MRfU/H8TkOoeKnjLgFsHEI4t0jEqmbK1YORGlcmZqnC', 'sasha');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `FK_BA82C300979B1AD6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
