package com.soccerbet.domain.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
@Table(name = "tb_Times_x_Jogadores")
public class TimesxJogadores {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer id;

    @ManyToOne
    @JoinColumn(name = "id_time")@JsonIgnore
    public Times time;

    @ManyToOne
    @JoinColumn(name = "id_jogador")@JsonIgnore
    public Jogadores jogador;

    @Column(name = "Dta_inicial_contarto")
    public Date DataInicialContrato;

    @Column(name = "Dta_final_Contrato")
    public Date DataFinalContrato;

    @Column(name = "Qtd_Gols_Marcados")
    public Integer qtdGols;

    @Column(name = "dta_inclusao")
    @NotEmpty(message = "{campo.data.obrigatoria}")
    public Date dataInclusao;

    @Column(name = "user_inclusao",length = 30)
    @NotEmpty(message = "{campo.obrigatoria}")
    public String userInclusao;

}
