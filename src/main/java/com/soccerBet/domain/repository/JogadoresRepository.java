package com.soccerBet.domain.repository;

import com.soccerBet.domain.entities.Jogadores;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface JogadoresRepository extends JpaRepository<Jogadores, Integer> {

    Optional<Jogadores> findByName(String name);
}