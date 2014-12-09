-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09-Dez-2014 às 12:34
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `leiloes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bidders`
--

CREATE TABLE IF NOT EXISTS `bidders` (
  `nome` varchar(30) NOT NULL,
  `creditos` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bidders`
--

INSERT INTO `bidders` (`nome`, `creditos`) VALUES
('Anibal', 100),
('Carlos', 100),
('Daniel', 100),
('Jpereira', 100),
('Novais', 100),
('Paulo Silva', 100),
('Rui', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `licitacao`
--

CREATE TABLE IF NOT EXISTS `licitacao` (
  `id_licitacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `valor_oferecido` int(11) NOT NULL,
  `bidder` varchar(30) NOT NULL,
  PRIMARY KEY (`id_licitacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `desc_produto` varchar(100) NOT NULL,
  `valor_base` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
