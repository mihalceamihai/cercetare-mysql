-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 09:37 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automosmobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `clienti`
--

CREATE TABLE `clienti` (
  `ID` int(11) NOT NULL,
  `Nume` varchar(20) NOT NULL,
  `Prenume` varchar(40) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Statut` varchar(20) NOT NULL,
  `Telefon` varchar(10) NOT NULL,
  `Parola` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Domiciliu` varchar(100) NOT NULL,
  `Data_nasterii` date NOT NULL,
  `Sex` char(1) NOT NULL,
  `Bani` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clienti`
--

INSERT INTO `clienti` (`ID`, `Nume`, `Prenume`, `Username`, `Statut`, `Telefon`, `Parola`, `Email`, `Domiciliu`, `Data_nasterii`, `Sex`, `Bani`) VALUES
(1, 'Mihalcea', 'Mihai', 'MosuPhP', 'admin', '0728396595', 'parolamea', 'mihalcea.mihaialexandru@gmail.com', 'Motru,Jud.Gorj', '1996-06-18', 'm', 191100),
(2, 'Babat', 'Vera', 'VeraGabrielaa', '', '0774052753', 'independenta', 'vera.gabrielaa@yahoo.com ', 'Severin,jud. Mehedinti', '0000-00-00', 'f', 200000),
(3, 'Moise', 'Marius', '20cmrecord', '', '0751688457', 'fanulluimosu', 'mmslbj1331@gmail.com', 'Pitesti, Jud. Arges', '1996-08-31', 'm', 200000),
(4, 'Badea', 'Mihai', 'baditabadita', 'client', '0723234567', 'oblemenco', 'badeacraioveanu@gmail.com', 'Craiova, Jud. Dolj', '0000-00-00', 'm', 200000),
(5, 'Midus', 'Mihai', 'miduss', '', '0781212155', '', 'midusmiclaus@yahoo.com', 'Pitesti, Jud. Arges', '0000-00-00', 'm', 0),
(6, 'Petrea', 'Marius', 'petrisormariusica', '', '0781212156', '', '', 'Focsani,Jud. Vrancea', '0000-00-00', 'm', 200000),
(8, 'Mihalcea', 'Florina', 'florinaalina', 'client', '0763502495', 'octombrie', 'alina_mihalcea1998@yahoo.com', 'Motru,Jud.Gorj', '0000-00-00', 'f', 200000),
(9, 'Avram', 'Andrei', '', '', '', '', 'andreiutu@gmail.com', 'Craiova, Jud. Dolj', '0000-00-00', 'm', 200000),
(10, 'Avram', 'Rares', 'rashel', '', '0751525354', 'lupisor', 'r.avram@gmail.com', 'Tecuci,Jud Galati', '0000-00-00', 'm', 200000),
(11, 'Mihailescu', 'Dan', 'dancalu', '', '0731555789', 'numai6', 'dancalu@gmail.com', 'Pitesti, Jud. Arges', '0000-00-00', 'm', 200000),
(12, 'Zamfir', 'Stefan', 'zamfiLoLu', '', '0755787970', 'lacaterinca', 'ion.hadad@yahoo.com', 'Caracal,Jud. Olt', '0000-00-00', 'm', 200000),
(13, 'Ciobanu', 'Alexandru', 'c1ban', '', '0725756585', 'satrabenza', 'salutdreacu@gmail.com', 'Zimnicea, Jud. Teleorman', '1997-06-15', 'm', 200000),
(14, 'Olariu', 'Alexandru', 'oliveira', '', '0722489138', 'shaormagorjului', 'alex.olariu@yahoo.com', 'Bucuresti, Mun. Bucuresti', '1997-10-07', 'm', 200000),
(15, 'Cheorpec', 'Alexandru', 'puica', '', '073232', 'gelumatei', 'alex.cheorpec96@gmail.com', 'Greabanu, Jud. Buzau', '1996-10-06', 'm', 200000),
(17, 'Negoita', 'Adrian', 'adinego', 'client', '0725437115', 'frizerie', 'adrian.negoita@gmail.com', 'Braila, Jud. Braila', '1996-08-12', 'm', 200000),
(18, 'Tudor', 'Daniela', 'danatudor', '', '0722461883', 'sefae213c', 'dana.tudor@gmail.com', 'Calarasi, Jud. Calarasi', '1996-09-21', 'f', 200000),
(19, 'Florin', 'Stefan', 'florinstefan', '', '0744128953', 'cristianoronaldo', 'florinstefan@gmail.com', 'Ploiesti, Jud. Prahova', '1996-09-13', 'm', 200000),
(20, 'Enoiu', 'Dorin', 'dorineel', '', '0725354565', 'dorinenoiu', 'dorin.enoiu@gmail.com', 'Tg Jiu, Jud. Gorj', '1995-12-12', 'm', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `comanda`
--

CREATE TABLE `comanda` (
  `ID_COMANDA` int(11) NOT NULL,
  `ID_CLIENT` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `ID_PRODUS` int(11) NOT NULL,
  `ID_MASINA` int(11) NOT NULL,
  `Nume_produs` varchar(30) NOT NULL,
  `Stare_comanda` varchar(30) NOT NULL,
  `Pret_bucata` int(11) NOT NULL,
  `Numar_bucati` int(11) NOT NULL,
  `Pret_total` int(11) NOT NULL,
  `Imagine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comanda`
--

INSERT INTO `comanda` (`ID_COMANDA`, `ID_CLIENT`, `Username`, `ID_PRODUS`, `ID_MASINA`, `Nume_produs`, `Stare_comanda`, `Pret_bucata`, `Numar_bucati`, `Pret_total`, `Imagine`) VALUES
(15, 1, 'MosuPhP', 1, 3, 'Jaguar XE', 'efectuata', 19900, 1, 19900, 'jaguar_XE/jag1.jpg'),
(22, 1, 'MosuPhP', 1, 12, 'Nissan Qashqai', 'efectuata', 8900, 1, 8900, 'nissan/qq1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `ID_FAVORITE` int(11) NOT NULL,
  `ID_TRANZACTIE` int(11) NOT NULL,
  `Disponibilitate_produs` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `masini`
--

CREATE TABLE `masini` (
  `ID` int(11) NOT NULL,
  `ID_PRODUS` int(11) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Caroserie` varchar(30) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `An_fabricatie` int(11) NOT NULL,
  `Km_parcursi` varchar(7) NOT NULL,
  `Indice_poluare` varchar(5) NOT NULL,
  `Pret` int(11) NOT NULL,
  `Capacitate_cilindrica` int(11) NOT NULL,
  `Combustibil` varchar(15) NOT NULL,
  `Putere` int(11) NOT NULL,
  `Cutie_viteze` varchar(20) NOT NULL,
  `Stare` varchar(20) NOT NULL,
  `Cantitate` int(11) NOT NULL,
  `Imagine1` varchar(1024) NOT NULL,
  `Imagine2` varchar(1024) NOT NULL,
  `Imagine3` varchar(1024) NOT NULL,
  `Imagine4` varchar(1024) NOT NULL,
  `Imagine5` varchar(1024) NOT NULL,
  `Imagine6` varchar(1024) NOT NULL,
  `Imagine7` varchar(1024) NOT NULL,
  `Imagine8` varchar(1024) NOT NULL,
  `Imagine9` varchar(1024) NOT NULL,
  `Imagine10` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masini`
--

INSERT INTO `masini` (`ID`, `ID_PRODUS`, `Marca`, `Caroserie`, `Model`, `An_fabricatie`, `Km_parcursi`, `Indice_poluare`, `Pret`, `Capacitate_cilindrica`, `Combustibil`, `Putere`, `Cutie_viteze`, `Stare`, `Cantitate`, `Imagine1`, `Imagine2`, `Imagine3`, `Imagine4`, `Imagine5`, `Imagine6`, `Imagine7`, `Imagine8`, `Imagine9`, `Imagine10`) VALUES
(2, 1, 'Tesla', 'SUV', 'X', 2016, '26 516 ', '', 95000, 0, 'Electric', 525, 'Automata', 'Second', 1, 'tesla_x/tesla1.jpg', 'tesla_x/tesla2.jpg', 'tesla_x/tesla3.jpg', 'tesla_x/tesla4.jpg', 'tesla_x/tesla5.jpg', 'tesla_x/tesla6.jpg', 'tesla_x/tesla7.jpg', 'tesla_x/tesla8.jpg', 'tesla_x/tesla9.jpg', 'tesla_x/tesla10.jpg'),
(3, 1, 'Jaguar', 'Berlina', 'XE', 2016, '90500', 'Euro6', 19900, 2000, 'Benzina', 177, 'Manuala', 'Second', 1, 'jaguar_XE/jag1.jpg', 'jaguar_XE/jag2.jpg', 'jaguar_XE/jag3.jpg', 'jaguar_XE/jag4.jpg', 'jaguar_XE/jag5.jpg', 'jaguar_XE/jag6.jpg', 'jaguar_XE/jag7.jpg', 'jaguar_XE/jag8.jpg', 'jaguar_XE/jag9.jpg', 'jaguar_XE/jag10.jpg'),
(4, 1, 'Renault', 'Berlina', 'Talisman', 2016, '14000', 'Euro6', 19900, 1593, 'Benzina', 145, 'Automata', 'Second', 1, 'renault_talisman/rental.jpg', 'renault_talisman/rental2.jpg', 'renault_talisman/rental3.jpg', 'renault_talisman/rental4.jpg', 'renault_talisman/rental5.jpg', 'renault_talisman/rental6.jpg', 'renault_talisman/rental7.jpg', 'renault_talisman/rental8.jpg', 'renault_talisman/rental9.jpg', 'renault_talisman/rental10.jpg'),
(5, 1, 'Seat', 'Hatchback', 'Leon', 2011, '180000', 'Euro5', 6399, 1593, 'Diesel', 115, 'Manuala', 'Second', 1, 'seat_leon/leon1.jpg', 'seat_leon/leon2.jpg', 'seat_leon/leon3.jpg', 'seat_leon/leon4.jpg', 'seat_leon/leon5.jpg', 'seat_leon/leon7.jpg', 'seat_leon/leon8.jpg', 'seat_leon/leon6.jpg', 'seat_leon/leon9.jpg', 'seat_leon/leon10.jpg'),
(6, 1, 'BMW', 'Berlina', 'Seria 5', 2014, '120000', 'Euro6', 18690, 1993, 'Diesel', 315, 'Automata', 'Second', 1, 'bmw_s5/bm1.jpg', 'bmw_s5/bm2.jpg', 'bmw_s5/bm3.jpg', 'bmw_s5/bm4.jpg', 'bmw_s5/bm5.jpg', 'bmw_s5/bm6.jpg', 'bmw_s5/bm7.jpg', 'bmw_s5/bm8.jpg', 'bmw_s5/bm9.jpg', 'bmw_s5/bm10.jpg'),
(8, 1, 'Skoda', 'Combi', 'Superb', 2013, '120000', 'Euro5', 9229, 1599, 'Diesel', 110, 'Manuala', 'Second', 1, 'sk_superb/sk1.jpg', 'sk_superb/sk2.jpg', 'sk_superb/sk3.jpg', 'sk_superb/sk4.jpg', 'sk_superb/sk5.jpg', 'sk_superb/sk6.jpg', 'sk_superb/sk7.jpg', 'sk_superb/sk8.jpg', 'sk_superb/sk9.jpg', 'sk_superb/sk10.jpg'),
(9, 1, 'BMW', 'Combi', 'Seria 5', 2015, '195000', 'Euro5', 22990, 2995, 'Diesel', 313, 'Automata', 'Second', 3, 'bmws5combi/bmc1.jpg', 'bmws5combi/bmc2.jpg', 'bmws5combi/bmc3.jpg', 'bmws5combi/bmc4.jpg', 'bmws5combi/bmc5.jpg', 'bmws5combi/bmc6.jpg', 'bmws5combi/bmc7.jpg', 'bmws5combi/bmc8.jpg', 'bmws5combi/bmc9.jpg', 'bmws5combi/bmc10.jpg'),
(10, 1, 'Audi', 'Hatchback', 'A3', 2015, '38000', 'Euro5', 12900, 1968, 'Diesel', 150, 'Manuala', 'Second', 1, 'audia3/a1.jpg', 'audia3/a2.jpg', 'audia3/a3.jpg', 'audia3/a4.jpg', 'audia3/a5.jpg', 'audia3/a6.jpg', 'audia3/a7.jpg', 'audia3/a8.jpg', 'audia3/a9.jpg', 'audia3/a10.jpg'),
(11, 1, 'Mazda', 'Cabrio', 'CX 5', 2014, '125000', 'Euro6', 14000, 2150, 'Diesel', 150, 'Automata', 'Second', 1, 'mazda/mz1.jpg', 'mazda/mz2.jpg', 'mazda/mz3.jpg', 'mazda/mz4.jpg', 'mazda/mz5.jpg', 'mazda/mz6.jpg', 'mazda/mz7.jpg', 'mazda/mz8.jpg', 'mazda/mz9.jpg', 'mazda/mz10.jpg'),
(12, 1, 'Nissan', 'SUV', 'Qashqai', 2009, '170000', 'Euro5', 8900, 1995, 'Diesel', 150, 'Automata', 'Second', 0, 'nissan/qq1.jpg', 'nissan/qq2.jpg', 'nissan/qq3.jpg', 'nissan/qq4.jpg', 'nissan/qq5.jpg', 'nissan/qq6.jpg', 'nissan/qq7.jpg', 'nissan/qq8.jpg', 'nissan/qq9.jpg', 'nissan/qq10.jpg'),
(13, 1, 'Volkswagen', 'Berlina', 'Passat CC', 2013, '175000', 'Euro5', 14500, 1968, 'Diesel', 177, 'Automata', 'Second', 2, 'vw_passat_cc/cc1.jpg', 'vw_passat_cc/cc2.jpg', 'vw_passat_cc/cc3.jpg', 'vw_passat_cc/cc4.jpg', 'vw_passat_cc/cc5.jpg', 'vw_passat_cc/cc6.jpg', 'vw_passat_cc/cc7.jpg', 'vw_passat_cc/cc8.jpg', 'vw_passat_cc/cc9.jpg', 'vw_passat_cc/cc10.jpg'),
(14, 1, 'Porsche', 'Cabrio', '911', 2017, '7900', 'Euro6', 99911, 2981, 'Benzina', 420, 'Automata', 'Second', 1, 'porsche/p1.jpg', 'porsche/p2.jpg', 'porsche/p3.jpg', 'porsche/p4.jpg', 'porsche/p5.jpg', 'porsche/p6.jpg', 'porsche/p7.jpg', 'porsche/p8.jpg', 'porsche/p9.jpg', 'porsche/p10.jpg'),
(15, 1, 'Lexus', 'Cabrio', 'Seria LS', 2018, '0', 'Euro6', 114000, 3500, 'Hibrid', 359, 'Automata (CVT)', 'Nou', 1, 'lexus/l1.jpg', 'lexus/l2.jpg', 'lexus/l3.jpg', 'lexus/l4.jpg', 'lexus/l5.jpg', 'lexus/l6.jpg', 'lexus/l7.jpg', 'lexus/l8.jpg', 'lexus/l9.jpg', 'lexus/l10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `moto`
--

CREATE TABLE `moto` (
  `ID` int(11) NOT NULL,
  `ID_produs` int(11) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Capacitate_motor` int(11) NOT NULL,
  `An_fabricatie` int(11) NOT NULL,
  `Pret` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `piese`
--

CREATE TABLE `piese` (
  `ID` int(11) NOT NULL,
  `ID_produs` int(11) NOT NULL,
  `Denumire` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produs`
--

CREATE TABLE `produs` (
  `ID_PRODUS` int(11) NOT NULL,
  `Categorie` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produs`
--

INSERT INTO `produs` (`ID_PRODUS`, `Categorie`) VALUES
(1, 'Masini'),
(2, 'Moto'),
(3, 'Piese');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comanda`
--
ALTER TABLE `comanda`
  ADD PRIMARY KEY (`ID_COMANDA`),
  ADD KEY `ID_CLIENT` (`ID_CLIENT`),
  ADD KEY `ID_PRODUS` (`ID_PRODUS`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`ID_FAVORITE`);

--
-- Indexes for table `masini`
--
ALTER TABLE `masini`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_produs` (`ID_PRODUS`);

--
-- Indexes for table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_produs` (`ID_produs`);

--
-- Indexes for table `piese`
--
ALTER TABLE `piese`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_produs` (`ID_produs`);

--
-- Indexes for table `produs`
--
ALTER TABLE `produs`
  ADD PRIMARY KEY (`ID_PRODUS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clienti`
--
ALTER TABLE `clienti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comanda`
--
ALTER TABLE `comanda`
  MODIFY `ID_COMANDA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `ID_FAVORITE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masini`
--
ALTER TABLE `masini`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `moto`
--
ALTER TABLE `moto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piese`
--
ALTER TABLE `piese`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produs`
--
ALTER TABLE `produs`
  MODIFY `ID_PRODUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comanda`
--
ALTER TABLE `comanda`
  ADD CONSTRAINT `comanda_ibfk_1` FOREIGN KEY (`ID_CLIENT`) REFERENCES `clienti` (`ID`),
  ADD CONSTRAINT `comanda_ibfk_2` FOREIGN KEY (`ID_PRODUS`) REFERENCES `produs` (`ID_PRODUS`);

--
-- Constraints for table `masini`
--
ALTER TABLE `masini`
  ADD CONSTRAINT `masini_ibfk_1` FOREIGN KEY (`ID_produs`) REFERENCES `produs` (`ID_PRODUS`);

--
-- Constraints for table `moto`
--
ALTER TABLE `moto`
  ADD CONSTRAINT `moto_ibfk_1` FOREIGN KEY (`ID_produs`) REFERENCES `produs` (`ID_PRODUS`);

--
-- Constraints for table `piese`
--
ALTER TABLE `piese`
  ADD CONSTRAINT `piese_ibfk_1` FOREIGN KEY (`ID_produs`) REFERENCES `produs` (`ID_PRODUS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
