-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Jun-2023 às 22:48
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `deposito`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `Codigo` int(11) NOT NULL,
  `cod_Produto` int(11) DEFAULT NULL,
  `cod_logradouro` int(11) DEFAULT NULL,
  `Nome` varchar(15) DEFAULT NULL,
  `Sobrenome` varchar(15) DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `Telefone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`Codigo`, `cod_Produto`, `cod_logradouro`, `Nome`, `Sobrenome`, `CPF`, `Telefone`) VALUES
(1, NULL, NULL, 'raphael', 'santos', NULL, NULL),
(2, NULL, NULL, 'luiz', 'henrique', NULL, NULL),
(3, NULL, NULL, 'aaaaaaaaaaaa', 'aaaaaaaaaaa', '123456789', NULL),
(4, NULL, NULL, 'dsafgcvb', 'nfdvxzsgf', '12345678910', '12345678910'),
(5, NULL, NULL, 'asdfghj', 'dsgfhfh', '14785236910', '12354678910'),
(6, NULL, NULL, 'raphael ', 'santos', '43944112890', '11947606181'),
(7, NULL, NULL, 'weqtafgds', 'asdfasdf', '43944112890', '12345678910'),
(8, NULL, NULL, 'a', 'a', '1', '2'),
(9, NULL, NULL, 'a', 'a', '1', '1'),
(10, NULL, NULL, 'a', 'a', '1', '23'),
(11, NULL, NULL, 's', 's', '4', '3456'),
(12, NULL, NULL, 'sdfg', 'sdgf', '654', '345435'),
(13, NULL, NULL, 'sdaft', 'dfgsdfg', '3465', '346'),
(14, NULL, NULL, 'sdfsdfsf', 'sadfsf', '23453', '34563456'),
(15, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `cod_Produto` (`cod_Produto`),
  ADD KEY `cod_logradouro` (`cod_logradouro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cod_Produto`) REFERENCES `pedidos` (`Id_Pedido`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`cod_logradouro`) REFERENCES `logradouro` (`cod_logradouro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
