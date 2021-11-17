-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 10-Nov-2021 às 16:55
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `covidemacao1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadosepidemiologicos`
--

DROP TABLE IF EXISTS `dadosepidemiologicos`;
CREATE TABLE IF NOT EXISTS `dadosepidemiologicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dadosCasos` varchar(100) NOT NULL,
  `dadosObitos` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dadosepidemiologicos`
--

INSERT INTO `dadosepidemiologicos` (`id`, `dadosCasos`, `dadosObitos`, `created`, `modified`) VALUES
(1, '21700000', '606000', '2021-10-25 12:25:03', '2021-10-25 12:25:33'),
(12, '421412', '12412', '2021-11-08 21:45:51', NULL),
(10, '213123', '412412141', '2021-11-08 21:45:46', NULL),
(11, '21412', '342112', '2021-11-08 21:45:49', NULL),
(13, '241412', '412412', '2021-11-08 21:45:53', NULL),
(15, '123', '123', '2021-11-09 00:36:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadosvacinacao`
--

DROP TABLE IF EXISTS `dadosvacinacao`;
CREATE TABLE IF NOT EXISTS `dadosvacinacao` (
  `idCovid` int(11) NOT NULL AUTO_INCREMENT,
  `dosesAplicadas` varchar(30) NOT NULL,
  `dosesDistribuidas` varchar(30) NOT NULL,
  `primeiraDose` varchar(30) NOT NULL,
  `segundaDose` varchar(30) NOT NULL,
  `recursos` varchar(30) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`idCovid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dadosvacinacao`
--

INSERT INTO `dadosvacinacao` (`idCovid`, `dosesAplicadas`, `dosesDistribuidas`, `primeiraDose`, `segundaDose`, `recursos`, `created`, `modified`) VALUES
(9, '12', '21', '32', '23', '12', '2021-11-10 13:34:14', NULL),
(8, '231', '213123', '', '', '', '2021-11-10 11:11:48', NULL),
(6, '12', '123', '123', '231', '421', '2021-11-10 10:46:18', NULL),
(7, '1', '2', '3', '4', '5', '2021-11-10 10:46:23', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(220) NOT NULL,
  `senha` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `usuario`, `senha`, `created`, `modified`) VALUES
(1, 'admin', '$2y$10$ThdFZIwfl24hecKvbwAkNOPsQQnFsKOd6UCHZ4u1Fr.zhl661fgT.', '2021-11-04 12:08:18', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `meiosdeprevencao`
--

DROP TABLE IF EXISTS `meiosdeprevencao`;
CREATE TABLE IF NOT EXISTS `meiosdeprevencao` (
  `idMeios` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`idMeios`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `meiosdeprevencao`
--

INSERT INTO `meiosdeprevencao` (`idMeios`, `descricao`, `created`, `modified`) VALUES
(1, 'Uso Correto de mÃ¡scara', '2021-10-25 12:31:40', '2021-10-25 12:32:12'),
(2, 'Distanciamento Social', '2021-10-25 12:31:52', NULL),
(3, 'Uso de Ã¡lcool em gel', '2021-10-25 12:32:02', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
