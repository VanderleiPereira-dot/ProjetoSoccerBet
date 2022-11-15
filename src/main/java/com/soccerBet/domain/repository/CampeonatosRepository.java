package com.soccerBet.domain.repository;

import com.soccerBet.domain.entities.Campeonatos;
import com.soccerBet.domain.entities.UnidadeFederativa;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CampeonatosRepository extends JpaRepository<Campeonatos, Integer> {

    Optional<Campeonatos> findByName(String name);
}