-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 05:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `test`
--
-- --------------------------------------------------------
--
-- Table structure for table `table_one`
--
CREATE TABLE `table_one` (
  `id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Table structure for table `table_two`
--
CREATE TABLE `table_two` (
  `id_two` int(11) NOT NULL,
  `g_id_from_one` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

--
-- Indexes for dumped tables
--
--
-- Indexes for table `table_one`
--
ALTER TABLE
  `table_one`
ADD
  PRIMARY KEY (`id`),
ADD
  UNIQUE KEY `g_id` (`g_id`);

--
-- Indexes for table `table_two`
--
ALTER TABLE
  `table_two`
ADD
  KEY `qqq` (`g_id_from_one`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `table_one`
--
ALTER TABLE
  `table_one`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--
--
-- Constraints for table `table_two`
--
ALTER TABLE
  `table_two`
ADD
  CONSTRAINT `qqq` FOREIGN KEY (`g_id_from_one`) REFERENCES `table_one` (`g_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;