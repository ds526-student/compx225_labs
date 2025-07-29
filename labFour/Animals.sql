-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 26, 2025 at 03:11 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `225`
--

-- --------------------------------------------------------

--
-- Table structure for table `Animals`
--

CREATE TABLE `Animals` (
  `animal_name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `diet` varchar(50) DEFAULT NULL,
  `public_feeding` char(1) DEFAULT NULL,
  `native` char(1) DEFAULT NULL
) ;

--
-- Dumping data for table `Animals`
--

INSERT INTO `Animals` (`animal_name`, `category`, `diet`, `public_feeding`, `native`) VALUES
('Chimpanzee', 'Mammal', 'Omnivore', 'Y', 'N'),
('Crocodile', 'Reptile', 'Carnivore', 'N', 'N'),
('Elephant', 'Mammal', 'Herbivore', 'Y', 'N'),
('Frog', 'Amphibian', 'Carnivore', 'N', 'Y'),
('Giraffe', 'Mammal', 'Herbivore', 'Y', 'N'),
('Iguana', 'Reptile', 'Herbivore', 'N', 'N'),
('Kangaroo', 'Mammal', 'Herbivore', 'Y', 'N'),
('Kea', 'Bird', 'Omnivore', 'N', 'Y'),
('Kiwi', 'Bird', 'Omnivore', 'N', 'Y'),
('Kookaburra', 'Bird', 'Carnivore', 'N', 'N'),
('Lion', 'Mammal', 'Carnivore', 'Y', 'N'),
('Otter', 'Mammal', 'Carnivore', 'Y', 'N'),
('Penguin', 'Bird', 'Carnivore', 'Y', 'N'),
('Python', 'Reptile', 'Carnivore', 'N', 'N'),
('Red Panda', 'Mammal', 'Omnivore', 'N', 'N'),
('Rhinoceros', 'Mammal', 'Herbivore', 'Y', 'N'),
('Takahe', 'Bird', 'Herbivore', 'N', 'Y'),
('Tuatara', 'Reptile', 'Carnivore', 'N', 'Y'),
('Weka', 'Bird', 'Omnivore', 'N', 'Y'),
('Zebra', 'Mammal', 'Herbivore', 'Y', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Animals`
--
ALTER TABLE `Animals`
  ADD PRIMARY KEY (`animal_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
