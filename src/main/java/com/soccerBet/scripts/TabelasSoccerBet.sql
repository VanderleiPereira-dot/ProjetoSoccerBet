INSERT INTO `soccerbet`.`tb_campeonatos`
(`id`,
`nome`,
`dta_inicio`,
`dta_termino`,
`id_pais`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{dta_inicio: }>,
<{dta_termino: }>,
<{id_pais: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_tecnicos`
(`id`,
`nome`,
`apelido`,
`dta_nascimento`,
`id_pais`,
`dta_Inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{apelido: }>,
<{dta_nascimento: }>,
<{id_pais: }>,
<{dta_Inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_cidades`
(`id`,
`nome`,
`uf`,
`regiao`,
`dta_inclusao`,
`user_Inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{uf: }>,
<{regiao: }>,
<{dta_inclusao: }>,
<{user_Inclusao: }>);

INSERT INTO `soccerbet`.`tb_divisao`
(`id`,
`nome`,
`id_pais`,
`id_uf`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{id_pais: }>,
<{id_uf: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_estadios`
(`id`,
`nome`,
`id_pais`,
`id_uf`,
`id_time`,
`qtd_max_torcedores`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{id_pais: }>,
<{id_uf: }>,
<{id_time: }>,
<{qtd_max_torcedores: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_jogadores`
(`id`,
`nome`,
`apelido`,
`dta_nascimento`,
`id_time_revelou`,
`dta_inlusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{apelido: }>,
<{dta_nascimento: }>,
<{id_time_revelou: }>,
<{dta_inlusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_jogos`
(`id`,
`id_time_mandante`,
`id_time_visitante`,
`dta_jogo`,
`gols_mandante`,
`gols_visitante`,
`id_juiz`,
`id_estadio`,
`id_campeonato`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{id_time_mandante: }>,
<{id_time_visitante: }>,
<{dta_jogo: }>,
<{gols_mandante: }>,
<{gols_visitante: }>,
<{id_juiz: }>,
<{id_estadio: }>,
<{id_campeonato: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_juizes`
(`id`,
`nome`,
`apelido`,
`dta_nascimento`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{apelido: }>,
<{dta_nascimento: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_paises`
(`id`,
`nome`,
`sigla`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{sigla: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_juizes`
(`id`,
`nome`,
`apelido`,
`dta_nascimento`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{apelido: }>,
<{dta_nascimento: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_times`
(`id`,
`nome`,
`id_divisao`,
`id_uf`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{id_divisao: }>,
<{id_uf: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_times_x_jogadores`
(`id`,
`id_time`,
`id_jogador`,
`dta_inicial_contrato`,
`dta_final_contrato`,
`posicao_joga`,
`qtd_gols_marcados`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{id_time: }>,
<{id_jogador: }>,
<{dta_inicial_contrato: }>,
<{dta_final_contrato: }>,
<{posicao_joga: }>,
<{qtd_gols_marcados: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_times_x_tecnicos`
(`id`,
`id_time`,
`id_tecnico`,
`dta_inicial_contrato`,
`dta_finall_contrato`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{id_time: }>,
<{id_tecnico: }>,
<{dta_inicial_contrato: }>,
<{dta_finall_contrato: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);

INSERT INTO `soccerbet`.`tb_unidade_federativa`
(`id`,
`nome`,
`sigla`,
`id_pais`,
`dta_inclusao`,
`user_inclusao`)
VALUES
(<{id: }>,
<{nome: }>,
<{sigla: }>,
<{id_pais: }>,
<{dta_inclusao: }>,
<{user_inclusao: }>);
