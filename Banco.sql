-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Out-2020 às 21:00
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `juridico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `assistido`
--

CREATE TABLE `assistido` (
  `CPF` int(20) NOT NULL,
  `NomeCompleto` varchar(100) NOT NULL,
  `Endereco` varchar(500) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `assistidoID` int(11) NOT NULL,
  `Ativo` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `audiencias`
--

CREATE TABLE `audiencias` (
  `AudienciasID` int(50) NOT NULL,
  `DataHora` date NOT NULL,
  `Juiz` varchar(100) NOT NULL,
  `Local` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `processo`
--

CREATE TABLE `processo` (
  `Numero` int(50) NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  `Forum` varchar(200) DEFAULT NULL,
  `DataEntrada` date DEFAULT NULL,
  `Situacao` int(1) NOT NULL,
  `Ativo` int(11) NOT NULL,
  `ProcessoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `RGM` int(20) NOT NULL,
  `UserNomeCompleto` varchar(100) NOT NULL,
  `UserTelefone` varchar(20) DEFAULT NULL,
  `Funcao` varchar(50) DEFAULT NULL,
  `UserDataNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `assistido`
--
ALTER TABLE `assistido`
  ADD PRIMARY KEY (`assistidoID`);

--
-- Índices para tabela `audiencias`
--
ALTER TABLE `audiencias`
  ADD PRIMARY KEY (`AudienciasID`);

--
-- Índices para tabela `processo`
--
ALTER TABLE `processo`
  ADD PRIMARY KEY (`ProcessoID`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`RGM`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `assistido`
--
ALTER TABLE `assistido`
  MODIFY `assistidoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `processo`
--
ALTER TABLE `processo`
  MODIFY `ProcessoID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
