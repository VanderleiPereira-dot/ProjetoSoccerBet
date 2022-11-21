package com.soccerbet.domain.repository;

import com.soccerbet.domain.entities.Campeonatos;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CampeonatosRepository extends JpaRepository<Campeonatos, Integer> {

    Optional<Campeonatos> findByNome(String name);

}