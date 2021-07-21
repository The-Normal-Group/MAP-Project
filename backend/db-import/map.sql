-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2021 at 05:55 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `skillLevel` varchar(255) NOT NULL,
  `prizePool` double NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tournaments`
--

INSERT INTO `tournaments` (`id`, `name`, `skillLevel`, `prizePool`, `description`) VALUES
(1, 'lol tournament', 'Advanced', 1234, 'bronze level tournament'),
(2, 'lol tournament', 'Advanced', 1234, 'bronze level tournament');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `type`) VALUES
(1, 'oma2r', '1234', 'omar@gmail.com', 0),
(2, 'oma2r', '1234', 'omar@gmail.com', 0),
(3, 'oma2r', '1234', 'omar@gmail.com', 0),
(4, 'oma2r', '1234', 'omar@gmail.com', 0),
(5, 'oma2r', '1234', 'omar@gmail.com', 0),
(6, 'oma2r', '1234', 'omar@gmail.com', 0),
(7, 'oma2r', '1234', 'omar@gmail.com', 0),
(8, 'oma2r', '1234', 'omar@gmail.com', 0),
(9, 'oma2r', '1234', 'omar@gmail.com', 0),
(10, 'oma2r', '1234', 'omar@gmail.com', 0),
(11, 'oma2r', '1234', 'omar@gmail.com', 0),
(12, 'oma2r', '1234', 'omar@gmail.com', 0),
(13, 'oma2r', '1234', 'omar@gmail.com', 0),
(14, 'oma2r', '1234', 'omar@gmail.com', 0),
(15, 'oma2r', '1234', 'omar@gmail.com', 0),
(16, 'oma2r', '1234', 'omar@gmail.com', 0),
(17, 'oma2r', '1234', 'omar@gmail.com', 0),
(18, 'oma2r', '1234', 'omar@gmail.com', 0),
(19, 'oma2r', '1234', 'omar@gmail.com', 0),
(20, 'oma2r', '1234', 'omar@gmail.com', 0),
(21, 'oma2r', '1234', 'omar@gmail.com', 0),
(22, 'oma2r', '1234', 'omar@gmail.com', 0),
(23, 'oma2r', '1234', 'omar@gmail.com', 0),
(24, 'oma2r', '1234', 'omar@gmail.com', 0),
(25, 'oma2r', '1234', 'omar@gmail.com', 0),
(26, 'oma2r', '1234', 'omar@gmail.com', 0),
(27, 'oma2r', '1234', 'omar@gmail.com', 0),
(28, 'oma2r', '1234', 'omar@gmail.com', 0),
(29, 'nsfsafa', '123', 'fsa@gmail.com', 0),
(30, 'oma2r', '1234', 'omar@gmail.com', 0),
(31, 'oma2r', '1234', 'omar@gmail.com', 0),
(32, 'oma2r', '1234', 'omar@gmail.com', 0),
(33, 'omar', '123', 'omar@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
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
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
