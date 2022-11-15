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
@Table(name = "tb_Times_x_Tecnicos")
public class TimesxTecnicos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public Integer id;

    @Column(name = "id_time")
    public Times times;

    @Column(name = "id_tecnico")
    public Tecnicos tecnicos;

    @Column(name = "Dta_Inicial_Contrato")
    public Date DataInicialContrato;

    @Column(name = "Dta_Final_Contrato")
    public Date DataFinalContrato;

    @Column(name = "dta_inclusao")
    @NotEmpty(message = "{campo.data.obrigatoria}")
    public Date dataInclusao;

    @Column(name = "user_inclusao",length = 30)
    @NotEmpty(message = "{campo.obrigatoria}")
    public String userInclusao;
}
