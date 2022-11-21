package com.soccerbet.service.impl;

import com.soccerbet.domain.entities.Campeonatos;
import com.soccerbet.domain.repository.CampeonatosRepository;
import com.soccerbet.service.CampeonatoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CampeonatoImpl implements CampeonatoService {

    private final CampeonatosRepository campeonatosRepository;

    @Override
    public Optional<Campeonatos> obterCampeonatosPorNome(String nome) {
        return campeonatosRepository.findByNome(nome);
    }

    @Override
    public Optional<Campeonatos> obterCampeonatosPorId(Integer id) {
        return campeonatosRepository.findById(id);
    }
}

