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
@Table(name = "tb_UnidadesFederativas")
public class UnidadeFederativa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer id;

    @Column(name = "nome", length = 100)
    @NotEmpty(message = "{campo.nome.obrigatorio}")
    public String nome;

    @Column(name = "sigla", length = 10)
    @NotEmpty(message = "{campo.obrigatorio}")
    public String uf;

    @Column(name = "id_pais")
    public Paises paises;

    @Column(name = "dta_inclusao")
    @NotEmpty(message = "{campo.data.obrigatoria}")
    public Date dataInclusao;

    @Column(name = "user_inclusao",length = 30)
    @NotEmpty(message = "{campo.obrigatoria}")
    public String userInclusao;

}
