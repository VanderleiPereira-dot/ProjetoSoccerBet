package com.soccerBet.domain.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "tb_Jogos")
public class Jogos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer id;

    @Column(name = "id_time_mandante")
    @NotEmpty(message = "{campo.obrigatorio}")
    public Times timeMandante;

    @Column(name = "id_time_visitante")
    @NotEmpty(message = "{campo.nome.obrigatorio}")
    public Times timeVisitante;

    @Column(name = "dta_jogo")
    public Date DataJogo;

    @Column(name = "gols_mandante")
    public Integer golsMandante;

    @Column(name = "gols_vistante")
    public Integer golsVisitante;

    @Column(name = "id_juiz")
    public Juizes juiz;

    @Column(name = "id_estadio")
    public Estadios estadio;

    @Column(name = "id_campeonato")
    public Campeonatos campeonato;

    @Column(name = "dta_inclusao")
    @NotEmpty(message = "{campo.data.obrigatoria}")
    public Date dataInclusao;

    @Column(name = "user_inclusao",length = 30)
    @NotEmpty(message = "{campo.obrigatoria}")
    public String userInclusao;
}
