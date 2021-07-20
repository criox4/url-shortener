-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 06:39 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url_shortener`
--

-- --------------------------------------------------------

--
-- Table structure for table `url_list`
--

CREATE TABLE `url_list` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `url_redirect` text NOT NULL,
  `redirects` int(30) NOT NULL DEFAULT 0,
  `last_browsed` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `url_list`
--

INSERT INTO `url_list` (`id`, `code`, `url_redirect`, `redirects`, `last_browsed`, `date_created`) VALUES
(9, 'KeG0gr994o', 'https://www.youtube.com/watch?v=jHBMjjLY0Dw&list=PLw-8oPcwOibCGXfzteb-llhxATRFEIqGR&index=1', 1, '2021-07-05 08:53:33', '2021-07-05 08:53:21'),
(11, '0qpzn03WGF', 'https://youtu.be/dDaP9SHqL4M', 2, '2021-07-10 13:41:36', '2021-07-10 13:39:40'),
(12, 'cNupHRivjU', 'https://www.google.co.in/search?q=3dx+max&sxsrf=ALeKk00qzdc63PGcJhFU022qothjrUQV8w%3A1625904611546&source=hp&ei=41XpYPnHHv2M9u8P8cy5-AY&iflsig=AINFCbYAAAAAYOlj8xIG6FMMxjfA2SdBbJkB4n6xkUH4&oq=&gs_lcp=Cgdnd3Mtd2l6EAEYAzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJzIHCCMQ6gIQJ1AAWABgpSpoAXAAeACAAQCIAQCSAQCYAQCqAQdnd3Mtd2l6sAEK&sclient=gws-wiz', 1, '2021-07-10 13:41:04', '2021-07-10 13:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `url_list`
--
ALTER TABLE `url_list`
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
-- AUTO_INCREMENT for table `url_list`
--
ALTER TABLE `url_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
