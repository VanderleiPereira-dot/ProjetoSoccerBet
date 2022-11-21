create database soccerBet;

create user soccerBet;

CREATE TABLE `tb_times_x_tecnicos` (
  `id` int NOT NULL,
  `id_time` int NOT NULL,
  `id_tecnico` int NOT NULL,
  `dta_inicial_contrato` date DEFAULT NULL,
  `dta_finall_contrato` date DEFAULT NULL,
  `dta_inclusao` date NOT NULL,
  `user_inclusao` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TIMESTECNICOS_TECNICO_idx` (`id_tecnico`),
  KEY `FK_TIMESTECNICOS_TIMES_idx` (`id_time`),
  CONSTRAINT `FK_TIMESTECNICOS_TECNICO` FOREIGN KEY (`id_tecnico`) REFERENCES `tb_tecnicos` (`id`),
  CONSTRAINT `FK_TIMESTECNICOS_TIMES` FOREIGN KEY (`id_time`) REFERENCES `tb_times` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='cadastro de Times x Tecnicos	';

CREATE TABLE `tb_unidade_federativa` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `regiao` varchar(45) DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  `dta_inclusao` datetime NOT NULL,
  `user_inclusao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_UF_PAISES_idx` (`id_pais`),
  CONSTRAINT `FK_UF_PAISES` FOREIGN KEY (`id_pais`) REFERENCES `tb_paises` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COMMENT='Unidade Federativa Paises	';

CREATE TABLE `tb_cidades` (
  `id` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `uf` varchar(10) DEFAULT NULL,
  `regiao` varchar(30) DEFAULT NULL,
  `dta_inclusao` date DEFAULT NULL,
  `user_Inclusao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de Cidades	';

CREATE TABLE `tb_divisao` (
  `id` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `id_pais` int NOT NULL,
  `id_uf` int DEFAULT NULL,
  `dta_inclusao` datetime NOT NULL,
  `user_inclusao` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_DIVISAO+PAIS_idx` (`id_pais`),
  KEY `FK_DIVISAO_UF_idx` (`id_uf`),
  CONSTRAINT `FK_DIVISAO_PAIS` FOREIGN KEY (`id_pais`) REFERENCES `tb_paises` (`id`),
  CONSTRAINT `FK_DIVISAO_UF` FOREIGN KEY (`id_uf`) REFERENCES `tb_unidade_federativa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Divisao dos Campeonatos	';

CREATE TABLE `tb_estadios` (
  `id` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  `id_uf` int DEFAULT NULL,
  `id_time` int DEFAULT NULL,
  `qtd_max_torcedores` int DEFAULT NULL COMMENT 'Qta maxima de Torcedores',
  `dta_inclusao` datetime DEFAULT NULL,
  `user_inclusao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `id_pais_UNIQUE` (`id_pais`),
  KEY `FK_ESTADIO_UF_idx` (`id_uf`),
  KEY `FK_ESTADIO_TIME_idx` (`id_time`),
  KEY `FK_ESTADIO_PAISES_idx` (`id_pais`),
  CONSTRAINT `FK_ESTADIO_PAISES` FOREIGN KEY (`id_pais`) REFERENCES `tb_paises` (`id`),
  CONSTRAINT `FK_ESTADIO_TIME` FOREIGN KEY (`id_time`) REFERENCES `tb_times` (`id`),
  CONSTRAINT `FK_ESTADIO_UF` FOREIGN KEY (`id_uf`) REFERENCES `tb_unidade_federativa` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Nome dos estadios de Futebol		';

CREATE TABLE `tb_jogadores` (
  `id` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `apelido` varchar(50) DEFAULT NULL,
  `dta_nascimento` datetime DEFAULT NULL,
  `id_time_revelou` int DEFAULT NULL,
  `dta_inlusao` datetime DEFAULT NULL,
  `user_inclusao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `dta_nascimento_UNIQUE` (`dta_nascimento`),
  KEY `FK_JOGADORES_TIME_idx` (`id_time_revelou`),
  CONSTRAINT `FK_JOGADORES_TIME` FOREIGN KEY (`id_time_revelou`) REFERENCES `tb_times` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de Jogadores de Futebol	';

CREATE TABLE `tb_jogos` (
  `id` int NOT NULL,
  `rodada` int DEFAULT NULL,
  `id_time_mandante` int DEFAULT NULL,
  `id_time_visitante` int DEFAULT NULL,
  `dta_jogo` date DEFAULT NULL,
  `gols_mandante` int DEFAULT NULL,
  `gols_visitante` int DEFAULT NULL,
  `id_juiz` int DEFAULT NULL,
  `id_estadio` int DEFAULT NULL,
  `id_campeonato` int DEFAULT NULL,
  `dta_inclusao` date DEFAULT NULL,
  `user_inclusao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_time_mandante_UNIQUE` (`id_time_mandante`),
  UNIQUE KEY `id_time_visitante_UNIQUE` (`id_time_visitante`),
  UNIQUE KEY `id_campeonato_UNIQUE` (`id_campeonato`),
  KEY `FK_JOGOS_TIMEMANDANTE_idx` (`id_time_mandante`),
  KEY `FK_JOGOS_TIMEVISITANTE_idx` (`id_time_visitante`),
  KEY `FK_JOGOS_CAMPEONATO_idx` (`id_campeonato`),
  KEY `FK_JOGOS_JUIZ_idx` (`id_juiz`),
  KEY `FK_JOGOS_ESTADIO_idx` (`id_estadio`),
  CONSTRAINT `FK_JOGOS_ESTADIO` FOREIGN KEY (`id_estadio`) REFERENCES `tb_estadios` (`id`),
  CONSTRAINT `FK_JOGOS_JUIZ` FOREIGN KEY (`id_juiz`) REFERENCES `tb_juizes` (`id`),
  CONSTRAINT `FK_JOGOS_TIMEMANDANTE` FOREIGN KEY (`id_time_mandante`) REFERENCES `tb_times` (`id`),
  CONSTRAINT `FK_JOGOS_TIMEVISITANTE` FOREIGN KEY (`id_time_visitante`) REFERENCES `tb_times` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de Jogos do Campeonato	';

CREATE TABLE `tb_juizes` (
  `id` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `apelido` varchar(30) DEFAULT NULL,
  `dta_nascimento` date DEFAULT NULL,
  `dta_inclusao` date DEFAULT NULL,
  `user_inclusao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='tabela de Juizes		';

CREATE TABLE `tb_paises` (
  `id` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `sigla` varchar(15) DEFAULT NULL,
  `dta_inclusao` date NOT NULL,
  `user_inclusao` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de Paiss	';

CREATE TABLE `tb_tecnicos` (
  `id` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `apelido` varchar(50) DEFAULT NULL,
  `dta_nascimento` datetime DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  `dta_Inclusao` datetime DEFAULT NULL,
  `user_inclusao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `dta_nascimento_UNIQUE` (`dta_nascimento`),
  KEY `FK_TECNICOS_PAISES_idx` (`id_pais`),
  CONSTRAINT `FK_TECNICOS_PAISES` FOREIGN KEY (`id_pais`) REFERENCES `tb_paises` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabelas de Tecnicos dos Times de Futebol	';

CREATE TABLE `tb_times` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_divisao` int NOT NULL,
  `id_uf` int DEFAULT NULL,
  `dta_inclusao` datetime NOT NULL,
  `user_inclusao` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TIMES_DIVISAO_idx` (`id_divisao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Times de Futebol	';

CREATE TABLE `tb_times_x_jogadores` (
  `id` int NOT NULL,
  `id_time` int DEFAULT NULL,
  `id_jogador` int DEFAULT NULL,
  `dta_inicial_contrato` date DEFAULT NULL,
  `dta_final_contrato` date DEFAULT NULL,
  `posicao_joga` varchar(45) DEFAULT NULL COMMENT 'Posição que joga no time',
  `qtd_gols_marcados` int DEFAULT NULL,
  `dta_inclusao` date DEFAULT NULL,
  `user_inclusao` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TIMESJOGADOR_TIME_idx` (`id_jogador`),
  KEY `FK_TIMEJOGADOR_TIME_idx` (`id_time`),
  CONSTRAINT `FK_TIMEJOGADOR_JOGADOR` FOREIGN KEY (`id_jogador`) REFERENCES `tb_jogadores` (`id`),
  CONSTRAINT `FK_TIMEJOGADOR_TIME` FOREIGN KEY (`id_time`) REFERENCES `tb_times` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cadastro de jogoreesdos times';

CREATE TABLE `tb_campeonatos` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dta_inicio` date NOT NULL,
  `dta_termino` date NOT NULL,
  `id_pais` int DEFAULT NULL,
  `dta_inclusao` datetime NOT NULL,
  `user_inclusao` varchar(30) NOT NULL,
  KEY `FK_PAISES_idx` (`id_pais`),
  CONSTRAINT `FK_PAISES` FOREIGN KEY (`id_pais`) REFERENCES `tb_paises` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabelsa de Campeonatos de Futebol';
