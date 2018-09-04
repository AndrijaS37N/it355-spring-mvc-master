-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2018 at 02:50 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it355`
--

-- --------------------------------------------------------

--
-- Table structure for table `KORISNIK`
--

CREATE TABLE `KORISNIK` (
  `korisnikId` int(11) NOT NULL,
  `korisnikAktivan` bit(1) DEFAULT NULL,
  `korisnikEmail` varchar(255) DEFAULT NULL,
  `korisnikIme` varchar(255) DEFAULT NULL,
  `korisnikPassword` varchar(255) DEFAULT NULL,
  `korisnikPrezime` varchar(255) DEFAULT NULL,
  `korisnikRegistrovan` datetime DEFAULT NULL,
  `rolaId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `KORISNIK`
--

INSERT INTO `KORISNIK` (`korisnikId`, `korisnikAktivan`, `korisnikEmail`, `korisnikIme`, `korisnikPassword`, `korisnikPrezime`, `korisnikRegistrovan`, `rolaId`) VALUES
(1, b'1', 'user@gmail.com', 'and', '88bbdfe34d9f6dcb46c54acabf82b3a2abad4266f74e08fc678814b801d1cec5', 'and', '2018-08-15 00:00:00', 2),
(2, b'1', 'admin@gmail.com', 'and', '88bbdfe34d9f6dcb46c54acabf82b3a2abad4266f74e08fc678814b801d1cec5', 'and', '2018-08-15 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `MARKATELEFONA`
--

CREATE TABLE `MARKATELEFONA` (
  `markaId` int(11) NOT NULL,
  `markaNaziv` varchar(255) DEFAULT NULL,
  `markaOpis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MARKATELEFONA`
--

INSERT INTO `MARKATELEFONA` (`markaId`, `markaNaziv`, `markaOpis`) VALUES
(2, 'Halla@Me', 'Bla bla bla bla bla.'),
(3, 'ZallaMobile', 'Bla bla bla.');

-- --------------------------------------------------------

--
-- Table structure for table `ROLA`
--

CREATE TABLE `ROLA` (
  `rolaId` int(11) NOT NULL,
  `rolaAktivna` int(11) DEFAULT NULL,
  `rolaNaziv` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ROLA`
--

INSERT INTO `ROLA` (`rolaId`, `rolaAktivna`, `rolaNaziv`) VALUES
(1, 1, 'ROLE_ADMIN'),
(2, 1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `TELEFON`
--

CREATE TABLE `TELEFON` (
  `telefonId` int(11) NOT NULL,
  `telefonBrzinaProcesora` varchar(255) DEFAULT NULL,
  `telefonJacinaKamere` varchar(255) DEFAULT NULL,
  `telefonMemorija` varchar(255) DEFAULT NULL,
  `telefonNaziv` varchar(255) DEFAULT NULL,
  `telefonOpis` varchar(255) DEFAULT NULL,
  `telefonVodootporan` bit(1) DEFAULT NULL,
  `markaId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TELEFON`
--

INSERT INTO `TELEFON` (`telefonId`, `telefonBrzinaProcesora`, `telefonJacinaKamere`, `telefonMemorija`, `telefonNaziv`, `telefonOpis`, `telefonVodootporan`, `markaId`) VALUES
(1, '1.5', '60', '60', 'HallaMobile', 'Bla bla bla.', b'1', 2),
(2, '3', '12', '120', 'Hellos', 'Bla bla bla bla.', b'0', 3),
(3, '2.3', '11', '120', 'UlaLa', 'Bla bla bla bla.', b'0', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `KORISNIK`
--
ALTER TABLE `KORISNIK`
  ADD PRIMARY KEY (`korisnikId`),
  ADD KEY `FK_35lw9xwf8ue08sqghujho879s` (`rolaId`);

--
-- Indexes for table `MARKATELEFONA`
--
ALTER TABLE `MARKATELEFONA`
  ADD PRIMARY KEY (`markaId`);

--
-- Indexes for table `ROLA`
--
ALTER TABLE `ROLA`
  ADD PRIMARY KEY (`rolaId`);

--
-- Indexes for table `TELEFON`
--
ALTER TABLE `TELEFON`
  ADD PRIMARY KEY (`telefonId`),
  ADD KEY `FK_arsfb3x9adj6a9ulkbdnm2it8` (`markaId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `KORISNIK`
--
ALTER TABLE `KORISNIK`
  MODIFY `korisnikId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `MARKATELEFONA`
--
ALTER TABLE `MARKATELEFONA`
  MODIFY `markaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ROLA`
--
ALTER TABLE `ROLA`
  MODIFY `rolaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TELEFON`
--
ALTER TABLE `TELEFON`
  MODIFY `telefonId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `KORISNIK`
--
ALTER TABLE `KORISNIK`
  ADD CONSTRAINT `FK_35lw9xwf8ue08sqghujho879s` FOREIGN KEY (`rolaId`) REFERENCES `ROLA` (`rolaId`);

--
-- Constraints for table `TELEFON`
--
ALTER TABLE `TELEFON`
  ADD CONSTRAINT `FK_arsfb3x9adj6a9ulkbdnm2it8` FOREIGN KEY (`markaId`) REFERENCES `MARKATELEFONA` (`markaId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
