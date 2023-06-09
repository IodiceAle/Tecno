-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 12, 2023 alle 18:17
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benziani`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `impianto`
--

CREATE TABLE `impianto` (
  `idImpianto` int(11) NOT NULL,
  `Gestore` varchar(50) NOT NULL,
  `Bandiera` varchar(50) NOT NULL,
  `tipoImpianto` varchar(50) NOT NULL,
  `nomeImpianto` varchar(50) NOT NULL,
  `Indirizzo` varchar(50) NOT NULL,
  `Comune` varchar(50) NOT NULL,
  `Provincia` varchar(50) NOT NULL,
  `Latitudine` varchar(50) NOT NULL,
  `Longitudine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `prezzi`
--

CREATE TABLE `prezzi` (
  `descCarburante` varchar(50) NOT NULL,
  `tipoCarburante` varchar(50) NOT NULL,
  `prezzo` float NOT NULL,
  `idImpianto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `chatId` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tipoCarb` varchar(50) NOT NULL,
  `capacita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`chatId`, `nome`, `user_id`, `tipoCarb`, `capacita`) VALUES
(657638717, 'pippo', 657638717, 'benzina', 23);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `impianto`
--
ALTER TABLE `impianto`
  ADD PRIMARY KEY (`idImpianto`);

--
-- Indici per le tabelle `prezzi`
--
ALTER TABLE `prezzi`
  ADD KEY `prezzi_ibfk_1` (`idImpianto`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`chatId`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `prezzi`
--
ALTER TABLE `prezzi`
  ADD CONSTRAINT `prezzi_ibfk_1` FOREIGN KEY (`idImpianto`) REFERENCES `impianto` (`idImpianto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
