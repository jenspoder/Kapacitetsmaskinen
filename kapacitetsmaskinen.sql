-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 02. 08 2010 kl. 06:17:44
-- Serverversion: 5.1.44
-- PHP-version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kapacitetsmaskinen`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `frihed`
--

CREATE TABLE `frihed` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `dato` date NOT NULL,
  `medarbejder_id` smallint(6) NOT NULL COMMENT 'Refererer den konkrete medarbejder der er tale om fra medarbejder tabellen',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci AUTO_INCREMENT=3 ;

--
-- Data dump for tabellen `frihed`
--

INSERT INTO `frihed` VALUES(1, '2010-10-10', 2);
INSERT INTO `frihed` VALUES(2, '2010-10-11', 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kapacitet`
--

CREATE TABLE `kapacitet` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `periodestart` varchar(7) COLLATE utf8_danish_ci NOT NULL COMMENT 'Felt der udfyldes feks 2010-43 altså år og ugenummer',
  `periodeslut` varchar(7) COLLATE utf8_danish_ci NOT NULL COMMENT 'felt der angiver afsutning på ansættelsesperiode format 2020-45 altså år-ugenummer',
  `omfang` tinyint(4) NOT NULL COMMENT 'Antal timer medarbejderen lægger per uge i denne periode',
  `type_id` tinyint(4) NOT NULL COMMENT 'Dette felt referer til type-id i arbejdstype tabellen',
  `medarbejder_id` smallint(6) NOT NULL COMMENT 'Dette felt refererer til hvilken medarbejder denne kapacitetsklump refererer til i medarbejder tabellen',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci AUTO_INCREMENT=3 ;

--
-- Data dump for tabellen `kapacitet`
--

INSERT INTO `kapacitet` VALUES(1, '2010-01', '2020-01', 15, 3, 1);
INSERT INTO `kapacitet` VALUES(2, '2010-01', '2020-01', 30, 4, 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kapacitetsbooking`
--

CREATE TABLE `kapacitetsbooking` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `projekt_maaned_id` smallint(6) NOT NULL,
  `omfang` smallint(6) NOT NULL,
  `type_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `kapacitetsbooking`
--


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `medarbejder`
--

CREATE TABLE `medarbejder` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `navn` varchar(100) COLLATE utf8_danish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci AUTO_INCREMENT=3 ;

--
-- Data dump for tabellen `medarbejder`
--

INSERT INTO `medarbejder` VALUES(1, 'Jens Poder');
INSERT INTO `medarbejder` VALUES(2, 'Mikkel Madsen');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `opgavebooking`
--

CREATE TABLE `opgavebooking` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `medarbejder_id` smallint(6) NOT NULL,
  `omfang` tinyint(4) NOT NULL COMMENT 'Det antal timer opgaven er estimeret til',
  `type_id` tinyint(4) NOT NULL,
  `projekt_id` smallint(6) NOT NULL,
  `redmine_ticket` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `opgavebooking`
--


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `opgave_type`
--

CREATE TABLE `opgave_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `navn` varchar(30) COLLATE utf8_danish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci AUTO_INCREMENT=5 ;

--
-- Data dump for tabellen `opgave_type`
--

INSERT INTO `opgave_type` VALUES(1, 'Html og Css');
INSERT INTO `opgave_type` VALUES(3, 'Strategi og Koncept');
INSERT INTO `opgave_type` VALUES(4, 'Design');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `projekt`
--

CREATE TABLE `projekt` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `navn` varchar(40) COLLATE utf8_danish_ci NOT NULL,
  `redmine_masterticket` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `projekt`
--


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `projekt_maaned`
--

CREATE TABLE `projekt_maaned` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `projekt_id` smallint(6) NOT NULL,
  `maaned` varchar(7) COLLATE utf8_danish_ci NOT NULL COMMENT 'Månedsangivelse i formatet 2010-10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `projekt_maaned`
--

