-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 16. Nov 2019 um 15:17
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
-- Datenbank: `biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author`
--

CREATE TABLE `author` (
  `author_ID` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `fk_media_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `author`
--

INSERT INTO `author` (`author_ID`, `first_name`, `last_name`, `fk_media_ID`) VALUES
(0, '', '', NULL),
(1, 'Jonathan', 'Franzen', 1),
(2, 'Jonathan', 'Franzen', 2),
(3, 'Lukas', 'Meschik', 3),
(4, 'Johannes', 'Huber', 4),
(5, 'Susanna', 'Germano', 5),
(6, 'Jonathan', 'Franzen', 6),
(7, 'Jonathan', 'Franzen', 7),
(8, 'Jonathan', 'Franzen', 8),
(9, 'Jonathan', 'Franzen', 9),
(10, 'Julia', 'Child', 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `media_ID` int(11) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `fk_publisher` int(11) DEFAULT NULL,
  `media_type` varchar(10) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `media_title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`media_ID`, `image`, `ISBN`, `description`, `publish_date`, `fk_publisher`, `media_type`, `status`, `media_title`) VALUES
(1, 'https://www.froelichundkaufmann.de/hoerbuecher/jonathan-franzen-purity-a-novel-20-cds.html#&gid=1&pid=1', '-1250115207', 'Purity Tyler, known to all as Pip, is an outspoken, forthright young woman struggling to make a life for herself. She sleeps in an rickety commune in Oakland. She\'s in love with an unavailable older man and is saddled with staggering college debt. She has a crazy mother and doesn\'t know who her father is. A chance encounter leads her to an internship in South America with the world-famous Sunlight Project, the president of which is Andreas Wolf, a charismatic genius who grew up privileged but di', '0000-00-00', 1, 'book', 'reserved', 'Purity'),
(2, 'https://us.macmillan.com/books/9780374182212', '-7516464', 'A great American writer\'s confrontation with a great European critic - a personal and intellectual awakening. Karl Kraus: satirist. Controversialist. Forgotten voice of the early twentieth century. Jonathan Franzen: bestseller. Contrarian. One of the greatest novelists working today. Recalling his student days, the celebrated author of `The Corrections\' and `Freedom\' recounts his discovery of Kraus and presents his own translations and annotations of the philosopher\'s most famous essays. A pione', '0000-00-00', 1, 'book', 'available', 'The Kraus Project'),
(3, 'https://www.luftschacht.com/luftschacht-live/wp-content/uploads/cv_meschik_jetzt_die_sirenen_web.jpg', '978-3-902373-39-7', 'Was wiegt der Verlust, wie beziffert man ihn, den einzelnen wie den absoluten? Was bleibt, wenn erst der Mensch, dann Wasser und Wüste die Erde entvölkern? Wer übernimmt die Dokumentation des Untergangs, wer erfindet eine dafür adäquate Sprache und wer schaltet am Ende den Fernseher ab?', '0000-00-00', 9, 'book', 'available', 'Jetzt die Sirenen'),
(4, 'http://www.edition-a.at/images/HUber24.jpg', '-98359', 'Was ist Schicksal? Wie entsteht es? Wie können wir es ändern? Faszinierende Antworten auf diese Fragen liefern moderne Wissenschaften wie evolutionäre Entwicklungsbiologie, Epigenetik und Reproduktionsmedizin. Der renommierte Arzt Prof. DDr. Johannes Huber zeigt, welche Kräfte auf uns wirken, ohne dass es uns bewusst ist, welche Rolle dabei die dunkle Materie in unserer DNA spielt und was das alles für unsere Heilung bedeutet', '0000-00-00', 8, 'book', 'available', 'Anatomie des Schicksals'),
(5, 'https://www.mandelbaum.at/covers/9783854762959.jpg', '978385172', 'Rome in the year 2007. The struggle of an old divorced couple over an untidy cellar full with old letters and writings triggers off a story. The adventures and passions of the protagonists unfold in permanently changing scenery and different times. This second novel of Susanna Germano, inspired by her own life after 1945, ties in with her previous novel »Faust I and Aunt Helene«. Like in that novel the protagonists experience directly their present, in which they are caught up, and have to play ', '0000-00-00', 10, 'book', 'available', 'Das geglückte Leben'),
(6, 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1316729686i/7905092._UY475_SS475_.jpg', '-1249999041', 'The acclaimed new novel from the author of The Corrections. Patty and Walter Berglund were the new pioneers of old St. Paul - the gentrifiers, the hands-on parents, the avant-garde of the Whole Foods generation. Patty was the ideal sort of neighbour who could tell you where to recycle your batteries and how to get the local cops to actually do their job. She was an enviably perfect mother and the wife of Walter\'s dreams. Together with Walter - environmental lawyer, commuter cyclist, family man -', '0000-00-00', 2, 'book', 'available', 'Freedom'),
(7, 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1316729686i/7905092._UY475_SS475_.jpg', '-1427209516', 'The acclaimed new novel from the author of The Corrections. Patty and Walter Berglund were the new pioneers of old St. Paul - the gentrifiers, the hands-on parents, the avant-garde of the Whole Foods generation. Patty was the ideal sort of neighbour who could tell you where to recycle your batteries and how to get the local cops to actually do their job. She was an enviably perfect mother and the wife of Walter\'s dreams. Together with Walter - environmental lawyer, commuter cyclist, family man -', '0000-00-00', 2, 'CD', 'available', 'Freedom'),
(8, 'https://images-na.ssl-images-amazon.com/images/I/41pMcQLsVzL._SX308_BO1,204,203,200_.jpg', '-8298246', 'A sharp and provocative new essay collection from the award-winning author of Purity, Freedom and The Corrections In The End of the End of the Earth, which gathers essays and speeches written mostly in the past five years, Jonathan Franzen returns with renewed vigour to the themes - both human and literary - that have long preoccupied him. Whether exploring his complex relationship with his uncle, recounting his young adulthood in New York, or offering an illuminating look at the global seabird ', '0000-00-00', 1, 'book', 'available', 'The End of the End of the World'),
(9, 'https://images-na.ssl-images-amazon.com/images/I/41pMcQLsVzL._SX308_BO1,204,203,200_.jpg', '-1250299544', 'A sharp and provocative new essay collection from the award-winning author of Purity, Freedom and The Corrections In The End of the End of the Earth, which gathers essays and speeches written mostly in the past five years, Jonathan Franzen returns with renewed vigour to the themes - both human and literary - that have long preoccupied him. Whether exploring his complex relationship with his uncle, recounting his young adulthood in New York, or offering an illuminating look at the global seabird ', '0000-00-00', 1, 'CD', 'available', 'The End of the End of the World'),
(10, 'https://images3.penguinrandomhouse.com/cover/9780307593900', '9780307593900', 'At last on DVD—Julia’s invaluable series of cooking lessons designed to bring her right into your own kitchen to teach you the fundamentals of good cooking. Here is the six-part series (complete with recipe booklet), originally produced in 1985,\r\nin which Julia teaches you all the fundamentals of good cooking and offers a wealth of her favorite recipes', '0000-00-00', 4, 'DVD', 'available', 'The Way To Cook');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `publisher_ID` int(11) NOT NULL,
  `publisher_name` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `address_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`publisher_ID`, `publisher_name`, `size`, `address_ID`) VALUES
(1, 'Harper Collins', 'large', 1),
(2, 'Macmillan', 'large', 2),
(4, 'Penguin', 'large', 4),
(5, 'eastwest records', 'medium', 5),
(8, 'edition a', 'small', 8),
(9, 'luftschacht', 'small', 9),
(10, 'mandelbaum verlag', 'medium', 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publ_address`
--

CREATE TABLE `publ_address` (
  `address_ID` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `publ_address`
--

INSERT INTO `publ_address` (`address_ID`, `address`, `zipcode`, `city`, `country`) VALUES
(1, '1 London Bridge Street', 'SE1 9GF', 'London', 'UK'),
(2, '120 Broadway', '10271', 'New York', 'USA'),
(4, '61-63 Uxbridge Road', 'W5 5SA', 'London', 'UK'),
(5, 'Marstallstraße 8', '80539', 'Munich', 'Germany'),
(6, '1 London Bridge Street', 'SE1 9GF', 'London', 'UK'),
(8, 'Singerstraße 2', '1010', 'Wien', 'AUT'),
(9, 'Malzgasse 12', '1020', 'Wien', 'AUT'),
(10, 'Wipplingerstraße 23', '1010', 'Wien', 'AUT');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_ID`),
  ADD KEY `fk_media_ID` (`fk_media_ID`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_ID`),
  ADD KEY `fk_publisher` (`fk_publisher`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_ID`),
  ADD KEY `address_ID` (`address_ID`);

--
-- Indizes für die Tabelle `publ_address`
--
ALTER TABLE `publ_address`
  ADD PRIMARY KEY (`address_ID`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`fk_media_ID`) REFERENCES `media` (`media_ID`);

--
-- Constraints der Tabelle `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_publisher`) REFERENCES `publisher` (`publisher_ID`);

--
-- Constraints der Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`address_ID`) REFERENCES `publ_address` (`address_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
