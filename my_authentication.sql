-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2024 at 09:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_google_sheet_php`
--
CREATE DATABASE IF NOT EXISTS `db_google_sheet_php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_google_sheet_php`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spreadsheet`
--

CREATE TABLE `tbl_spreadsheet` (
  `id` int(11) NOT NULL,
  `spreadsheet_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_spreadsheet`
--

INSERT INTO `tbl_spreadsheet` (`id`, `spreadsheet_id`, `created_at`) VALUES
(1, '1P3O7F43aU1cV7g6JtY19c8DwSS2ziusQUPH1k0TGDgM', '2024-06-19 08:33:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_spreadsheet`
--
ALTER TABLE `tbl_spreadsheet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_spreadsheet`
--
ALTER TABLE `tbl_spreadsheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `my_authentication`
--
CREATE DATABASE IF NOT EXISTS `my_authentication` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_authentication`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_02_142104_add_user_id_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_user_id_unique` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"my_authentication\",\"table\":\"users\"},{\"db\":\"policy_assignment\",\"table\":\"add_referred_notes\"},{\"db\":\"policy_assignment\",\"table\":\"quotes_update_history\"},{\"db\":\"policy_assignment\",\"table\":\"clients\"},{\"db\":\"policy_assignment\",\"table\":\"riskCategories\"},{\"db\":\"policy_assignment\",\"table\":\"quotes\"},{\"db\":\"policy_assignment\",\"table\":\"statetax\"},{\"db\":\"policy_assignment\",\"table\":\"riskcategories\"},{\"db\":\"policy_assignment\",\"table\":\"endorsements\"},{\"db\":\"policy_assignment\",\"table\":\"quoteaddanother\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'policy_assignment', 'quotes_update_history', '{\"sorted_col\":\"id desc\"}', '2024-07-01 04:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-07-02 13:35:59', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `policy_assignment`
--
CREATE DATABASE IF NOT EXISTS `policy_assignment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `policy_assignment`;

-- --------------------------------------------------------

--
-- Table structure for table `addanother`
--

CREATE TABLE `addanother` (
  `aA_ID` int(5) NOT NULL,
  `aA_associated` int(5) NOT NULL DEFAULT 0,
  `aA_clientID` int(6) DEFAULT NULL,
  `aA_firm` varchar(255) DEFAULT NULL,
  `aA_date` int(13) DEFAULT NULL,
  `aA_add1` varchar(100) DEFAULT NULL,
  `aA_add2` varchar(50) DEFAULT NULL,
  `aA_add3` varchar(50) DEFAULT NULL,
  `aA_town` varchar(50) DEFAULT NULL,
  `aA_zip` varchar(20) DEFAULT NULL,
  `aA_state` varchar(50) DEFAULT NULL,
  `aA_country` varchar(20) DEFAULT NULL,
  `identify` varchar(255) DEFAULT NULL,
  `control` enum('No','Yes') DEFAULT NULL,
  `end_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add_referred_notes`
--

CREATE TABLE `add_referred_notes` (
  `id` int(120) NOT NULL,
  `quoteID` int(120) NOT NULL,
  `clientID` int(120) NOT NULL,
  `policyID` int(120) NOT NULL,
  `note` longtext NOT NULL,
  `post_by` varchar(120) NOT NULL,
  `date_time` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_add` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clientID` int(11) NOT NULL,
  `clientPassword` varchar(255) NOT NULL,
  `isPasswordEncrypt` int(1) DEFAULT 0,
  `wasPlainPassword` int(1) DEFAULT 1,
  `firm` varchar(100) DEFAULT '',
  `title` varchar(25) DEFAULT '',
  `fname` varchar(50) DEFAULT '',
  `sname` varchar(100) DEFAULT '',
  `dob` varchar(25) DEFAULT NULL,
  `clientDealWith` varchar(100) DEFAULT '',
  `clientMember` varchar(150) DEFAULT NULL,
  `clientMemberNo` varchar(50) DEFAULT '',
  `sal` varchar(25) DEFAULT '',
  `town` varchar(50) DEFAULT '',
  `ZIP` varchar(10) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(10) NOT NULL DEFAULT 'US',
  `addressLine1` varchar(50) DEFAULT '',
  `addressLine2` varchar(50) DEFAULT NULL,
  `addressLine3` varchar(50) DEFAULT NULL,
  `telFirst` varchar(13) DEFAULT '',
  `telSecond` varchar(13) DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `resetToken` varchar(255) DEFAULT NULL,
  `webPresence` varchar(100) DEFAULT '',
  `clientNotes` text DEFAULT NULL,
  `clientDelete` enum('No','Yes') NOT NULL DEFAULT 'No',
  `clientContact` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `clientMappingLINK` varchar(50) DEFAULT '',
  `selfEntry` enum('0','1','') NOT NULL DEFAULT '1',
  `wgSpecial` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `membershipStatus` enum('member','associate') DEFAULT 'member',
  `rating` decimal(10,0) DEFAULT 0,
  `changesMade` text DEFAULT NULL,
  `welcomeEmailSent` int(11) NOT NULL DEFAULT 0,
  `clientID_hays` int(11) DEFAULT NULL,
  `timeDone` int(11) DEFAULT NULL,
  `client_IP` varchar(255) DEFAULT NULL,
  `client_HOST` varchar(255) DEFAULT NULL,
  `clientSource` varchar(250) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'column created 29112018',
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`clientID`, `clientPassword`, `isPasswordEncrypt`, `wasPlainPassword`, `firm`, `title`, `fname`, `sname`, `dob`, `clientDealWith`, `clientMember`, `clientMemberNo`, `sal`, `town`, `ZIP`, `state`, `country`, `addressLine1`, `addressLine2`, `addressLine3`, `telFirst`, `telSecond`, `email`, `resetToken`, `webPresence`, `clientNotes`, `clientDelete`, `clientContact`, `clientMappingLINK`, `selfEntry`, `wgSpecial`, `guid`, `membershipStatus`, `rating`, `changesMade`, `welcomeEmailSent`, `clientID_hays`, `timeDone`, `client_IP`, `client_HOST`, `clientSource`, `created`, `modified`) VALUES
(51791, '70a0ca660059cd709fa2b5d52812ed00', 1, 1, 'noFirm', 'Mr', 'Chad', 'Cooper', NULL, '', 'ICF', '', 'Chad', 'Boca Raton', '33428', 'FL', 'US', 'Sweetwater Ln N', '', '', '(810)353-2588', '', 'test@cooper.com', NULL, '', '', 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 1478267302, '108.164.7.107', '108.164.7.107', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56273, 'America1248!', 0, 1, 'noFirm', '', 'Marianne', 'Essiambre', NULL, '', 'ICF', '', 'Marianne', 'San Tan Valley', '85143', 'AZ', 'US', 'North Desert Hills Drive', '', 'North Desert Hills Drive', '(520)004-2451', '', 'test@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1602441988, '174.73.130.206', 'ip174-73-130-206.ph.ph.cox.net', NULL, '0000-00-00 00:00:00', NULL),
(60051, '5a99c07eb116990b2770f0f06c239218', 1, 0, 'noFirm', 'Mrs', 'Rosalind', 'Sigman', NULL, '', 'ICF', '', 'Rosalind', 'Georgetown', '78626', 'TX', 'US', 'Falabella Trail', '', '', '(902)345-0127', '', 'natalie@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1669595951, '74.196.231.204', '74.196.231.204', '', '0000-00-00 00:00:00', NULL),
(59953, '45a47f08e8adf8d1b6e25ae8f8d74ce8', 1, 0, 'noFirm', 'Mr', 'Rosanne', 'Litvak', NULL, '', 'NAS', '', 'Rosanne', 'Flower Mound, TX', '75028', 'TX', 'US', 'flower mound road #360, Flower Mound', '', 'flower mound road #360, Flower Mound', '(945)203-2811', '', 'newhigh@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1667314288, '66.90.189.47', '66-90-189-47.dyn.grandenetworks.net', '', '0000-00-00 00:00:00', NULL),
(59266, '2dcb609f2544a142f4c85f2da70009fa', 1, 0, 'noFirm', 'Ms', 'Inga', 'Moore', NULL, '', 'ICF', '', 'Inga', 'Red Lion', '17356', 'PA', 'US', '276 Country Ridge Dr.', '', '', '(111)586-6274', '', 'mm@gmail.com', NULL, '', '', 'No', 'Yes', '', '1', NULL, '', 'member', '0', '', 0, NULL, 1654891303, '73.230.134.94', 'c-73-230-134-94.hsd1.pa.comcast.net', '', '0000-00-00 00:00:00', NULL),
(59921, 'a6aaeef475db3af32d85540c353b4651', 1, 0, 'noFirm', 'Mrs', 'Jean', 'King', NULL, '', 'ICF', '', 'Jean', 'New City', '10956', 'NY', 'US', '5Middletown Rd', '', '', '(845)536-9900', '', 'coaching@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1666805533, '71.190.221.48', 'pool-71-190-221-48.nycmny.fios.verizon.net', '', '0000-00-00 00:00:00', NULL),
(59932, '89d8a7da720e6d25df9ae048dc54d6a5', 1, 0, 'noFirm', 'Ms', 'Cheryl', 'Elkins', NULL, '', 'BL', '', 'Cheryl', 'New York', '10026', 'NY', 'US', '8 Morningside Avenue', 'Apt. 4N', '', '(954)679-9492', '', 'elena@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1666891348, '67.243.137.72', 'cpe-67-243-137-72.nyc.res.rr.com', '', '0000-00-00 00:00:00', NULL),
(56172, 'Rio', 0, 1, 'noFirm', 'Mrs', 'Elizabeth', 'Andersen', NULL, '', 'BL', '', 'Elizabeth', 'Kennett Square', '19348', 'PA', 'US', 'Broad Street', '', '', '(202)555-4178', '', 'heatherking202@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1599678874, '69.249.215.130', 'c-69-249-215-130.hsd1.pa.comcast.net', NULL, '0000-00-00 00:00:00', NULL),
(56237, 'Ashton', 0, 1, 'noFirm', 'Mrs', 'Catrese', 'Williams', NULL, '', 'BL', '', 'Catrese', 'Manassas', '20109', 'VA', 'US', 'Bonair ', '', '', '(540)270-1297', '', 'mamabear@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1600958441, '108.28.75.225', 'pool-108-28-75-225.washdc.fios.verizon.net', NULL, '0000-00-00 00:00:00', NULL),
(50140, 'infotech', 0, 1, 'noFirm', 'Mr', 'Elizabeth', 'Burke', NULL, '', 'PBCA', '', 'Elizabeth', 'ORLANDO', '32804', 'IA', 'US', 'Edgewate', '', 'Edgewate', '(444)783-1045', '', 'andersen@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 0, '', '', NULL, '0000-00-00 00:00:00', NULL),
(52941, 'Katw', 0, 1, 'noFirm', '', 'Kristin c', 'Dixon', NULL, '', 'ICF', '', 'Kristin c', 'Seattle', '98136', 'WA', 'US', '6523 California ', '', '', '(454)427-0908', '', 'kathryn_bergmann@hotmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 1515891592, '76.104.244.178', 'c-76-104-244-178.hsd1.wa.comcast.net', NULL, '0000-00-00 00:00:00', NULL),
(51871, 'DM#112816.WIC', 0, 1, 'noFirm', 'Ms', 'Michael', 'Caracalas', NULL, '', 'BL', '', 'Michael', 'Sussex', '53089', 'WI', 'US', 'Willow Lane G17', '', '', '(262)888-0145', '', 'dixon@gmail.com', NULL, '', '', 'No', 'Yes', '', '', NULL, '', 'member', '0', '', 0, 0, 1480370648, '99.17.197.8', '99-17-197-8.lightspeed.austtx.sbcglobal.net', NULL, '0000-00-00 00:00:00', NULL),
(50903, 'Ih3khnt67', 0, 1, 'noFirm', 'Mr', 'Donna', 'Lakkad', NULL, '', 'BL', '', 'Donna', 'Carrollton', '75010', 'TX', 'US', '2Hebron Pkwy', 'Suite J', '', '(972)454-1852', '', 'mike@test.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 1446150095, '108.19.111.54', 'pool-108-19-111-54.dllstx.fios.verizon.net', NULL, '0000-00-00 00:00:00', NULL),
(58165, '76f923606a0c261ef042126caa0e0246', 1, 0, 'noFirm', 'Ms', 'Kathryn', 'Settele', NULL, '', 'BL', '', 'Kathryn', 'Langley', '98260', 'WA', 'US', ' 4th St', 'C3', '', '(360)666-2765', '', 'kgal@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1635483416, '66.165.13.211', '66-165-13-211.byvw.hsi.whidbey.net', NULL, '0000-00-00 00:00:00', NULL),
(53286, 'Purplegirl2156@', 0, 1, 'noFirm', '', 'Michael', 'Plumley', NULL, '', 'BL', '', 'Michael', 'Oak Harbor', '98277', 'WA', 'US', 'Pioneer Way', '', '', '(777)632-2254', '', 'executive@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 1527218818, '73.157.55.254', 'c-73-157-55-254.hsd1.wa.comcast.net', NULL, '0000-00-00 00:00:00', NULL),
(58144, '2acbba250ffae5957e4707545598c0d1', 1, 0, 'noFirm', 'Ms', 'Erin', 'Ronsick', NULL, '', 'BL', '', 'Erin', '', NULL, 'MD', 'US', '', NULL, NULL, '', '', 'brown2@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1634906534, '71.179.46.127', 'pool-71-179-46-127.bltmmd.fios.verizon.net', NULL, '0000-00-00 00:00:00', NULL),
(52754, 'SafeTwoGo', 0, 1, 'noFirm', 'Ms', 'Heather', 'Bartlett', NULL, '', 'ICF', '', 'Heather', 'Denver', '80238', 'CO', 'US', ' Beeler Ct.', '', '', '(720)222-6244', '', 'beth@beth.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 1508773012, '75.166.227.121', '75-166-227-121.hlrn.qwest.net', NULL, '0000-00-00 00:00:00', NULL),
(54915, 'KEEPsafe24!!', 0, 1, 'noFirm', '', 'Elena', 'Bielinska', NULL, '', 'ICF', '', 'Elena', 'FISHERS', '46037', 'IN', 'US', ' LONG SOTTON CIR', '', '', '(317)444-9739', '', 'burke@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 1572211955, '99.73.170.123', '99-73-170-123.lightspeed.iplsin.sbcglobal.net', NULL, '0000-00-00 00:00:00', NULL),
(56351, '13?!$73IJkrs*', 0, 1, 'noFirm', '', 'Jennifer', 'Bergmann', NULL, '', 'CHC', '', 'Jennifer', 'Martin', '38237', 'TN', 'US', 'indell St.', '', '', '(731)666-7320', '', 't915@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1603899489, '148.66.184.65', 'wkt-bband-148-66-184-65.wk.net', NULL, '0000-00-00 00:00:00', NULL),
(54675, '4f9ded5627241878b5b0ae488b669297', 1, 1, 'noFirm', 'Mrs', 'Amanda', 'Galbreaith', NULL, '', 'ICF', '', 'Amanda', 'Mountain View', '94040', 'CA', 'US', ' Dale Ave', '', '', '(666)933-7636', '', 'linska@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 1566505803, '73.231.85.183', 'c-73-231-85-183.hsd1.ca.comcast.net', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55369, 'Whit323stminster!', 0, 1, 'noFirm', 'Ms', 'Ravikumar', 'Tillotson', NULL, '', 'WG', '', 'Ravikumar', 'Lexington', '2421', 'MA', 'US', 'Wood St.', '', '', '(781)454-8681', '', 'rose@coach.com', NULL, '', '', 'No', 'Yes', '', '1', NULL, '', 'member', '0', '', 0, NULL, 1582571549, '98.229.177.52', 'c-98-229-177-52.hsd1.ma.comcast.net', NULL, '0000-00-00 00:00:00', NULL),
(53679, 'Blessed@23', 0, 1, 'noFirm', 'Ms', 'Natalie', 'Wilson', NULL, '', 'BL', '', 'Natalie', 'Bowie', '20720-3227', 'MD', 'US', '9Myrtle Avenue', '', '', '(555)678-2923', '', 'wilson887@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', NULL, '', 0, 0, 1540563692, '96.241.226.222', 'pool-96-241-226-222.washdc.fios.verizon.net', NULL, '0000-00-00 00:00:00', NULL),
(57893, 'ecb6a2d15aaf505383807c6868c3d21d', 1, 0, 'noFirm', 'Mrs', 'Lorinda S', 'Brown', NULL, '', 'ICF', '', 'Lorinda S', 'Parker', '80134', 'CO', 'US', ' Crow Hill dr', '', ' Crow Hill dr', '(444)543-1099', '', 'molly@gmail.com', NULL, '', NULL, 'No', 'Yes', '', '1', NULL, NULL, 'member', '0', NULL, 0, NULL, 1629907914, '73.95.60.172', 'c-73-95-60-172.hsd1.co.comcast.net', NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `endorsements`
--

CREATE TABLE `endorsements` (
  `end_id` int(10) NOT NULL,
  `end_no` int(6) NOT NULL DEFAULT 0,
  `end_policyNo` int(10) DEFAULT 0,
  `end_clientID` int(10) NOT NULL DEFAULT 0,
  `effectivedate` int(25) NOT NULL DEFAULT 0 COMMENT '=datecreated or policy start if later',
  `dateCreated` int(25) DEFAULT 0,
  `dateDone` int(25) NOT NULL DEFAULT 0,
  `end_cashDif` decimal(18,2) NOT NULL DEFAULT 0.00,
  `end_words` text DEFAULT NULL,
  `new_quote` int(6) NOT NULL,
  `end_quoteNo` int(6) NOT NULL DEFAULT 0,
  `premium_2pay` decimal(18,2) NOT NULL DEFAULT 0.00,
  `policy_fee_2pay` decimal(18,2) NOT NULL DEFAULT 0.00,
  `admin_fee_2pay` decimal(18,2) NOT NULL DEFAULT 0.00,
  `tax_2pay` decimal(18,2) NOT NULL DEFAULT 0.00,
  `stamp_fee` decimal(18,2) NOT NULL DEFAULT 0.00,
  `end_cash2Pay` decimal(18,2) NOT NULL DEFAULT 0.00,
  `CashPaid` tinyint(4) NOT NULL DEFAULT 0,
  `end_type` varchar(50) DEFAULT NULL,
  `Signatures` int(11) NOT NULL DEFAULT 0,
  `Per_Claim_Limit` int(11) NOT NULL DEFAULT 0,
  `Aggregate_Limit` int(11) NOT NULL DEFAULT 0,
  `collect_premium_type` varchar(50) DEFAULT NULL,
  `refund_type` varchar(50) DEFAULT NULL,
  `CISPCretro` varchar(20) DEFAULT NULL,
  `AP` int(11) NOT NULL DEFAULT 0,
  `groupDiscipline` text DEFAULT NULL,
  `privacyRetroDate` varchar(50) DEFAULT NULL,
  `IsPaid` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `endorsements`
--

INSERT INTO `endorsements` (`end_id`, `end_no`, `end_policyNo`, `end_clientID`, `effectivedate`, `dateCreated`, `dateDone`, `end_cashDif`, `end_words`, `new_quote`, `end_quoteNo`, `premium_2pay`, `policy_fee_2pay`, `admin_fee_2pay`, `tax_2pay`, `stamp_fee`, `end_cash2Pay`, `CashPaid`, `end_type`, `Signatures`, `Per_Claim_Limit`, `Aggregate_Limit`, `collect_premium_type`, `refund_type`, `CISPCretro`, `AP`, `groupDiscipline`, `privacyRetroDate`, `IsPaid`) VALUES
(2756, 2604, 73969, 60903, 1698409923, 1698409923, 1698412592, '0.00', 'Limits of Professional Liability coverage increased to:<br>$1 million each claim and $3 million aggregate', 65648, 0, '56.59', '0.00', '0.00', '2.83', '0.00', '0.00', 0, 'collect premium', 0, 1000000, 3000000, 'Amend Limits', NULL, '', 0, '', NULL, 1),
(2755, 2603, 73969, 60903, 1698344748, 1698344748, 1698348608, '0.00', 'Product Liability coverage added:<br>$1 million each claim and $1 million aggregate', 65648, 0, '50.00', '0.00', '0.00', '2.50', '0.00', '0.00', 0, 'collect premium', 0, 0, 0, 'PLC', NULL, '', 0, '', NULL, 1),
(2754, 2602, 73969, 60903, 1698344704, 1698344704, 1698348449, '0.00', 'Limits of General Liability coverage increased to:<br>$1 million each claim and $3 million aggregate', 65648, 0, '30.00', '0.00', '0.00', '1.50', '0.00', '0.00', 0, 'collect premium', 0, 1000000, 3000000, 'Amend GL Limits', NULL, '', 0, '', NULL, 1),
(2753, 2601, 75696, 53531, 1698336049, 1698336049, 0, '0.00', 'Added as an Additional Insured:<br>The Trustees of Columbia University in the City of New York Attn: Risk Management <br>615 West 131st St 3rd FL<br>New York, NY 10027 US<br><br>', 70417, 0, '25.00', '0.00', '0.00', '1.25', '0.00', '0.00', 0, 'collect premium', 0, 0, 0, 'AI', NULL, NULL, 0, NULL, NULL, 0),
(2752, 2600, 74259, 51526, 1698333681, 1698333681, 1698348601, '0.00', 'Added as an Additional Insured:<br>The Regents of the University of California Supply Chain Management â€ Insurance Desk <br>1608 4th St Ste 228<br>Berkeley, CA 94710 US<br><br>', 66467, 0, '25.00', '0.00', '0.00', '1.25', '0.00', '0.00', 0, 'collect premium', 0, 0, 0, 'AI', NULL, NULL, 0, NULL, NULL, 1),
(2751, 2599, 71563, 60038, 1698245449, 1698245449, 1698279045, '0.00', 'Added as an Additional Insured:<br>Mama pancake ventures, LLC<br>10127 Phillips Rd.<br>Lafayette, CO 80026 US<br><br>', 59107, 0, '25.00', '0.00', '0.00', '1.25', '0.00', '0.00', 0, 'collect premium', 0, 0, 0, 'AI', NULL, NULL, 0, NULL, NULL, 1),
(2750, 2598, 73969, 60903, 1698173136, 1698173136, 1698178081, '0.00', 'Added as an Additional Insured:<br>Regents of the University of California<br>10920 Wilshire Blvd Ste 860<br>Los Angeles, CA 90095 US<br><br>', 65648, 0, '25.00', '0.00', '0.00', '1.25', '0.00', '0.00', 0, 'collect premium', 0, 0, 0, 'AI', NULL, NULL, 0, NULL, NULL, 1),
(2749, 2597, 75642, 61509, 1698172631, 1698172631, 1698180057, '0.00', 'Added as an Additional Insured:<br>City of San Jose- Finance Risk Management & Insurance<br>200 East Santa Clara St. 14th FLoor Tower<br>San Jose, CA 95113 US<br><br>Metta Solutions LLC<br>1340 Environ Way bldg 1000 3rd fl<br>Chapel Hill, NC 27517 US<br><br>', 70018, 0, '25.00', '0.00', '0.00', '1.25', '0.00', '0.00', 0, 'collect premium', 0, 0, 0, 'AI', NULL, NULL, 0, NULL, NULL, 1),
(2748, 2596, 75218, 58055, 1698086385, 1698086385, 1698090492, '0.00', 'Added as an Additional Insured:<br>City of South San Francisco<br>400 Grand Ave<br>South San Francisco, CA 94080 US<br><br>', 69098, 0, '25.00', '0.00', '0.00', '1.25', '0.00', '0.00', 0, 'collect premium', 0, 0, 0, 'AI', NULL, NULL, 0, NULL, NULL, 1),
(2747, 2595, 75218, 58055, 1698085128, 1698085128, 1698090436, '0.00', 'Limits of General Liability coverage increased to:<br>$1 million each claim and $3 million aggregate', 69098, 0, '30.00', '0.00', '0.00', '1.50', '0.00', '0.00', 0, 'collect premium', 0, 1000000, 3000000, 'Amend GL Limits', NULL, '', 0, '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `policyID` int(8) NOT NULL,
  `policyVersion` int(3) NOT NULL DEFAULT 0,
  `firm` varchar(150) DEFAULT '',
  `dateOfPolicyIssue` int(20) DEFAULT NULL,
  `cashID` int(10) NOT NULL DEFAULT 0,
  `policyNo` varchar(8) NOT NULL DEFAULT '0',
  `policyRetro` varchar(35) DEFAULT '',
  `policyStart` varchar(35) DEFAULT '',
  `policyEnd` varchar(35) DEFAULT '',
  `policyEndUnix` int(15) DEFAULT NULL,
  `CISPCretro` varchar(20) DEFAULT NULL,
  `privacyRetro` varchar(20) DEFAULT NULL,
  `quoteID` int(8) NOT NULL DEFAULT 0,
  `clientID` int(8) NOT NULL DEFAULT 0,
  `WIIntroNo` int(11) DEFAULT NULL,
  `policyMappingLINK` varchar(50) DEFAULT '',
  `timeNow` varchar(50) DEFAULT '',
  `policyNotes` text DEFAULT NULL,
  `disposable` varchar(75) DEFAULT '',
  `thisPolicyRenews` int(6) DEFAULT 0,
  `thisPolicyRenewedBy` int(6) DEFAULT NULL,
  `policyVer` enum('SL','AD','RPG','Nil') NOT NULL DEFAULT 'Nil',
  `supressRenewal` varchar(3) NOT NULL DEFAULT 'No',
  `state` varchar(2) DEFAULT NULL,
  `Cancelled` int(11) NOT NULL DEFAULT 0,
  `allowRenewalAfterExpire` int(11) NOT NULL DEFAULT 0,
  `hideFromRenewalReportUntil` int(11) NOT NULL DEFAULT 0,
  `PNO` int(11) DEFAULT NULL COMMENT 'Of RS/Hays database',
  `paidstatus` varchar(2) DEFAULT '1',
  `YoA` varchar(15) DEFAULT NULL,
  `updateBDX` enum('0','1') DEFAULT NULL,
  `isDeferredPaid` varchar(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`policyID`, `policyVersion`, `firm`, `dateOfPolicyIssue`, `cashID`, `policyNo`, `policyRetro`, `policyStart`, `policyEnd`, `policyEndUnix`, `CISPCretro`, `privacyRetro`, `quoteID`, `clientID`, `WIIntroNo`, `policyMappingLINK`, `timeNow`, `policyNotes`, `disposable`, `thisPolicyRenews`, `thisPolicyRenewedBy`, `policyVer`, `supressRenewal`, `state`, `Cancelled`, `allowRenewalAfterExpire`, `hideFromRenewalReportUntil`, `PNO`, `paidstatus`, `YoA`, `updateBDX`, `isDeferredPaid`) VALUES
(75841, 0, 'ICF', 1698658607, 26423, '75727', '06 November 2022', '06 November 2023', '6 November 2024', 1730851200, '', NULL, 70524, 51791, NULL, '', '1698658607', '', '71a0bf1a67b606f16c96aad20c4c3453', 71391, NULL, 'Nil', 'No', 'FL', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75840, 0, 'ICF', 1698654758, 26422, '75726', '31 October 2020', '31 October 2023', '31 October 2024', 1730332800, '', NULL, 70520, 56273, NULL, '', '1698654758', '', '27a27bd0170ee157b0d28dcaf92fe467', 70903, NULL, 'Nil', 'No', 'MD', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75839, 0, 'ICF', 1698633073, 26421, '75725', '28 November 2022', '28 November 2023', '28 November 2024', 1732752000, '30 October 2023', NULL, 70513, 60051, NULL, '', '1698633073', '', '859de39ffc591bf961a24b7ca6d4c2c1', 71580, NULL, 'Nil', 'No', 'TX', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75838, 0, 'NAS', 1698632141, 26420, '75724', '01 November 2022', '01 November 2023', '1 November 2024', 1730419200, '', NULL, 70511, 59953, NULL, '', '1698632141', '', '96aef5b1e8a12f452e30410e343bf4d2', 71342, NULL, 'Nil', 'No', 'TX', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75837, 0, 'ICF', 1698627493, 26419, '75723', '01 November 2023', '01 November 2023', '1 November 2024', 1730419200, '30 October 2023', NULL, 70507, 61531, NULL, '', '1698627493', '', 'd932cf4a919e207044f12d482d6c06af', 0, NULL, 'Nil', 'No', 'WA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75836, 0, 'ICF', 1698617543, 26418, '75722', '22 October 2022', '22 October 2023', '22 October 2024', 1729555200, '', NULL, 70285, 59266, NULL, '', '1698617543', '', '65f147e1a70dd6a93b6dc5ce63b2a933', 71209, NULL, 'Nil', 'No', 'PA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75835, 0, 'ICF', 1698614316, 26417, '75721', '01 April 2022', '26 October 2023', '26 October 2024', 1729900800, '29 October 2023', NULL, 70504, 59921, NULL, '', '1698614316', '', '09af029362d534e0e56b87649371ef76', 71273, NULL, 'Nil', 'No', 'NY', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75834, 0, 'BL', 1698610645, 26416, '75720', '28 October 2022', '28 October 2023', '28 October 2024', 1730073600, '', NULL, 70503, 59932, NULL, '', '1698610645', '', 'c61cb84251df02eeede662a0f0475c89', 71289, NULL, 'Nil', 'No', 'NY', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75833, 0, 'BL', 1698606210, 26415, '75719', '13 November 2021', '13 November 2023', '13 November 2024', 1731456000, '', NULL, 70501, 56172, NULL, '', '1698606210', '', '08cf4db2bc0d51734d0ab5416f580bff', 71285, NULL, 'Nil', 'No', 'PA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75832, 0, 'BL', 1698589977, 26414, '75718', '23 October 2023', '29 October 2023', '29 October 2024', 1730160000, '', NULL, 70500, 56237, NULL, '', '1698589977', '', '2a0982b0c96a6581fb70f9dee18825b8', 70850, NULL, 'Nil', 'No', 'VA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75831, 0, 'ICF', 1698577263, 26413, '75717', '29 October 2023', '29 October 2023', '29 October 2024', 1730160000, '', NULL, 70499, 61556, NULL, '', '1698577263', '', '6e17f827f5ab5a27722530345ff2d2cf', 0, NULL, 'Nil', 'No', 'MA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75830, 0, 'PBCA', 1698537197, 26412, '75716', '01 November 2014', '01 November 2023', '1 November 2024', 1730419200, '28 October 2023', NULL, 70498, 50140, NULL, '', '1698537197', '', '0b14cb7a412bcb636cc292896d3cc03e', 70928, NULL, 'Nil', 'No', 'FL', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75829, 0, 'ICF', 1698529449, 26411, '75715', '03 December 2019', '03 December 2023', '3 December 2024', 1733184000, '28 October 2023', NULL, 70497, 52941, NULL, '', '1698529449', '', '222b078e38e4563956adfba3fc7a69bf', 71307, NULL, 'Nil', 'No', 'WA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75828, 0, 'BL', 1698523913, 26410, '75714', '28 November 2016', '28 November 2023', '28 November 2024', 1732752000, '', NULL, 70493, 51871, NULL, '', '1698523913', '', '9499568c7e7683b4c75e8a3e024c52e6', 71399, NULL, 'Nil', 'No', 'WI', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75827, 0, 'ICF', 1698494445, 26409, '75713', '28 October 2023', '28 October 2023', '28 October 2024', 1730073600, '28 October 2023', NULL, 70488, 61594, NULL, '', '1698494445', '', '5dbd64a68469146fd30aa5676236c297', 0, NULL, 'Nil', 'No', 'WY', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75826, 0, 'BL', 1698439471, 26408, '75712', '18 November 2022', '18 November 2023', '18 November 2024', 1731888000, '', NULL, 70486, 50903, NULL, '', '1698439471', '', '29c2b701f91c01b17a326ffa662af7c9', 71518, NULL, 'Nil', 'No', 'TX', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75825, 0, 'ICF', 1698432261, 26407, '75711', '30 October 2023', '30 October 2023', '30 October 2024', 1730246400, '27 October 2023', NULL, 70479, 61606, NULL, '', '1698432261', '', '3cad24d29189937f18467633d2208150', 0, NULL, 'Nil', 'No', 'NY', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75824, 0, 'BL', 1698429366, 26406, '75710', '29 October 2021', '29 October 2023', '29 October 2024', 1730160000, '', NULL, 70475, 58165, NULL, '', '1698429366', '', '99825031599ac4f246e78db5690c2328', 71168, NULL, 'Nil', 'No', 'WA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75823, 0, 'BL', 1698422060, 26405, '75709', '28 October 2019', '28 October 2023', '28 October 2024', 1730073600, '27 October 2023', NULL, 70470, 53286, NULL, '', '1698422060', '', '0855c17270144f65c98dcfce6c6b4412', 71142, NULL, 'Nil', 'No', 'WA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75822, 0, 'ICF', 1698421939, 26404, '75708', '31 October 2023', '31 October 2023', '31 October 2024', 1730332800, '', NULL, 70471, 61605, NULL, '', '1698421939', '', '9e548b9ce59dcbe2994055e1ab32fb48', 0, NULL, 'Nil', 'No', 'WI', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75821, 0, 'BL', 1698419459, 26403, '75707', '27 October 2023', '27 October 2023', '27 October 2024', 1729987200, '', NULL, 70468, 58144, NULL, '', '1698419459', '', '0a7e9131e705d4b671ebbb2de4af9612', 0, NULL, 'Nil', 'No', 'MD', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75820, 0, 'ICF', 1698366654, 26401, '75706', '01 November 2017', '01 November 2023', '1 November 2024', 1730419200, '27 October 2023', NULL, 70462, 52754, NULL, '', '1698366654', '', '8d048d7e53ff05a7832925482bae29d3', 71219, NULL, 'Nil', 'No', 'CO', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75819, 0, 'ICF', 1698357152, 26400, '75705', '26 October 2023', '26 October 2023', '26 October 2024', 1729900800, '', NULL, 70459, 61593, NULL, '', '1698357152', '', 'c52b0407d6110bb7cf8846b4cc22aba5', 0, NULL, 'Nil', 'No', 'UT', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75818, 0, 'BL', 1698356461, 26399, '75704', '26 October 2023', '26 October 2023', '26 October 2024', 1729900800, '', NULL, 70458, 61602, NULL, '', '1698356461', '', '480f6130319453d86926c4e92ef97506', 0, NULL, 'Nil', 'No', 'CA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75817, 0, 'ICF', 1698351267, 26398, '75703', '27 October 2019', '27 October 2023', '27 October 2024', 1729987200, '26 October 2023', NULL, 70455, 54915, NULL, '', '1698351267', '', 'd9c1fdd6049e92956a8f7774499c0319', 71253, NULL, 'Nil', 'No', 'IN', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75816, 0, 'CHC', 1698347795, 26394, '75702', '11 November 2020', '11 November 2023', '11 November 2024', 1731283200, '26 October 2023', NULL, 70454, 56351, NULL, '', '1698347795', '', 'db299f13f3fdccae8c50cb7482f590a1', 71242, NULL, 'Nil', 'No', 'TN', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75815, 0, 'ICF', 1698343978, 26393, '75701', '13 November 2019', '13 November 2023', '13 November 2024', 1731456000, '26 October 2023', NULL, 70447, 54675, NULL, '', '1698343978', '', '03f434b941108e488166699683affe9a', 71358, NULL, 'Nil', 'No', 'CA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75814, 0, 'WG', 1698289943, 26392, '75700', '27 October 2020', '27 October 2023', '27 October 2024', 1729987200, '26 October 2023', NULL, 70433, 55369, NULL, '', '1698289943', '', '68729d46af4db3efdbb4127f125cd292', 71282, NULL, 'Nil', 'No', 'MA', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75813, 0, 'BL', 1698282477, 26391, '75699', '26 October 2018', '26 October 2023', '26 October 2024', 1729900800, '', NULL, 70426, 53679, NULL, '', '1698282477', '', '73311aa93518f195cf929c4fda758c73', 71305, NULL, 'Nil', 'No', 'MD', 0, 0, 0, NULL, '1', NULL, NULL, '0'),
(75812, 0, 'ICF', 1698259376, 26389, '75698', '18 October 2023', '25 October 2023', '25 October 2024', 1729814400, '', NULL, 70423, 57893, NULL, '', '1698259376', '', '939ce33c898fd12f74a4633c034e5ab5', 70557, NULL, 'Nil', 'No', 'CO', 0, 0, 0, NULL, '1', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `quoteaddanother`
--

CREATE TABLE `quoteaddanother` (
  `ID` int(11) NOT NULL,
  `aA_ID` int(5) DEFAULT NULL,
  `quoteID` int(11) DEFAULT NULL,
  `clientID` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `quoteID` int(10) NOT NULL,
  `clientID` int(10) NOT NULL DEFAULT 0,
  `namedInsured` varchar(200) DEFAULT NULL,
  `quoteType` enum('new','extra','renew') NOT NULL DEFAULT 'new',
  `FT_PT` enum('FT','PT','') NOT NULL DEFAULT 'FT',
  `policyAttached` int(10) NOT NULL DEFAULT 0,
  `timeDone` int(50) NOT NULL DEFAULT 0,
  `discipline` text DEFAULT NULL,
  `coverage` char(3) NOT NULL DEFAULT '1',
  `GAcoverage` char(1) NOT NULL DEFAULT '0',
  `firm` varchar(100) DEFAULT '',
  `state` char(2) DEFAULT '',
  `currentlyInsured` char(3) NOT NULL DEFAULT 'No',
  `startDate` varchar(25) DEFAULT '',
  `retro` varchar(50) NOT NULL DEFAULT 'Before retro added',
  `privacyRetro` varchar(25) DEFAULT NULL,
  `extraNotedNo` int(1) DEFAULT 0,
  `CAN` int(1) NOT NULL DEFAULT 0,
  `policyFollowOn` char(3) NOT NULL DEFAULT '0',
  `claim_hadOne` char(3) NOT NULL DEFAULT 'Yes',
  `claim_hadOneDetails` varchar(255) DEFAULT NULL,
  `claimKnowOne` char(3) NOT NULL DEFAULT 'Yes',
  `claimKnowOneDetails` varchar(255) DEFAULT NULL,
  `specialTerms` char(3) NOT NULL DEFAULT 'No',
  `specialTermsDetails` varchar(255) DEFAULT NULL,
  `incomeOK` varchar(15) NOT NULL DEFAULT '',
  `basicPremium` varchar(10) NOT NULL DEFAULT 'unset',
  `premium2pay` varchar(10) NOT NULL DEFAULT '0.00' COMMENT 'including CISPC premium',
  `CISPCpremium` decimal(10,2) DEFAULT 0.00,
  `CISPCretro` varchar(20) DEFAULT NULL,
  `addTIC` int(11) DEFAULT 0,
  `TICpremium` decimal(10,2) DEFAULT 0.00,
  `policyFee` decimal(6,2) NOT NULL DEFAULT 0.00,
  `adminFee` decimal(6,2) NOT NULL DEFAULT 0.00,
  `NYfee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `totalBeforeTax2show` varchar(10) NOT NULL DEFAULT '0.00',
  `tax2Pay` decimal(6,2) NOT NULL DEFAULT 0.00,
  `stampFee` decimal(5,2) DEFAULT 0.00,
  `total2show` varchar(10) NOT NULL DEFAULT '0.00',
  `GLCpremium` decimal(10,2) DEFAULT 0.00,
  `GLCadminFee` decimal(10,2) DEFAULT 0.00,
  `GLCtax` decimal(10,2) DEFAULT 0.00,
  `GLCstampFee` decimal(10,2) DEFAULT 0.00,
  `chargeRate` varchar(5) DEFAULT NULL,
  `addGLC` int(11) DEFAULT 0,
  `GLCcoverage` char(3) NOT NULL DEFAULT '0',
  `GLCretro` varchar(20) DEFAULT NULL,
  `addPLC` int(11) DEFAULT 0,
  `PLCPremium` decimal(10,2) DEFAULT 0.00,
  `addWS` int(11) NOT NULL DEFAULT 0,
  `WSpremium` decimal(10,2) DEFAULT 0.00,
  `thisPremium` decimal(6,2) NOT NULL DEFAULT 0.00,
  `thisTax` decimal(6,2) NOT NULL DEFAULT 0.00,
  `thisTotal` decimal(6,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `identify` varchar(255) DEFAULT NULL,
  `thisCoverageRenews` int(8) NOT NULL DEFAULT 0,
  `thisCoverageRenewedBy` int(8) NOT NULL DEFAULT 0,
  `quoteSpecial` int(4) NOT NULL DEFAULT 0,
  `Cancelled` int(11) NOT NULL DEFAULT 0,
  `tradingName` varchar(150) DEFAULT NULL,
  `additionalProfessional` varchar(4) DEFAULT '0',
  `ptype` varchar(50) NOT NULL DEFAULT 'individual',
  `groupDiscipline` text DEFAULT NULL,
  `retroSequence` int(11) DEFAULT NULL,
  `extraNoted` text DEFAULT NULL,
  `yearOfBirth` int(4) DEFAULT NULL,
  `SMLCpremium` decimal(10,2) DEFAULT NULL,
  `HNOApremium` int(11) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `highestRiskValue` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `encrypt` varchar(100) DEFAULT NULL,
  `quotesMappingLINK` varchar(50) DEFAULT NULL,
  `addAnother_indentify` varchar(50) DEFAULT NULL,
  `addAnother_no` int(5) DEFAULT NULL,
  `addAnother_premium` decimal(8,2) DEFAULT NULL,
  `hoursComment` text DEFAULT NULL,
  `renewPolicyNo` int(6) DEFAULT NULL,
  `ratingText` text DEFAULT NULL,
  `saved_quote` int(11) DEFAULT 0,
  `saved_request_uri` varchar(256) DEFAULT NULL,
  `dba_status` varchar(2) DEFAULT '1',
  `browser` text DEFAULT NULL,
  `YoA` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`quoteID`, `clientID`, `namedInsured`, `quoteType`, `FT_PT`, `policyAttached`, `timeDone`, `discipline`, `coverage`, `GAcoverage`, `firm`, `state`, `currentlyInsured`, `startDate`, `retro`, `privacyRetro`, `extraNotedNo`, `CAN`, `policyFollowOn`, `claim_hadOne`, `claim_hadOneDetails`, `claimKnowOne`, `claimKnowOneDetails`, `specialTerms`, `specialTermsDetails`, `incomeOK`, `basicPremium`, `premium2pay`, `CISPCpremium`, `CISPCretro`, `addTIC`, `TICpremium`, `policyFee`, `adminFee`, `NYfee`, `totalBeforeTax2show`, `tax2Pay`, `stampFee`, `total2show`, `GLCpremium`, `GLCadminFee`, `GLCtax`, `GLCstampFee`, `chargeRate`, `addGLC`, `GLCcoverage`, `GLCretro`, `addPLC`, `PLCPremium`, `addWS`, `WSpremium`, `thisPremium`, `thisTax`, `thisTotal`, `notes`, `identify`, `thisCoverageRenews`, `thisCoverageRenewedBy`, `quoteSpecial`, `Cancelled`, `tradingName`, `additionalProfessional`, `ptype`, `groupDiscipline`, `retroSequence`, `extraNoted`, `yearOfBirth`, `SMLCpremium`, `HNOApremium`, `discount`, `highestRiskValue`, `rating`, `encrypt`, `quotesMappingLINK`, `addAnother_indentify`, `addAnother_no`, `addAnother_premium`, `hoursComment`, `renewPolicyNo`, `ratingText`, `saved_quote`, `saved_request_uri`, `dba_status`, `browser`, `YoA`) VALUES
(70524, 51791, NULL, 'renew', '', 0, 1698658506, 'a:7:{i:0;i:147;i:1;i:164;i:2;i:165;i:3;i:67;i:4;i:105;i:5;i:36;i:6;i:51;}', '11', '0', 'ICF', 'FL', 'No', '06-Nov-23', '06-Nov-22', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '155', '155', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '7.75', '0.00', '187.75', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Cooper LLC', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 1, '4b156f341db631af06ebaf2802501bf7', NULL, '61954b0c2decdb97ac4904e4318e575c', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>second year of coverage</strong> in this or any other claims made\n				program for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.69', NULL),
(70520, 56273, NULL, 'renew', '', 0, 1698654343, 'a:7:{i:0;i:186;i:1;i:105;i:2;i:106;i:3;i:37;i:4;i:58;i:5;i:180;i:6;i:126;}', '11', '0', 'ICF', 'MD', 'No', '31-Oct-23', '31-Oct-20', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '170', '170', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '8.50', '0.00', '203.5', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Global Coaching', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, '4d42b75d7e0a4eae79333e2080d4319b', NULL, 'f78eefa48788dbc1573f99df2937ea4b', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Apple Safari 604.1 on mac reports: <br >Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/118.0.5993.92 Mobile/15E148 Safari/604.1', NULL),
(70513, 60051, NULL, 'renew', '', 0, 1698632828, 'a:15:{i:0;i:164;i:1;i:67;i:2;i:105;i:3;i:36;i:4;i:39;i:5;i:40;i:6;i:41;i:7;i:42;i:8;i:43;i:9;i:45;i:10;i:47;i:11;i:46;i:12;i:48;i:13;i:51;i:14;i:53;}', '11', '0', 'ICF', 'TX', 'No', '28-Nov-23', '28-Nov-22', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '155', '230', '75.00', '30-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '11.50', '0.00', '470', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '30-Oct-23', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Executive Coaching LLC', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 1, '30c2054522fd1c0825b5ba86191ef5d3', NULL, '4ce0efc1871ded8337c1b453ed1a2dae', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>second year of coverage</strong> in this or any other claims made\n				program for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Apple Safari 604.1 on mac reports: <br >Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/118.0.5993.92 Mobile/15E148 Safari/604.1', NULL),
(70511, 59953, NULL, 'renew', '', 0, 1698631831, 'a:8:{i:0;i:7;i:1;i:8;i:2;i:122;i:3;i:157;i:4;i:135;i:5;i:32;i:6;i:34;i:7;i:54;}', '11', '0', 'NAS', 'TX', 'No', '01-Nov-23', '01-Nov-22', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '500', '372', '372', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '18.60', '0.00', '415.6', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Hiigh  Wellness', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 1, '8d635093845935f7015426c5fd7f2b3c', NULL, 'fd7e36dfdf475d6316fe0b1798489325', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>second year of coverage</strong> in this or any other claims made\n				program for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Apple Safari 16.1 on mac reports: <br >Mozilla/5.0 (iPhone; CPU iPhone OS 16_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', NULL),
(70507, 61531, NULL, 'new', '', 0, 1698626717, 'a:1:{i:0;i:105;}', '11', '0', 'ICF', 'WA', 'No', '01-Nov-23', '01-Nov-23', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '140', '215', '75.00', '30-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '10.75', '0.00', '456.75', '170.00', '25.00', '11.00', '0.00', NULL, 1, '11', '30-Oct-23', 1, '50.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Studio LLC', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 1, 0, '07732eae1c2a6db82942b39e98755988', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 1, 'https://us.westminster.global/quoteStart.php', '1', 'Your browser: Google Chrome 118.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70285, 59266, NULL, 'renew', '', 0, 1697929921, 'a:19:{i:0;i:1;i:1;i:13;i:2;i:16;i:3;i:134;i:4;i:106;i:5;i:37;i:6;i:51;i:7;i:117;i:8;i:145;i:9;i:162;i:10;i:55;i:11;i:56;i:12;i:59;i:13;i:58;i:14;i:179;i:15;i:180;i:16;i:174;i:17;i:60;i:18;i:126;}', '11', '0', 'ICF', 'PA', 'No', '22-Oct-23', '22-Oct-22', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '380', '380', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '19.00', '0.00', '627.5', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '26-Sep-22', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Release Recovery, LLC', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 3, 1, 'c45a9c8f2a24ba1e19089f2ffb243282', NULL, 'd28eae3a43f05e12232c90fa619dfa53', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>second year of coverage</strong> in this or any other claims made\n				program for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 1, 'https://us.westminster.global/renewal.php?x=efdf3b88601799bbccc40bd80403cca5&r=1&w=wg', '1', 'Your browser: Google Chrome 117.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(70504, 59921, NULL, 'renew', '', 0, 1698614098, 'a:1:{i:0;i:105;}', '22', '0', 'ICF', 'NY', 'No', '26-Oct-23', '01-Apr-22', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '200', '248', '400.5', '75.00', '29-Oct-23', 0, '0.00', '0.00', '25.00', '15.00', '0', '14.42', '0.60', '656.9', '170.00', '25.00', '6.12', '0.26', NULL, 1, '11', '26-Oct-22', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Positive Approach ', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 1, '69f160f3356454f21570c090d25189ec', NULL, '544aee959c7ffe32586c76ab88362a8e', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>second year of coverage</strong> in this or any other claims made\n				program for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 116.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(70503, 59932, NULL, 'renew', '', 0, 1698610248, 'a:3:{i:0;i:67;i:1;i:105;i:2;i:36;}', '11', '0', 'BL', 'NY', 'No', '28-Oct-23', '28-Oct-22', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '155', '155', '0.00', '', 0, '0.00', '0.00', '25.00', '15.00', '0', '5.58', '0.23', '200.81', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Studio  LLC', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 1, 'f2dea0e370ee3736aa373e322ffae141', NULL, 'b409d9d1315bed3335176c8632fabf38', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>second year of coverage</strong> in this or any other claims made\n				program for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70501, 56172, NULL, 'renew', '', 0, 1698605982, 'a:4:{i:0;i:164;i:1;i:67;i:2;i:105;i:3;i:126;}', '11', '0', 'BL', 'PA', 'No', '13-Nov-23', '13-Nov-21', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '170', '170', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '8.50', '0.00', '203.5', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Life Coaching', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, 'f57bbf40c1d3e5338b7aab0c056f59b6', NULL, 'e336b50693e22be85a0dc9093a2b9df6', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>third year of coverage</strong> in this or any other claims made program \n				for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage. ', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70500, 56237, NULL, 'new', '', 0, 1698589610, 'a:3:{i:0;i:105;i:1;i:114;i:2;i:115;}', '11', '0', 'BL', 'VA', 'No', '29-Oct-23', '23-Oct-23', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '140', '140', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '7.00', '0.00', '375.5', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '29-Oct-23', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'sleep consulting', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 1, 0, '95129258998c5dcfce6a2a0ac9abcf09', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 0, NULL, '1', 'Your browser: Apple Safari 604.1 on mac reports: <br >Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/115.0.5790.160 Mobile/15E148 Safari/604.1', NULL),
(70499, 61556, NULL, 'new', '', 0, 1698576929, 'a:14:{i:0;i:147;i:1;i:164;i:2;i:165;i:3;i:67;i:4;i:181;i:5;i:105;i:6;i:36;i:7;i:39;i:8;i:42;i:9;i:43;i:10;i:44;i:11;i:47;i:12;i:46;i:13;i:48;}', '13', '0', 'ICF', 'MA', 'No', '29-Oct-23', '29-Oct-23', NULL, 0, 0, '0', 'Yes', 'Lorem ipsum dolor sit amet', 'No', NULL, 'No', NULL, '100', '165', '280.5', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '14.03', '0.00', '554.53', '200.00', '25.00', '10.00', '0.00', NULL, 1, '13', '29-Oct-23', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, '', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 2, 0, 'ee2b410f9f802c6743b986692ec1fa6d', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 0, NULL, '1', 'Your browser: Apple Safari 16.6.1 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Safari/605.1.15', NULL),
(70498, 50140, NULL, 'renew', '', 0, 1698536831, 'a:5:{i:0;i:164;i:1;i:154;i:2;i:53;i:3;i:145;i:4;i:167;}', '11', '0', 'PBCA', 'FL', 'No', '01-Nov-23', '01-Nov-14', NULL, 1, 0, '0', 'No', NULL, 'No', NULL, 'Yes', 'Donec pede justo,', '500', '408', '508', '75.00', '28-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '25.40', '0.00', '761.9', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '01-Nov-18', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, ' Business Advisors, Inc.', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, '5d23577b8eff950c8bc63242c82d3cc0', NULL, '3ffaf36ad4391129398f4a27efb2b984', 1, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on linux reports: <br >Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36', NULL),
(70497, 52941, NULL, 'renew', '', 0, 1698529347, 'a:5:{i:0;i:67;i:1;i:105;i:2;i:149;i:3;i:99;i:4;i:51;}', '11', '0', 'ICF', 'WA', 'No', '03-Dec-23', '03-Dec-19', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '170', '245', '75.00', '28-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '12.25', '0.00', '485.75', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '28-Oct-23', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'K Coaching LLC', '', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, 'cd603ded74c3feea64d26fa516bc8916', NULL, '2c535cb2081802002d7640ae099cc05c', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70493, 51871, NULL, 'renew', '', 0, 1698523720, 'a:1:{i:0;i:167;}', '11', '0', 'BL', 'WI', '', '28-Nov-23', '28-Nov-16', NULL, 0, 1, '0', 'No', NULL, 'Yes', 'Quisque rutrum. Aenean imperdiet.', 'Yes', 'Lorem ipsum dolor sit amet.', '100', '170', '170', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '8.50', '0.00', '203.5', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Life is Ahead', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, '48eefe6d85389c94d350bead3fe3262e', NULL, '953cfd4d8980cc868c7c987679c5bdd5', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70488, 61594, NULL, 'new', '', 0, 1698492722, 'a:48:{i:0;i:147;i:1;i:10;i:2;i:164;i:3;i:165;i:4;i:67;i:5;i:105;i:6;i:173;i:7;i:206;i:8;i:27;i:9;i:143;i:10;i:184;i:11;i:134;i:12;i:36;i:13;i:195;i:14;i:185;i:15;i:154;i:16;i:38;i:17;i:39;i:18;i:40;i:19;i:41;i:20;i:42;i:21;i:43;i:22;i:44;i:23;i:45;i:24;i:47;i:25;i:46;i:26;i:48;i:27;i:49;i:28;i:166;i:29;i:106;i:30;i:178;i:31;i:37;i:32;i:99;i:33;i:200;i:34;i:51;i:35;i:125;i:36;i:131;i:37;i:201;i:38;i:145;i:39;i:56;i:40;i:104;i:41;i:150;i:42;i:57;i:43;i:58;i:44;i:118;i:45;i:180;i:46;i:167;i:47;i:188;}', '11', '0', 'ICF', 'WY', 'No', '28-Oct-23', '28-Oct-23', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '340', '415', '75.00', '28-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '20.75', '0.00', '460.75', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, ' Coaching, LLC', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 3, 0, 'df9c648b30f8437e023e14c7df3d9c95', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 0, NULL, '1', 'Your browser: Apple Safari 16.5.2 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5.2 Safari/605.1.15', NULL),
(70486, 50903, NULL, 'renew', '', 0, 1698439312, 'a:3:{i:0;i:164;i:1;i:36;i:2;i:167;}', '11', '0', 'BL', 'TX', 'No', '18-Nov-23', '18-Nov-22', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '200', '248', '248', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '12.40', '0.00', '488.9', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '18-Nov-22', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'c and Associates, LLC', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 1, 'f17e13562aa2e7fd8c5b13d8079b0ac5', NULL, '0796bc66028bd65a1ffed45accd6afad', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>second year of coverage</strong> in this or any other claims made\n				program for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70479, 61606, NULL, 'new', '', 0, 1698429450, 'a:5:{i:0;i:165;i:1;i:105;i:2;i:149;i:3;i:36;i:4;i:47;}', '13', '0', 'ICF', 'NY', 'No', '30-Oct-23', '30-Oct-23', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '140', '313', '75.00', '27-Oct-23', 0, '0.00', '0.00', '25.00', '15.00', '0', '11.27', '0.47', '597.24', '200.00', '25.00', '7.20', '0.30', NULL, 1, '13', '27-Oct-23', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Rose Consulting LLC', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 1, 0, 'b0ad4861fb704beb1732d840c0c66b28', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70475, 58165, NULL, 'renew', '', 0, 1698428841, 'a:1:{i:0;i:105;}', '11', '0', 'BL', 'WA', 'No', '29-Oct-23', '29-Oct-21', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '170', '170', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '8.50', '0.00', '203.5', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Octopus  Coaching', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, 'f8e8a567b433a7b3733ab7caf4508e9f', NULL, '277eb5342f0dffc6b8a1a951e4234c4f', 0, NULL, NULL, NULL, 'This quote assumes this coverage to be the <strong>third year of coverage</strong> in this or any other claims made program \n				for this form of cover.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage. ', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70470, 53286, NULL, 'renew', '', 0, 1698421726, 'a:6:{i:0;i:165;i:1;i:155;i:2;i:105;i:3;i:201;i:4;i:167;i:5;i:102;}', '13', '0', 'BL', 'WA', 'No', '28-Oct-23', '28-Oct-19', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '215', '540.5', '75.00', '27-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '27.03', '0.00', '827.53', '200.00', '25.00', '10.00', '0.00', NULL, 1, '13', '25-Oct-19', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, ' Executive Coaching and Consulting LLC', '1', 'group', 'a:3:{s:4:\"cat1\";s:1:\"1\";s:4:\"cat2\";s:0:\"\";s:4:\"cat3\";s:0:\"\";}', NULL, '', NULL, '0.00', 0, '0.00', 2, 2, '7aae59fa35b314365219dd8767540719', NULL, 'd0939fa3b8432b0e793c9e44d180d919', 1, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70471, 61605, NULL, 'new', '', 0, 1698421652, 'a:1:{i:0;i:67;}', '11', '0', 'ICF', 'WI', 'No', '31-Oct-23', '31-Oct-23', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '140', '140', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '7.00', '0.00', '172', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, ' Career , LLC', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 1, 0, 'a97c112d80bc22e05811db22a251f61b', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70468, 58144, NULL, 'new', '', 0, 1698418599, 'a:2:{i:0;i:149;i:1;i:154;}', '11', '0', 'BL', 'MD', 'No', '27-Oct-23', '27-Oct-23', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '140', '165', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '8.25', '0.00', '198.25', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'C.Bown Associates, LLC', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 1, 0, '97a49a28d500fa0ada0985312915645c', NULL, 'c507ae18d87b29d2bd900d08dc263b65', 1, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 1, 'https://us.westminster.global/quoteStart.php', '1', 'Your browser: Mozilla Firefox 118.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', NULL),
(70462, 52754, NULL, 'renew', '', 0, 1698366522, 'a:14:{i:0;i:186;i:1;i:164;i:2;i:165;i:3;i:67;i:4;i:105;i:5;i:36;i:6;i:41;i:7;i:46;i:8;i:99;i:9;i:51;i:10;i:59;i:11;i:150;i:12;i:167;i:13;i:60;}', '11', '0', 'ICF', 'CO', '', '01-Nov-23', '01-Nov-17', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '500', '408', '483', '75.00', '27-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '24.15', '0.00', '735.65', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '18-Oct-20', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Beth   LLC', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, '3a048c22c047fbbd990753e82817b74f', NULL, '25ccd4c301edafc262b92376b461f127', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Apple Safari 15.6.1 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6.1 Safari/605.1.15', NULL),
(70459, 61593, NULL, 'new', '', 0, 1698356653, 'a:2:{i:0;i:105;i:1;i:126;}', '11', '0', 'ICF', 'UT', 'No', '26-Oct-23', '26-Oct-23', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '140', '140', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '7.00', '0.00', '172', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Bethany', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 1, 0, '114a2e29d2ee2a382db803e99a585403', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 0, NULL, '1', 'Your browser: Google Chrome 116.0.0.0 on Unknown reports: <br >Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(70458, 61602, NULL, 'new', '', 0, 1698356343, 'a:3:{i:0;i:105;i:1;i:118;i:2;i:188;}', '11', '0', 'BL', 'CA', 'No', '26-Oct-23', '26-Oct-23', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '200', '224', '224', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '11.20', '0.00', '463.7', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '26-Oct-23', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, '', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 1, 0, '20746599a42159c8b05e2cb36632f9a1', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70455, 54915, NULL, 'renew', '', 0, 1698350795, 'a:3:{i:0;i:67;i:1;i:105;i:2;i:51;}', '13', '0', 'ICF', 'IN', 'No', '27-Oct-23', '27-Oct-19', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '170', '364', '75.00', '26-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '9.73', '0.00', '629.36', '200.00', '25.00', '5.63', '0.00', NULL, 1, '13', '27-Oct-19', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, '  Coaching, LLC DBA  Joy', '', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, '1efa4dcc81a8a6748e6d745092e2def5', NULL, '79791a007e37dbadd8e6dbe1a8cbb6d0', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70454, 56351, NULL, 'renew', '', 0, 1698347557, 'a:6:{i:0;i:127;i:1;i:32;i:2;i:106;i:3;i:55;i:4;i:58;i:5;i:98;}', '13', '0', 'CHC', 'TN', 'No', '11-Nov-23', '11-Nov-20', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '170', '364', '75.00', '26-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '18.20', '0.00', '407.2', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Phoenix Rising ', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 1, 2, 'c2b2a9e06ffecf427eb7e094a8dba70d', NULL, '7e4fe85d658a318c4fda52bc61b048c1', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70447, 54675, NULL, 'renew', '', 0, 1698343837, 'a:34:{i:0;i:147;i:1;i:164;i:2;i:165;i:3;i:67;i:4;i:181;i:5;i:105;i:6;i:28;i:7;i:149;i:8;i:36;i:9;i:154;i:10;i:38;i:11;i:39;i:12;i:40;i:13;i:41;i:14;i:42;i:15;i:43;i:16;i:44;i:17;i:45;i:18;i:47;i:19;i:46;i:20;i:48;i:21;i:37;i:22;i:99;i:23;i:51;i:24;i:53;i:25;i:145;i:26;i:104;i:27;i:150;i:28;i:58;i:29;i:118;i:30;i:167;i:31;i:133;i:32;i:174;i:33;i:126;}', '11', '0', 'ICF', 'CA', 'No', '13-Nov-23', '13-Nov-19', NULL, 0, 1, '0', 'Yes', 'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet', 'Yes', 'bibendum sodales, augue velit cursus nunc,', 'Yes', 'Quisque rutrum. Aenean imperdiet. ', '200', '805', '880', '75.00', '26-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '44.00', '0.00', '1152.5', '170.00', '25.00', '8.50', '0.00', NULL, 1, '11', '02-Nov-22', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Inga  ', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 3, 2, '38f35f9b4ad2d93c39d75dfb819cb8b1', NULL, '48f42a392e662c60e28b07d0fc31c726', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Mozilla Firefox 119.0 on windows reports: <br >Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', NULL),
(70433, 55369, NULL, 'renew', '', 0, 1698289048, 'a:29:{i:0;i:147;i:1;i:164;i:2;i:165;i:3;i:67;i:4;i:181;i:5;i:105;i:6;i:36;i:7;i:154;i:8;i:38;i:9;i:39;i:10;i:40;i:11;i:41;i:12;i:42;i:13;i:43;i:14;i:44;i:15;i:45;i:16;i:47;i:17;i:46;i:18;i:48;i:19;i:166;i:20;i:178;i:21;i:99;i:22;i:51;i:23;i:145;i:24;i:150;i:25;i:58;i:26;i:180;i:27;i:167;i:28;i:126;}', '11', '0', 'ICF', 'MA', 'No', '27-Oct-23', '27-Oct-20', NULL, 0, 1, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '215', '290', '75.00', '26-Oct-23', 0, '0.00', '0.00', '25.00', '0.00', '0', '14.50', '0.00', '329.5', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Sustainable Solutions  Consulting', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 2, 2, '98165a12eee9c337a876ed1db50ef2fb', NULL, '0afc284dac8bc015983e3484383c1694', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 1, 'https://us.westminster.global/renewal.php?x=bed117215c70e61c23eac0d1a0f7351a&clientMember=WG', '1', 'Your browser: Apple Safari 14.1.2 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Safari/605.1.15', NULL),
(70426, 53679, NULL, 'renew', '', 0, 1698282325, 'a:19:{i:0;i:165;i:1;i:67;i:2;i:181;i:3;i:105;i:4;i:36;i:5;i:38;i:6;i:39;i:7;i:40;i:8;i:41;i:9;i:42;i:10;i:43;i:11;i:44;i:12;i:45;i:13;i:47;i:14;i:46;i:15;i:48;i:16;i:99;i:17;i:51;i:18;i:167;}', '11', '0', 'BL', 'MD', '0', '26-Oct-23', '26-Oct-18', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '215', '215', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '10.75', '0.00', '250.75', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'Growth Strategies LLC', '0', 'individual', '', NULL, '', NULL, '0.00', 0, '0.00', 2, 2, '3afb2060eb678cd25094cb672292014b', NULL, 'ac21280fa5ff0bd29e00cd6320fce587', 0, NULL, NULL, NULL, 'This quote assumes the applicant has had continuous coverage for more than three years\n				in this or any other claims made program.\n				</li><li>In the event of a claim it will be necessary to provide to the underwriters\n				satisfactory evidence of continuous claims made coverage from the retroactive date selected\n				to the start date of this coverage.', 0, NULL, '1', 'Your browser: Google Chrome 118.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL),
(70423, 57893, NULL, 'new', '', 0, 1698259293, 'a:12:{i:0;i:165;i:1;i:36;i:2;i:154;i:3;i:39;i:4;i:41;i:5;i:43;i:6;i:45;i:7;i:47;i:8;i:46;i:9;i:51;i:10;i:150;i:11;i:167;}', '11', '0', 'ICF', 'CO', 'No', '25-Oct-23', '18-Oct-23', NULL, 0, 0, '0', 'No', NULL, 'No', NULL, 'No', NULL, '100', '140', '140', '0.00', '', 0, '0.00', '0.00', '25.00', '0.00', '0', '7.00', '0.00', '172', '0.00', '25.00', '0.00', '0.00', NULL, 0, '', '', 0, '0.00', 0, '25.00', '0.00', '0.00', '0.00', NULL, NULL, 0, 0, 0, 0, 'TBD , LLC', '0', 'individual', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', 1, 0, '44bdbac84f55749a16815a795237b839', NULL, NULL, 0, NULL, NULL, NULL, 'This quote assumes this coverage to be <strong>first year of coverage</strong> in this or any other claims made program.', 0, NULL, '1', 'Your browser: Google Chrome 114.0.0.0 on mac reports: <br >Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotes_update_history`
--

CREATE TABLE `quotes_update_history` (
  `id` int(120) NOT NULL,
  `quotesID` int(120) NOT NULL,
  `clientID` int(120) NOT NULL,
  `policyID` int(120) NOT NULL,
  `status` varchar(120) NOT NULL,
  `ip_address` varchar(120) NOT NULL,
  `date_time` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riskcategories`
--

CREATE TABLE `riskcategories` (
  `ID` int(11) NOT NULL,
  `title` varchar(150) NOT NULL COMMENT 'used for name, dont give space between words ',
  `titleCanFr` varchar(256) DEFAULT NULL,
  `categoryName` varchar(256) DEFAULT NULL,
  `long_titleCanFr` varchar(256) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `descriptionCanFr` varchar(256) DEFAULT NULL,
  `hazardClass` int(11) NOT NULL COMMENT 'FK riskRates',
  `hazardClassRc` int(11) NOT NULL DEFAULT 1,
  `enabled` int(11) NOT NULL DEFAULT 1,
  `dateCreated` int(25) DEFAULT NULL,
  `dateUpdated` int(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riskcategories`
--

INSERT INTO `riskcategories` (`ID`, `title`, `titleCanFr`, `categoryName`, `long_titleCanFr`, `description`, `descriptionCanFr`, `hazardClass`, `hazardClassRc`, `enabled`, `dateCreated`, `dateUpdated`) VALUES
(1, 'Astrology', '', 'Astrology', '', 'A group of systems, traditions and beliefs in which knowledge of the relative positions of celestial bodies and related details is held to be useful in understanding, interpreting  and organizing information about personality, human affairs and other terrestrial affairs. Put another way, the art of understanding the correlation between celestial events and human experience.\r\n', '', 1, 1, 1, NULL, NULL),
(2, 'NLP', '', 'Neuro Linguistic Programming', '', 'NLP is the acronym for Neuro Linguistic Programming. The goal-orientated approach to preblem-solving and modelling success developed by Richard Bandler and John Grindler, characterized by a focus on structure and process rather than content.   ', '', 1, 1, 1, NULL, NULL),
(3, 'Mickel', '', 'Mickel Therapy', '', 'A body-mind approach to healing Chronic Fatigue Syndrome, ME and Fibromyalgia sufferers. The treatment involves face to face talking therapy with no medication, diet change or need for suppliments. All Mickel Therapists are supervised by Dr Mickel. More information can be found at: http://www.mickeltherapy.com', '', 1, 1, 1, NULL, NULL),
(4, 'Alexander', '', 'Alexander Technique', '', 'The Alexander Technique is a method that works to change (movement) habits in our everyday activities. It is a simple and practical method for improving ease and freedom of movement, balance, support and coordination. The technique teaches the use of the appropriate amount of effort for a particular activity, giving you more energy for all your activities. It is not a series of treatments or exercises, but rather a reeducation of the mind and body.<br><br>\r\n\r\nThe Alexander Technique is a method which helps a person discover a new balance in the body by releasing unnecessary tension. It can be applied to sitting, lying down, standing, walking, lifting, and other daily activities\r\n\r\n', '', 1, 1, 1, NULL, NULL),
(41, 'ManInterview', '', 'Management Training - interview skills', '', 'Training individuals or groups to understand the techniques necessary in order to undertake effective interviewing and the implimentation and procedures to improve interviewing in the work place', '', 1, 1, 1, NULL, NULL),
(42, 'ManPerform', '', 'Management Training - performance skills', '', 'Training individuals or groups to understand peformance and undertake effective processes, implimentation and procedures to bring about greater performance in the work place', '', 1, 1, 1, NULL, NULL),
(43, 'ManPersonalEffectiveness', '', 'Management Training - personal effectiveness', '', 'Training individuals or groups to understand personal effectiveness and undertake effectiveness processes, implimentation and procedures to bring about greater effectiveness in the work they perform', '', 1, 1, 1, NULL, NULL),
(44, 'ManPresentation', '', 'Management Training - presentation skills', '', 'Training individuals or groups to understand effectiveness visual, verbal and written presentation and personal projection in the work place', '', 1, 1, 1, NULL, NULL),
(6, 'Yoga', '', 'Yoga', '', 'Yoga is an ancient mind and body practice that may have originated in India.  Various styles of yoga combine physical postures, concentration, breathing techniques and meditation or relaxation. It promotes endurance, strength, calmness, flexibility, and overall mental and physical well-being. There are several types of yoga and many disciplines within the practice.', '', 2, 1, 1, NULL, 1656077990),
(7, 'Allergy', '', 'Allergy Therapy', '', 'An allergy is a condition in which your immune system regards an ordinary, harmless substance such as a food, pollen or dust, as a dangerous invader, and responds to it by producing its own antibodies to attack the substance.<br><br>\r\n\r\nThis is when you suffer from one or more unpleasant symptoms. An allergy normally causes an instant reaction, such as in the case of a peanut allergy. However, with an intolerance, the culprit, such as milk or wheat, is usually eaten every day. \r\n\r\n<br><br>\r\nTherefore your symptoms, caused by the intolerance, never improve, and it is difficult to find the underlying cause.Medication may help to treat the symptoms, but not the root cause. If your symptoms don\'t clear up after a reasonable amount of time, then the root cause could be an intolerance', '', 1, 1, 1, NULL, NULL),
(8, 'Aromatherapy', '', 'Aromatherapy', '', 'The use of volatile plant oils, including essential oils, for psychological and physical well-being', '', 1, 1, 1, NULL, NULL),
(9, 'Art', '', 'Art Therapy', '', 'Art therapy is based on the belief that the creative process involved in the making of art is healing and life-enhancing. Through creating art and talking about art and the process of art making with an art therapist, one can increase awareness of self, cope with symptoms, stress, and traumatic experiences, enhance cognitive abilities, and enjoy the life-affirming pleasures of artistic creativity', '', 2, 1, 1, NULL, NULL),
(10, 'Behaviour', '', 'Behaviour Therapy', '', 'Behaviour Therapy is a form of psychotherapy which seeks to improve the way a person feels by changing what they do. It is commonly used to overcome phobias\r\n', '', 2, 1, 1, NULL, NULL),
(11, 'Biofeedback', '', 'Biofeedback', '', 'Biofeedback operates on the notion that we have the innate ability and potential to influence the automatic functions of our bodies through the exertion of will and mind. Biofeedback has recently been shown to give us what had previously seemed an impossible degree of control over a variety of physiologic events. Biofeedback can also be used to train persons to block the pain of colitis, neuritis, and other conditions. Many of these techniques have been scientifically proven. Using a special machine and sensors to record muscle contractions and skin temperature, you can learn to control normally involuntary processes such as heart rate and blood pressure that increase under stress. The machine \"feeds back\" the efforts and eventually you can recognize and control facets of the stress response by yourself ', '', 1, 1, 1, NULL, NULL),
(64, 'Thai', '', 'Thai foot massage', '', 'Thai Foot Massage is a massage of the hands, legs and feet that originated in Thailand about 2000 years ago. It is a part of traditional Thai massage and has elements of Shiatsu, Chinese massage and Yoga incorporated into the massage itself', '', 1, 1, 1, NULL, NULL),
(19, 'DanceM', '', 'Dance Movement Therapy', '', 'Dance Movement Therapy is the psychotherapeutic use of movement and dance through which a person can engage creatively in a process to further their emotional, cognitive, physical and social integration. It is founded on the principle that movement reflects an individual’s patterns of thinking and feeling. Through acknowledging and supporting clients’ movements the therapist encourages development and integration of new adaptive movement patterns together with the emotional experiences that accompany such changes. Dance Movement Therapy is practised as both individual and group therapy in health, education and social service settings and in private practice', '', 1, 1, 1, NULL, NULL),
(20, 'DanceT', '', 'Dance Therapy\r\n', '', 'The theory underlying dance therapy is that body movement reflects the inner state of the human, and that by moving the body within a guided therapeutic setting, a healing process begins. Emerging inner conflicts and issues from the unconscious to the consciousness of the person are addressed on all levels - physically, emotionally, mentally and spiritually. Seeking the full integration of mind and body, and bringing harmony between all the aforementioned levels of the human being is what dance therapy is all about\r\n\r\n', '', 2, 1, 1, NULL, NULL),
(21, 'Drama', '', 'Drama Therapy\r\n', '', 'Drama therapy is a health and human services profession that seeks to facilitate physical integration and personal growth for individuals, couples, families, and various groups through the use of theatrical and dramatic processes. Drama therapists work in a wide variety of settings, including hospitals, schools, mental centers, prisons, and businesses ', '', 1, 1, 1, NULL, NULL),
(22, 'Encounter', '', 'Encounter Groups\r\n', '', 'A typically unstructured psychotherapy group in which the participants seek to increase their sensitivity, responsiveness, and emotional expressiveness, as by freely verbalizing and responding to emotions', '', 1, 1, 1, NULL, NULL),
(23, 'Faith', '', 'Faith Healing', '', 'Faith healing, or divine healing, is the use of spiritual means in treating disease, sometimes accompanied (in extreme instances) with the refusal of modern medical techniques. Another term for this is spiritual healing. Faith healing is a form of alternative medicine', '', 1, 1, 1, NULL, NULL),
(24, 'FengShui', '', 'Feng Shui', '', 'The Chinese art of positioning objects in buildings and other places based on the belief in positive and negative effects of the patterns of yin and yang and the flow of chi, the vital force or energy inherent in all things\r\n', '', 1, 1, 1, NULL, NULL),
(25, 'Floatation', '', 'Floatation Tank Therapy', '', 'Floating is \"a method of attaining the deepest rest that humankind has ever experienced.\" Lie suspended in a warm solution of Epsom salt only 25cm deep. The salt solution in a floation tank or floatroom is so dense that you float effortlessly. Gentle music helps you to relax. In short, \"It\'s complete mental and physical relaxation\" \r\n', '', 1, 1, 1, NULL, NULL),
(26, 'Flower', '', 'Flower Remedies', '', 'The emotions play a crucial role in the health of the physical body. Flower remedies directly address a person’s emotional state in order to help facilitate both psychological and physiological well-being. By balancing negative feelings and stress, flower remedies can effectively remove the emotional barriers to health and recovery\r\n', '', 1, 1, 1, NULL, NULL),
(27, 'Focusing', '', 'Focusing', '', 'Focusing is direct access to a bodily knowing when the individual is quiet and thinks in a structured manner - the structured manner as taught by focusing practitioners', '', 1, 1, 1, NULL, NULL),
(28, 'Gestalt', '', 'Gestalt', '', 'Gestalt Therapy uses our individual awareness to encourage personal growth and develop our potential, to become whole. We do this by noticing how we are living now and exploring how we may create any fixed patterns of behaviour that leave us feeling dissatisfied, uncomfortable or ill at ease. Gestalt encourages a non judgemental awareness of our present experience from moment to moment. Noticing what we experience ( perceptions, sensations, feelings) and how we behave ( express & communicate) in the present creates an opportunity to explore changes in our behaviour and attitudes now. This may enable us to complete previously unresolved experiences and to develop more satisfying ways of expressing ourselves \r\n\r\n', '', 1, 1, 1, NULL, NULL),
(29, 'Gem', '', 'Gem Remedies', '', 'Gemstone therapy is a new-age alternative healing method that has its roots in both in the Hindu religion and medieval medical practices\r\n\r\n', '', 1, 1, 1, NULL, NULL),
(30, 'Healing', '', 'Healing Dowsing', '', 'To dowse is to search, with the aid of simple hand held tools or instruments, for that which is otherwise hidden from view or knowledge. It can be applied to searches for a great number of artefacts and entities. It is most commonly known by most people in association with searching for underground water; not surprising considering the absolute need for water by man and his animals and cultivated plants which sustain him.\r\n\r\nDowsing has been defined by Major-General Jim Scott-Eliot,in his book \'Dowsing - One Man\'s Way as: \'The ability to use a Natural Sensitivity which enables us to know things we cannot know by the use of the day to day brain or by learning, by experience, or by the use of the five physical senses\'\r\n\r\n', '', 1, 1, 1, NULL, NULL),
(31, 'Hearing', '', 'Hearing Therapy', '', 'A Hearing Therapist\'s role is to provide a comprehensive rehabilitation service for adults who have hearing difficulties and/or associated disorders', '', 2, 1, 1, NULL, NULL),
(32, 'Homeopathy', '', 'Homeopathy', '', 'Natural form of medicine that uses immeasurably small doses of medicines to stimulate the body\'s own defense and healing process. Homeopathy focuses on bringing the entire body back into homeostasis, or balance\r\n', '', 1, 1, 1, NULL, NULL),
(33, 'Hypnotherapy', '', 'Hypnotherapy', '', 'Please note: Cover for Hypnotherapy is available ONLY if the income derived from Hypnotherapy, when combined with Past Life Regression therapy, Mediumship and Channelling is no more than 20% of total practice income.\r\n<br><br>\r\nThis condition applies to applications made after 1st October 2006\r\n<br><br>\r\nHypnotherapy processes interact directly with inner consciousness to find core issue causes of problems in a client’s life. Clients can examine beliefs and thought processes that are giving rise to emotional, physical, mental and spiritual problems and make changes at the core level from which the outer manifestation originates. With changes at the inner levels of consciousness the outer projection changes.', '', 3, 2, 1, NULL, NULL),
(34, 'Indian', '', 'Indian head massage', '', 'Indian Head Massage is a technique of manipulating soft tissues in the shoulders and scalp. The therapist uses a range of different massage pressures and rhythms to stimulate the head and neck area. A typical massage lasts about 20 minutes \r\n\r\n', '', 1, 1, 1, NULL, NULL),
(35, 'Kinesiology', '', 'Kinesiology', '', 'The scientific study of man\'s movement and the movements of implements or equipment that he might use in exercise, sport or other forms of physical activity\r\n', '', 1, 1, 1, NULL, NULL),
(36, 'Leadership', '', 'Leadership training', '', 'The training of leadership. Leadership is the ability to facilitate action and guide change by individuals in groups or organisations. To lead is to direct, supervise, encourage, inspire, and co-ordinate.<br><br>A good leader develops personal leadership skills and encourages and trains new leaders who will follow', '', 1, 1, 1, NULL, NULL),
(37, 'Mentoring', '', 'Mentoring', '', 'The process in which an experienced colleague is assigned to an inexperienced individual and assists in a training or general support role', '', 1, 1, 1, NULL, NULL),
(38, 'ManAppraisal', '', 'Management Training - appraisal skills', '', 'To equip managers with the skills and tools required to prepare, deliver and evaluate performance appraisal on others\r\n', '', 1, 1, 1, NULL, NULL),
(39, 'ManCommunications', '', 'Management Training - communications skills', '', 'The training of the individual\'s ability to influence, motivate, inspire and communicate with others in the work place', '', 1, 1, 1, NULL, NULL),
(40, 'ManDisciplinary', '', 'Management Training - disciplinary skills', '', 'Training individuals or groups to understand and undertake effective disciplinary processes, implimentation and procedures in the work place', '', 1, 1, 1, NULL, NULL),
(12, 'Biorhythms', '', 'Biorhythms', '', 'Biorhythm charts illustrate the principle that we are influenced by physical, emotional, and intellectual cycles. Many people report that they can improve the quality of their lives by monitoring the highs and lows of these cycles and acting accordingly. For example, you might try to schedule important exams during your intellectual highs, avoid talking to your significant other during your emotional lows, or arranging the lineup of your baseball team around their physical highs', '', 1, 1, 1, NULL, NULL),
(13, 'Colour', '', 'Colour Therapy', '', 'Using the seven colours of the spectrum, Colour Therapy aims to balance and enhance our body\'s energy centres / Chakras and also to help stimulate our body\'s own healing process.Colour Therapy uses colour to re-balance the Chakras (our energy centres) that have become depleted of energy.\r\nEach of the seven colours of the spectrum, resonates with one of the main seven chakras of the body. These chakras are like spirals of energy, each one relating to the others. Chakra (pronounced sha-kra) is the Sanskrit word for \' wheel\'.\r\nColour has a profound effect on us on all levels, physical, mental, emotional and spiritual. If our energy centres become blocked or depleted, then our body cannot function properly and this, in turn, can lead to a variety of problems on any level\r\n', '', 1, 1, 1, NULL, NULL),
(14, 'Conciliation', '', 'Conciliation/Mediation', '', 'Involves an independent mediator (someone who doesn’t take sides and who won’t gain or lose anything by the outcome). They will help you and the other person or company find a solution to the problem. You and your opponent, not the mediator, decide what will happen and the terms of any agreement you make. But the process is voluntary so you cannot force the other person or organisation to take part. \r\n\r\nMediation and conciliation themselves are not binding, but they can be made binding if there is a signed mediated agreement. What is said in a mediation session is confidential, so it cannot be used in court later. Only the resulting agreement can be enforced by the court. In practice, people tend to keep to a mediated agreement because they have prepared its terms themselves.\r\n\r\nYou can use mediation and concilliation for a range of different problems\r\n\r\n', '', 1, 1, 1, NULL, NULL),
(15, 'Counseling', '', 'Counselling', '', 'Simply stated, counselling is any relationship in which one person is helping another person to better understand and solve some problem. Friends and relatives provide a type of counselling, as do clergy, academic advisors, teachers, and many others. Counsellors have a broad range of experience in developing \"helping relationships\" and working with many different situations\r\n', '', 1, 1, 1, NULL, NULL),
(16, 'Crystal', '', 'Crystal Healing', '', 'Crystals and gemstones are surrounded by mythology. We are all familiar with the idea of fortune-tellers gazing into crystal balls and foretelling the appearance of tall, dark strangers. However, few of us realise that crystals are actually used by the vast majority of people, every day. Quartz watches, computers, televisions and many conventional medical techniques would not exist without crystals. We base our entire measurement of time upon piezoelectric vibrations from quartz crystal. The scientific theory Piezoelectric currents are tiny electrical charges which are produced when pressure is applied to a specific kind of crystal. Lighters harvest the surge of piezoelectricity into a spark that ignites a flame.\r\nCrystals vary their structure when they are subjected to changes in temperature, water levels (hydration) and they even change colour if you alter their electromagnetic field - we use this characteristic in order to see the black figures on the face of a quartz LCD watch. Water levels are also another factor in the way that crystals behave. Crystalline structures are every where - even in the human body. These are found on the surface of cells and in the cell \"battery\", the mitochondria. If we experience changes in water, electromagnetic field or temperature, then biochemical traffic across the cell membrane can be altered, as well as the energy production capacity of the mitochondria. Crystals can, almost like a lens, \"focus\" the electromagnetic fields that surround cell membranes and mitochondria. This means that during crystal healing, placing the crystals on nerve clusters usually found around the chakra areas, could lead to significant alterations in the traffic of neurochemical messengers within the nervous system and thus affect bodywide chemistry. Given that emotions are often controlled or varied by our body chemistry - it is easy to see how crystals could even affect our moods', '', 1, 1, 1, NULL, NULL),
(45, 'ManSelf', '', 'Management Training - self management', '', 'The training of the individual to self manage themselves effectively, without the need for outside influences, in the work place', '', 1, 1, 1, NULL, NULL),
(46, 'ManTeamWork', '', 'Management Training - team working', '', 'The training of individuals to work effectively within groups ', '', 1, 1, 1, NULL, NULL),
(48, 'ManTime', '', 'Management Training - time management', '', 'The training of the individual to self-manage their time effectively without the need for outside influences, and thus become more effective, in the work place', '', 1, 1, 1, NULL, NULL),
(49, 'Mediation', '', 'Mediation/Conciliation', '', 'Involves an independent mediator (someone who doesn’t take sides and who won’t gain or lose anything by the outcome). They will help you and the other person or company find a solution to the problem. You and your opponent, not the mediator, decide what will happen and the terms of any agreement you make. But the process is voluntary so you cannot force the other person or organisation to take part. \r\n\r\nMediation and conciliation themselves are not binding, but they can be made binding if there is a signed mediated agreement. What is said in a mediation session is confidential, so it cannot be used in court later. Only the resulting agreement can be enforced by the court. In practice, people tend to keep to a mediated agreement because they have prepared its terms themselves.\r\n\r\nYou can use mediation and concilliation for a range of different problems\r\n', '', 1, 1, 1, NULL, NULL),
(50, 'Nutritional', '', 'Nutritional Therapy', '', 'Advising on dietary and lifestyle changes required for the maintenance of good health', '', 1, 1, 1, NULL, NULL),
(51, 'Personal', '', 'Personal Development', '', 'Personal development (also known as self-development or personal growth) comprises the development of the self \r\n', '', 1, 1, 1, NULL, NULL),
(52, 'Pilates', '', 'Pilates', '', 'A technique invented 70 years ago by Joseph H. Pilates. According to The Pilates Studio, pilates (pronounced puh-LAH-teez) focuses on improving flexibility and strength for the overall body, but doesn\'t build bulk. Some of the first people to use pilates were legendary dancers Martha Graham and George Balanchine. More than just exercise, pilates are a series of controlled movements to engage one\'s body and mind', '', 2, 1, 1, NULL, NULL),
(53, 'Psychometric', '', 'Psychometric assessment', '', 'The branch of psychology that deals with the design, administration, and interpretation of quantitative tests for the measurement of psychological variables such as intelligence, aptitude, and personality traits', '', 1, 1, 1, NULL, NULL),
(54, 'Reflexology', '', 'Reflexology', '', 'A form of massage in which pressure is applied to certain parts of the feet and hands in order to promote relaxation and healing elsewhere in the body. A science based on the belief that each part of the body is interconnected through the nervous system to the hands and feet. Stimulating specific reflex points in the feet can bring needed nutrients to poorly functioning areas of the body. This can help restore balance throughout the body', '', 1, 1, 1, NULL, NULL),
(55, 'Reiki', '', 'Reiki', '', 'Reiki (pronounced Ray-Key) is a system of Enlightenment and a Hands on Healing art developed in the early 1900\'s by Mikao Usui in Japan. It is an art that is passed from Master to student. The word Reiki comes from two Japanese words - Rei and Ki, meaning Universal Life Force Energy. The term \"Reiki\" is used to describe both the energy and the Usui system of using it. The original system by Usui was called Usui Reiki Ryoho. This includes work with both people and animals.', '', 1, 1, 1, NULL, NULL),
(56, 'Relaxation', '', 'Relaxation therapy', '', 'The use of simple relaxation and breathing exercises to enable an individual to relax', '', 1, 1, 1, NULL, NULL),
(57, 'Stresscounc', '', 'Stress Counselling', '', 'The most commonly accepted definition of stress (mainly attributed to Richard S Lazarus) is that stress is a condition or feeling experienced when a person perceives that “demands exceed the personal and social resources the individual is able to mobilise.” Stress counselling is working with individuals so they take charge of and control the stress they experience to fall within the resources they have available ', '', 1, 1, 1, NULL, NULL),
(58, 'Stress', '', 'Stress Management', '', 'The most commonly accepted definition of stress (mainly attributed to Richard S Lazarus) is that stress is a condition or feeling experienced when a person perceives that “demands exceed the personal and social resources the individual is able to mobilise.” Stress Management is working with individuals so they may manage their stress to within the resources they have available', '', 1, 1, 1, NULL, NULL),
(59, 'Spiritual', '', 'Spiritual healing', '', 'Spiritual healing or Faith healing is the use of solely spiritual means in treating disease, sometimes accompanied with the refusal of modern medical techniques\r\n', '', 1, 1, 1, NULL, NULL),
(60, 'Visualisatio', '', 'Visualisation', '', 'The process of creating internal mental images (internal visualization and imagination) for the purpose of change \r\n', '', 1, 1, 1, NULL, NULL),
(61, 'Vitamin', '', 'Vitamin Therapy', '', 'Any therapeutic use of vitamins, whether necessitated by nutritional deficiency or not\r\n', '', 1, 1, 1, NULL, NULL),
(62, 'WholeFood', '', 'Whole Food Therapy', '', 'An alternative therapy to encourage and maintain peak health by the use of whole food. The promotion of whole and unprocessed (or minimally processed) food instead of the packaged and highly processed food that is consumed in large quantity by many people today ', '', 1, 1, 1, NULL, NULL),
(97, 'qigong', '', 'Qigong (chee-gong)', '', 'A form of traditional Chinese mind/body exercise and meditation that uses slow and precise body movements with controlled breathing and mental focusing to improve balance, flexibility, muscle strength, and overall health.', '', 1, 1, 1, NULL, NULL),
(65, 'Aqua', '', 'Aqua Detox therapy', '', 'Aqua detox Therapy involves the immersion of one\'s feet (or sometimes the complete body) in a bath of lightly salted water containing the Aqua detox electrolytic apparatus. \r\n<br><br>\r\nA flow of electrons is imparted into the water thus creating a bio-energetic field modifying the properties of the bath water to closely match that of the bodies natural fluids\r\n\r\n', '', 1, 1, 1, NULL, NULL),
(66, 'Dowsing', '', 'Dowsing', '', 'To dowse is to search, with the aid of simple hand held tools or instruments, for that which is otherwise hidden from view or knowledge. It can be applied to searches for a great number of artefacts and entities. It is most commonly known by most people in association with searching for underground water; not surprising considering the absolute need for water by man and his animals and cultivated plants which sustain him.\r\n\r\nDowsing has been defined by Major-General Jim Scott-Eliot,in his book \'Dowsing - One Man\'s Way as: \'The ability to use a Natural Sensitivity which enables us to know things we cannot know by the use of the day to day brain or by learning, by experience, or by the use of the five physical senses\'\r\n', '', 1, 1, 1, NULL, NULL),
(47, 'ManTeam', '', 'Management Training - team leadership skills', '', 'The training of leadership in the work place. Leadership is the ability to facilitate action and guide change by individuals in groups or organisations. To lead is to direct, supervise, encourage, inspire, and co-ordinate. A good leader develops personal leadership skills and encourages and trains new leaders who will follow', '', 1, 1, 1, NULL, NULL),
(5, 'Fertility', '', 'Fertility Coaching', '', 'Fertility Coaching is a personal coaching service to couples and individuals. Covering consulting and workshops about decision-making regarding high-tech infertility treatments, adoption, and living without children.\r\n', '', 1, 1, 1, NULL, NULL),
(67, 'Career', '', 'Career Coaching', '', 'Career Coaching deals with the issues that surround an individual\'s career. \r\n\r\nThis includes assessment of client values, skills, careers and personality for purpose of designing ideal work/job profile\r\n\r\nDesigning and creating with the client an ideal work profile which includes outlining type of work to be performed, work environment, personality traits, etc.\r\n\r\nAssisting with resume editing and revision, interview preparation and practice, networking preparation and practice.\r\n', '', 2, 1, 1, NULL, NULL),
(98, 'Taichi', '', 'Tai Chi', '', 'Tai chi is an internal Chinese martial art. Tai chi is typically practised for a variety of reasons: its soft martial techniques, demonstration competitions, health and longevity. Consequently, there exist a multitude of training forms, both traditional and modern, which correspond to those aims. Some of Tai chi chuan\'s training forms are well known to Westerners as the slow motion routines that groups of people practice together every morning in parks around the world, particularly in China. ', '', 2, 1, 1, NULL, NULL),
(99, 'OrganizationalDevelopment', '', 'Organizational Development & Training Specialist', '', 'Services that include procurement, supervision, creation, delivery and facilitation of the training of coaching, team building, career counselling, and assessments in a corporate environment.', '', 1, 1, 1, NULL, NULL),
(101, 'EFT', '', 'Emotional Freedom Technique', '', 'Emotional Freedom Technique is a non-invasive meridian energy therapy. Suitably qualified is defined as AAMET accredited EFT Level 2 Certificate or equivalent or above or the advanced qualification issued by Dr Pat Carrington. Sometimes referred to as Emotional Freedom Therapy.', '', 1, 1, 1, NULL, NULL),
(102, 'WeightManagement', '', 'Weight Management', '', 'Advising on the eating of traditional and familiar foods at the right time and in the right quantities combined with a healthy lifestyle in order to achieve a healthy weight for the individual and then to maintain it. Advice on supplements is limited to over the counter products administered strictly in accordance with the manufacturer\'s guidelines.', '', 3, 2, 1, NULL, NULL),
(104, 'SocialEntrepreneurship', '', 'Social entrepreneurship', '', 'Social Entrepreneur is an extension of Coaching, bringing about change where there may be no &quot;business is about profit&quot; element.\r\n\r\n<br>\r\n<br>\r\n\r\nSuccessful Coaches have seen the substantial effect they have had on\r\nindividuals - and have now turned their attention to Social Issues, posing\r\nthe question &quot;How can we use this Coaching mechanism to bring about Social\r\nchange, and possibily remove the not for profit&quot; element.\r\n\r\n<br>\r\n<br>\r\n\r\nThat is quite a shift in Coaching thinking. It is only different to Coaching in the traditional sense because the &quot;profit&quot; may have been removed and the Social Issue replaces the Individual, in all other respects they are and have very similar aims.', '', 1, 1, 1, NULL, NULL),
(105, 'Coaching', '', 'Coaching', '', 'Coaching is partnering with clients in a thought-provoking and creative process that inspires them to maximize their personal and professional potential.\r\n\r\n<br>\r\n<br>\r\n\r\nCover also extends to acting as a teacher or individual tutor to train Coaching but excluding any liability arising from the management and control of a Training Establishment, Clinic or College. \r\n\r\nCoaching can also be defined as a personal service to an individual or group that is non-judgemental, non-directional and does not provide advice or direction, but will assist to perform challenge stimulate and guide.\r\n\r\n<br>\r\n<br>\r\n \r\nThis cover specifically excludes Sport Coaching and Financial Coaching. ', '', 1, 1, 1, NULL, NULL),
(106, 'Meditation', '', 'Meditation', '', 'Meditation refers to a family of practices in which the practitioner trains his or her mind, or self-induces a state of hightened awareness of consciousness in order to realize some benefit.\r\n', '', 1, 1, 1, NULL, NULL),
(109, 'SPOT', '', 'Set Point Optimization Technique (SPOT)', '', 'POT is a energetic technique that allows you to re-vitalize your emotional and physical life to your highest potential by re-setting your set point for any number of life objectives to the most optimal potential. SPOT uses muscle testing to check what a person\'s blocks are that are preventing them from their objective.\r\n\r\n<br>\r\n<br>\r\n\r\n A block can be an emotion, emotional wound, others energies, limiting beliefs, patterns of behavior or thoughts, coping mechanisms, secondary gains, memories etc. that is being held in one\'s subconscious mind and is not allowing them to achieve their desires.', '', 1, 1, 1, NULL, NULL),
(108, 'Brainwave', '', 'Brainwave Optimization ', '', 'Brainwave Optimization™ (also known as High-resolution, relational, resonance-based, electroencephalic mirroring, or HIRREM) is the trade-marked term for a non-invasive wellness technology known as high-resolution, relational, resonance-based electroencephalic mirroring (HIRREM). \r\n\r\n<br>\r\n<br>\r\n\r\nBrainwave Optimization (HIRREM) is based on the premise that the human brain is the master regulator of all human experience, and therefore improved self-regulation of, by and through the human brain is the most efficacious way to attain greater well-being. ', '', 1, 1, 1, NULL, NULL),
(110, 'Ask', '', 'Ask and Receive', '', 'Ask & Receive is an exciting new health discovery that uses the power of your unlimited being to allow you to ask for what you want in your life and have it! People are using this simple process to ask for changes in every part of their lives. Greater health, less pain, releasing trauma, more joy, greater flexibility, better relationships, peace. People are asking for and receiving all of these things and many more. Please refer to http://askandreceive.org', '', 1, 1, 1, NULL, NULL),
(111, 'Clearing', '', 'Clearing Cure', '', 'The Clearing Cure is a system designed to clear negative energy and emotions that lead to disease and limiting beliefs of the mind in all aspects of your life.', '', 1, 1, 1, NULL, NULL),
(112, 'SPRT', '', 'SPRT (Subconscious Polarity Reversal Technique) ', '', 'SPRT is a system designed to clear negative energy and emotions that lead to disease and limiting beliefs of the mind in all aspects of your life.', '', 1, 1, 1, NULL, NULL),
(113, 'AVGI', '', 'AVGI (Acupressure Visual Guided Imagery) ', '', 'AVGI is a system designed to clear negative energy and emotions that lead to disease and limiting beliefs of the mind in all aspects of your life.', '', 1, 1, 1, NULL, NULL),
(114, 'sleep', '', 'Sleep Coach', '', 'A sleep coach helps clients identify sleep goals and encourages them to self-determine ways to achieve those goals without specific direction.\r\nA sleep coach helps clients identify what sleep training approaches resonate and are comfortable with them.\r\nCoaches are non-judgemental and do not provide therapy or tell clients what they should do.\r\nCoaching is a collabrative process between client and coach, designed to encourage the client to make the journey for him/herself through a process of questions intended to tap into the client\'s own belief system.\r\nA sleep coach continues to work with clients while they implement their action plans, serves to motivate and encourage his/her clients, holds them accountable to their goals and plans, helps them understand the consequences of their choices, and supports them throughout the process.        \r\n', '', 1, 1, 1, NULL, NULL),
(115, 'sleepCon', '', 'Sleep Consultant', '', 'A sleep consultant promotes informed decision-making and provides non-medical advice, support, guidance, expertise, research, information, education and resources based on client needs. \r\nAdditionally, a professional sleep consultant relies on evidence-based research and techniques to provide specific information, solutions, and action steps clients should take to create healthy sleep habits that are developmentally and age appropriate. A professional sleep consultant may integrate coaching techniques by helping clients identify their own sleep goals and which sleep training approaches that resonate and are comfortable for them, and supporting their clients during the implementation of the sleep plan.    ', '', 1, 1, 1, NULL, NULL),
(116, 'Access', '', 'Access Consciousness', '', 'What is Access Consciousness&copy;?<br>\r\n\r\nAccess Consciousness is a simple set of tools, techniques and philosophies that allow you to create dynamic change in every area of your life, with your body and with yourself. Access Consciousness provides you with step-by-step ways to become totally aware and begin to function as the conscious being you really are.\r\n\r\n<br>\r\n<br>\r\n \r\nHow does Access Consciousness&copy;work?<br>\r\n\r\nThrough a variety of classes, body-work or private sessions, Certified Facilitators and Access Bars Facilitators use questions and verbal processing techniques to empower you in knowing what you know and clear any energetic blockages that are limiting you. It is through you becoming more conscious of what choices and possibilities you have available, that you are able to choose and generate the life you truly would like.', '', 1, 1, 1, NULL, NULL),
(117, 'psychic', '', 'Psychic Reading', '', 'Information and predictions provided by those who claim to have psychic abilities. This includes work with both people and animals. ', '', 1, 1, 1, NULL, NULL),
(118, 'Student', '', 'Student', '', 'Professional Liability Insurance for students. If you select student cover please be aware that cover ONLY extends to your work whilst on a formal study course for the practice(s) selected. IF student  is selected cover is RESTRICTED to the practice of the therapy or business activity necessary to the study course, and NOT to any service you provide that is  NOT associated with the formal course of study.', '', 1, 1, 1, NULL, NULL),
(119, 'Iridology', '', 'Iridology', '', 'Iridology is the science and art of observing marks or signs in the iris (color portion of the eye) that occur as reflex responses to specific tissue conditions in the body. These markings represent a detailed picture of the integrity of various organs and systems of the body. Information from each organ is transmitted by nerve connections and terminates in the corresponding sector of the right or left eye.\r\n\r\n<br>\r\n<br>\r\n\r\nWhen a particular organ or body system is diseased or out of balance, it registers a mark that can be seen upon magnification. Nature has provided an invaluable window into the vital status of the health of the body through the eyes.\r\n\r\n<br>\r\n<br>\r\n\r\nIridology has a history of over 150 years and developed through clinical experience of medical professionals. Through the dedication of generations of medical professionals and health practioners, today we have detailed “maps” of the irides. Qualified iridologists can view the actual health of the body through the eyes.', '', 1, 1, 1, NULL, NULL),
(120, 'AddictionCounselor', '', 'AddictionCounselor', '', 'Cover for the business practice of an Addiction Counselor is subject to the strict condition that the Insured is not addicted to any substance.', '', 3, 2, 1, NULL, NULL),
(121, 'metabolicB', '', 'Metabolic Balance', '', 'The metabolic balance&#174; program is a sophisticated nutrition system based on the client&#39;s blood values and unique health profile. It was founded by Dr. Wolf Funfack and originated in 2002 in Isen (near Munich) in Germany. Today, metabolic balance&#174; has become a global company which is present around the world.', '', 1, 1, 1, NULL, NULL),
(122, 'Herbalism', '', 'Herbalism', '', 'Herbalism is the use of the medicinal properties of plants (in the form of an herb). \r\n\r\nCover is provided strictly subject to: The practitioner does NOT discuss specific ailments or health problems and then recommend herbs to treat them.\r\n\r\nThe practitioner may provide advice on the nutritional value of cooking with herbs, and the benefits of incorporating them into a normal diet, only.\r\n', '', 1, 1, 1, NULL, NULL),
(123, 'Angel', '', 'Angel Therapy', '', 'Angel Therapy is a non-denominational spiritual healing method that \r\n\r\ninvolves working with a person\'s guardian angels and archangels, to \r\n\r\nheal and harmonize every aspect of life. ', '', 1, 1, 1, NULL, NULL),
(124, 'Channelling', '', 'Channelling', '', 'Channelling is describes as learning how to communicate and receive \r\n\r\nmessages from guides, spirits, angels and the afterlife. ', '', 1, 1, 1, NULL, NULL),
(125, 'Polarity', '', 'Polarity Therapy', '', 'Polarity Therapy was developed by Dr. Randolph Stone (1890-1981). Drawing on information from a wide range of sources, he asserted that the Human Energy Field is affected by touch, diet, movement, sound, attitudes, relationships, life experience, trauma and environmental factors. Polarity Therapy lends an energy-based perspective to all these subjects. The scope of the practice of Polarity Therapy is often very broad, with implications for the development, promotion and maintenance of good health.', '', 1, 1, 1, NULL, NULL),
(126, 'Wellness', '', 'Wellness Coaching', '', 'Wellness Coaching supports clients to make better lifestyle choices in order to live healthier lives including, but not limited to issues such as weight management, exercise, nutrition, smoking cessation, sleep management, life balance, and stress management.\r\n<br>\r\n<br>\r\nIt is further understood and agreed that no cover will be provided for prescription or recommendation of supplements, exercise programs or drugs without the client seeking advice from their physician (or a waiver to this effect being signed).', '', 1, 1, 1, NULL, NULL),
(127, 'Craniosacral', '', 'Craniosacral Therapy (CST)', '', 'CranioSacral Therapy (CST) is a gentle, hands-on approach that releases tensions deep in the body to relieve pain and dysfunction and improve whole-body health and performance. It was pioneered and developed by Osteopathic Physician John E. Upledger after years of clinical testing and research at Michigan State University where he served as professor of biomechanics.\r\n\r\n<br>\r\n<br>\r\n\r\nUsing a soft touch which is generally no greater than 5 grams &#8211; about the weight of a nickel &#8211; practitioners release restrictions in the soft tissues that surround the central nervous system. CST is increasingly used as a preventive health measure for its ability to bolster resistance to disease, and it\'s effective for a wide range of medical problems associated with pain and dysfunction.', '', 1, 1, 1, NULL, NULL),
(128, 'AnatBaniel', '', 'Anat Baniel Method', '', 'ABM can be an adjunct or an alternative to medical treatment, as well as helping people who want to improve functioning, including reaching beyond current plateaus of performance.\r\n\r\n<br>\r\n<br>\r\nAnat Baniel Method &#8480; is a cutting-edge, science-based NeuroMovement&#174; approach that transforms the lives of children and adults, helping them move beyond pain and limitation. By accessing the amazing powers of the brain to change itself the method helps people discover how to improve the mind and body dramatically enhancing physical, cognitive, emotional and creative performance.', '', 1, 1, 1, NULL, NULL),
(129, 'Gyrotonic', '', 'Gyrotonic exercise methods', '', 'The Gyrotonic Expansion System is composed of the Gyrokinesis and Gyrotonic exercise methods. \r\n\r\n<br>\r\n<br>\r\n\r\nThe Gyrokinesis Method, originally called &quot;Yoga for Dancers&quot; is practised on a mat & chair, and the Gyrotonic Method uses specialized equipment that permits one to move with support and resistance. Gyrotonic and Gyrokinesis exercise sequences are intended to increase the functional capacity of the entire organism in a harmonious way', '', 1, 1, 1, NULL, NULL),
(130, 'Somatic', '', 'Somatic Movement Therapy', '', 'Somatic processes re-educate the neuromuscular system toward greater health and well-being. Somatic therapists use hands-on movement techniques for this purpose and also teach simple movement sequences that can be practised at home or in groups. \r\n\r\n<br>\r\n<br>\r\n\r\nThrough somatic movement education people learn relaxing motions, and postural awareness to:\r\n<ul>\r\n<li>Manage Stress</li>\r\n<li>Relieve Back Pain</li>\r\n<li>Breathe More Freely</li>\r\n<li>Soften Stiff Neck and Shoulders</li>\r\n<li>Reduce Joint and TMJ Discomfort</li>\r\n<li>Improve Flexibility and Coordination</li>\r\n<li>Perform Favorite Activities with Greater Ease</li>\r\n<li>Heal from Trauma to the Neuromuscular System</li>\r\n<li>Speed Recuperation after Illness or Surgery</li>\r\n</ul>\r\nSome somatic therapists will also include practical meditation techniques and visualizations to access the wisdom of the body and mind to face stress, pain, and illness, and to enhance the functioning of the body\'s immune system', '', 3, 2, 1, NULL, NULL),
(131, 'Political', '', 'Political Coaching & Consulting', '', 'Political Coaching & Consulting\n\n<ul>\n  <li>focus on developing and enhancing the politician\'s personal leadership style</li>\n  <li> develop the art of collaborative leadership including building alliance \n    across old political boundaries and fostering genuine relationships with others</li>\n  <li>create a confidential relationship that allows the politician to freely \n    discuss concerns they might not otherwise feel comfortable sharing with others</li>\n  <li> provide tools for managing their anxiety and stress in difficult situations</li>\n  <li> discover new possibilities in the midst of entrenched political views</li>\n  <li> to fully develop their vision for public office far beyond just winning \n    their next election</li>\n  <li> keep their vision for public office alive in the midst of struggle and \n    defeat</li>\n</ul>', '', 3, 2, 1, NULL, NULL),
(132, 'meridian', '', 'Meridian Therapies', '', 'Meridian Therapies suggest that every limiting thought, upsetting feeling and memory is associated with a disturbances of our body/mind energy system.\r\nFrom this follows the possibility that distress can be resolved by restoring balance and harmony to the system.\r\n\r\n<br>\r\n<br>\r\n\r\n\r\nTo approach the problem Meridian Therapists use a range of techniques such as talking, body language, drawing, and modelling (depending on age and individual needs of the client) and calling upon elements of Emotional Freedom Technique (EFT) .\r\n', '', 1, 1, 1, NULL, NULL),
(133, 'TA', '', 'Transactional Analysis', '', 'Transactional Analysis is a sophisticated theory of personality, communication and behavior used for personal growth and personal change. Founded by Canadian psychiatrist Eric Berne in the 1950&#39s, T.A. has applications in coaching, counseling, therapy, education, organizational and business consulting.\r\nTransactional Analysis has many facets, including:\r\n\r\n<ul>\r\n\r\n<li>Life Scripts: looking at the stories we are unconsciously living\r\n</li> \r\n\r\n<li>Games: the &#39games&#39 people play to reinforce old, familiar, yet unproductive feelings\r\n</li>\r\n\r\n<li>Strokes: how we go about obtaining our needs for recognition\r\n</li>\r\n\r\n</i>Time Structuring: how we structure our time, and it&#39s congruence with how we want to live\r\n</li>\r\n\r\n<li>Ego States: which &#39part&#39 of ourselves are we communicating from, and which &#39part&#39 is the other person responding from \r\n</li>\r\n\r\n</i>Transactions: examining the surface/social level of communication (verbal), as well as the hidden/psychological level that runs parallel (non-verbal)\r\n</li>\r\n\r\n</ul>\r\n\r\nBy working with these various facets we are able to facilitate profound personal change, professional development, and improve communication skills in all areas of life.', '', 1, 1, 1, NULL, NULL),
(134, 'IC', '', 'Intuitive consultations', '', 'Intuitive consultations consist of a practitioner accessing information via non-linear means.\r\n\r\n<br>\r\n<br>\r\n\r\nIntuition gives us the ability to know something directly without analytic reason, and bridges the gap between the conscious and non-conscious parts of our mind.\r\n\r\n<br>\r\n<br>\r\n\r\nDuring an intuitive consultation, a practitioner may rely directly upon impressions such as mental images, felt bodily sensations, words mentally &#39heard&#39, or through the sense of smell or taste. Or they may use tools such as cards, palm reading, rune stones and other modalities as portals to access intuitive information. These methods serve to put a person in their non-linear mode of thinking and perceiving to receive intuitive information.\r\n\r\n<br>\r\n<br>\r\n\r\nThe ability to communicate with the departed, known as mediumship, is also a form of intuitive receiving. An intuitive consultation may be very specific and detailed, or more impressionistic depending on the practitioner and the information they receive at a given time.\r\n ', '', 1, 1, 1, NULL, NULL);
INSERT INTO `riskcategories` (`ID`, `title`, `titleCanFr`, `categoryName`, `long_titleCanFr`, `description`, `descriptionCanFr`, `hazardClass`, `hazardClassRc`, `enabled`, `dateCreated`, `dateUpdated`) VALUES
(135, 'HNC', '', 'Holistic Nutrition Consulting', '', 'To assess eating habits and provide structured individualized meal plans, which include recipes & grocery shopping lists, to help clients revitalize their health and wellness.\r\n\r\n<br>\r\n<br>\r\n\r\nAt the end of consultations, clients have a better understanding of the positive impact that nutrient-dense foods have on the body.  They have a better idea about what kinds of foods nourish their body and are more confident preparing healthy meals and snacks.\r\n\r\n<br>\r\n<br>\r\n\r\n\r\nThe practitioner would also provide a service to help clients cook in their own home together with a meal plan and grocery shopping list and assistance to help them in their kitchen with their utensils.  \r\n\r\n<br>\r\n<br>\r\n \r\nThe practitioner may also teach nutrition and the introduction to solid foods for infants.\r\n', '', 1, 1, 1, NULL, NULL),
(136, 'BPT', '', 'Biblio/Poetry Therapy', '', 'The skilful and creative application of poetry and other forms of written or spoken media provide powerful and refined tools to evoke feeling responses for discussion guided by a trained facilitator.\r\n\r\n<br>\r\n<br>\r\n\r\nThe interactive process is integral to the educational, therapeutic and personal well-being of the individual. The process of writing, encouraged by the sensitive guidance of a therapist, poet, or other professional trained in biblio/poetry therapy, acts as a significant catalyst for healing and self-integration.', '', 1, 1, 1, NULL, NULL),
(137, 'Shamanism', '', 'Shamanism', '', 'Shamanism simply deals with the parts of reality we cant see, hear, feel or touch with our traditional five senses.  Shamanism is the oldest form of human healing. The word and practice originated over 25,000 years ago in the cultures of Siberia and Central Asia.  Shamanism is a range of beliefs and practices centered around communication with the spirit world. A practitioner of shamanism is known as a shaman. The shaman uses mystical powers to journey to other worlds or realities and communicate with spirits in order to bring about a balance between the physical and spiritual worlds. Shamans are intermediaries between the human and spirit worlds. They can treat illness and are capable of entering and being in what some call &quot;supernatural&quot; mystical realms. Teacher shamans facilitate others raising their consciousness and ability to operate in these worlds.', '', 1, 1, 1, NULL, NULL),
(138, 'Silva', '', 'Silva Method', '', 'The Silva Method <a href=\"https://en.wikipedia.org/wiki/Silva_Method#cite_note-silvamethod.com-1\" title=\"https://en.wikipedia.org/wiki/Silva_Method#cite_note-silvamethod.com-1\" target=\"_self\">https://en.wikipedia.org/wiki/Silva_Method#cite_note-silvamethod.com-1</a>is \r\nthe name given to a self-help <a href=\"https://en.wikipedia.org/wiki/Self-help\" title=\"https://en.wikipedia.org/wiki/Self-help\" target=\"_self\">https://en.wikipedia.org/wiki/Self-help</a> \r\nprogram developed by Jos&eacute; Silva. The Silva Method teaches students specialized \r\nguided imagery techniques intended to &quot;rewire&quot; their subconscious and \r\nnegative programming, tap into their true potential and achieve their goals using \r\na meditation technique and mental training program that is offered in seminars \r\nin over 129 countries around the world. Jose Silva believes that it can be used \r\nto develop paranormal abilities such as Intuition <a href=\"https://en.wikipedia.org/wiki/Intuition_%28knowledge%29\" title=\"https://en.wikipedia.org/wiki/Intuition_%28knowledge%29\" target=\"_self\">https://en.wikipedia.org/wiki/Intuition_%28knowledge%29</a> \r\nand ESP<a href=\"https://en.wikipedia.org/wiki/Extrasensory_perception\" title=\"https://en.wikipedia.org/wiki/Extrasensory_perception\" target=\"_self\">https://en.wikipedia.org/wiki/Extrasensory_perception</a> \r\nand that it can also allow you to tap into a higher consciousness. They say that \r\nall humans are born with ESP/intuition/psychic abilities and teach simple techniques \r\nyou can use to get it back.', '', 1, 1, 1, NULL, NULL),
(139, 'Jin', '', 'Jin Shin Jyutsu', '', 'Jin Shin Jyutsu is similar to acupuncture and acupressure but without any needles and without any pressure. The practitioner places her fingers lightly on the different energy locks to unblock energy blockages.\r\n\r\n<br>\r\n<br>\r\n\r\n<a href=\"https://www.jsjinc.net/\" title=\"For further information please refer to \" target=\"_blank\">For further information please refer to </a>', '', 1, 1, 1, NULL, NULL),
(140, 'BowenworkTherapy', '', 'Bowenwork Therapy', '', 'Bowenwork is a gentle bodywork (therapeutic touching or manipulation of the clothed body by using specialized techniques) for pain management and other conditions. It is a unique approach to stimulating the body’s natural healing ability.', '', 3, 2, 1, 1478044800, 1478044800),
(141, 'Matrix', '', 'Matrix Reimprinting', '', 'Matrix Reimprinting is a brand new Meridian Tapping Therapy that everybody is talking about. It is effective for the treatment of emotional or physical issues, it can also be used to manifest your goals and dreams. It evolved from the popular self-help technique EFT', '', 1, 1, 1, NULL, NULL),
(142, 'SpiritualDirection', '', 'Spiritual Direction', '', 'Spiritual direction explores a deeper relationship with the spiritual aspect of being human. Simply put, spiritual direction is helping people tell their sacred stories everyday.\r\nSpiritual direction has emerged in many contexts using language specific to particular cultural and spiritual traditions. Describing spiritual direction requires putting words to a process of fostering a transcendent experience that lies beyond all names and yet the experience longs to be articulated and made concrete in everyday living. It is easier to describe what spiritual direction does than what spiritual direction is. Our role is not to define spiritual direction, but to describe the experience.\r\n\r\nSpiritual direction helps us learn how to live in peace, with compassion, promoting justice, as humble servants of that which lies beyond all names.', '', 1, 1, 1, NULL, NULL),
(143, 'Grief', '', 'Grief Recovery Method', '', 'A Certified Grief Recovery Specialist helps people move beyond death, divorce and other losses by facilitating Grief Recovery Support Groups. Training is offered by The Grief Recovery Institure (TGRI) https://www.griefrecoverymethod.com/', '', 1, 1, 1, NULL, NULL),
(144, 'ESOP', '', 'ESOP', '', '<p>ESOP support</p>\r\n<p>Supporting business owners to transition the ownership of their business to \r\n  their employees through an Employee Share Ownership Plan (ESOP). </p>\r\n<p>The work primarily utilizes coaching and communication skills to facilitate \r\n  dialogue with owners, employees, and the necessary advisors (legal, accounting). \r\n  Excluding any claims that arise from legal or accounting work or advice. </p>', '', 1, 1, 1, NULL, NULL),
(145, 'PublicSpeaking', '', 'Public Speaking', '', 'Engaging in speaking live  in front of an audience, or on video, for the purpose of motivation and inspiration.\r\n\r\nEncouraging the personal development of the individuals making up the audience.\r\n \r\nSpeaking  topics based around the business practices covered by this policy.\r\n\r\nExcluding any speeches or  talks where legal or financial opinion or advice is offered or provided.', '', 1, 1, 1, NULL, NULL),
(146, 'EnergyBalancingTherapy', '', 'Energy Balancing Therapy', '', 'Energy balancing therapy is a therapeutic modality that is able to precisely register disturbances of the body on an energetic level. In the case of an anomaly or facing a tension or aggression, the body searches to reestablish its global balance by managing the circulation of energy in its circuits. It does this by controlling the energy flow, by blocking it, by switching it off, or by slowing it down, or by accelerating the energetic currents blockage.  Energy balancing therapy aims to re-establish proper signaling of instructional information around the body in a comprehensive and technologically advanced manner.\n', '', 1, 1, 1, NULL, NULL),
(147, 'Agile', '', 'Agile Coaching', '', 'Is all about working with people to create great teams.  They learn how to build a team that produces great software and has fun doing it.', '', 1, 1, 1, NULL, NULL),
(148, 'ParanormalPractitioner', '', 'Paranormal Practitioner', '', 'The investigative study of paranormal activity undertaken by an experienced paranormal practitioner, provided without warranty.\r\n\r\nPlease note GL coverage cannot be purchased stand alone and must be purchased in conjunction with the PL.', '', 3, 2, 1, NULL, NULL),
(149, 'HumanResourcesConsultant', '', 'Human Resources Consultant', '', '<b>Acting as an external consultant and NOT as an employee.</b><br>\r\nTo include facilitation, interview and assessment of employee/leaders for career purposes, new manager integrations, assessment of sites for employee satisfaction.\r\nAlso to include temporary/interim assignments as HR Leader which would include employee relations, interpretation and application of company policies and collective agreements, career management, change management, management of HR staff.', '', 1, 1, 1, NULL, NULL),
(150, 'StrategicPlanningFacilitation', '', 'Strategic Planning Facilitation', '', 'Strategic Planning Facilitation - working with organizations and companies to identify the current state of their business, the desired future state and determining the strategies and actions needed to attain the desired future state, as well as meet and exceed goals, objectives and targets created for the business. ', '', 1, 1, 1, NULL, NULL),
(151, 'Rambler', '', 'Rambler', '', 'To walk in groups through the countryside or idyllic villages, staying on designated pathways. \r\nFollowing a full written risk assessment of the routes to be taken unless keeping to designated pathways where prior risk assessment has been performed by land owners.', '', 1, 1, 1, 1502323200, 1502323200),
(152, 'MNU', '', 'MNU Certified Nutritionist', '', 'Providing nutrition consultancy, advice and support to improve/maintain health, body composition and or sports performance. Assessing clients’ food and nutrient intake through dietary analysis, addressing their health and fitness goals and subsequently designing personalised nutrition interventions and education processes and where necessary recommending safe and efficacious natural supplements. Through appropriate dietary counselling and behaviour change techniques, as well as holistic advice on exercise and sleep, an MNU Certified Nutritionist will help clients implement agreed positive changes into a varied and healthy lifestyle', '', 1, 1, 1, NULL, NULL),
(153, 'Shiatsu', '', 'Shiatsu Therapy', '', 'Shiatsu is a physical therapy originating from Japan that supports the body\'s natural ability to self-heal. Working on a holistic level, this therapy addresses emotional, spiritual and physical aspects of health. The practice uses comfortable pressure, touch and manipulative techniques. However, unlike massage, the receiver remains clothed during the treatment and the principal aim of Shiatsu is not to work on localised muscles and joints, but on the overall energy system of the client.', '', 1, 1, 1, NULL, NULL),
(154, 'ManagementConsultancy', '', 'Management Consultancy', '', 'Provide management consulting services to clients in the area of team development, team and organizational effectiveness, succession planning, performance management and other HR related areas.  This may involve facilitating team and individual learning programs, group working sessions and planning meetings.  May also involve designing HR related processes and programs with input and feedback from the client and providing recommendations or input on approaches to various business challenges.  In all cases, the client has final decision making on the direction to take and decisions to implement.', '', 2, 1, 1, 1527552000, 1527552000),
(155, 'ChristianCoaching', '', 'Christian Coaching', '', 'Christian Coaching is partnering with clients in a thought-provoking and creative process that inspires them to maximize their personal and professional potential.   Christian coaches represent a broad cross section of life, career, business, ministry and leadership experience, expertise and specialty focus. Member coaches share a common love for the Lord Jesus Christ and a commitment to striving for excellence in delivering their various services, products and programs', '', 1, 1, 1, 1532995200, 1532995200),
(156, 'Essentrics', '', 'Essentrics', '', 'Essentrics is a mixture of dance and tai chi involving slow dance movements and stretching.', '', 2, 1, 1, 1538438400, 1538438400),
(157, 'HolisticCounselling', '', 'Holistic Counselling', '', 'Holistic counselling is a unique form of counselling, focused on a person in their entirety; it considers physiological and psychological disorders as parts of a greater whole, and regards the mind, body and spirit as fundamentally interconnected.', '', 1, 1, 1, 1539129600, 1539129600),
(158, 'Surfset', '', 'Surfset Fitness ', '', 'Surfset Fitness allows you to perform a wide array of traditional exercises with the added core benefit of working out on an unstable surface.', '', 2, 1, 1, 1539129600, 1539129600),
(159, 'HarmonicLightCoach', '', 'Harmonic Light Coach', '', 'Harmonic Light Therapy combines the ultimate biological nutrient of light and the tuning power of Vibrational Frequency to profoundly benefit your mind, body and spirit.', '', 1, 1, 1, 1541030400, 1541030400),
(160, 'ChiosEnergyHealing', '', 'Chios Energy Healing', '', 'What is Chios?\n<br><br>\nChios Energy Healing is perhaps the most innovative, comprehensive and powerful aura and chakra based energy healing art in the world today.  The breakthrough techniques of Chios include:\n\n<ul>\n  <li>Unblocking chakras</li>\n  <li>Aura clearing (removing dark, negative energies)</li>\n  <li>Sealing leaks and tears in the aura layers</li>\n  <li>Chakra charging (using color)</li>\n  <li>Radiatory healing of chakras</li>\n  <li>Seventh layer (of aura) focal healing</li>\n  <li>Fission healing of chakras and the seventh layer, and</li>\n  <li>Distance healing (using color and light)</li>\n</ul>\n<br>\nChios uses energy, color and light channeling methods to provide powerful and effective aura and chakra healing.  These techniques are unique to Chios and not available in any other spiritual or energy healing system.', '', 1, 1, 1, 1544400000, 1544400000),
(161, 'MetamorphicTechnique', '', 'Metamorphic Technique', '', 'The <strong>Metamorphic Technique</strong> is a simple process that involves moving from feelings of limitation towards more potential. The method involves lightly stroking points on the feet, hands and head which correspond to our time in the womb where patterns that shape and challenge us later in life first begin.', '', 1, 1, 1, 1544400000, 1544400000),
(162, 'Recoverycoaching', '', 'Recovery coaching', '', '<strong>Recovery coaching</strong> is a form of strengths-based support for people with addictions or in recovery from alcohol, other drugs, codependency, or other addictive behaviors.[1] They work with people who have active addictions, as well as those already in recovery. Recovery coaches are helpful for making decisions about what to do with one\'s life and the part addiction or recovery plays in it. They help clients find ways to stop addiction (abstinence), or reduce harm associated with addictive behaviors. These coaches can help a client find resources for harm reduction, detox, treatment, family support and education, local or online support groups; or help a client create a change plan to recover on their own.\r\nRecovery coaches do not offer primary treatment for addiction, do not diagnose, and are not associated with any particular method or means of recovery. They support any positive change, helping persons coming home from treatment to avoid relapse, build community support for recovery, or work on life goals not related to addiction such as relationships, work, or education. Recovery coaching is action-oriented with an emphasis on improving present life and reaching future goals.\r\nRecovery coaching is unlike most therapy because coaches do not address the past, do not work to heal trauma, and put little emphasis on feelings. Recovery coaches are unlike licensed addiction counselors in that they are non-clinical and do not diagnose or treat addiction or any mental health issues.', '', 1, 1, 1, 1544400000, 1544400000),
(163, 'AcupunctureandOrientalMedicine', '', 'Acupuncture and Oriental Medicine', '', '<p>Acupuncture and Oriental Medicine (AOM) is an ancient form of medicine based on the concept of qi (Chee) which really means energy. Oriental medicine incudes the practice of Chinese herbology and acupuncture. AOM treatments deal with a pattern of energetic imbalance with in a patient\'s body and the treatment addresses the disharmony in a variety of ways which include acupuncture, cupping, acupressure, herbology, and exercise techniques such as tai ji quan and qi gong. AOM is virtually free of side effects that are common with many other modern medical procedures. AOM procedures are a relatively inexpensive form of treatment compared to other treatments. The success of acupuncture is due to its efficacy, remarkable safety record, and low cost of treatments.</p>', '', 4, 3, 0, NULL, NULL),
(168, 'EquineAssistedCoaching', NULL, 'Equine Assisted Coaching', NULL, 'Equine assisted coaching is essentially life, executive, transition or other types of coaching covered under this policy that helps individuals work through circumstances that are hindering their growth, and uses horses to assist in the learning. EAC can help people establish healthy relationships and boundaries in addition to improving leadership skills and self-esteem. It consists of ground work only meaning that neither clients nor coaches mount or ride the horses during coaching sessions. Horses are selected because of their calm nature and suitability for this type of work.', NULL, 3, 2, 1, 1558569600, 1558569600),
(169, 'LicensedClinicalPsychologist', '', 'Licensed Clinical Psychologist', '', '<p>Clinical psychologists are licensed professionals who are qualified to provide direct services to patients. Their work may include administering and interpreting cognitive and personality tests, diagnosing mental illness, creating treatment plans, and conducting psychotherapy.\n</p>', '', 5, 3, 1, 1566259200, 1566259200),
(164, 'BusinessCoaching', '', 'Business Coaching', '', 'Business Coaching is a customized development process that builds capability to achieve short and long term goals. Coaching is conducted through one-on-one or group interactions. It is driven by data gathered, often from multiple sources within and outside the organization. The coach and executive work together to achieve maximum personal and organizational impact and improved performance.', '', 1, 1, 1, 1548115200, 1548115200),
(165, 'BusinessConsulting', '', 'Business Consulting', '', 'Business consulting: providing support to businesses in the form of gathering data, research,analysis, and strategy. Deliverables tend to be meetings, presentations, reports, tools,and documentation. In all cases, the client has final decision making on the direction to take and decisions to implement.', '', 1, 1, 1, 1548201600, 1548201600),
(166, 'MedicalCoaching', NULL, 'Medical Coaching', NULL, 'Medical Coaching is a life coaching niche that enables clients to develop emotional, mental and cognitive resilience in a medical crisis or chronic condition', NULL, 1, 1, 1, 1549497600, 1549497600),
(167, 'TrainingandFacilitation', NULL, 'Training and Facilitation', NULL, 'Workshops offering engaging (non-physically challenging) educational opportunities, in a wide range of topics, for development of interested individuals and/or teams within organizations.', NULL, 1, 1, 1, 1553817600, 1553817600),
(170, 'DryCupping', NULL, 'Dry Cupping', NULL, 'Dry Cupping is a modern version of cupping which uses a rubber pump instead of fire to create the vacuum inside the cup. Sometimes therapists use silicone cups, which they can move from place to place on your skin for a massage-like effect.', NULL, 3, 2, 1, 1567036800, 1567036800),
(171, 'FireCupping', NULL, 'Fire Cupping', NULL, 'Fire Cupping involves placing a flammable substance such as alcohol, herbs, or paper in a cup and setting it on fire. As the fire goes out, the therapist will put the cup upside down on the customer\'s skin.', NULL, 3, 2, 1, 1567036800, 1567036800),
(172, 'SomaticExperiencing', NULL, 'Somatic Experiencing Therapy', NULL, 'Somatic Experiencing Therapy is a body-based approach designed to help the client overcome trauma (PTSD), shock and stress. While the client talks, the therapist observes the client\'s reactions and body sensations and guides them to gently release physical tensions, emotions and energy related to the trauma as they arise in the session, at a pace, and in a way that best supports their return to a natural state of wellbeing. The approach aims to help them safely release or discharge the energy buildup from the body so the client can, over time, remove the trigger. SE can also include Touch Therapy in order to release trauma symptoms.', NULL, 5, 3, 1, 1573516800, 1573516800),
(173, 'Compassionate', NULL, 'Compassionate Inquiry', NULL, 'Compassionate Inquiry aims to unveil the level of consciousness, mental climate, hidden assumptions, implicit memories and body states that form the real messages in clients that their words both express and conceal.', NULL, 5, 3, 1, 1573516800, 1573516800),
(174, 'TraumaRecovery', NULL, 'Trauma Recovery Coaching', NULL, 'Provides trauma recovery coaching and mentorship support for adults who experienced childhood development trauma, or have faced emotional, sexual, mental or other forms of abuse in adult  life.', NULL, 5, 3, 1, 1573516800, 1573516800),
(175, 'ProfessionalBreathworkP', NULL, 'Professional Breathwork Practice', NULL, 'Breathwork is an umbrella term for a variety of safe, therapeutic breathing practices.<br> <br>Typically, the practitioner starts the session talking with the client about their personal history and current issues.  The client then lies down, relaxes, and focuses their awareness on their breath. The practitioner guides the client into a connected breathing rhythm. The breathing sessions last approximately an hour and the intensity of the breathing can vary from gentle to vigorous, depending on the client, the session, and the practitioner. The overall experience can vary widely from a powerful somatic therapy to a simple relaxation technique.  After the active breathing part of the session, the client usually goes into a short period of integration, and continues to relax, breath and rest for a while.', NULL, 1, 1, 1, 1593592260, 1593592260),
(176, 'Metamorphosis', NULL, 'Metamorphosis', NULL, 'Metamorphosis was originated by Robert St John and his original work. His training as a reflexologist led him to the theory that he did not need to work on the whole foot, hand and head to help his clients. He worked on specific reflex points to relax his clients and help them to feel more positive. Because of the changes he noticed in his clients attitude after the sessions he named it Metamorphosis', NULL, 1, 1, 1, 1594755968, 1594755968),
(191, 'CBT', NULL, 'Cognitive Behavioural Therapy ', NULL, 'Cognitive Behavioural Therapy (CBT) is the term for a number of therapies that are designed to help solve problems in people\'s lives, such as anxiety, depression, post-traumatic stress disorder (PTSD) or drug misuse. \r\n\r\nCBT was developed from two earlier types of psychotherapy: \r\nâ€¢	Cognitive therapy, designed to change people\'s thoughts, beliefs, attitudes and expectations\r\nâ€¢	Behavioural therapy (also called behaviourism, designed to change how people acted\r\nAmerican psychotherapist Aaron Beck helped to develop CBT and believed that the way we think about a situation affects how we act. In turn, our actions can affect how we think and feel. It is therefore necessary to change both the act of thinking (cognition) and behaviour at the same time. This is known as cognitive behavioural therapy.\r\n', NULL, 1, 1, 1, 1685607520, 1685607520),
(180, 'TherapeuticCoaching', NULL, 'Therapeutic Coaching', NULL, 'Therapeutic Coaching is a coaching based model which integrates key principles of hypnotherapy, developmental psychology, NLP, life coaching, EFT, and mindfulness to help people live a happier, healthier and more relaxed life.', NULL, 1, 1, 1, 1615538231, 1615538231),
(177, 'RIM', NULL, 'RIM', NULL, 'RIM is a revolutionary whole-brain method, grounded in neuroscience, that naturally processes emotion. RIM allows for profound change at a visceral level.\r\nRIM is a transformational, closed eye, verbal technique that quickly and easily releases stuck negative emotional memories and regenerates them into positive ones. RIM is used by psychologists, coaches, therapists, counselors, social workers and other helping professions. It can be performed in person, over the phone or via Zoom / Skype.', NULL, 1, 1, 1, 1605681839, 1605681839),
(178, 'MentalHealthCoachingCounseling', NULL, 'Mental Health Coaching/Counseling', NULL, 'Coaching and helping clients manage emotions, challenge negative thinking patterns, improve relationship skills, and reduce stress and anxiety.', NULL, 2, 2, 1, 1611913390, 1611913390),
(179, 'SubstanceAbuseCoachingCounseling', NULL, 'Substance Abuse Coaching/Counseling', NULL, 'This is a form of strengths-based support for people with addictions or in recovery from alcohol, other drugs, codependency, or other addictive behaviors.', NULL, 2, 2, 1, 1611913560, 1611913560),
(181, 'ChangeMgnt', NULL, 'Change Management Consulting', NULL, 'Change Management is the practice of applying a structured approach to transition an organization from a current state or operational culture to a future state to achieve specific expected benefits. Change Management provides approaches, tools, and techniques that empower an organization to successfully achieve these desired results.  Change Management provides value by enabling people to adopt the change and operate in a new future organizational structure. The more seamless the transition is for an organizationsâ€™ people, the more effectively and efficiently the organization will be in achieving the benefits of the desired future state.', NULL, 2, 2, 1, 1627456984, 1648898680),
(182, 'ChiNeiTsang', NULL, 'Chi Nei Tsang ', NULL, 'Chi Nei Tsang (CNT) is a form of Chinese healing touch therapy that has been used for centuries. It focuses on gentle, deep massage of the abdomen in order to â€œtrainâ€ the internal abdominal organs, so they can function in a more efficient manner, which in turn is believed to enhance physical and emotional well-being.', NULL, 3, 3, 1, 1635443964, 1635443964),
(183, 'Eutaptics', NULL, 'Eutaptics', NULL, 'eutapticsÂ® FasterEFTâ„¢ is a methodology developed by Robert G. Smith after many years of studying and working with thousands of people. Emotionally Focused Transformations combines the best aspects of EFT Tapping (Emotional Freedom Technique), NLP (Neuro-Linguistic Programming) and other techniques, to work with your entire mind-body system. The work is done on the level of emotions and on the representation of the problem in the mind of the person. The customer is asked questions to understand how the problem is created. One of the main techniques is tapping on certain meridians of the body and releasing emotions.', NULL, 3, 3, 1, 1638956860, 1638956860),
(184, 'InternalFamilySystems', NULL, 'Internal Family Systems Therapy', NULL, 'IFS posits that the mind is made up of multiple parts, and underlying them is a person\'s core or true Self.  Each part has its own perspective, interests, memories, and viewpoint. A core tenet of IFS is that every part has a positive intent, even if its actions are counterproductive and/or cause dysfunction. The IFS method promotes internal connection and harmony to bring the mind back into balance.\r\n\r\nIFS therapy can help with general life stressors like grief, relationship, and career issues, and improve resilience and self-esteem. Though it is non-pathologizing (does not reduce a client to their diagnosis), it may treat several mental health issues and conditions', NULL, 1, 1, 1, 1643042367, 1643042367),
(185, 'ListeningTherapy', NULL, 'Listening Therapy', NULL, 'A therapeutic tool (such as SSP) that is designed to reset the nervous system, using specially filtered music to stimulate the vagus nerve .  Often used in combination with other therapeutic approaches it is suitable for children and adults with trauma, anxiety etc.', NULL, 1, 1, 1, 1653553563, 1653553563),
(186, 'Breathwork', '', 'Breathwork', '', 'Breathwork is a term that encompasses a range of breathing exercises and techniques to achieve conscious and controlled breathing. The intentional change of the rate, rhythm, depth and pattern of breathing, brings a greater sense of self-awareness and capacity for self-healing. It also helps people work toward overall improvement in mental, physical, and spiritual well-being. Some breathwork benefits include reducing stress and anxiety, increasing energy, boosting immunity, improving circulation, blood pressure balancing, pain management, lung strengthening etc.  There are different Breathwork modalities depending on what technique is used. Some of these modalities are (but are not limited to) holotropic, shamanic, rebirthing, pranayama, SOMA, neurodynamic, somatic, transformational, and vivation breathwork etc. ', '', 1, 1, 1, NULL, NULL),
(188, 'Tutor', NULL, 'Tutor', NULL, 'Acting as a tutor for any of the business practices we cover, subject to the business practice being taught also being listed as covered.', NULL, 1, 1, 1, 1677657113, 1677657113),
(189, 'BiofieldTuning', NULL, 'Biofield Tuning', NULL, 'All physical, mental and emotional disorders can be perceived as \"dissonance\" in our electrical system. Biofield Tuning is able to locate, diminish and resolve this dissonance and in doing so, alleviate and even eradicate the corresponding physical, mental and/or emotional symptoms.', NULL, 1, 1, 1, 1678194412, 1678194412),
(190, 'SoundHealing', NULL, 'Sound Healing', NULL, 'Sound Healing helps to facilitate shifts in our brainwave state by using entrainment. Entrainment synchronizes our fluctuating brainwaves by providing a stable frequency which the brainwave can attune to. By using rhythm and frequency, we can entrain our brainwaves and it then becomes possible to down-shift our normal beta state (normal waking consciousness) to alpha (relaxed consciousness), and even reach theta (meditative state) and delta (sleep; where internal healing can occur).  This same concept is utilized in meditation by regulating the breath, but with sound healing itâ€™s the frequency that is the agent which influences the shift.\r\n', NULL, 1, 1, 1, 1681462448, 1681462448),
(192, 'Decluttering', NULL, 'De-cluttering Practitioner', NULL, 'Advising on the discipline and process required to de-clutter your space and your life. \r\n\r\nDe-cluttering is a thinking process that assists you to make decisions about what to keep and what not to. It is not prescriptive concerning what should be thrown out, but rather the process of how to make your own decisions and develop your own disciplines about what to keep and what to dispose of to best help you meet your goals aims and ambitions. \r\n\r\nThe cover specifically excludes any claim arising from the disposal of an item(s) where it is later claimed to have been wanted or valuable. \r\n', NULL, 1, 1, 1, 1685607546, 1685607546),
(193, 'EnergyHealing', NULL, 'Energy Healing ', NULL, 'Energy Healing (aura and chakra healing) is one of the most profound and fundamental alternative therapies in the field of alternative medicine and holistic health. \r\n\r\nIt employs spiritual healing methods which expand the awareness of the energy healer and uses energy, colour and light healing techniques to catalyse healing in the patients energy field (aura and chakra system) helping the patient break free from afflictions and limitations of body, mind and spirit. \r\n\r\nIt may provide enhanced quality of life for the patient and facilitate spiritual growth. \r\n', NULL, 1, 1, 1, 1685607570, 1685607570),
(194, 'ImageConsultant', NULL, 'Image Consultant', NULL, 'An image consultant will assist you in the following ways: to align your personal image with your professional goals, assess the impact of your current personal image, stay ahead of the competition with a dynamic and up-to-date appearance, choose the right cuts, fabrics, and prints for your figure, style preferences and lifestyle, discover how to make the most of your own personal colouring, learn how to apply a day make-up in the correct colours, achieve authoritative and accessible looks, discover the best hairstyles and accessories for you, create an easy to coordinate wardrobe for work and leisure, avoid the common pitfalls of image impact and enjoy the increased confidence from looking your best.', NULL, 1, 1, 1, 1685607641, 1685607641),
(195, 'LightTherapy', NULL, 'Light Therapy ', NULL, 'Light therapy is a method used for the treatment of various conditions including SAD (Seasonal Affective Disorder), regulating sleep patterns, enhancing blood flow and oxygenation, and stimulating the body\'s natural process of healing. It includes exposure to outdoor daylight or specific indoor artificial light sources. Depending on the treatment, the light therapy utilises different lights in the visible spectrum such as but not limited to red and near-infrared light, blue light, green light and yellow light.', NULL, 1, 1, 1, 1685607657, 1685607657),
(196, 'Mediumship', NULL, 'Mediumship ', NULL, 'Mediumship is described as learning how to communicate and receive messages from guides, spirits, angels, and the afterlife. ', NULL, 1, 1, 1, 1685607673, 1685607673),
(197, 'MusicTherapy', NULL, 'Music Therapy ', NULL, 'Music therapists use music-based experiences to address client needs in one or more domains of human functioning: cognitive, academic, emotional/psychological; behavioural; communication; social; physiological (sensory, motor, pain, neurological and other physical systems), spiritual, and aesthetics. Music experiences are strategically designed to use the elements of music for therapeutic effects, including melody, harmony, key, mode, meter, rhythm, pitch/range, duration, timbre, form, texture, and instrumentation. The benefits of music therapy include but are not limited to improved heart rate, reduced anxiety, stimulation of the brain, and improved learning. Prior written parental consent if working with minors.', NULL, 1, 1, 1, 1685607716, 1685607716),
(198, 'MyofascialTherapy', NULL, 'Myofascial Therapy', NULL, 'It comprises a blend of exercises that optimize movement efficiency and structural balance. The clearly sequenced training improves dynamic stability, elastic strength, movement ease and energy flow. It uses aspects of pilates, yoga, dance, stretching and fitness.', NULL, 1, 1, 1, 1685607735, 1685607735),
(199, 'NatureTherapy', NULL, 'Nature Therapy ', NULL, 'Nature Therapy takes us out of our busy lives and heals us - reconnecting us with our environments and ourselves. It introduces us to eco-therapy, the power of trees, and messages in nature. It improves individuals mental and physical health by connecting with nature and outdoor surroundings. Some examples of Nature Therapy are Forest Bathing and Garden Therapy.', NULL, 1, 1, 1, 1685607749, 1685607749),
(200, 'ParentingClasses', NULL, 'Parenting Classes ', NULL, 'Babies and Children may be present but are the sole responsibility of their parent / care giver at all times. The class leader may assist a parent to position their child comfortably in a number of traditional holds. Parenting classes take place either in a group or individual setting. Classes consist of sharing information about parenting topics, including but not limited to: attachment parenting techniques; research on infant development; babywearing techniques, use of baby carrying/carriers, communicating effectively with babies, toddlers and children; factoring evolutionary history into parenting expectations; ways to strengthen a bond with a baby, toddler or child; establishing a good relationships with your children; differences in traditional parenting cultures around the world; childhood sleep habits; potty training. Classes take the form of a mixture of group activities and traditional teaching methods. No medical advice is given or implied - the courses are informative in nature and the onus is placed on clients to make their own informed decisions. ', NULL, 1, 1, 1, 1685607766, 1685607766),
(201, 'ProfessionalOrganiser', NULL, 'Professional Organiser ', NULL, 'A Professional Organiser (PO), engages in the following activities (assuming the activity is reasonable within the context of a PO role): \r\n\r\ntime management - paper management & filing systems - clutter control - space planning - wardrobe organising - event planning - errands - personal shopping - book-keeping - home office matters - financial management - memorabilia/photographs -packing/moving - information management - training - computers -kitchens - cleaning - downsizing - relocating - students - organising of any sort - children\'s rooms - public speaking / seminars / training - Feng Shui - coaching within the organising context - space clearing - home staging - interior design - project management - concierge services eg finding, booking trades people \r\n\r\nThe practitioner will focus on: - acting as a practical enabler and/or coach - improving the safety and wellbeing of clients, whether in the home or the workplace - maximising functionality, efficiency and comfort using effective processes, storage and organising solutions - where necessary, expediting the removal of unwanted items - ensuring appropriate and responsible sale, donation or disposal of such items - helping clients to adopt positive and workable habits and processes for the future. \r\n\r\nCover is wholly conditional upon adherance to a professional code of ethics at all times, and written confirmation from the client that all decisions to dispose of items remain with, and are the responsibly of, the client at all times.\r\n', NULL, 1, 1, 1, 1685607789, 1685607789),
(202, 'RelationshipConsultation', NULL, 'Relationship Consultation ', NULL, 'Consultation, advice and training on the management of inappropriate behaviour in relationships in particular where relationships have, or are about to, break down. Such consultation, advice and training may be appropriate for, but is not limited to, parents and their teenage children, the staff of educational establishments and students or pupils in their charge, and romantic/couple relationships etc. The outcomes sought are a change in behavioural patterns and this often involve a change of thinking on the part of both parties. ', NULL, 1, 1, 1, 1685607809, 1685607809),
(203, 'Singing/VocalInstruction', NULL, 'Singing/Vocal Instruction', NULL, 'Teaching individuals or groups, singing skills and vocal projection. To also include pitch tone and range. This can be to increase singing skill or to help release any blocked emotions.', NULL, 1, 1, 1, 1685607832, 1685607832),
(204, 'SENA', NULL, 'Sports and Exercise Nutritional Advisor', NULL, 'Advisor will: address the clients fitness goals and design a personalised nutritional plan, educate and appraise the client, provide guidelines for a balanced intake of nutrients to help with the clients goals, inform about the benefits of proper hydration and the risks of dehydration, check on food intake through questions and dietary journals, encourage the client to follow a varied diet and healthy lifestyle, work with the client to implement strategies for new healthy habits to stick to, follow up on nutritional improvements, rehearse and adjust an eating plan where necessary ', NULL, 1, 1, 1, 1685607965, 1685607965),
(205, 'TarotCardReading', NULL, 'Tarot Card Reading', NULL, 'The tarot (also known as tarocchi, tarock or similar names) is typically a set of tarot cards however, playing cards may be used instead. Tarot reading revolves around the belief that the cards can be used to gain insight into the past, current and possible future situations of the subject. Some believe they are guided by a spiritual force, such as Gaia, while others believe the cards help them tap into a collective unconscious or their own creative subconscious.', NULL, 1, 1, 1, 1685607988, 1685607988),
(206, 'DivorceCoaching', NULL, 'Divorce Coaching', NULL, 'Divorce Coaching is a flexible, goal-oriented process designed to support, motivate, and guide people going through divorce to help them make the best possible decisions for their future, based on their particular interests, needs, and concerns. Excludes financial consulting, planning and offering of all legal advice. \r\n', NULL, 1, 1, 1, 1691567828, 1691567828);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `ID` int(11) NOT NULL,
  `state` varchar(5) DEFAULT NULL,
  `stateName` varchar(50) DEFAULT NULL,
  `uplift` decimal(5,2) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`ID`, `state`, `stateName`, `uplift`, `status`) VALUES
(1, 'AL', 'ALABAMA', '1.30', 1),
(2, 'AK', 'ALASKA', '1.00', 1),
(3, 'AZ', 'ARIZONA', '1.30', 1),
(4, 'AR', 'ARKANSAS', '1.00', 1),
(5, 'CA', 'CALIFORNIA', '1.30', 1),
(6, 'CO', 'COLORADO', '1.00', 1),
(7, 'CT', 'CONNECTICUT', '1.00', 1),
(8, 'DE', 'DELAWARE', '1.00', 1),
(9, 'DC', 'DISTRICT OF COLUMBIA', '1.00', 1),
(10, 'FL', 'FLORIDA', '1.00', 1),
(11, 'GA', 'GEORGIA', '1.00', 1),
(12, 'HI', 'HAWAII', '1.00', 1),
(13, 'ID', 'IDAHO', '1.00', 1),
(14, 'IL', 'ILLINOIS', '1.30', 1),
(15, 'IN', 'INDIANA', '1.00', 1),
(16, 'IA', 'IOWA', '1.00', 1),
(17, 'KS', 'KANSAS', '1.00', 1),
(18, 'KY', 'KENTUCKY', '1.00', 1),
(19, 'LA', 'LOUISIANA', '1.30', 1),
(20, 'ME', 'MAINE', '1.00', 1),
(21, 'MD', 'MARYLAND', '1.00', 1),
(22, 'MA', 'MASSACHUSETTS', '1.00', 1),
(23, 'MI', 'MICHIGAN', '1.00', 1),
(24, 'MN', 'MINNESOTA', '1.00', 1),
(25, 'MS', 'MISSISSIPPI', '1.00', 1),
(26, 'MO', 'MISSOURI', '1.00', 1),
(27, 'MT', 'MONTANA', '1.00', 1),
(28, 'NE', 'NEBRASKA', '1.00', 1),
(29, 'NV', 'NEVADA', '1.00', 1),
(30, 'NH', 'NEW HAMPSHIRE', '1.00', 1),
(31, 'NJ', 'NEW JERSEY', '1.00', 1),
(32, 'NM', 'NEW MEXICO', '1.00', 1),
(33, 'NY', 'NEW YORK', '1.00', 1),
(34, 'NC', 'NORTH CAROLINA', '1.00', 1),
(35, 'ND', 'NORTH DAKOTA', '1.00', 1),
(36, 'OH', 'OHIO', '1.00', 1),
(37, 'OK', 'OKLAHOMA', '1.00', 1),
(38, 'OR', 'OREGON', '1.00', 1),
(39, 'PA', 'PENNSYLVANIA', '1.00', 1),
(40, 'RI', 'RHODE ISLAND', '1.00', 1),
(41, 'SC', 'SOUTH CAROLINA', '1.00', 1),
(42, 'SD', 'SOUTH DAKOTA', '1.00', 1),
(43, 'TN', 'TENNESSEE', '1.00', 1),
(44, 'TX', 'TEXAS', '1.00', 1),
(45, 'UT', 'UTAH', '1.00', 1),
(46, 'VT', 'VERMONT', '1.00', 1),
(47, 'VA', 'VIRGINIA', '1.00', 1),
(48, 'WA', 'WASHINGTON', '1.00', 1),
(49, 'WV', 'WEST VIRGINIA', '1.00', 1),
(50, 'WI', 'WISCONSIN', '1.00', 1),
(51, 'WY', 'WYOMING', '1.00', 1),
(53, 'MH', 'MARSHALL ISLANDS', '1.00', 0),
(54, 'AS', 'AMERICAN SAMOA', '1.00', 0),
(55, 'FM', 'FEDERATED STATES OF MICRONESIA', '1.00', 0),
(56, 'GU', 'GUAM', '1.00', 0),
(58, 'MP', 'NORTHERN MARIANA ISLANDS', '1.00', 0),
(59, 'PW', 'PALAU', '1.00', 0),
(60, 'PR', 'PUERTO RICO', '1.00', 1),
(61, 'VI', 'VIRGIN ISLANDS', '1.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `statetax`
--

CREATE TABLE `statetax` (
  `ID` int(11) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `tax` decimal(10,4) DEFAULT NULL,
  `feeAmount` decimal(4,2) DEFAULT NULL,
  `feePercent` decimal(5,5) DEFAULT NULL,
  `feeUnder500Premium` decimal(10,2) DEFAULT NULL,
  `stateTaxStatement` varchar(500) DEFAULT NULL,
  `stateFeeStatement` varchar(255) DEFAULT NULL,
  `startDate` int(11) DEFAULT NULL,
  `ABAI` enum('No','Yes') NOT NULL DEFAULT 'No',
  `ICF` enum('No','Yes') DEFAULT 'No',
  `BigLife` enum('No','Yes') NOT NULL DEFAULT 'No',
  `statement` text DEFAULT NULL,
  `SL_statement` text DEFAULT NULL,
  `method` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statetax`
--

INSERT INTO `statetax` (`ID`, `state`, `tax`, `feeAmount`, `feePercent`, `feeUnder500Premium`, `stateTaxStatement`, `stateFeeStatement`, `startDate`, `ABAI`, `ICF`, `BigLife`, `statement`, `SL_statement`, `method`) VALUES
(10, 'NY', '0.0360', '0.00', '0.00170', '0.00', 'Surplus lines tax', 'Filing Fee', 1, 'Yes', 'Yes', 'Yes', 'The insurance is provided under the Master Policy and is in accordance with the terms of the Master Policy, a copy of which is attached hereto. The original Master Policy may be inspected at the offices of the Master Policy Holder. The respective names of and proportions underwritten can be ascertained from the office of the Master Policy Holder.', 'The insurer(s) named herein is (are) not licensed by the State of New York, not subject to its supervision, and in the event of the insolvency of the insurer(s), not protected by the New York State Security Funds. The policy may not be subject to all of the regulations of the Department of Financial Services pertaining to policy forms.', ''),
(27, 'IN', '0.0250', '0.00', '0.00000', '0.00', 'Surplus Lines tax', '', 0, 'Yes', 'Yes', 'Yes', 'The insurance is provided under the Master Policy and is in accordance with the terms of the Master Policy, a copy of which is attached hereto. The original Master Policy may be inspected at the offices of the Master Policy Holder. The respective names of and proportions underwritten can be ascertained from the office of the Master Policy Holder.', '', ''),
(25, 'XXX_IL', '0.0350', '0.00', '0.00100', '0.25', 'Surplus Lines Tax', 'Stamp Fee', 0, 'Yes', 'No', 'No', 'The insurance is provided under the Master Policy and is in accordance with the terms of the Master Policy, a copy of which is attached hereto. The original Master Policy may be inspected at the offices of the Master Policy Holder. The respective names of and proportions underwritten can be ascertained from the office of the Master Policy Holder.', 'NOTICE TO POLICYHOLDER: This contract is issued, pursuant to Section 445 of the Illinois Insurance Code, by an Insurer not authorized to transact business in Illinois and as such is not covered by the Insurance Guaranty Fund.', 'To calculate tax and stamp fee for Illinois\r\n\r\n \r\n\r\nIf Premium + Policy fee = $100.50\r\n\r\n \r\nFor calculation of tax ONLY Round to nearest whole $ = $100\r\n \r\n\r\nTax charged at 3.5% of $100 (then rounded to whole$) = $3 ß 3.5% of $100 is $3.50 which needs to rounded to $4 ($0.50 and up rounds up)'),
(26, 'OH', '0.0500', '0.00', '0.00000', '0.00', 'Surplus Lines Tax', 'Stamp Fee', 0, 'Yes', 'Yes', 'Yes', 'The insurance is provided under the Master Policy and is in accordance with the terms of the Master Policy, a copy of which is attached hereto. The original Master Policy may be inspected at the offices of the Master Policy Holder. The respective names of and proportions underwritten can be ascertained from the office of the Master Policy Holder.', 'THE INSURANCE HEREBY EVIDENCED IS WRITTEN BY AN APPROVED NON-LICENSED INSURER IN THE STATE OF OHIO AND IS NOT COVERED IN CASE OF INSOLVENCY BY THE OHIO INSURANCE GUARANTY ASSOCIATION.', 'To calculate tax and stamp fee for Illinois\n\n \n\nIf Premium + Policy fee = $100.50\n\n \nFor calculation of tax ONLY Round to nearest whole $ = $100\n \n\nTax charged at 3.5% of $100 (then rounded to whole$) = $3 ß 3.5% of $100 is $3.50 which needs to rounded to $4 ($0.50 and up rounds up)'),
(29, 'MI', '0.0200', '0.00', '0.00500', '0.00', 'Surplus Lines Tax', 'Stamp Fee', 0, 'Yes', 'No', 'No', 'The insurance is provided under the Master Policy and is in accordance with the terms of the Master Policy, a copy of which is attached hereto. The original Master Policy may be inspected at the offices of the Master Policy Holder. The respective names of and proportions underwritten can be ascertained from the office of the Master Policy Holder.', 'NOTICE TO POLICYHOLDER: This contract is issued, pursuant to Section 445 of the Illinois Insurance Code, by an Insurer not authorized to transact business in inois and as such is not covered by the Insurance Guaranty Fund.', 'To calculate tax and stamp fee for Illinois\r\n\r\n \r\n\r\nIf Premium + Policy fee = $100.50\r\n\r\n \r\nFor calculation of tax ONLY Round to nearest whole $ = $100\r\n \r\n\r\nTax charged at 3.5% of $100 (then rounded to whole$) = $3 ß 3.5% of $100 is $3.50 which needs to rounded to $4 ($0.50 and up rounds up)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addanother`
--
ALTER TABLE `addanother`
  ADD PRIMARY KEY (`aA_ID`);

--
-- Indexes for table `add_referred_notes`
--
ALTER TABLE `add_referred_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clientID`),
  ADD KEY `clientID` (`clientID`),
  ADD KEY `clientID_2` (`clientID`);

--
-- Indexes for table `endorsements`
--
ALTER TABLE `endorsements`
  ADD PRIMARY KEY (`end_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`policyID`),
  ADD KEY `policyID` (`policyID`),
  ADD KEY `policyNo_2` (`policyNo`),
  ADD KEY `quoteID` (`quoteID`);
ALTER TABLE `policies` ADD FULLTEXT KEY `policyNo` (`policyNo`);

--
-- Indexes for table `quoteaddanother`
--
ALTER TABLE `quoteaddanother`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `aA_ID` (`aA_ID`,`quoteID`,`clientID`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`quoteID`),
  ADD KEY `quoteID` (`quoteID`),
  ADD KEY `quoteID_2` (`quoteID`),
  ADD KEY `quoteID_3` (`quoteID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `quotes_update_history`
--
ALTER TABLE `quotes_update_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riskcategories`
--
ALTER TABLE `riskcategories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `statetax`
--
ALTER TABLE `statetax`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addanother`
--
ALTER TABLE `addanother`
  MODIFY `aA_ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_referred_notes`
--
ALTER TABLE `add_referred_notes`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61494;

--
-- AUTO_INCREMENT for table `endorsements`
--
ALTER TABLE `endorsements`
  MODIFY `end_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2757;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `policyID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75842;

--
-- AUTO_INCREMENT for table `quoteaddanother`
--
ALTER TABLE `quoteaddanother`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `quoteID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70525;

--
-- AUTO_INCREMENT for table `quotes_update_history`
--
ALTER TABLE `quotes_update_history`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riskcategories`
--
ALTER TABLE `riskcategories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `statetax`
--
ALTER TABLE `statetax`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Database: `sps_complex`
--
CREATE DATABASE IF NOT EXISTS `sps_complex` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sps_complex`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `user_type`) VALUES
(1, '7418508091', '693bdd808825bc48c3fe7939e1026d96', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` bigint(20) NOT NULL,
  `uid` int(100) NOT NULL,
  `business_id` varchar(10) NOT NULL,
  `business_title` varchar(255) NOT NULL,
  `proprietor_name` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `business_type` varchar(255) NOT NULL,
  `preferred_rent` varchar(20) NOT NULL,
  `preferred_advance` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `uid`, `business_id`, `business_title`, `proprietor_name`, `mobile_number`, `business_type`, `preferred_rent`, `preferred_advance`) VALUES
(3, 1, 'A1', 'Amar', 'Amar', '9994086630', 'amar', '1000', '1000'),
(4, 5, 'A1', 'New Medicals', 'New', '123456789', 'medical store', '10000', '100001'),
(5, 5, 'C1', 'ABC Furnitures', 'xyz', '123456', 'Showroom', '10000', '100001'),
(6, 0, 'A1', '', '', '', '', '', ''),
(7, 16, 'A1', 'sandy', 'sandeepak', '915097271', 'Book store', '9001', '100001'),
(8, 16, 'C1', 'sandy', 'sandeepak', '2020202020', 'library', '10', '100');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) NOT NULL,
  `business_id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tariff` varchar(20) NOT NULL,
  `availbility` enum('ON','OFF') NOT NULL DEFAULT 'ON',
  `tool_type` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `business_id`, `name`, `tariff`, `availbility`, `tool_type`) VALUES
(1, 'B2', 'Interior design', '5000', 'ON', '1'),
(16, 'B1', 'Tea1', '', 'ON', '1'),
(17, 'B1', 'Coffee', '', 'ON', '1'),
(19, 'B2', 'Vastu compliance', '', 'OFF', '1'),
(20, '12', 'Tea', '', 'ON', '1'),
(21, '5', 'Mens wear', '', 'ON', '1'),
(22, '5', 'Kids Wear', '', 'ON', '1'),
(27, 'B1', 'boost', '', 'ON', '1'),
(29, '14', 'Take away', '', 'ON', '1'),
(30, '14', 'Free Delivery', '', 'ON', '1'),
(31, '14', 'Surprise delivery', '', 'ON', '1'),
(32, 'B2', 'exterior', '', 'ON', '1'),
(33, 'B2', 'TMT Steel rods', '500', 'ON', '2'),
(36, 'B1', 'Tea2', '', 'ON', '2'),
(39, '17', 'deepak1', 'd', 'OFF', '1'),
(40, '17', 'deepak2', '11', 'OFF', '2'),
(41, '17', 'dani1', '100', 'ON', '1'),
(43, '17', 'ddeee', 'eee', 'ON', '2');

-- --------------------------------------------------------

--
-- Table structure for table `serv_prod`
--

CREATE TABLE `serv_prod` (
  `id` bigint(20) NOT NULL,
  `business_id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tariff` varchar(20) NOT NULL,
  `availbility` enum('ON','OFF') NOT NULL DEFAULT 'ON',
  `tool_type` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `serv_prod`
--

INSERT INTO `serv_prod` (`id`, `business_id`, `name`, `tariff`, `availbility`, `tool_type`) VALUES
(1, '17', 'd1', 'dddddddddddaaaa', 'ON', '1'),
(2, '17', 'd2', '11', 'ON', '2'),
(3, '17', 'd2', '22', 'OFF', '2'),
(4, '17', 'd11', '1000', 'ON', '1'),
(5, '17', 'd111', '', 'ON', '1'),
(6, 'B2', 'deepak1', '100', 'ON', '1'),
(7, 'B2', 'Deepak2', '100', 'OFF', '2'),
(8, 'B2', 'deepak11', '100', 'ON', '1'),
(9, 'B2', 'deepak22', '100', 'OFF', '2'),
(10, 'B2', 'deepak111', '100', 'ON', '1'),
(11, 'B2', 'deepak222', '100', 'OFF', '2'),
(12, '17', 'deepak1', '10001', 'ON', '1'),
(13, '17', 'deepak11', '10001', 'ON', '2'),
(14, 'B1', 'deepak1', '2001', 'ON', '1'),
(15, 'B2', 'deeepak1111', '', 'ON', '1'),
(16, 'B2', 'deepak11111', '', 'ON', '1'),
(18, 'B2', 'deepak2222', '', 'ON', '2'),
(19, 'B2', 'deepak22222', '', 'ON', '2'),
(20, 'B2', 'deepak222222', '', 'ON', '2'),
(21, 'B2', 'deepak2222222', '', 'OFF', '2');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` bigint(20) NOT NULL,
  `business_id` varchar(10) NOT NULL,
  `business_title` varchar(255) NOT NULL,
  `proprietor_name` varchar(255) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `business_number` varchar(20) NOT NULL,
  `business_type` varchar(255) NOT NULL,
  `current_rent` float(10,2) NOT NULL,
  `given_advance` float(10,2) NOT NULL,
  `balance_in_rent` float(10,2) NOT NULL,
  `occupied_since` date NOT NULL,
  `last_paid_on` date NOT NULL,
  `last_paid_amount` float(10,2) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `merged_by` varchar(20) NOT NULL,
  `valid_from` varchar(50) NOT NULL,
  `valid_to` varchar(50) NOT NULL,
  `business_image` varchar(30) NOT NULL,
  `fixed_rent` varchar(50) NOT NULL,
  `fixed_advance` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `domain` enum('SPS','THAGAVAL') NOT NULL DEFAULT 'SPS',
  `services` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `products` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `website` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `youtube` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `business_id`, `business_title`, `proprietor_name`, `mobile_number`, `business_number`, `business_type`, `current_rent`, `given_advance`, `balance_in_rent`, `occupied_since`, `last_paid_on`, `last_paid_amount`, `username`, `password`, `email`, `merged_by`, `valid_from`, `valid_to`, `business_image`, `fixed_rent`, `fixed_advance`, `url`, `description`, `domain`, `services`, `products`, `website`, `facebook`, `twitter`, `youtube`, `instagram`) VALUES
(1, 'A1', '', '', '', '', '', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', '', '', '', '', '9000', '100000', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(2, 'A2', 'Maharishi matrimony', 'Manimegalai', '9443158169', '9443158169', 'Matrimonial service', 3000.00, 30000.00, 3000.00, '0000-00-00', '2021-09-06', 3000.00, '9443158169', '3077113e7c37df696d191f32db7d16e0', '', '', '2020-03', '2021-01', '', '', '', 'maharishi', '', 'SPS', '0', '0', '', '', '', '', ''),
(3, 'A3', 'Cars24', 'Rajesh', '9994409054', '9994409054', 'Car sales & service', 3500.00, 35000.00, 3500.00, '0000-00-00', '2021-09-08', 3500.00, '9994409054', 'eb844a6e129f7c438eb937ea5922d220', '', '', '2020-01', '2021-11', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(4, 'A4', 'Liberty', 'Shyam', '8270046607', '8270046607', 'Manpower & Resouce', 3500.00, 35000.00, 4000.00, '0000-00-00', '2021-09-07', 10000.00, '8270046607', 'cfe93922228f17994b4eab42614ba76f', '', '', '2021-02', '2021-12', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(5, 'B1', 'Harish Tea stall', 'Ponnusamy', '9788064108', '9788064108', 'Tea stall', 6000.00, 75000.00, 0.00, '0000-00-00', '2021-09-07', 6000.00, '9788064108', '81dc9bdb52d04dc20036dbd8313ed055', '', '', '2020-03', '2021-01', '', '', '', 'harish', 'It is a popular tea stall serving variety of teas and snacks', 'SPS', '4', '1', 'http://flipkart.com', '', '', '', ''),
(6, 'B2', 'GKM Constructions', '', '8508880013', '8508880013', 'Constructions & Interiors', 3500.00, 35000.00, 11450.00, '0000-00-00', '2021-10-09', 5500.00, '8508880013', '97d119e92f570e63d9ef016d6488fb91', '', '', '', '', '', '', '', 'gkm', 'This is the construction based organisation. I am doing interior.', 'SPS', '2', '4', 'www.thagavalsangam.com/gkm', 'sss', '', '', ''),
(7, 'B3', 'Rose Dental Care', 'Dr. Vinith', '8610452960', '8610452960', 'Dental Clinic', 7500.00, 80000.00, 0.00, '0000-00-00', '2021-09-01', 7500.00, '8610452960', 'fcdc7b4207660a1372d0cd5491ad856e', '', '', '2021-08', '2022-07', '', '', '', 'rose', 'About Rose Dental Care here', 'SPS', '0', '0', '', '', '', '', ''),
(8, 'B4', '', '', '', '', '', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', 'B3', '', '', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(9, 'C1', '', '', '', '', '', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', '', '', '', '', '9000', '100000', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(10, 'C2', 'Fixel Designs', 'Parthiban', '7904994789', '7904994789', 'Ad designers flex & hoardings', 4000.00, 35000.00, 0.00, '0000-00-00', '2021-09-06', 4000.00, '7904994789', 'cbe2798d63c69a01d73bb0f7f24ac526', '', '', '2021-01', '2021-11', '', '', '', 'fixeldesign', '', 'SPS', '0', '0', '', '', '', '', ''),
(11, 'C3', 'Pixarts Studio', 'Arulprakash Andhonisamy', '9952467107', '9952467107', 'Photo Studio', 4000.00, 40000.00, 20000.00, '0000-00-00', '2021-04-08', 4000.00, '9952467107', 'c26eea5a9dcb9bc5400ed13a5acb8abf', '', '', '2020-01', '2020-11', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(12, 'C4', 'Labs', 'Felix', '9884848534', '9884848534', 'Blood test laboratory', 4000.00, 35000.00, 0.00, '0000-00-00', '2021-08-06', 4000.00, '9884848534', 'a69ca3b36237369d5f5c3d270b39daff', '', '', '', '', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(13, 'D1', '', '', '', '', '', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', '', '', '', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(14, 'D2', 'Golden Tailors', 'Rafeeq', '9443854006', '9443854006', 'Tailor shop', 3500.00, 35000.00, 16000.00, '0000-00-00', '2021-08-17', 7000.00, '9443854006', 'c773fdef3889bdadbe809f1e8aaeea46', '', '', '', '', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(15, 'D3', 'Sindhiya Infotech', 'Easwaran', '9894215866', '9894215866', 'Software coaching centre', 6000.00, 25000.00, 31000.00, '0000-00-00', '2021-08-04', 6200.00, '9894215866', 'ea9511a34baa7b5cc68bd378f1f25d32', '', '', '2020-01', '2020-11', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(16, 'D4', '', '', '', '', '', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', 'D3', '', '', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(17, 'D5', 'Pandam Stores', 'Senthil', '8526841092', '8526841092', 'Online merchant for food items', 2500.00, 30000.00, 0.00, '0000-00-00', '2021-08-09', 2500.00, '8526841092', '51655b8f3639dd04bb8f0c2a46482ca9', '', '', '2020-11', '2021-09', '', '', '', '', '', 'SPS', '0', '0', '', '', '', '', ''),
(18, '5', 'DOTS Fashion', 'Pradeep', '9894620369', '', 'Textiles Showrrom', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', '', '', '', '', '', '', 'dots', 'Textile showroom located at kailash nagar, kattur.', 'THAGAVAL', '0', '0', '', '', '', '', ''),
(27, '12', 'Fancy Store', 'Revanth', '9384154375', '9994086630', 'Fancy', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', '', '', '', '', '', '', '', '', 'THAGAVAL', '0', '0', '', '', '', '', ''),
(28, '14', 'Bon Bon exotic cake', 'Adhi', '9843056007', '9843860007', 'Cafe', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', '', '', '', '', '', '', 'bonbon', 'Bon Bon exotic cakes. Specialist in wedding cakes & wheat cakes. Any cakes you want, just show the picture from internet we challenge you will get the same replica of the same or even better. We are also a cafe, you can give a great treat to your tasty bu', 'THAGAVAL', '0', '0', '', '', '', '', ''),
(29, '13', 'Deepak', 'Deepak', '8675347886', '8675347886', 'Deepak Store', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', '', '', '', '', '', '', '', 'Deepak Store Deepak Store..........', 'THAGAVAL', '2', '0', '', '', '', '', ''),
(30, '17', 'Deepak Thagaval Store', 'Deepak', '8675347886', '7904321487', 'Yarn Bussiness', 0.00, 0.00, 0.00, '0000-00-00', '0000-00-00', 0.00, '', '', '', '', '', '', '', '', '', 'deepak', 'Twist is needed in yarn to hold the fibres together, and is added in the spinning and plying processes. The amount of twist varies depending on the fibre, thickness of yarn, preparation of fibre, manner of spinning, and the desired result. Fine wool and silk generally use more twist than coarse wool, short staples more than long, thin more than thick, and short drawn more than long drawn....................', 'THAGAVAL', '0', '0', 'ssss', 'ddd', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `store_images`
--

CREATE TABLE `store_images` (
  `id` bigint(20) NOT NULL,
  `business_id` varchar(20) NOT NULL,
  `images` varchar(255) NOT NULL,
  `status` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_images`
--

INSERT INTO `store_images` (`id`, `business_id`, `images`, `status`) VALUES
(1, 'A1', 'slider_1631108031.png', 'No'),
(2, 'A1', 'slider_1631108294.png', 'Yes'),
(3, 'A1', 'slider_1631108339.png', 'No'),
(4, 'A1', 'slider_1631189133.png', 'Yes'),
(5, 'B1', 'slider_1631366544.png', 'No'),
(6, 'B1', 'slider_1631429861.png', 'No'),
(7, 'A2', 'slider_1631458728.png', 'No'),
(8, 'A3', 'slider_1631459172.png', 'No'),
(9, 'A4', 'slider_1631459414.png', 'No'),
(10, 'B2', 'slider_1631459497.png', 'No'),
(11, 'B3', 'slider_1631459539.png', 'No'),
(12, 'C2', 'slider_1631459581.png', 'No'),
(13, 'C3', 'slider_1631459630.png', 'No'),
(14, 'C4', 'slider_1631459667.png', 'No'),
(15, 'D2', 'slider_1631459706.png', 'No'),
(16, 'D3', 'slider_1631459749.png', 'No'),
(17, 'D5', 'slider_1631459792.png', 'No'),
(19, 'A2', 'slider_1631543693.png', 'No'),
(20, 'A3', 'slider_1631544429.png', 'Yes'),
(21, 'A4', 'slider_1631545195.png', 'Yes'),
(22, 'B2', 'slider_1631545323.png', 'Yes'),
(23, 'B3', 'slider_1631545383.png', 'Yes'),
(24, 'C2', 'slider_1631545460.png', 'Yes'),
(25, 'C3', 'slider_1631545564.png', 'Yes'),
(26, 'C4', 'slider_1631545635.png', 'Yes'),
(27, 'D2', 'slider_1631545696.png', 'Yes'),
(28, 'D3', 'slider_1631545757.png', 'Yes'),
(29, 'D5', 'slider_1631545821.png', 'Yes'),
(30, 'B1', 'slider_1631589722.png', 'No'),
(35, 'B1', 'slider_1631608487.png', 'Yes'),
(36, 'A2', 'slider_1631610433.png', 'No'),
(37, 'A2', 'slider_1631610607.png', 'No'),
(38, 'A2', 'slider_1631610642.png', 'Yes'),
(39, 'B2', 'slider_1632393389.png', 'No'),
(40, 'B1', 'slider_1632456804.png', 'No'),
(41, 'B1', 'slider_1632456945.png', 'No'),
(43, 'B1', 'slider_1634136856.png', 'No'),
(44, '12', 'slider_1634281616.png', 'No'),
(45, '12', 'slider_1634282920.png', 'Yes'),
(46, 'B1', 'slider_1634283909.png', 'No'),
(47, 'B1', 'slider_1634291301.png', 'No'),
(48, 'D3', 'slider_1634309286.png', 'Yes'),
(49, '5', 'slider_1634309618.png', 'Yes'),
(50, '14', 'slider_1634463413.png', 'Yes'),
(51, '14', 'slider_1634464620.png', 'Yes'),
(56, '17', 'slider_1635491760.png', 'Yes'),
(57, '17', 'slider_1635491878.png', 'Yes'),
(58, 'B2', 'slider_1637574020.png', 'Yes'),
(59, 'B2', 'slider_1638451354.png', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `mobile_no`, `password`, `user_type`) VALUES
(1, '', '9994086630', '36341cbb9c5a51ba81e855523de49dfd', 'user'),
(2, '', '7418508091', '3e119ab537d3c4cc0c31b9277bfd785e', 'user'),
(4, '', '9442628559', 'd40b913237b22c538b948e7e44aeb9cf', 'user'),
(5, '', '7871266310', '3e119ab537d3c4cc0c31b9277bfd785e', 'user'),
(6, '', '4545656', '6512bd43d9caa6e02c990b0a82652dca', 'user'),
(7, '', '7871299992', 'f1134a6d1c4fcfee2132c09223dea961', 'user'),
(8, '', '9837967568', '202cb962ac59075b964b07152d234b70', 'user'),
(9, '', '9898989898', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(10, '', '9658687098', '202cb962ac59075b964b07152d234b70', 'user'),
(11, '', '9999999999', '202cb962ac59075b964b07152d234b70', 'user'),
(12, '', '9384154375', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(14, '', '9843056007', 'a1b8585122e1ad60623d6a74d3eb3b6a', 'user'),
(15, '', '5050505050', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(16, '', '2030405060', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(17, '', '8675347886', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(18, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serv_prod`
--
ALTER TABLE `serv_prod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_images`
--
ALTER TABLE `store_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `serv_prod`
--
ALTER TABLE `serv_prod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `store_images`
--
ALTER TABLE `store_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `mobile` varchar(120) NOT NULL,
  `message` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `message`) VALUES
(1, 'hakkim', 'hakkim@gmail.com', '9965382935', 'hgh'),
(2, 'pavin', 'pavin@gmail.com', '9345632088', 'police');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
