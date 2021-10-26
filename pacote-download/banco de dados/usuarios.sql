-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Out-2021 às 23:50
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pnews`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dt_nascimento` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` int(15) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rua` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bairro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo_moto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pneu_utilizado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo_pneu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp_medio_troca` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `dt_nascimento`, `telefone`, `email`, `senha`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `modelo_moto`, `pneu_utilizado`, `modelo_pneu`, `tp_medio_troca`) VALUES
(14, 'João do teste', '12345678900', '010101', 2147483647, 'teste_teste@123', '1234', 'Rua do Teste', '111', 'Jardim Teste', 'Jandira', 'São Paulo', 'fazer', 'Michellin', '110/70', '2 meses');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
