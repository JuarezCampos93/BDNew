-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 10-Jan-2023 às 13:46
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academiabd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessorio`
--

DROP TABLE IF EXISTS `acessorio`;
CREATE TABLE IF NOT EXISTS `acessorio` (
  `id_acessorio` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_acessorio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `acessorio`
--

INSERT INTO `acessorio` (`id_acessorio`, `nome`) VALUES
(1, 'caneleira '),
(2, 'colchonete'),
(3, 'luva'),
(4, 'cinto'),
(5, 'tala');

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int NOT NULL,
  `dia` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `informacoes` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `dia`, `informacoes`) VALUES
(1, '02/01/2023', 'realizar organizacao dos acessorios '),
(2, '02/01/2023', 'horario de 10h; realizar montagem de ficha'),
(3, '27/12/2022', 'coletar dados de evolucao de alunos'),
(4, '27/12/2022', 'realizar vistoria de aparelhos'),
(5, '15/11/2022', 'preparar aula de zumba das 18h'),
(6, '15/11/2022', 'realizar acompanhamento da empresa de manutencao nos aparelhos da academia'),
(7, '15/11/2022', 'lancar fichas no sistema'),
(8, '30/12/2022', 'atualizar lista de musicas da academia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `id_pessoa` int NOT NULL,
  `peso` int NOT NULL,
  `altura` int NOT NULL,
  `numero_ficha` int DEFAULT NULL,
  `cref` int DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`),
  KEY `id_pessoa_fk` (`id_pessoa`),
  KEY `cref_fk` (`cref`),
  KEY `numero_ficha_fk` (`numero_ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_pessoa`, `peso`, `altura`, `numero_ficha`, `cref`) VALUES
(1, 81, 179, 1, NULL),
(3, 98, 183, 2, 115),
(4, 69, 168, NULL, NULL),
(5, 72, 179, 3, 115),
(8, 71, 170, NULL, NULL),
(9, 61, 166, NULL, NULL),
(10, 77, 181, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aula`
--

DROP TABLE IF EXISTS `aula`;
CREATE TABLE IF NOT EXISTS `aula` (
  `id_aula` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `vagas` int NOT NULL,
  `professor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aula`
--

INSERT INTO `aula` (`id_aula`, `nome`, `vagas`, `professor`) VALUES
(1, 'spinning', 25, 'Marcos'),
(2, 'zumba', 30, 'Mariana'),
(3, 'judo', 10, 'Lucas'),
(4, 'muay thai', 15, 'Lucas'),
(5, 'corrida', 10, 'Mariana');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
CREATE TABLE IF NOT EXISTS `cadastro` (
  `id_cadastro` int NOT NULL AUTO_INCREMENT,
  `aluno_cadastro` int DEFAULT NULL,
  `professor_cadastro` int DEFAULT NULL,
  `personal_cadastro` int DEFAULT NULL,
  `situacao` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_cadastro`),
  KEY `aluno_cadastro_fk` (`aluno_cadastro`),
  KEY `professor_ cadastro_fk` (`professor_cadastro`),
  KEY `personal_cadastro_fk` (`personal_cadastro`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id_cadastro`, `aluno_cadastro`, `professor_cadastro`, `personal_cadastro`, `situacao`) VALUES
(1, 1, NULL, NULL, 'ativo'),
(2, 3, NULL, NULL, 'ativo'),
(3, 4, NULL, NULL, 'ativo'),
(4, 5, NULL, NULL, 'ativo'),
(5, 8, NULL, NULL, 'ativo'),
(6, 9, NULL, NULL, 'inativo'),
(7, 10, NULL, NULL, 'ativo'),
(8, NULL, NULL, 114, 'ativo'),
(9, NULL, NULL, 115, 'ativo'),
(10, NULL, NULL, 116, 'inativo'),
(11, NULL, 2, NULL, 'ativo'),
(12, NULL, 6, NULL, 'ativo'),
(13, NULL, 7, NULL, 'ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa_manutencao`
--

DROP TABLE IF EXISTS `empresa_manutencao`;
CREATE TABLE IF NOT EXISTS `empresa_manutencao` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_gerencia` int NOT NULL,
  PRIMARY KEY (`id_empresa`),
  KEY `id_gerencia_fk` (`id_gerencia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `empresa_manutencao`
--

INSERT INTO `empresa_manutencao` (`id_empresa`, `nome`, `id_gerencia`) VALUES
(1, 'Manutencao_Total', 1),
(2, 'Academia_Legal', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estacionamento`
--

DROP TABLE IF EXISTS `estacionamento`;
CREATE TABLE IF NOT EXISTS `estacionamento` (
  `id_vaga` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_vaga`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estacionamento`
--

INSERT INTO `estacionamento` (`id_vaga`, `tipo`) VALUES
(1, 'Normal'),
(2, 'Idoso'),
(3, 'Professor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio`
--

DROP TABLE IF EXISTS `exercicio`;
CREATE TABLE IF NOT EXISTS `exercicio` (
  `id_exercicio` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `series` int DEFAULT NULL,
  `repeticoes` int DEFAULT NULL,
  PRIMARY KEY (`id_exercicio`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `exercicio`
--

INSERT INTO `exercicio` (`id_exercicio`, `nome`, `series`, `repeticoes`) VALUES
(1, 'supino_barra', 3, 12),
(2, 'agachamento', 3, 15),
(3, 'elevacao_hater', 3, 10),
(4, 'triceps_corda', 3, 15),
(5, 'cadeira_extensora', 3, 12),
(6, 'flexao', 3, NULL),
(7, 'abdominal', 5, 15),
(8, 'remada', 3, 12),
(9, 'puxada_alta', 3, 15),
(10, 'pular_corda', 5, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio_da_ficha`
--

DROP TABLE IF EXISTS `exercicio_da_ficha`;
CREATE TABLE IF NOT EXISTS `exercicio_da_ficha` (
  `id_exercicio` int NOT NULL,
  `numero_ficha` int NOT NULL,
  `descricao` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_exercicio`,`numero_ficha`),
  KEY `numero_ficha_fk` (`numero_ficha`),
  KEY `id_exercicio` (`id_exercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `exercicio_da_ficha`
--

INSERT INTO `exercicio_da_ficha` (`id_exercicio`, `numero_ficha`, `descricao`) VALUES
(1, 1, 'descer a barra ate o peitoral de forma lenta'),
(2, 2, 'manter a coluna reta, joelhos da direcao do ombro e calcanhar apoiado no chao'),
(3, 1, 'elevar ate a altura do ombro'),
(4, 1, 'extensao total do triceps sem mexer o cotovelo'),
(5, 3, 'esticar as pernas e segurar por 3 segundos antes de voltar'),
(6, 2, 'livre, 1 minuto de execucao e 30\' de descanso'),
(6, 3, 'livre, 1 minuto de execucao e 30\' de descanso'),
(8, 3, 'estufar o peito, coluna reta e puxar ate o abdomen '),
(9, 1, 'estufar o peito e puxar ate a altura do peitoral'),
(10, 1, 'pular corda por 1 minuto, descanso de 30 segundos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ficha`
--

DROP TABLE IF EXISTS `ficha`;
CREATE TABLE IF NOT EXISTS `ficha` (
  `id_ficha` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` int DEFAULT NULL,
  `nome_professor` int DEFAULT NULL,
  `nome_personal` int DEFAULT NULL,
  `data_inicio` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duracao` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_ficha`),
  KEY `nome_aluno_fk` (`nome_aluno`),
  KEY `nome_professor_fk` (`nome_professor`),
  KEY `nome_personal_fk` (`nome_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ficha`
--

INSERT INTO `ficha` (`id_ficha`, `nome_aluno`, `nome_professor`, `nome_personal`, `data_inicio`, `duracao`) VALUES
(1, 1, 2, NULL, '27/05/2022', NULL),
(2, 3, NULL, 115, '10/12/2022', NULL),
(3, 5, NULL, 115, '21/11/2022', '3 meses');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gerencia`
--

DROP TABLE IF EXISTS `gerencia`;
CREATE TABLE IF NOT EXISTS `gerencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `gerencia`
--

INSERT INTO `gerencia` (`id`, `nome`) VALUES
(1, 'Waldemar'),
(2, 'Lunara');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manutenção`
--

DROP TABLE IF EXISTS `manutenção`;
CREATE TABLE IF NOT EXISTS `manutenção` (
  `id_empresa` int NOT NULL,
  `id_equipamento` int NOT NULL,
  `servico` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_empresa`,`id_equipamento`),
  KEY `id_empresa_fk` (`id_empresa`),
  KEY `id_equipamento_manutencao_fk` (`id_equipamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `manutenção`
--

INSERT INTO `manutenção` (`id_empresa`, `id_equipamento`, `servico`) VALUES
(1, 3, 'troca de roldanas '),
(1, 5, 'pintura do equipamento'),
(1, 6, 'troca do estofado do banco'),
(2, 1, 'reparacao do cabo de aco'),
(2, 5, 'troca do estofado da mesa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `maquinario`
--

DROP TABLE IF EXISTS `maquinario`;
CREATE TABLE IF NOT EXISTS `maquinario` (
  `id_maquinario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `capacidade` int NOT NULL,
  `musculo_trabalhado` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `ultima_manutencao` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_maquinario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `maquinario`
--

INSERT INTO `maquinario` (`id_maquinario`, `nome`, `capacidade`, `musculo_trabalhado`, `ultima_manutencao`) VALUES
(1, 'crossover', 200, 'diversos', ''),
(2, 'supino', 300, 'peito', '20/12/2022'),
(3, 'leg_press', 500, 'quadriceps', '20/12/2022'),
(4, 'cadeira_extensora', 10, 'quadriceps', '20/12/2022'),
(5, 'mesa_flexora', 12, 'quadriceps', '15/11/2022'),
(6, 'banco_ajustavel', 0, '', '15/11/2022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificao`
--

DROP TABLE IF EXISTS `notificao`;
CREATE TABLE IF NOT EXISTS `notificao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_professor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_professor` (`id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `notificao`
--

INSERT INTO `notificao` (`id`, `descricao`, `id_professor`) VALUES
(1, 'aparelho de peito interditado', 2),
(2, 'aparelho de peito liberado', 6),
(3, 'sala 2 interditada para reforma', 6),
(4, 'sala 3 fechada para reuniao ', 7),
(6, 'academia fechada para jogo do brasil no dia 05/12  de 15h as 18:30h', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal`
--

DROP TABLE IF EXISTS `personal`;
CREATE TABLE IF NOT EXISTS `personal` (
  `cref` int NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `numero_ficha` int DEFAULT NULL,
  PRIMARY KEY (`cref`),
  KEY `numero_ficha_fk` (`numero_ficha`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `personal`
--

INSERT INTO `personal` (`cref`, `nome`, `numero_ficha`) VALUES
(114, 'Luana', NULL),
(115, 'Lauro', NULL),
(116, 'Mateus', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id_pessoa` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `idade` int NOT NULL,
  `telefone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rua` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bairro` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cpf` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `id_estacionamento` int DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `id_estacionamento_fk` (`id_estacionamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id_pessoa`, `nome`, `idade`, `telefone`, `rua`, `bairro`, `cpf`, `id_estacionamento`) VALUES
(1, 'Carlos', 55, '3232323232', 'Guacui', 'Sao Mateus', '11111111111', NULL),
(2, 'Lucas', 23, '3232323233', 'Sao Mateus', 'Sao Mateus', '11111111112', NULL),
(3, 'Valter', 36, '3232123456', 'Sao Mateus', 'Sao Mateus', '11111111113', 1),
(4, 'Maria', 28, '3232323234', 'Avenida Rio Branco', 'Centro', '11111111114', NULL),
(5, 'Marcelo', 34, '3232154789', 'Sao Mateus', 'Sao Mateus', '11111111110', NULL),
(6, 'Mariana', 29, '3232325896', 'Avenida Rio Branco', 'Centro', '11111111116', 3),
(7, 'Marcos', 0, '3235625469', 'Borges Medeiros', 'Nova Era', '11111111117', 3),
(8, 'Vera', 68, '3232525469', 'Alberto Leão', 'Marilandia', '11111111118', 2),
(9, 'Luciana', 22, '3232325469', 'Alameda', 'Centro', '11111111115', 1),
(10, 'Adriano', 75, '3232525469', 'Vieria Pena', 'Mundo Novo', '11111111119', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

DROP TABLE IF EXISTS `professor`;
CREATE TABLE IF NOT EXISTS `professor` (
  `id_pessoa` int NOT NULL,
  `cref` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_agenda` int DEFAULT NULL,
  `numero_ficha` int DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`),
  KEY `numero_ficha_fk` (`numero_ficha`),
  KEY `id_pessoa_fk` (`id_pessoa`),
  KEY `id_agenda` (`cref`),
  KEY `id_agenda_fk` (`id_agenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id_pessoa`, `cref`, `id_agenda`, `numero_ficha`) VALUES
(2, '111', 2, 1),
(6, '112', 5, NULL),
(7, '113', 8, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva_sala`
--

DROP TABLE IF EXISTS `reserva_sala`;
CREATE TABLE IF NOT EXISTS `reserva_sala` (
  `numero_sala` int NOT NULL,
  `id_professor` int NOT NULL,
  `disponibilidade` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`numero_sala`,`id_professor`),
  KEY `numero_sala_reserva_fk` (`numero_sala`),
  KEY `id_professor_reserva_fk` (`id_professor`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `reserva_sala`
--

INSERT INTO `reserva_sala` (`numero_sala`, `id_professor`, `disponibilidade`) VALUES
(1, 6, 'sim'),
(2, 6, 'sim'),
(3, 2, 'sim'),
(4, 2, 'sim'),
(5, 7, 'sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

DROP TABLE IF EXISTS `sala`;
CREATE TABLE IF NOT EXISTS `sala` (
  `numero` int NOT NULL AUTO_INCREMENT,
  `capacidade` int NOT NULL,
  `cap_aparelhos` int DEFAULT NULL,
  `id_maquinario` int DEFAULT NULL,
  `id_acessorio` int DEFAULT NULL,
  `id_aula` int DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `id_maquinario_fk` (`id_maquinario`),
  KEY `id_aula_fk` (`id_aula`),
  KEY `id_acessorio_sala_fk` (`id_acessorio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `sala`
--

INSERT INTO `sala` (`numero`, `capacidade`, `cap_aparelhos`, `id_maquinario`, `id_acessorio`, `id_aula`) VALUES
(1, 50, NULL, NULL, NULL, 2),
(2, 40, NULL, NULL, NULL, 1),
(3, 25, 10, 1, 4, NULL),
(4, 50, 10, 5, 1, NULL),
(5, 12, NULL, NULL, NULL, 3);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `cref_fk` FOREIGN KEY (`cref`) REFERENCES `personal` (`cref`),
  ADD CONSTRAINT `id_pessoa_fk` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  ADD CONSTRAINT `numero_ficha_aluno_fk` FOREIGN KEY (`numero_ficha`) REFERENCES `ficha` (`id_ficha`);

--
-- Limitadores para a tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD CONSTRAINT `aluno_cadastro_fk` FOREIGN KEY (`aluno_cadastro`) REFERENCES `aluno` (`id_pessoa`),
  ADD CONSTRAINT `personal_cadastro_fk` FOREIGN KEY (`personal_cadastro`) REFERENCES `personal` (`cref`),
  ADD CONSTRAINT `professor_cadastro_fk` FOREIGN KEY (`professor_cadastro`) REFERENCES `professor` (`id_pessoa`);

--
-- Limitadores para a tabela `empresa_manutencao`
--
ALTER TABLE `empresa_manutencao`
  ADD CONSTRAINT `id_gerencia_fk` FOREIGN KEY (`id_gerencia`) REFERENCES `gerencia` (`id`);

--
-- Limitadores para a tabela `exercicio_da_ficha`
--
ALTER TABLE `exercicio_da_ficha`
  ADD CONSTRAINT `id_exercicio_fk` FOREIGN KEY (`id_exercicio`) REFERENCES `exercicio` (`id_exercicio`),
  ADD CONSTRAINT `numero_ficha__exercicio_fk` FOREIGN KEY (`numero_ficha`) REFERENCES `ficha` (`id_ficha`);

--
-- Limitadores para a tabela `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `nome_aluno_ficha_fk` FOREIGN KEY (`nome_aluno`) REFERENCES `aluno` (`id_pessoa`),
  ADD CONSTRAINT `nome_personal_ficha_fk` FOREIGN KEY (`nome_personal`) REFERENCES `personal` (`cref`),
  ADD CONSTRAINT `nome_professor_ficha_fk` FOREIGN KEY (`nome_professor`) REFERENCES `professor` (`id_pessoa`);

--
-- Limitadores para a tabela `manutenção`
--
ALTER TABLE `manutenção`
  ADD CONSTRAINT `id_empresa_fk` FOREIGN KEY (`id_empresa`) REFERENCES `empresa_manutencao` (`id_empresa`),
  ADD CONSTRAINT `id_equipamento_manutencao_fk` FOREIGN KEY (`id_equipamento`) REFERENCES `maquinario` (`id_maquinario`);

--
-- Limitadores para a tabela `notificao`
--
ALTER TABLE `notificao`
  ADD CONSTRAINT `id_professor_fk` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_pessoa`);

--
-- Limitadores para a tabela `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `numero_ficha_fk` FOREIGN KEY (`numero_ficha`) REFERENCES `ficha` (`id_ficha`);

--
-- Limitadores para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `id_estacionamento_fk` FOREIGN KEY (`id_estacionamento`) REFERENCES `estacionamento` (`id_vaga`);

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `id_agenda_fk` FOREIGN KEY (`id_agenda`) REFERENCES `agenda` (`id_agenda`),
  ADD CONSTRAINT `id_pessoa_professor_fk` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  ADD CONSTRAINT `numero_ficha_professor_fk` FOREIGN KEY (`numero_ficha`) REFERENCES `ficha` (`id_ficha`);

--
-- Limitadores para a tabela `reserva_sala`
--
ALTER TABLE `reserva_sala`
  ADD CONSTRAINT `id_professor_reserva_fk` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_pessoa`),
  ADD CONSTRAINT `numero_sala_reserva_fk` FOREIGN KEY (`numero_sala`) REFERENCES `sala` (`numero`);

--
-- Limitadores para a tabela `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `id_acessorio_sala_fk` FOREIGN KEY (`id_acessorio`) REFERENCES `acessorio` (`id_acessorio`),
  ADD CONSTRAINT `id_aula_fk` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id_aula`),
  ADD CONSTRAINT `id_maquinario_fk` FOREIGN KEY (`id_maquinario`) REFERENCES `maquinario` (`id_maquinario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
