-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 11:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(4, 'Potion of Healing', 'A miraculous draught which restores ones health! ', '5f809ec6d202f6.95327759.jpg', '2020-10-09', NULL),
(5, 'Wizard Staff', 'We offer a variety of custom staves for the savvy spell-slinger!', '5f809ff0ea7b91.96378357.jpg', '2020-10-09', NULL),
(6, 'Holy Moonlight Greatsword', 'Harness the power of the moon with this legendary greatsword!', '5f80a12e19d003.49144416.jpg', '2020-10-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) NOT NULL,
  `picpath` varchar(50) NOT NULL DEFAULT '/uploads/zoidberg.png',
  `bio` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('test3', '../uploads/5f78b61d4d4fa5.10943598.png', 'asd'),
('testX', '/uploads/zoidberg.png', NULL),
('dz', '/uploads/zoidberg.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL COMMENT 'review id',
  `item_id` int(11) NOT NULL COMMENT 'item id to be reviewed',
  `uname` varchar(80) CHARACTER SET utf8mb4 NOT NULL COMMENT 'user who will review it ',
  `title` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `review_text` text CHARACTER SET utf8mb4 NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT 'is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(1, 4, 'test2', '', '', '2020-10-23 17:40:57', 0, 1),
(2, 4, 'test2', 'test', 'me testing this', '2020-10-23 17:41:10', 0, 1),
(3, 4, 'dz', 'as', 'adsa', '2020-10-23 21:07:10', 0, 1),
(4, 4, 'dz', 'asda', 'asas', '2020-10-23 21:25:06', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(1, 'Aran', 'Samus', 'metroid@cs230.com', 'samus', '$2y$10$WGdJCCIYm3LEkqdrcjYas.nPW7c2W7gjPmlzHTkNRvZAGIPE6bTM.'),
(2, 'asda', 'asda', 'test@tesst.com', 'test', '$2y$10$FlM9HkUBPDe9A3oP/EHcvOt8lq8cNZK0.7MK6WjFISk/EgUPumucO'),
(3, 'test2', 'test2', 'test2@test.com', 'test2', '$2y$10$d0Q2.qFr2xv7Y4z.ALgXl.6tWaZ3w6QReFoziW/sU95R9KW16VvIO'),
(4, 'test2', 'test1', 't@t.com', 'test3', '$2y$10$huDQt5Nd5mYmMBhnJVkb1exsnfFz/o7CYzmzSNsLhEkitIlCKLk.e'),
(5, 'TestX', 'TestX', 'testX@test.com', 'testX', '$2y$10$o36XMEUV4SSyA01JsCJ6cuqhJJRNMQ0EnI.gT8HXGs17FdNmodBs.'),
(6, 'test', 'testy', 'dz@dz.com', 'dz', '$2y$10$YcGHcVqfFaPiWrj23L.hsOMJpwHeKmBZEAOYCDNxIwktM.ieUAwny');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'review id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
