-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 10:48 AM
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
-- Database: `laravel_api`
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
(3, '0001_01_01_000002_create_jobs_table', 1);

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
('09HnXJ4W29b2h4PAokUhwRtiPl9pJKiJhX72rp5B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMUg1WmtERm16Zkc0YW15MEplZFBHZGdwWXpWNlFCQmVkaEhLVlh4VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254101),
('0WwntPoq4eqoRTjfnASD4avrDjtdu3fUsJsXCVfh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRVRpWmpYV3JzV0UxU3kzYldpUzVoczdsenJBNmhsTzJCTjVaR3F3NSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253564),
('13UfxXtxo1JNeXQwbhkCZfmFGHUnDiCYHEmsDfHi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUlYzVjRUUmVXbXg0MUZBbVNYZ0hMTVhYMllZVjZ3eEZ1eTE3Y09TTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251747),
('28om40VPnGKunCldMBTRRpP7VCTQDcUTAQGC7MNv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSzVtTU9pckhXd21Jb0FFSGFkZXA1UWZVNTR0VENpNGpBWFR1dE11ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253365),
('5EddXSeYxwfSGesRgrnULFsGD92HNDogwXnpQrlO', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 12; Xiaomi 12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.35 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNzlUY3I3aG1DVFc5ZXRJcGNDTDd5ajB2N01ON0xKWnoxMmozWHVFZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251204),
('5X18c08xy9VAgVcJqP4D9z27AI6rKLFLTSJblnMe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidG55Y3ZoM1YwRmx2NHBwZk5LYjRZdHlOVGJibVJuNlVaMnhLQVpOeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251818),
('6ygT5lKgIU3PvGkfCPO69DbFI24aLnXwoe93q6kd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicjJ6ZDJRZExtRUJKSFc1VmljVlFicWZJd2M2WWVwVmd3YTFxRzVMVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254636),
('75eCMQW6Y0n10lxLXax53q7u9a7ZlrqxkavngGpe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiclZiMXlwSmx5bGx6RlJuaEVEd2tMSXZMcUR5cXl3SU5yWXhaZVhFNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251843),
('7s98WYU0QUHGU7Jk8scqP8AqxYeUssNpGFTfDtmr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoienlIckYxTUhhdUtZS2RZYVNTOGVjWDhmRmlMc09DbEh1WkJidTVaMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254520),
('92ZfYOx9a9ENTouN6ejVi5PYcohb6dyWdt61JzxY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV25SbngwMTZLRmFsWEE1Wkl3NFRaelNrNDdEVFJzbVJyQ0NRU0RnWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251450),
('97lE4O8u7ivCYJ89B5aXJ66pGf8eqPNlO9gIUwBI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTlN2eWx5Uk1WbzVUV25ZNEhtNTg5a1lRNmhVMEZ0M1VCeDZQeDY1byI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251821),
('9A0Fw5kOpYvyHroAV2dyXTu1lqXRN1QK4zCjeKjL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUk9wa1NkMmpIRTFUUlljUVB3cnQ2b2RmVm40OFpCczlmWUtOemVUbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253188),
('bj0irW7il22v1egpUgzsScKW0N4rMVAsCiP3zAVq', NULL, '192.168.68.103', 'Dalvik/2.1.0 (Linux; U; Android 13; 2201117SI Build/TP1A.220624.014)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEtHdUhrSzZPS2h6WDNXNU1MSUdaVjJxcW1yTlg4VnNIZzFjT05hdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722320445),
('bs76NzE38B43RAVEL5uOtmuaQ75tM5k4ycWyg1yl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOUZDZFUzZDRmODdkVTNxQ0dKaHhJNDhxYzNpSktrU09McXlMOGMwRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254606),
('BUtHONr0beoJyVxaPv4ZBMFrURDKH6oWKstw1a3B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUWpmNmFLeXpxYzhtejJ3STV0VkpaWUFwanBNSWZ1Wk13eUlYM0NteSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253286),
('bYAapoQcg2UsLLfWmeqaqTaMVbUlIaKGghgStTBV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQVlWTUhnYjBkSjdnZVBKQ3BRaWpuMmdJSDVtMTU3S2E3bU1FZzJDYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253557),
('cIfrNqKye3qm3DypznOYIKaOk6frAdK55CzmJNRR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRkw3Q0daMk1TbVA5NEd1RmlyWjZ0cm5LU1Z2QXFSZ0UzbWtlcEpXQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251930),
('Co5R9gOL4pda0V1rYxG3xFbObok39fCX2aV2dsVl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiU2Fjcjh6YlIyeVJ5ampDNmNWVkNjMzgyQmpuTTBPVEl0V1QxWEVmbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253230),
('CsteceQPS6OfhTYgmkN0vXGKUNbGwbJu8q9DaLwj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUHN1eERUUlVrMHk1YkJuVmVqWG9FNGpmU1BCRVNMUVIyejVucGJ5VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253559),
('D8ZjExBlXczxVCuKgKBH5NnTIC8c0JiUunN9gK6t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ3lLSVJxdWpKMHQyQlBoZFZjcGJKdGhQckp2VHc3d1B3UmFLU1ZnRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722252677),
('dLJ70Fx3xZlsDnTDY9Lpsy41Xmxd1NhLFDNjLJQ4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidnhucHV2dzA4R0F4QkttRDNpbkpvaTVCZDJwSTZ3dDUzT2Vxb2daTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251814),
('dY6PUhicPM7HQEcZKIFNDk5lvEYCHU990lAowapY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY1dTYjNWcFNqc3E4SmxqeElGM2E5THBIU0lBcDByNzlxSzVaNlRPWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251190),
('E2Ck1tO1Qr4LIwTkyuhuYkcVjSeaHksI4tWFD3pD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNUZnS25HdlhuNzlPbzFTekpGUDVjbVl1N0lBNmlsQ2RTWE9KS25DbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254153),
('e98L2tFDqUIRCww5WQdEXRYAUsB19wPcMcgmasX4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibldCV1ZWck5GTWZWTWNIUUVVTUllYkk3cXpTcFBKckwwSlhnQXlRRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcGkvdjEvdXNlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722250362),
('EiQVArZbInjo4sAKFQftH5TFFCJ6mhVtGb69ELf3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNDlNeFRPWkFxZzVoWk9GMzJVRXMzSWtBMGk4WVBLNkI5N1BhS3VkSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254690),
('ejVAKQIN339NATNuWfczAmVhZ3QEQJNIiG3QrGkF', NULL, '192.168.68.108', 'Dalvik/2.1.0 (Linux; U; Android 15; sdk_gphone64_x86_64 Build/AP31.240517.022)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMllLbEd2Y1owV1lpVFdxTUFXaWIwWU05NEVhZGF5cDNUQzB5b2dmUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722320842),
('eWaBmpV7zdbjEgWzetCafiUXrgG0Q66vc4HkSv6U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT21mVTd5V0pzMTlZSkZPdnJaejVXa2VlMUlrNXBtdTdqSjMxWVg0dCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253559),
('EYpnGJiakQPwDJnaan9wvR29ATxB2JR7mAfMikEj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUk1pZ2xWbENUSmVMT21NN2psR0NORkFiNHlPR1VCbEdoMG94WWRYaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251748),
('F1Gq6W8yKJcEHn1P9IDql9i89SV4Bp6e0FmI0Bm3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieDdEYjQ0T3F4Rml1YTFvZzM3OHBjZzV3VWI1WGRoN1FOelRvTDBNNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722252743),
('g9hW08s5ScBtXzDKCrjCIMpCVXE5Efyqpghkbqdo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYnpnTDRSc1pQZEJPZHZ1UHFIcmYxbXVCb1ZTQ0lhNmdLSU9PQnFKVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253579),
('GJL5uWkDUFb13ab8Yf3lVbUEp6mwPtwg8M9mdy4r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibnhkQzFQWEVncmtxdWh6Q3NWODNTeWNnUElqUWU2Zks1TjJvd1BoeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254553),
('h2Z0ApvBFboIltrURRobAR99SLyFqRLOb09oLQnd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWjRLcHFPV1pmRHdZQmk0RjJxWG5xcVFFOVJNdTdBTHpWdEFpbHJKaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251750),
('I9unRu9S3nFeenbyW2U6fShVCchlIjY2tst1KLnB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRHJUbjhqU0Vrd1JIYWFQVGlkOTllQWdoVUpEVk0wbjUxZ1dxcUdreSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254688),
('iCgXIbAJ53nogPwfykcbUNWCxdWSpKraM7zHMa00', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVZuZE1DY21nM1oyNmxVQXFWVXd2eThSUFY0TW1aQWhDMUc0VkNXbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254683),
('J9ix6NnveepCL3WtIb2pcI2sYG5KNR6bCdIZAGww', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia2Z2YTdWUG83ZU5RMVN5ZE9BUDVpcFNRNFAwbnJIcDhtRUlkTlNobCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251174),
('JsQebpTHPeuv9B44fbxu7e7ylxZsH7mvClRbjVru', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibDQzTWhPaUtLaUx0TUlNQzBkWGZGRzhENnhEeENKeHdFaXc4VEhuOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253624),
('kGrXFJvhGaGQ3PY6JzFuJomUS3EJv7XonaTx0HnM', NULL, '127.0.0.1', 'PostmanRuntime/7.40.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid3VmUnZUcmFMOGFDeG9rdk5zZzNwTXZBN1RQVjZXUm13YnlKM0RlNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251136),
('lHF7lwxH4vVgCAIcUQ6NHDjYOQH34vGd0E39ITxm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibzA4NHp5c2liUUM0RjljdVVxS2pqQ3FqbTRHV2FTR2hhYTV4V1VXciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254569),
('Mk9lpLXKEPhqrZ0eUS8dEwdRR62z6R5Z85iqwQKe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieUdHTmZwZThZVlV0dFNPdFNkN2lLa2x6Y0JEamFoVVJjTnlIZzZUZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253560),
('mlRWku2tVumMqLpOTHY5kR4BJYXriYQv5q8urZLv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRXBPdTAxZmRkV1M5ZXg0MzgyUnNYaUJOYjdmNnZyS1ZBcmJmRGMxcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254202),
('mPzYxA8b2q5Pd3djAfgyHbsCd0p5ojaBZDsS2GEN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVlhzckdpNndDNGVrNlduWlUyOUcyeDR4b3loMTIySGFDSjdSV0dMaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251780),
('N9VUPRzK9B42on7MWtPG1eRMcnkTarWgolOM6OIe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRGFEM2JqNWNLU3N0RTNiR3ppdXAzWEtmQnpWY0ozNWVwYWZITU5YciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251840),
('NkkP8FQlNg1VNyLTVeZiRuAvQ6WSKQo4cDLfOkoG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2M3cjZBWkpqOHlvbzJSTWo5M1dDZHdPTENkZklxQ2pLWmJvVXpmayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251783),
('OqRW0qrPRAJfnpSSUe7FDoUsiHcTu6NYhmlLOpng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiN2FRaUtqU2tpeEpCR3huMkVWRlVZN252SWxRR1RrTWhVVm00Z0RrRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253827),
('pA2KlzmTbrAY9lq2YRwKeaNMf3eogrrqZv7kLolw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZGVtcVlTalVNek5jc2JoNTBRN1JLSEIybmYyNmg2T2liV2RoSVdGUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253564),
('PEEPLOrEqcXslXQaiEG60GWtR3Xf2e5A0jzXNqLP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia0tVeGxVaERmYW1VaWZEN0dvOGMxSkZiMEVqR0dtNG5UN2V0cDYzNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251927),
('QeGNvmbF7VdDUFlowGTTyfHWI37r0nwyJELe8SaM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVm1ubmhPWDdnRmg0SW90bWdvRVEyN1JZbGdGR253Z3E5Uk96VDR4RyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254615),
('qj7cD5dsjTTedhrRjSGxjTdmY31bc1g0CxUfqyGw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZXlpZW5oSnBqNmhncXBHMDE4UVhjWE1TUXZzRmNaMXcwc1NPQnYwcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254125),
('QKzAjTRTNPIhoGIusCI103KkqpApLvA4qsLTd72M', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQml5OUN3cFlnSXZhQkhZM1BsYlZ5RGg1eHVqYWI2algxS2hyS1puVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253564),
('RgMGvumrgSvS2qcvWmLSlZIQC4R3uz9dG7QW31XJ', NULL, '192.168.68.103', 'Dalvik/2.1.0 (Linux; U; Android 13; 2201117SI Build/TP1A.220624.014)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHZremlDdTZadE9nTWoyQ2JGdlp6TjNnTXJYdTlHd24wOGNpQVFOcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321008),
('rZAHHreS5l1VTh79dfB2qCD3hsCtqrjc5RKv4kbR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidHFnb2xHdnNLdHQ3SFNSdXpHanB2VTZaNVBFSVZORVJnWFVpR1U4ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251738),
('S51X6DdyyODkbBLZwB5w70CoIjwbUnvLUO6nIOFJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZFBabURBbmVOb1dkZnJBNmxacjhEcnRtZ1A1WU96NlYyTVpaOHd2NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251513),
('sAiFGLcvgubJkb2lOxEZtTq4gmblOLjylweKLlgD', NULL, '192.168.0.104', 'Dalvik/2.1.0 (Linux; U; Android 15; sdk_gphone64_x86_64 Build/AP31.240517.022)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMzhtZWFFcFVLbjF6WlpCZXhac0pFb0N6eDFtSU1Cems0d2UwNjhwdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722267962),
('SSGOd21tHeSvr4NofsvRjojIbmpKoXmloSpsAFZE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUUpTVEVoZTBQaXAxUjJ1MVVvVmhpa21VV2l6Z1ZvMDBVWDF4RUJwSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253563),
('svYYr7HoF0zMZQG0oBtlCF4u4FfevQ5w07c9TWUL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSTVFY2pLOWhGZGpkeEt4N0h6S0NkV3E3aHFNbmNueFZ0eTRHanhiSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251846),
('TbnbUlqBNC7gQ7JcxAmkYfsGZUEw8ojqndVU878b', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWhhcjlBYW50dWViMjVPaDk5NWpSb2JCemtMUUMyNTlyQ3RoOW1ZNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254331),
('TJIWBCPzDkOyuWfhnhOzrMmIFsevHzrKO4HJoa3m', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZElCdllJRm9CYzU2MVZMeFFxQlloT0F6UEpCOTZkUUd2TUhMV1l5SCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253562),
('tJMMY4JxOIXoo7e3H0faB5bR2OCxMItI09gzXy9K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOEpwa1BJNEJkOVdzbHVuQTBzRUU1NUY0bkVnOXhJRnczUzg0b2xxZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253564),
('uKE0nLOZhQO3Hy9xdNOBpJd5yr7ITcNrK5fGrReU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVFFNbk9qenhZZW1WcGZvbUxDdGRQck4wZzM1REE0Z3lOZlhVNDNwYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254557),
('ULqeYAdGW9rTvRHKnHXZVilW0hsynJYKOMWrsEc5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieVBvVWFCdFI3czlMYTI0RTNVSEQ5WTFnOG54NkNVTmJ5Z2F6RGFWSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253846),
('uZaoinkOJeF5Jacex0Iu2818tHdzhPTDtCrIuhp6', NULL, '127.0.0.1', 'PostmanRuntime/7.40.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidFNDQ2hqblhMNjRlcjhQM0h5UkUwZGhJNGZCYlRDQ2VqZU5ma2NzbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722267154),
('vXo7kDnjgpn9q7AtEFngZlT8Q3rChpsyJ3WbzSkm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUlpDZWlpVHcxelRwczJ1TWVyM1RJQTM1a2ZBcVlGTFJBY3BOWnJmZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722254560),
('WsJwW0ieMOZsCnum1I8SQnVdgglLX6Z00mrRSn1q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmlnSzVDUW1oRHdSN2lyRG9pdjl5bXVtenJ2czdmdE5naU9iOWNtQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722251924),
('ygzGFMEzXRINrzzhB5L3ZADbBtfjm0BKGjOL5E2e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVXNWZERObjRocHZXeHhmYmFXUkl3emFZQ1NnRVF4SGh6YTJzcmViWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253932),
('ymuuKtvRmN9XuolJ3DIZUSi3rl3pjl6WdgZK7350', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidldQT2tzVlRmaHkxSzVpb2JUenJHWnFhaGVBQWhob2pWTWpScXFwWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253349),
('yvkDf1n3BAmklcw77sx3M8LbKGpsAhOnnaRsbIaN', NULL, '192.168.68.108', 'PostmanRuntime/7.40.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQXJtbUJCcjZPZHlzcDZuOTRTQ2p1elVVRGpiU2JkWm05bjh6aEJtcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722321188),
('ywgi5bDUe5sY2tgwHJrBIw1sPBvq18OuoKwwjP9g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicUdUaXhJTzNKbno5Wk9Wem9MVGFFZ0lmWVNJbmFyRU5HRDRmUzhZTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722252739),
('zO5xsGiHx1bGcwnwXDG3VroJftQwk8PyVuqUbFsL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUpUeDRybmg5b1F6dmtKMk42R0NLTGtRVWRXRDRGNlBqV3hoc084SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722253564);

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
  `status` int(11) DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', NULL, '$2y$12$SlyPAa0qAFqfNc6oywYfV.Q2GoLjHmu.cSL6aWz.T2mbmvLjtzxPq', 1, NULL, '2024-07-29 04:49:41', '2024-07-29 04:49:41'),
(2, 'User', 'user@example.com', NULL, '$2y$12$uZuISYddOSjdjldhD.AB3eaNdLVoOwr1ms4bJ83TtlomqpVKsIHmy', 1, NULL, '2024-07-29 04:49:53', '2024-07-29 04:49:53'),
(3, 'Rafi', 'rafi@example.com', NULL, '$2y$12$BfHQHDNUJIGq7VbRnw.tSea3q9dlT9oRlkd8iNczKpzFH6qE5dMXS', 1, NULL, '2024-07-29 04:50:29', '2024-07-29 04:50:29'),
(4, 'Rakib', 'rakib@example.com', NULL, '$2y$12$2zebXRyWMAVwrUxSCdCUR.V0NmSSNCK8qYHF9/8jldZjL2.j6F6Oa', 1, NULL, '2024-07-29 04:50:40', '2024-07-29 04:50:40'),
(5, 'Rashed', 'rashed@example.com', NULL, '$2y$12$4HAbBZRZfr8Xj8WeLtmr.e5g9LGdRfMK691aFXMRe1C8AS8lY4nDW', 1, NULL, '2024-07-29 04:50:51', '2024-07-29 04:50:51'),
(6, 'Rony', 'rony@example.com', NULL, '$2y$12$E3jCFNt.O6.HtswxArQKp.2IF6M/hdqy/.L7Pqxb61JDg2AwwjSkW', 1, NULL, '2024-07-29 04:51:02', '2024-07-29 04:51:02'),
(7, 'Amir', 'amir@example.com', NULL, '$2y$12$NnyLob/AJa9Sc6Tul6bmj.h2mOsVX19b6gtp1aZ3lOpkCBuVCGdCO', 0, NULL, '2024-07-29 04:51:25', '2024-07-29 04:51:25'),
(8, 'Kaiser', 'kaiser@example.com', NULL, '$2y$12$u9N1bOd.u07YQZIMgOc0O.IRaTDbTV5BMCefa6/8CYrJ73maugt2u', 0, NULL, '2024-07-29 04:51:37', '2024-07-29 04:51:37'),
(9, 'Foysul', 'foysul@example.com', NULL, '$2y$12$bvOjk1XXJS012MjNd.TPxupxR7wo3zMPMDdO7mDF2EzgaDXxgX1Nq', 0, NULL, '2024-07-29 04:51:48', '2024-07-29 04:51:48'),
(10, 'Toru', 'toru@example.com', NULL, '$2y$12$uUjNr1DNyHVmY5s5ey98YO5n7ajgKAcA0cDlH9TfOn7lPN3xhBkRe', 1, NULL, '2024-07-29 04:51:57', '2024-07-29 04:51:57');

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
