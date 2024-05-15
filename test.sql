-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2024 at 02:04 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `agence_information`
--

CREATE TABLE `agence_information` (
  `id` int(11) NOT NULL,
  `agence` varchar(100) DEFAULT NULL,
  `nom_guide` varchar(100) DEFAULT NULL,
  `mobile_a` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agence_information`
--

INSERT INTO `agence_information` (`id`, `agence`, `nom_guide`, `mobile_a`) VALUES
(1, 'the gardians', 'henry', 4852),
(2, 'the shield', 'david', 4421),
(3, 'super', 'aaron', 7158);

-- --------------------------------------------------------

--
-- Table structure for table `personnel_information`
--

CREATE TABLE `personnel_information` (
  `id` int(11) NOT NULL,
  `nom_prenom` varchar(100) DEFAULT NULL,
  `visa` int(11) DEFAULT NULL,
  `passport` int(11) DEFAULT NULL,
  `assurance` int(11) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `healthcare` varchar(255) DEFAULT NULL,
  `used_medication` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personnel_information`
--

INSERT INTO `personnel_information` (`id`, `nom_prenom`, `visa`, `passport`, `assurance`, `mobile`, `healthcare`, `used_medication`) VALUES
(1, 'john wick', 54, 85, 75, 606, 'good', 'nothing'),
(2, 'johnny depp', 84, 48, 25, 3985, 'medium', 'paracitamol'),
(3, 'jason stathem', 25, 38, 15, 8274, 'bad', 'sirom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agence_information`
--
ALTER TABLE `agence_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personnel_information`
--
ALTER TABLE `personnel_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agence_information`
--
ALTER TABLE `agence_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personnel_information`
--
ALTER TABLE `personnel_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
