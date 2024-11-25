-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Nov-2024 às 02:49
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pedidos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `desc_prod` varchar(255) NOT NULL,
  `qtd_prod` int(11) DEFAULT NULL,
  `valor_prod` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_prod`, `desc_prod`, `qtd_prod`, `valor_prod`) VALUES
(36, 2, 'Amato', 1, 500.00),
(39, 3, 'Novalgina', 1, 200.00),
(43, 3, 'Novalgina', 2, 200.00),
(45, 18, 'Alivium', 1, 50.00),
(46, 20, 'Puran T4', 3, 27.00),
(48, 23, 'Tylenol', 2, 12.00),
(49, 24, 'Nasonex', 3, 12.25),
(50, 1, 'Ozempic 1gr', 2, 1000.00),
(51, 30, 'Voltaren', 3, 35.54),
(52, 1, 'Ozempic 1gr', 2, 1000.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `assunto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `sobrenome`, `empresa`, `email`, `telefone`, `assunto`) VALUES
(4, 'Joao Pedro', 'Santos', 'Madeireira Santos', 'joaopedro@gmail.com', '11 9756-4556', 'Quero Conhecer sobre Inteligência Artificial'),
(5, 'Maria da Silva', 'de Paula', 'Bolos e Confeitaria de paula', 'mariadasilvabolos@gmail.com', '11 9564-8877', 'Quero conhecer sobre Cyber segurança.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_prod` int(11) NOT NULL,
  `desc_prod` varchar(255) DEFAULT NULL,
  `valor_prod` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_prod`, `desc_prod`, `valor_prod`) VALUES
(1, 'Ozempic 1gr', 1000.00),
(2, 'Amato 100mg', 500.00),
(3, 'Novalgina', 200.00),
(4, 'Dorflex', 150.00),
(10, 'Decadron', 154.00),
(11, 'Vitamina B12', 150.00),
(17, 'Levofloxacino', 200.00),
(18, 'Alivium', 50.00),
(19, 'Digeplus', 45.00),
(20, 'Puran T4', 27.00),
(21, 'Sucrafilme', 20.00),
(22, 'Avamys', 100.00),
(23, 'Tylenol', 12.00),
(24, 'Nasonex', 12.25),
(25, 'Miosan 10mg', 58.27),
(28, 'Levofloxacino 250mg', 128.57),
(29, 'Norumol', 12.25),
(30, 'Voltaren', 35.54);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `carrinho_ibfk_1` FOREIGN KEY (`id_prod`) REFERENCES `produtos` (`id_prod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
