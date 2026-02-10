-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 10. feb 2026 ob 00.06
-- Različica strežnika: 10.4.32-MariaDB
-- Različica PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `frizerski_salon`
--
CREATE DATABASE IF NOT EXISTS `frizerski_salon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `frizerski_salon`;

-- --------------------------------------------------------

--
-- Struktura tabele `delovnik`
--

CREATE TABLE `delovnik` (
  `ID` int(11) NOT NULL,
  `Frizerji_id` int(11) NOT NULL,
  `Dan` date NOT NULL,
  `Zacetek` time NOT NULL,
  `Konec` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Odloži podatke za tabelo `delovnik`
--

INSERT INTO `delovnik` (`ID`, `Frizerji_id`, `Dan`, `Zacetek`, `Konec`) VALUES
(1, 1, '2025-11-24', '08:00:00', '16:00:00'),
(2, 1, '2025-11-25', '08:00:00', '16:00:00'),
(3, 2, '2025-11-26', '10:00:00', '18:00:00'),
(4, 2, '2025-11-27', '10:00:00', '18:00:00'),
(5, 11, '2026-01-24', '08:00:00', '16:00:00'),
(7, 11, '2026-01-25', '15:00:00', '16:00:00'),
(8, 13, '2026-03-01', '08:00:00', '17:00:00'),
(10, 18, '2026-02-01', '09:00:00', '16:00:00'),
(11, 13, '2026-02-19', '09:00:00', '18:15:00'),
(12, 13, '2026-03-02', '10:00:00', '16:30:00'),
(13, 13, '2026-03-03', '08:00:00', '12:00:00'),
(14, 13, '2026-02-28', '10:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- Struktura tabele `frizerji`
--

CREATE TABLE `frizerji` (
  `ID` int(11) NOT NULL,
  `Spol` enum('Moški','Ženski') NOT NULL DEFAULT 'Moški',
  `Ime` varchar(15) NOT NULL,
  `Priimek` varchar(20) NOT NULL,
  `Naslov` varchar(50) NOT NULL,
  `Starost` int(11) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Telefon` varchar(15) NOT NULL,
  `Opis` text NOT NULL,
  `Uporabnisko_ime` varchar(30) NOT NULL,
  `Geslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Odloži podatke za tabelo `frizerji`
--

INSERT INTO `frizerji` (`ID`, `Spol`, `Ime`, `Priimek`, `Naslov`, `Starost`, `Mail`, `Telefon`, `Opis`, `Uporabnisko_ime`, `Geslo`) VALUES
(1, 'Moški', 'Luka', 'Kovač', 'Glavna 12', 32, 'luka.kovac@salon.si', '031111222', 'Specialist za sodobne moške frizure in britje.', 'luka', 'geslo123'),
(2, 'Ženski', 'Sara', 'Novak', 'Rožna 5', 29, 'sara.novak@salon.si', '041555666', 'Mojstrica barvanja in oblikovanja dolgih las.', 'sara', 'geslo1234'),
(3, 'Moški', 'Tone', 'Novak', 'Slovenska 1, Ljubljana', 25, 'tone.novak@email.com', '+38640123456', 'Specialist za moške pričeske', 'tone123', '$2b$10$2FqxsCZwNxbW1F27xnrmkOV'),
(4, 'Moški', 'Janez', 'Novak', 'Slovenska 1, Ljubljana', 25, 'janez.novak@email.com', '+38640123457', 'Specialist za moške pričeske', 'janez123', '$2b$10$9SX9EXWU8kp7JrDsFCdfW.J'),
(5, 'Moški', 'Marko', 'Novak', 'Slovenska 1, Ljubljana', 25, 'marko.novak@email.com', '+38640023456', 'Specialist za moške pričeske', 'marko123', '$2b$10$QzFtJ/Ofe849A0JbKPbybOYhfF6QuNLQFp0n3lltcbqHiQ0hBKFdy'),
(7, 'Moški', 'Mihaa', 'Novaka', 'Slovenska 1, Ljubljana', 25, 'mihaa.novak@email.com', '+3865012345', 'Specialist za moške pričeske', 'miha123', '$2b$10$aY1h2cLRu3ENnICyVOZQ4uzHYFnrJT76A/6B56Dfmd/mJkV9cnLPq'),
(9, 'Moški', 'Mmiha', 'Novak', 'Slovenska 1, Ljubljana', 25, 'mmiha.novak@email.com', '+38640123556', 'Specialist za moške pričeske', 'mmiha123', '$2b$10$MnXgCdKJ6yTx5Mnit10YCOPVrGAR2JJ9zA/Vrh8i8USOfzFTppgq.'),
(11, 'Moški', 'Miha', 'Novak', 'Slovenska 1, Ljubljana', 25, 'mmmiha.novak@email.com', '+38640923456', 'Specialist za moške pričeske', 'mmmiha123', '$2b$10$BzeTb67.i5exghd5u/9Lyu8ikJPFUVCa5en3eIq4TaCmoc67F1GOC'),
(12, 'Moški', 'Mihha', 'Novak', 'Slovenska 1, Ljubljana', 25, 'mihha.novak@email.com', '+38640129456', 'Specialist za moške pričeske', 'mihha123', '$2b$10$Km4nEovjf/G2KRF6A0iJHOw6cCpsxee/GjGElnZcT1j0Pa/lIA8jW'),
(13, 'Moški', 'Martin', 'Gumilar', 'Stara Slovenska 7, Ljubljana', 20, 'martin.gumilar@email.com', '+38640175456', 'Specialist za moške pričeske in britje', 'martin10', '$2b$10$2HUSru9S05rL/FdwbGuXCu2FkubZgLOI6Ux81aL.k72iTue2PiXb.'),
(14, 'Moški', 'Tim', 'Breznik', 'Tržaška 3', 14, 'tim.breznik@gmail.com', '+386 40 132 432', 'izkušnje', 'timi4455', '$2b$10$CvGHMYYU4/QfihGH69WXT.TkBX1TDbBDR/7p3n4XExzc.vZlhKgV6'),
(15, 'Moški', 'Tim', 'Breznik', 'Tržaška 3', 14, 'tim.breznik1@gmail.com', '+386 40 132 332', 'izkušnje', 'timi44556', '$2b$10$VQXxWKQ1mAzZ7AGUnb9LoeOg7RdpYyjTlkhBuU.doMTR8XcoyU7ry'),
(16, 'Moški', 'Tim', 'Breznik', 'Tržaška 3', 1, 'tim.breznik2@gmail.com', '+386 40 132 437', 'izkušnje', 'timi44552', '$2b$10$AhYja/n3KwQEPBP3DSQDce9ntLFTD/ojqQMwv27mpCCBx.g8d/gwm'),
(17, 'Moški', 'Tim', 'Breznik', 'Tržaška 3', 1, 'tim.breznik3@gmail.com', '+386 40 332 437', 'izkušnje', 'timi44553', '$2b$10$3FtUqBRjgh1o0eRbmF7fFuXioHFrt9HrLTgE2p9n9oFhiDr9xxcqu'),
(18, 'Ženski', 'Tim', 'Breznik', 'Tržaška 3', 5, 'tim.breznik4@gmail.com', '+386 41 132 432', 'frizer', 'timi4453', '$2b$10$yeslmHyIteplVPiqioj27O2sT15PDG.wtb.IFeJEvrAzldnLHdevK'),
(19, 'Ženski', 'Tina', 'Bučar', 'Dolenjska 44', 23, 'tinabucar@gmail.com', '031888777', 'Ženski frizer', 'tinab', '$2b$10$UGPcfBNk.Sorwh0vIQHIw.fdfTeE4I.A1Rs0HdiLP8d/0IK3gtGde'),
(20, 'Ženski', 'Katja', 'Dolenc', 'Barjanska 8', 30, 'katjadolenc@gmail.com', '031333555', 'Ženski frizer', 'katjadolenc', '$2b$10$7FeQMkiJObey/FZJpv6Le.JK3KJrmMlkjxUVUsUj9IZ/P8wSEadJO');

-- --------------------------------------------------------

--
-- Struktura tabele `specializacija`
--

CREATE TABLE `specializacija` (
  `ID` int(11) NOT NULL,
  `Frizerji_id` int(11) NOT NULL,
  `Naziv` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Odloži podatke za tabelo `specializacija`
--

INSERT INTO `specializacija` (`ID`, `Frizerji_id`, `Naziv`) VALUES
(1, 1, 'Moško striženje'),
(2, 1, 'Britje'),
(3, 2, 'Barvanje las'),
(4, 2, 'Žensko striženje'),
(5, 2, 'Oblikovanje dolgih las'),
(6, 11, 'Moško striženje'),
(7, 11, 'Britje'),
(8, 11, 'Barvanje las'),
(9, 12, 'Moško striženje'),
(10, 12, 'Britje'),
(11, 12, 'Barvanje las'),
(12, 13, 'Moško striženje'),
(13, 13, 'Britje'),
(14, 14, 'Moško striženje'),
(15, 15, 'Moško striženje'),
(16, 16, 'Moško striženje'),
(17, 17, 'Moško striženje'),
(18, 18, 'Moško striženje'),
(19, 19, 'Žensko striženje'),
(20, 19, 'Barvanje las'),
(21, 20, 'Barvanje las');

-- --------------------------------------------------------

--
-- Struktura tabele `storitve`
--

CREATE TABLE `storitve` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(30) NOT NULL,
  `Opis` text NOT NULL,
  `Trajanje` int(11) NOT NULL,
  `Cena` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Odloži podatke za tabelo `storitve`
--

INSERT INTO `storitve` (`ID`, `Ime`, `Opis`, `Trajanje`, `Cena`) VALUES
(1, 'Moško striženje', 'Klasično ali moderno striženje', 30, 15.00),
(2, 'Barvanje las', 'Popolno barvanje las', 90, 45.00),
(3, 'Oblikovanje dolgih las', 'Naravni prehodi in svetlenje', 120, 80.00),
(4, 'Britje', 'Klasično britje z brivnikom', 20, 12.99),
(5, 'Žensko striženje', 'Striženje dolgih las.', 75, 30.00),
(6, 'Umivanje las', 'Temeljito umivanje s šamponom', 30, 25.00),
(7, 'Urejanje brade', 'Urejanje vseh vrst brad', 22, 20.00);

-- --------------------------------------------------------

--
-- Struktura tabele `termini`
--

CREATE TABLE `termini` (
  `ID` int(11) NOT NULL,
  `Uporabniki_id` int(11) NOT NULL,
  `Frizerji_id` int(11) NOT NULL,
  `Cas_termina` datetime NOT NULL,
  `Opombe` text DEFAULT NULL,
  `Status` enum('Rezervirano','V izvajanju','Zaključeno','Preklicano') NOT NULL DEFAULT 'Rezervirano'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Odloži podatke za tabelo `termini`
--

INSERT INTO `termini` (`ID`, `Uporabniki_id`, `Frizerji_id`, `Cas_termina`, `Opombe`, `Status`) VALUES
(1, 1, 1, '2025-12-01 09:00:00', NULL, 'Rezervirano'),
(2, 2, 2, '2025-12-01 11:00:00', 'Imam občutljive lase.', 'Rezervirano'),
(3, 1, 2, '2025-12-03 15:00:00', 'Prosim barvanje z dvema barvama.', 'V izvajanju'),
(4, 4, 1, '2025-11-24 08:15:00', 'Prosim krajše ob straneh', 'Rezervirano'),
(5, 4, 1, '2025-11-24 11:25:00', 'Prosim krajše ob straneh', 'Rezervirano'),
(7, 4, 1, '2025-11-24 12:05:00', 'Prosim krajše ob straneh', 'Rezervirano'),
(8, 4, 2, '2025-11-27 10:00:00', 'Prosim krajše ob straneh', 'Rezervirano'),
(9, 4, 1, '2025-11-24 10:35:00', 'Prosim krajše ob straneh', 'Rezervirano'),
(10, 4, 11, '2026-01-24 15:00:00', 'Prosim krajše ob straneh', 'Zaključeno'),
(12, 5, 13, '2026-03-01 09:00:00', 'Prosim krajše ob straneh', 'Zaključeno'),
(13, 5, 13, '2026-03-01 08:00:00', 'brez', 'Preklicano'),
(14, 5, 13, '2026-03-01 10:00:00', 'Brez', 'Rezervirano'),
(15, 5, 13, '2026-03-01 10:45:00', 'brez', 'Rezervirano');

-- --------------------------------------------------------

--
-- Struktura tabele `termini_storitve`
--

CREATE TABLE `termini_storitve` (
  `ID` int(11) NOT NULL,
  `Termini_id` int(11) NOT NULL,
  `Storitve_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Odloži podatke za tabelo `termini_storitve`
--

INSERT INTO `termini_storitve` (`ID`, `Termini_id`, `Storitve_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 3),
(4, 3, 2),
(5, 4, 1),
(6, 5, 1),
(7, 5, 4),
(10, 7, 4),
(11, 8, 3),
(12, 8, 5),
(13, 9, 1),
(14, 9, 4),
(15, 10, 1),
(16, 12, 1),
(17, 12, 4),
(18, 13, 1),
(19, 14, 1),
(20, 15, 1);

-- --------------------------------------------------------

--
-- Struktura tabele `uporabniki`
--

CREATE TABLE `uporabniki` (
  `ID` int(11) NOT NULL,
  `Spol` enum('Moški','Ženski') NOT NULL DEFAULT 'Moški',
  `Ime` varchar(15) NOT NULL,
  `Priimek` varchar(20) NOT NULL,
  `Naslov` varchar(50) NOT NULL,
  `Starost` int(11) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Telefon` varchar(15) NOT NULL,
  `Uporabnisko_ime` varchar(30) NOT NULL,
  `Geslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Odloži podatke za tabelo `uporabniki`
--

INSERT INTO `uporabniki` (`ID`, `Spol`, `Ime`, `Priimek`, `Naslov`, `Starost`, `Mail`, `Telefon`, `Uporabnisko_ime`, `Geslo`) VALUES
(1, 'Moški', 'Miha', 'Zajc', 'Komenskega 15', 24, 'miha@gmail.com', '051222333', 'miha', 'geslo12345'),
(2, 'Ženski', 'Mia', 'Skalič', 'Kettejeva 8', 31, 'mia@gmail.com', '040999888', 'mia', 'geslo123456'),
(3, 'Moški', 'Miiha', 'Novak', 'Slovenska 1, Ljubljana', 25, 'miiha.novak@email.com', '+38648123456', 'miiha123', '$2b$10$vjC05Xw/DW7QNwuEhW/Wq.vCOjSyM0aHZLxl2mLg4MItmJGyV1ZZG'),
(4, 'Moški', 'Jan', 'Novak', 'Slovenska 1, Ljubljana', 25, 'jan.novak@email.com', '+38641023456', 'jan123', '$2b$10$GQTh4NdV9ql160QFbHD2WunotDaqFrdHlLdLMG.W.0vM0DsOnn/2y'),
(5, 'Moški', 'Luka', 'Gumilar', 'Stara Slovenska 7, Ljubljana', 23, 'luka.gumilar@email.com', '+38664160916', 'luka10', '$2b$10$Wwz0KTskmwmQf0OECYa7MO.w2wKhi71ffF03tcKeseBmNB0dNzTVi');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `delovnik`
--
ALTER TABLE `delovnik`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Frizerji_id` (`Frizerji_id`);

--
-- Indeksi tabele `frizerji`
--
ALTER TABLE `frizerji`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Mail` (`Mail`),
  ADD UNIQUE KEY `Telefon` (`Telefon`),
  ADD UNIQUE KEY `UporabniškoIme` (`Uporabnisko_ime`),
  ADD UNIQUE KEY `Geslo` (`Geslo`);

--
-- Indeksi tabele `specializacija`
--
ALTER TABLE `specializacija`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Frizerji_id` (`Frizerji_id`);

--
-- Indeksi tabele `storitve`
--
ALTER TABLE `storitve`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `termini`
--
ALTER TABLE `termini`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Uporabniki_id` (`Uporabniki_id`),
  ADD KEY `Frizerji_id` (`Frizerji_id`);

--
-- Indeksi tabele `termini_storitve`
--
ALTER TABLE `termini_storitve`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Termini_id` (`Termini_id`),
  ADD KEY `Storitve_id` (`Storitve_id`);

--
-- Indeksi tabele `uporabniki`
--
ALTER TABLE `uporabniki`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `upor_ime` (`Uporabnisko_ime`),
  ADD UNIQUE KEY `geslo` (`Geslo`),
  ADD UNIQUE KEY `mail` (`Mail`),
  ADD UNIQUE KEY `telefon` (`Telefon`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `delovnik`
--
ALTER TABLE `delovnik`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT tabele `frizerji`
--
ALTER TABLE `frizerji`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT tabele `specializacija`
--
ALTER TABLE `specializacija`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT tabele `storitve`
--
ALTER TABLE `storitve`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT tabele `termini`
--
ALTER TABLE `termini`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT tabele `termini_storitve`
--
ALTER TABLE `termini_storitve`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT tabele `uporabniki`
--
ALTER TABLE `uporabniki`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `delovnik`
--
ALTER TABLE `delovnik`
  ADD CONSTRAINT `delovnik_ibfk_1` FOREIGN KEY (`Frizerji_id`) REFERENCES `frizerji` (`ID`);

--
-- Omejitve za tabelo `specializacija`
--
ALTER TABLE `specializacija`
  ADD CONSTRAINT `specializacija_ibfk_1` FOREIGN KEY (`Frizerji_id`) REFERENCES `frizerji` (`ID`);

--
-- Omejitve za tabelo `termini`
--
ALTER TABLE `termini`
  ADD CONSTRAINT `termini_ibfk_1` FOREIGN KEY (`Uporabniki_id`) REFERENCES `uporabniki` (`ID`),
  ADD CONSTRAINT `termini_ibfk_2` FOREIGN KEY (`Frizerji_id`) REFERENCES `frizerji` (`ID`);

--
-- Omejitve za tabelo `termini_storitve`
--
ALTER TABLE `termini_storitve`
  ADD CONSTRAINT `termini_storitve_ibfk_1` FOREIGN KEY (`Termini_id`) REFERENCES `termini` (`ID`),
  ADD CONSTRAINT `termini_storitve_ibfk_2` FOREIGN KEY (`Storitve_id`) REFERENCES `storitve` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
