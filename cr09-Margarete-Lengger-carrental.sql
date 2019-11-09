-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Nov 2019 um 16:57
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

CREATE TABLE `car` (
  `car_id` varchar(30) NOT NULL,
  `car_type` varchar(30) DEFAULT NULL,
  `fk_car_location` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `car`
--

INSERT INTO `car` (`car_id`, `car_type`, `fk_car_location`) VALUES
('W44354S', 'convertible', 'Erdbergstrasse 120, 1030 Wien'),
('W68689T', 'wagon', 'Margaretenstrasse 110, 1050 Wien'),
('W76213A', 'van', 'Liechtensteinstrasse 20, 1090 Wien'),
('W76334M', 'wagon', 'Margaretenstrasse 110, 1050 Wien'),
('W76444T', 'convertible', 'Erdbergstrasse 120, 1030 Wien'),
('W76453C', 'van', 'Liechtensteinstrasse 20, 1090 Wien'),
('W78764S', 'convertible', 'Margaretenstrasse 110, 1050 Wien'),
('W78933V', 'wagon', 'Margaretenstrasse 110, 1050 Wien'),
('W79099N', 'van', 'Liechtensteinstrasse 20, 1090 Wien'),
('W89994S', 'convertible', 'Erdbergstrasse 120, 1030 Wien');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `carorder`
--

CREATE TABLE `carorder` (
  `carorder_id` int(11) NOT NULL,
  `fk_customer_id` int(11) DEFAULT NULL,
  `dropoff_station` varchar(50) DEFAULT NULL,
  `pickup_station` varchar(50) DEFAULT NULL,
  `dropoff_date` date DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `fk_car_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `carorder`
--

INSERT INTO `carorder` (`carorder_id`, `fk_customer_id`, `dropoff_station`, `pickup_station`, `dropoff_date`, `pickup_date`, `fk_car_id`) VALUES
(1, 1, 'Margaretenstrasse 110, 1050 Wien', 'Margaretenstrasse 110, 1050 Wien', '2019-05-05', '2019-05-04', 'W68689T'),
(2, 2, 'Margaretenstrasse 110, 1050 Wien', 'Margaretenstrasse 110, 1050 Wien', '2019-05-01', '2019-04-24', 'W76334M'),
(3, 3, 'Margaretenstrasse 110, 1050 Wien', 'Margaretenstrasse 110, 1050 Wien', '2019-01-03', '2019-01-01', 'W78764S'),
(4, 4, 'Liechtensteinstrasse 10, 1090 Wien', 'Liechtensteinstrasse 10, 1090 Wien', '2019-03-03', '2019-03-02', 'W76453C'),
(5, 5, 'Liechtensteinstrasse 10, 1090 Wien', 'Liechtensteinstrasse 10, 1090 Wien', '2019-04-02', '2019-03-27', 'W76213A'),
(6, 6, 'Liechtensteinstrasse 10, 1090 Wien', 'Margaretenstrasse 110, 1050 Wien', '2019-03-01', '0000-00-00', 'W79099N'),
(7, 7, 'Erdbergstrasse 120, 1030 Wien', 'Erdbergstrasse 120, 1030 Wien', '2019-03-10', '2019-03-07', 'W76444T'),
(8, 8, 'Erdbergstrasse 120, 1030 Wien', 'Erdbergstrasse 120, 1030 Wien', '2019-02-10', '2019-02-05', 'W89994S'),
(9, 1, 'Erdbergstrasse 120, 1030 Wien', 'Margaretenstrasse 110, 1050 Wien', '2019-04-04', '2019-04-03', 'W44354S'),
(10, 3, 'Margaretenstrasse 110, 1050 Wien', 'Margaretenstrasse 110, 1050 Wien', '2019-01-05', '2019-01-04', 'W78933V');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `creditcard`
--

CREATE TABLE `creditcard` (
  `creditcard_id` varchar(20) NOT NULL,
  `fk_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `creditcard`
--

INSERT INTO `creditcard` (`creditcard_id`, `fk_customer_id`) VALUES
('AT24234565378172', 1),
('AT56748293465781', 2),
('AT74652876345612', 3),
('AT98787693452321', 4),
('AT23234354565678', 5),
('AT23334879765432', 6),
('AT23337678945345', 7),
('AT12131454654534', 8),
('DE182349534934', 9),
('DE123245235678', 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `birthdate`) VALUES
(1, 'Andreas', 'Kocian', '1980-01-01'),
(2, 'Attila', 'Takacs', '1998-02-02'),
(3, 'Barbara', 'Schuch', '1995-02-03'),
(4, 'Birgit', 'Schneider', '1983-11-10'),
(5, 'Abdullah', 'Kaitoua', '1985-03-05'),
(6, 'Branislav', 'Simic', '1997-04-20'),
(7, 'Ching Ying', 'Huang', '1993-05-30'),
(8, 'Christian', 'Simic', '1983-10-27'),
(9, 'Clemens', 'Sauer', '1981-10-10'),
(10, 'Clemens', 'Manschek', '1986-02-26');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `fk_creditcard_id` varchar(20) DEFAULT NULL,
  `driv_firstname` varchar(50) DEFAULT NULL,
  `driv_lastname` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `driver`
--

INSERT INTO `driver` (`driver_id`, `fk_creditcard_id`, `driv_firstname`, `driv_lastname`, `nationality`) VALUES
(1, 'AT24234565378172', 'Andreas', 'Kocian', 'AUT'),
(2, 'AT56748293465781', 'Attila', 'Takacs', 'HUN'),
(3, 'AT74652876345612', 'Barbara', 'Schuch', 'GER'),
(4, 'AT74652876345612', 'David', 'Riediger', 'AUT'),
(5, 'AT98787693452321', 'Birgit', 'Schneider', 'AUT'),
(6, 'AT23234354565678', 'Abdullah', 'Kaitoua', 'AUT'),
(7, 'AT23234354565678', 'Dennis', 'Pavitschitz', 'GER'),
(8, 'AT23334879765432', 'Branislav', 'Simic', 'AUT'),
(9, 'AT23337678945345', 'Ching Ying', 'Huang', 'CHN'),
(10, 'AT12131454654534', 'Christian', 'Simic', 'AUT'),
(11, 'DE182349534934', 'Clemens', 'Sauer', 'AUT'),
(12, 'DE123245235678', 'Clemens', 'Manschek', 'GER');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `emp_first_name` varchar(30) DEFAULT NULL,
  `emp_last_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `employee`
--

INSERT INTO `employee` (`employee_id`, `emp_first_name`, `emp_last_name`) VALUES
(1, 'Karl', 'Huber'),
(2, 'Anna', 'Mueller'),
(3, 'Franziska', 'Schneider');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rate`
--

CREATE TABLE `rate` (
  `rate_id` int(11) NOT NULL,
  `fk_order_id` int(11) DEFAULT NULL,
  `adddriver_rate` int(11) DEFAULT NULL,
  `diffdrop_rate` int(11) DEFAULT NULL,
  `discount_rate` int(11) DEFAULT NULL,
  `refill_rate` int(11) NOT NULL,
  `standard_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `rate`
--

INSERT INTO `rate` (`rate_id`, `fk_order_id`, `adddriver_rate`, `diffdrop_rate`, `discount_rate`, `refill_rate`, `standard_rate`) VALUES
(1, 1, 30, 50, 80, 60, 0),
(2, 2, 0, 0, 0, 60, 100),
(3, 3, 30, 50, 0, 0, 100),
(4, 4, 0, 0, 80, 0, 0),
(5, 5, 0, 0, 0, 0, 100),
(6, 6, 0, 0, 0, 0, 100),
(7, 7, 0, 0, 0, 0, 100),
(8, 8, 0, 0, 0, 0, 100),
(9, 9, 0, 0, 0, 0, 100),
(10, 10, 0, 0, 0, 0, 100);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rentalstation`
--

CREATE TABLE `rentalstation` (
  `station_location` varchar(80) NOT NULL,
  `fk_employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `rentalstation`
--

INSERT INTO `rentalstation` (`station_location`, `fk_employee_id`) VALUES
('Margaretenstrasse 110, 1050 Wien', 1),
('Erdbergstrasse 120, 1030 Wien', 2),
('Liechtensteinstrasse 20, 1090 Wien', 3);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_car_location` (`fk_car_location`);

--
-- Indizes für die Tabelle `carorder`
--
ALTER TABLE `carorder`
  ADD PRIMARY KEY (`carorder_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`),
  ADD KEY `carorder_ibfk_2` (`fk_car_id`);

--
-- Indizes für die Tabelle `creditcard`
--
ALTER TABLE `creditcard`
  ADD PRIMARY KEY (`creditcard_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indizes für die Tabelle `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD KEY `fk_creditcard_id` (`fk_creditcard_id`);

--
-- Indizes für die Tabelle `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indizes für die Tabelle `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `fk_order_id` (`fk_order_id`);

--
-- Indizes für die Tabelle `rentalstation`
--
ALTER TABLE `rentalstation`
  ADD PRIMARY KEY (`station_location`),
  ADD KEY `fk_employee_id` (`fk_employee_id`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fk_car_location`) REFERENCES `rentalstation` (`station_location`);

--
-- Constraints der Tabelle `carorder`
--
ALTER TABLE `carorder`
  ADD CONSTRAINT `carorder_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `carorder_ibfk_2` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints der Tabelle `creditcard`
--
ALTER TABLE `creditcard`
  ADD CONSTRAINT `creditcard_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints der Tabelle `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`fk_creditcard_id`) REFERENCES `creditcard` (`creditcard_id`);

--
-- Constraints der Tabelle `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`fk_order_id`) REFERENCES `carorder` (`carorder_id`);

--
-- Constraints der Tabelle `rentalstation`
--
ALTER TABLE `rentalstation`
  ADD CONSTRAINT `rentalstation_ibfk_1` FOREIGN KEY (`fk_employee_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
