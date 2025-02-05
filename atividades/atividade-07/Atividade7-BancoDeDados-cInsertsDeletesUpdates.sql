-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 05/02/2025 às 17:52
-- Versão do servidor: 8.0.41
-- Versão do PHP: 8.2.27

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

--
-- Despejando dados para a tabela `TB_CLIENTES`
--

INSERT INTO `TB_CLIENTES` (`id`, `nome`, `nome_ultimo`, `nome_primeiro`, `telefone`, `endereco_pt1`, `endereco_pt2`, `cidade`, `estado`, `codigo_postal`, `pais`, `funcionario_id`, `limite_credito`) VALUES
(1, 'João Silva Comércio LTDA', 'Silva', 'João', '85998765432', 'Av. Beira-Mar, 1500', 'Sala 205', 'Fortaleza', 'CE', '60165-121', 'Brasil', 1, 50000),
(3, 'Pedro Automóveis', 'Almeida', 'Pedro', '31998543210', 'Av. do Contorno, 6500', 'Loja 12', 'Belo Horizonte', 'MG', '30110-929', 'Brasil', 3, 75000),
(4, 'Carla Moda Feminina e Masculina', 'Santos', 'Carla', '21998765432', 'Rua das Acácias, 100', 'Loja 3', 'Rio de Janeiro', 'RJ', '22640-100', 'Brasil', 4, 100000),
(5, 'Fernandes Supermercado', 'Fernandes', 'Ricardo', '71987432109', 'Av. Paralela, 1234', 'Centro Comercial', 'Salvador', 'BA', '41820-770', 'Brasil', 5, 100000),
(6, 'Oliveira Construções', 'Oliveira', 'Thiago', '41987654321', 'Rua XV de Novembro, 500', 'Sala 204', 'Curitiba', 'PR', '80420-090', 'Brasil', 6, 90000),
(7, 'Juliana Beauty Center', 'Mendes', 'Juliana', '81998765432', 'Rua Padre Carapuceiro, 777', 'Sala 303', 'Recife', 'PE', '51020-280', 'Brasil', 7, 45000),
(8, 'Tech Solutions LTDA', 'Costa', 'Mariana', '51998765432', 'Rua 24 de Outubro, 1111', 'Sala 304', 'Porto Alegre', 'RS', '90510-002', 'Brasil', 8, 150000),
(9, 'Lucas Informática', 'Pereira', 'Lucas', '85999876543', 'Av. Santos Dumont, 1592', 'Sala 503', 'Fortaleza', 'CE', '60140-160', 'Brasil', 1, 55000),
(10, 'Elo Comércio Internacional', 'Martins', 'Paula', '11988765432', 'Rua Gomes de Carvalho, 1507', '10º Andar', 'São Paulo', 'SP', '04547-005', 'Brasil', 2, 200000);

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
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `TB_CLIENTES`
--
ALTER TABLE `TB_CLIENTES`
  ADD CONSTRAINT `TB_CLIENTES_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `TB_FUNCIONARIOS` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
