-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15-Dez-2020 às 16:12
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `laravel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id_user_foreign` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `book`
--

INSERT INTO `book` (`id`, `id_user`, `title`, `pages`, `price`, `created_at`, `updated_at`) VALUES
(17, 1, 'Memórias póstumas de Brás cubas', '90', 10.00, '2020-12-14 20:01:36', '2020-12-14 20:12:32'),
(18, 3, 'O senhor dos aneis2', '90', 187.30, '2020-12-14 20:01:52', '2020-12-14 20:02:01'),
(19, 3, 'The hobbit', '900', 300.00, '2020-12-14 20:05:40', '2020-12-14 20:13:11'),
(20, 1, 'O vento levou2', '90', 10.00, '2020-12-14 20:09:45', '2020-12-14 20:09:45'),
(21, 1, 'livroteste2', '1000', 10.00, '2020-12-14 20:11:27', '2020-12-14 20:11:27'),
(22, 1, 'livrotest5', '1000', 300.00, '2020-12-14 20:11:39', '2020-12-14 20:11:39'),
(23, 1, 'Iracema', '1000', 10.00, '2020-12-14 20:12:09', '2020-12-14 20:12:09'),
(24, 3, 'Silmarilion', '90', 10.00, '2020-12-14 20:13:34', '2020-12-14 20:13:34'),
(25, 1, 'Sherlock homes', '90', 200.00, '2020-12-14 20:14:11', '2020-12-14 20:14:11'),
(26, 1, 'livrotest5', '90', 10.00, '2020-12-14 20:14:37', '2020-12-14 20:14:37'),
(27, 1, 'livrotest5', '1000', 10.00, '2020-12-14 20:14:45', '2020-12-14 20:14:45'),
(28, 1, 'O vento levou', '1000', 10.00, '2020-12-14 20:14:54', '2020-12-14 20:14:54'),
(29, 1, 'livrotes7', '1000', 10.00, '2020-12-14 20:15:09', '2020-12-14 20:15:09'),
(30, 1, 'livroteste8', '1000', 10.00, '2020-12-14 20:15:36', '2020-12-14 20:15:36'),
(31, 1, 'livroteste9', '1000', 10.00, '2020-12-14 20:15:54', '2020-12-14 20:15:54'),
(32, 3, 'livrotest10', '1000', 10.00, '2020-12-14 20:16:06', '2020-12-14 20:16:06'),
(33, 2, 'livroteste11', '1000', 10.00, '2020-12-14 20:16:20', '2020-12-14 20:16:20'),
(34, 2, 'livroteste11', '1000', 10.00, '2020-12-14 20:16:26', '2020-12-14 20:16:26'),
(35, 1, 'livroteste12', '90', 10.00, '2020-12-14 20:16:46', '2020-12-14 20:16:46'),
(36, 1, 'livroteste12', '1000', 10.00, '2020-12-14 20:16:57', '2020-12-14 20:16:57'),
(37, 1, 'livroteste13', '1000', 10.00, '2020-12-14 20:17:19', '2020-12-14 20:17:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_11_041602_create_model_books_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thiago', 'webdesignercomfoco@gmail.com', '2020-12-11 19:59:19', '123456', '123456', '2020-12-11 19:59:19', '2020-12-11 19:59:19'),
(2, 'Thais', 'Thais@gmail.com', '2020-12-11 20:00:55', '123456', '123456', '2020-12-11 20:00:55', '2020-12-11 20:00:55'),
(3, 'Roberto', 'rob@oi.com.br', '2020-12-12 18:00:51', 'aaaaa', 'aaaa', '2020-12-12 18:00:51', '2020-12-12 18:00:51');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
