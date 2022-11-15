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
@Table(name = "tb_Campeonatos")
public class Campeonatos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer id;

    @Column(name = "nome", length = 100)
    @NotEmpty(message = "{campo.nome.obrigatorio}")
    public String nome;

    public Paises Pais;

    @Column(name = "dta_Inicial")
    @NotEmpty(message = "{campo.data.obrigatoria}")
    public Date dataInicial;

    @Column(name = "dta_Final")
    public Date dataFinal;

    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    public String status;

    @Column(name = "dta_inclusao")
    @NotEmpty(message = "{campo.data.obrigatoria}")
    public Date dataInclusao;

    @Column(name = "user_inclusao",length = 30)
    @NotEmpty(message = "{campo.obrigatoria}")
    public String userInclusao;

}
