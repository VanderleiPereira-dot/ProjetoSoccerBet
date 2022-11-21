package com.soccerbet.service;

import com.soccerbet.domain.entities.Campeonatos;

import java.util.Optional;

public interface CampeonatoService {

    Optional<Campeonatos> obterCampeonatosPorId (Integer id);
    Optional<Campeonatos> obterCampeonatosPorNome (String nome);

}
