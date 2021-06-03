-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-06-03 16:29:50
-- サーバのバージョン： 10.4.19-MariaDB
-- PHP のバージョン: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_l05_13`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `goodbad_table`
--

CREATE TABLE `goodbad_table` (
  `id` int(11) NOT NULL,
  `good_text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `bad_text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `goodbad_table`
--

INSERT INTO `goodbad_table` (`id`, `good_text`, `bad_text`, `created`) VALUES
(7, '文字消す手間増える', 'プレースホルダー', '2021-06-03'),
(8, '文字色わかりにくい。騙される。', 'テキストエリア', '2021-06-03');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'SQL練習', '2021-06-01', '2021-06-01 12:05:49', '2021-06-01 12:05:49'),
(2, 'レバー食べたい', '2021-06-02', '2021-06-01 12:06:17', '2021-06-01 12:06:17'),
(3, '水餃子食べたい', '2021-06-02', '2021-06-01 12:06:31', '2021-06-01 12:06:31'),
(4, 'ミイラ展', '2021-06-06', '2021-06-01 12:06:48', '2021-06-01 12:06:48'),
(5, 'リコカツ', '2021-06-06', '2021-06-01 12:06:59', '2021-06-01 12:06:59'),
(6, 'aa', '2021-06-03', '2021-06-01 16:10:54', '2021-06-01 16:10:54'),
(7, 'ればーればーれｂ－', '2020-02-03', '2021-06-01 16:16:09', '2021-06-01 16:16:09');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `goodbad_table`
--
ALTER TABLE `goodbad_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `goodbad_table`
--
ALTER TABLE `goodbad_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
