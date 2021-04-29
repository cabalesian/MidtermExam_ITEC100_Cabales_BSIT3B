-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 04:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infoassu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(12) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `id` int(20) NOT NULL,
  `user` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `vkey` varchar(25) NOT NULL,
  `createdate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`id`, `user`, `pass`, `vkey`, `createdate`) VALUES
(1, 'cabales', 'admin123', '833250', '2021-04-22 09:07:25.403907'),
(2, 'jericho', 'pogiako', '219598', '2021-04-22 10:56:15.135367'),
(3, 'cabalesian', 'Aa1234567', '906460', '2021-04-22 10:56:46.872612'),
(4, 'cabales', 'admin123', '486381', '2021-04-22 10:59:41.131803'),
(5, 'jericho', 'pogiako', '125759', '2021-04-22 11:11:54.781978'),
(6, 'myuser', 'Ab123456@', '316308', '2021-04-22 11:15:13.245773'),
(7, 'myuser', 'Laboratory4@', '759025', '2021-04-22 11:25:26.793789');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(12) NOT NULL,
  `user` varchar(20) NOT NULL,
  `activity` varchar(20) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user`, `activity`, `time`) VALUES
(1, 'cabales', 'Login', '2021-04-22 10:59:32.638293'),
(2, 'cabales', 'Logout', '2021-04-22 10:59:52.715760'),
(3, 'jericho', 'Login', '2021-04-22 11:11:43.280294'),
(4, 'jericho', 'Logout', '2021-04-22 11:12:42.289547'),
(5, 'myuser', 'Login', '2021-04-22 11:14:55.609779'),
(6, 'myuser', 'Logout', '2021-04-22 11:16:00.683329'),
(7, 'myuser', 'Change Password', '2021-04-22 11:23:37.292376'),
(8, 'myuser', 'Login', '2021-04-22 11:25:15.856976'),
(9, 'myuser', 'Logout', '2021-04-22 11:26:11.212413');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, 'jericho', 'pogiako', 'jerichocabales@gmail'),
(2, 'cabales', 'admin123', 'cabalesjericho@gmail'),
(3, 'cabalesian', 'Aa1234567', 'jerichoian.cabales@c'),
(4, 'myuser', 'Laboratory4@', 'jerichocabales1155@g');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
