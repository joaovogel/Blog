-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Mar-2020 às 15:22
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hanimes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animacao`
--

CREATE TABLE `animacao` (
  `id` int(11) NOT NULL,
  `temporada` int(11) NOT NULL,
  `episodios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`id`, `nota`, `descricao`) VALUES
(1, 1, 'mt, mt ruim'),
(2, 2, 'ruim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `id_user` int(11) NOT NULL,
  `id_obra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitura`
--

CREATE TABLE `leitura` (
  `id` int(11) NOT NULL,
  `capitulos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra`
--

CREATE TABLE `obra` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(2000) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `obra`
--

INSERT INTO `obra` (`id`, `nome`, `descricao`, `autor`, `tipo`) VALUES
(1, 'The King’s Avatar', 'Considerado como um pioneiro e jogador profissional de nível superior no jogo multiplayer online Glory, Ye Xiu é apelidado de “Deus da batalha” por suas habilidades e contribuições para o jogo ao longo dos anos. No entanto, quando forçado a se aposentar da equipe e deixar sua carreira de jogo para trás, ele encontra trabalho em um cybercafé próximo. Lá, quando Glory lança seu décimo servidor, ele se joga novamente no jogo usando um novo personagem chamado “Lord Grim”.', '', 1),
(2, 'Berserk', 'Gatts, conhecido como o Espadachim Negro, procura refúgio das forças demoníacas que o perseguiram a ele e à sua mulher, bem como vingar-se contra o homem que o marcou como um sacrifício profano. Auxiliado unicamente pela sua força sobre-humana, as suas habilidades e a sua espada, Gatts deverá lutar contra o seu maldito destino com uma raiva que poderá afasta-lo de sua humanidade e de tudo o que ama, e deseja proteger.', '', 2),
(3, 'Zhan Long', 'Li Xao Yao deixou a S.W.A.T para se tornar um simples segurança, durante o trabalho, ele entrou em uma sala VIP por acidente e encontrou Lin Wan Er em meio a uma troca de roupas. Como vingança, ela o levou em um passeio e o chutou para fora do carro. Depois de horas de caminhada quando finalmente conseguiu chegar em casa só para ser despejado e chutado novamente. Mas logo em seguida, ele recebeu uma oferta de seu antigo supervisor para se tornar o guarda-costas da filha do presidente do grupo de Tian Xi tanto no jogo virtual quanto na realidade. O que Li Xao Yao não sabia é quem realmente era essa garota...', '', 3),
(4, 'Tales of Demons and Gods', 'Nie Li, o mais poderoso Espiritualista Demoníaco e estando no topo do mundo marcial, perde sua vida durante a batalha com o Imperador Sábio e as seis bestas de nível divino, e sua alma volta ao passado para quando ele tinha 13 anos. Embora ele seja o mais fraco em sua classe, com o talento mais baixo no reino da alma Vermelho – o mais fraco dos reinos – com a ajuda de seu vasto conhecimento acumulado na sua vida passada, cresce mais rápido do que todos. Agora, ele irá tentar proteger a cidade que no futuro será invadida pelas bestas e que acabou sendo destruída, assim como sua amada, seus amigos e sua família que morreram pelo ataque das mesmas, e destruir a família Sagrada que abandonaram seus deveres e traíram a cidade em sua vida passada.', '', 4),
(5, 'Solo Leveling', 'Dez anos atrás, depois do \"Portal\" que conecta o mundo real com um mundo de monstros se abriu, algumas pessoas comuns receberam o poder de caçar os monstros do portal. Eles são conhecidos como caçadores. Porém, nem todos os caçadores são fortes. Meu nome é Sung Jin-Woo, um caçador de rank E. Eu sou alguém que tem que arriscar a própria vida nas dungeons mais fracas, \"O mais fraco do mundo\". Sem ter nenhuma habilidade à disposição, eu mal consigo dinheiro nas dungeons de baixo nível... Ao menos até eu encontrar uma dungeon escondida com a maior dificuldade dentro do Rank D! No fim, enquanto aceitava minha morte, eu ganhei um novo poder...', '', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra_avaliacao`
--

CREATE TABLE `obra_avaliacao` (
  `id_obra` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_avaliacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra_genero`
--

CREATE TABLE `obra_genero` (
  `id_obra` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_obra`
--

CREATE TABLE `tipo_obra` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `descricao` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_obra`
--

INSERT INTO `tipo_obra` (`id`, `nome`, `descricao`) VALUES
(1, 'Anime', 'Animção'),
(2, 'Mangá', '\"Quadrinhos\" japoneses'),
(3, 'Novel', '\"Livro sem imagens\"'),
(4, 'Manhua', 'Versão chinesa do mangá'),
(5, 'Manhwa', 'Versão coreana do mangá');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `tipo`, `nome`, `email`, `senha`) VALUES
(1, 1, 'Joao', 'joao@gmail', '$2y$10$vUOoeetwIbPzh.x3o3xES.C0/8B6R1U2U/4pKuMfbfgCsGP0XP.2C'),
(2, 1, 'Henrique', 'henrique@gmail.com', '$2y$10$pWI2UMCQAb/z0YqklyVFhewhAuI1eo/zIxSKlJWP36OpOCzNBwIhm');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animacao`
--
ALTER TABLE `animacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id_user`,`id_obra`),
  ADD KEY `favoritos_ibfk_1` (`id_obra`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `leitura`
--
ALTER TABLE `leitura`
  ADD KEY `id` (`id`);

--
-- Índices para tabela `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `obra_avaliacao`
--
ALTER TABLE `obra_avaliacao`
  ADD PRIMARY KEY (`id_obra`,`id_user`,`id_avaliacao`),
  ADD KEY `id_avaliacao` (`id_avaliacao`),
  ADD KEY `id_user` (`id_user`);

--
-- Índices para tabela `obra_genero`
--
ALTER TABLE `obra_genero`
  ADD PRIMARY KEY (`id_obra`,`id_genero`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Índices para tabela `tipo_obra`
--
ALTER TABLE `tipo_obra`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `animacao`
--
ALTER TABLE `animacao`
  ADD CONSTRAINT `animacao_ibfk_1` FOREIGN KEY (`id`) REFERENCES `obra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `leitura`
--
ALTER TABLE `leitura`
  ADD CONSTRAINT `leitura_ibfk_1` FOREIGN KEY (`id`) REFERENCES `obra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `obra_avaliacao`
--
ALTER TABLE `obra_avaliacao`
  ADD CONSTRAINT `obra_avaliacao_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obra_avaliacao_ibfk_2` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obra_avaliacao_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `obra_genero`
--
ALTER TABLE `obra_genero`
  ADD CONSTRAINT `obra_genero_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obra_genero_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
