package com.soccerbet.domain.repository;

import com.soccerbet.domain.entities.Jogadores;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface JogadoresRepository extends JpaRepository<Jogadores, Integer> {

    Optional<Jogadores> findByNome(String nome);
}