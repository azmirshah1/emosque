-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2018 at 01:03 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-mosque`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phoneNumb` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `name`, `address`, `phoneNumb`, `email`, `username`, `password`) VALUES
(1, 'Azmir Shah', 'Muar, Johor', 176591091, 'azmirshah1@gmail.com', 'azmir', 'azmir'),
(2, 'Hafizudin', 'Seremban, Negeri Sembilan', 124260630, 'mohdhafizudin.tajul@gmail.com', 'hafiz', 'hafiz');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `name`) VALUES
(1, 'Hadis'),
(2, 'Sirah Nabi'),
(3, 'Isu semasa'),
(4, 'Tafsir Quran'),
(6, 'Akidah'),
(7, 'Akhlak'),
(8, 'Syariah');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `videoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `commentDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `videoID`, `userID`, `commentDate`, `comment`) VALUES
(1, 2, 4, '2018-06-09 18:54:27', 'apa semua ni?'),
(2, 2, 5, '2018-06-09 18:54:27', 'topik tak best.');

-- --------------------------------------------------------

--
-- Table structure for table `mosqueevent`
--

CREATE TABLE `mosqueevent` (
  `eventID` int(20) NOT NULL,
  `eventName` varchar(50) NOT NULL,
  `eventDesc` longtext NOT NULL,
  `date` datetime NOT NULL,
  `adminID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mosqueevent`
--

INSERT INTO `mosqueevent` (`eventID`, `eventName`, `eventDesc`, `date`, `adminID`) VALUES
(1, 'Majlis Berbuka Puasa 1439H', 'Buat pengetahuan Tuan-Tuan dan Puan-Puan, bersempena bulan yang mulia ini, pihak Masjid Sultan Badli Shah akan menganjurkan satu majlis Berbuka Puasa Perdana peringkat UUM.\r\n\r\nAnda sama-sama dijemput untuk memeriahkan lagi majlis tersebut.', '2018-06-11 07:31:00', 1),
(2, 'Sambutan Hari Raya Aidilfitri 1439H', 'Hari Raya Aidilfitri 1439H atau pada tahun 2018 akan berlangsung pada 14 Jun 2018. Jadi pada waktu pagi akan diadakan Solat Sunat Aidilfitri di perkarangan Masjid Sultan Badli Shah UUM. Anda dijemput hadir.', '2018-06-14 07:55:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `scheduleID` int(11) NOT NULL,
  `progTitle` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `speaker` varchar(20) NOT NULL,
  `adminID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`scheduleID`, `progTitle`, `date`, `description`, `speaker`, `adminID`) VALUES
(7, 'Ceramah Memimpin Berwibawa', '2018-06-14 18:00:00', 'Bagi melahirkan pemimpin yang berwibawa, akhlak perlu dijaga. Ini bagi memastikan pemimpin yang dipilih itu menepati garis panduan islam. Apakah garis panduan tersebut? Jom dengar ceramah ini.', 'Ustas Chimok', 1),
(8, 'Ceramah Perdana Subuh: Tunjukkan Jalan Ke Syurga', '2018-09-28 06:50:00', 'Ibadat itu sepanjang masa. Namun berapa lama masa yang perlu diambil untuk menghimpunkan gelombang umat untuk sama-sama memenuhi masjid di waktu subuh?', 'Ustaz Wahabeng', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `suscriptionID` int(11) NOT NULL,
  `Description` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`suscriptionID`, `Description`) VALUES
(1, 'Yes'),
(2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phoneNumb` int(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `suscription` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `name`, `address`, `phoneNumb`, `email`, `username`, `password`, `suscription`) VALUES
(4, 'Polan', 'alor gajah, melaka', 1478785748, 'polan@gmail.com', 'polan', 'polan', 1),
(5, 'Pulun', 'Cheras, Selangor', 1847756473, 'pulun@gmail.com', 'pulun', 'pulun', 2);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `videoID` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `adminID` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `speaker` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `categoryID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videoID`, `title`, `description`, `adminID`, `date`, `speaker`, `content`, `categoryID`) VALUES
(2, 'Adakah haram memakai pakaian berlainan jantina', 'Adakah benar perbuatan memakai pakaianan berlainan jantina itu adalah haram? Berikut berupakan penjelasan daripada Ustaz Chimok', 1, '2018-06-23 00:00:00', 'Ustaz Chimok', 'http://youtube.com/', 7),
(3, 'Berbakti kepada ibu bapa', 'apakah kebaikan berbakti kepada ibu bapa', 1, '2018-06-14 07:55:00', 'Ustaz Wahabeng', 'http://youtube/', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `comments_ibfk_2` (`videoID`);

--
-- Indexes for table `mosqueevent`
--
ALTER TABLE `mosqueevent`
  ADD PRIMARY KEY (`eventID`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`scheduleID`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`suscriptionID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `phoneNumb` (`phoneNumb`),
  ADD KEY `suscriptionID` (`suscription`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`videoID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `adminID` (`adminID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mosqueevent`
--
ALTER TABLE `mosqueevent`
  MODIFY `eventID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `scheduleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `suscriptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `videoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`videoID`) REFERENCES `videos` (`videoID`) ON UPDATE CASCADE;

--
-- Constraints for table `mosqueevent`
--
ALTER TABLE `mosqueevent`
  ADD CONSTRAINT `mosqueevent_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`) ON UPDATE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`suscription`) REFERENCES `subscription` (`suscriptionID`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `videos_ibfk_2` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
