-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 03/02/2025 às 18:19
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.27

--
-- ATIVIDADE 07 BANCO DE DADOS - MODELO LOCALIZA-SE EM https://www.mysqltutorial.org/getting-started-with-mysql/mysql-sample-database/ FEITO COM DOCKER-COMPOSE E PHPADMIN, TUTORIAL EM https://github.com/ricdtaveira/docker/tree/main/10-Docker-Compose/10-exemplo-04
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydatabase`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CLIENTES`
--

CREATE TABLE `TB_CLIENTES` (
  `id` int NOT NULL,
  `nome` text,
  `nome_ultimo` varchar(100) DEFAULT NULL,
  `nome_primeiro` varchar(100) DEFAULT NULL,
  `telefone` text,
  `endereco_pt1` varchar(255) DEFAULT NULL,
  `endereco_pt2` varchar(255) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `funcionario_id` int DEFAULT NULL,
  `limite_credito` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_DETALHES_PEDIDO`
--

CREATE TABLE `TB_DETALHES_PEDIDO` (
  `pedido_id` int NOT NULL,
  `produto_id` int NOT NULL,
  `quantidade_pedida` int DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `numero_linha_pedido` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_ESCRITORIOS`
--

CREATE TABLE `TB_ESCRITORIOS` (
  `id` int NOT NULL,
  `cidade` text,
  `phone` text,
  `endereco_pt1` text,
  `endereco_pt2` text,
  `estado` text,
  `pais` text,
  `codigo_postal` text,
  `territorio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_FUNCIONARIOS`
--

CREATE TABLE `TB_FUNCIONARIOS` (
  `id` int NOT NULL,
  `nome_ultimo` varchar(100) DEFAULT NULL,
  `nome_primeiro` varchar(100) DEFAULT NULL,
  `extensao` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `escritorio_id` int DEFAULT NULL,
  `relatorios_para_funcionario_id` int DEFAULT NULL,
  `trabalho` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_LINHAS_PRODUTOS`
--

CREATE TABLE `TB_LINHAS_PRODUTOS` (
  `id` int NOT NULL,
  `descricao` text,
  `descricao_html` longtext,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PAGAMENTOS`
--

CREATE TABLE `TB_PAGAMENTOS` (
  `id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `quantidade` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PEDIDOS`
--

CREATE TABLE `TB_PEDIDOS` (
  `id` int NOT NULL,
  `data_pedido` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `data_envio` date DEFAULT NULL,
  `status` text,
  `comentarios` text,
  `cliente_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PRODUTOS`
--

CREATE TABLE `TB_PRODUTOS` (
  `id` int NOT NULL,
  `nome` text,
  `linha_produto_id` int DEFAULT NULL,
  `escala` text,
  `fornecedor` text,
  `descricao` text,
  `quantidade_estoque` int DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `msrp` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcionario_id` (`funcionario_id`);

--
-- Índices de tabela `TB_DETALHES_PEDIDO`
--
ALTER TABLE `TB_DETALHES_PEDIDO`
  ADD PRIMARY KEY (`pedido_id`,`produto_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- Índices de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `escritorio_id` (`escritorio_id`),
  ADD KEY `relatorios_para_funcionario_id` (`relatorios_para_funcionario_id`);

--
-- Índices de tabela `TB_LINHAS_PRODUTOS`
--
ALTER TABLE `TB_LINHAS_PRODUTOS`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD PRIMARY KEY (`id`,`cliente_id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices de tabela `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linha_produto_id` (`linha_produto_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_ESCRITORIOS`
--
ALTER TABLE `TB_ESCRITORIOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_LINHAS_PRODUTOS`
--
ALTER TABLE `TB_LINHAS_PRODUTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD CONSTRAINT `TB_CLIENTES_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `TB_FUNCIONARIOS` (`id`);

--
-- Restrições para tabelas `TB_DETALHES_PEDIDO`
--
ALTER TABLE `TB_DETALHES_PEDIDO`
  ADD CONSTRAINT `TB_DETALHES_PEDIDO_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `TB_PEDIDOS` (`id`),
  ADD CONSTRAINT `TB_DETALHES_PEDIDO_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `TB_PRODUTOS` (`id`);

--
-- Restrições para tabelas `TB_FUNCIONARIOS`
--
ALTER TABLE `TB_FUNCIONARIOS`
  ADD CONSTRAINT `TB_FUNCIONARIOS_ibfk_1` FOREIGN KEY (`escritorio_id`) REFERENCES `TB_ESCRITORIOS` (`id`),
  ADD CONSTRAINT `TB_FUNCIONARIOS_ibfk_2` FOREIGN KEY (`relatorios_para_funcionario_id`) REFERENCES `TB_FUNCIONARIOS` (`id`);

--
-- Restrições para tabelas `TB_PAGAMENTOS`
--
ALTER TABLE `TB_PAGAMENTOS`
  ADD CONSTRAINT `TB_PAGAMENTOS_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `TB_CLIENTES` (`id`);

--
-- Restrições para tabelas `TB_PEDIDOS`
--
ALTER TABLE `TB_PEDIDOS`
  ADD CONSTRAINT `TB_PEDIDOS_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `TB_CLIENTES` (`id`);

--
-- Restrições para tabelas `TB_PRODUTOS`
--
ALTER TABLE `TB_PRODUTOS`
  ADD CONSTRAINT `TB_PRODUTOS_ibfk_1` FOREIGN KEY (`linha_produto_id`) REFERENCES `TB_LINHAS_PRODUTOS` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
