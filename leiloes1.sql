-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:6666
-- Generation Time: 09-Dez-2014 às 13:57
-- Versão do servidor: 5.5.38
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `LEILOES1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `BDDRS`
--

CREATE TABLE `BDDRS` (
`BDDRS_ID` int(11) NOT NULL,
  `BDDRS_NOME` varchar(50) NOT NULL,
  `BDDRS_CRDTS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `LCTC`
--

CREATE TABLE `LCTC` (
`LCTC_ID` int(11) NOT NULL,
  `LCTC_BDDRS` int(11) NOT NULL COMMENT 'BDDRS_ID',
  `LCTC_PROD` int(11) NOT NULL COMMENT 'PRDCT_ID',
  `LCTC_VLOFER` double NOT NULL COMMENT 'valor da oferta'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `PRDCT`
--

CREATE TABLE `PRDCT` (
`PRDCT_ID` int(11) NOT NULL,
  `PRDCT_VLBASE` double NOT NULL COMMENT 'valor base',
  `PRDCT_STATUS` int(11) NOT NULL COMMENT 'estado',
  `PRDCT_DESC` varchar(100) NOT NULL COMMENT 'descrição'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BDDRS`
--
ALTER TABLE `BDDRS`
 ADD PRIMARY KEY (`BDDRS_ID`);

--
-- Indexes for table `LCTC`
--
ALTER TABLE `LCTC`
 ADD PRIMARY KEY (`LCTC_ID`);

--
-- Indexes for table `PRDCT`
--
ALTER TABLE `PRDCT`
 ADD PRIMARY KEY (`PRDCT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BDDRS`
--
ALTER TABLE `BDDRS`
MODIFY `BDDRS_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LCTC`
--
ALTER TABLE `LCTC`
MODIFY `LCTC_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PRDCT`
--
ALTER TABLE `PRDCT`
MODIFY `PRDCT_ID` int(11) NOT NULL AUTO_INCREMENT;