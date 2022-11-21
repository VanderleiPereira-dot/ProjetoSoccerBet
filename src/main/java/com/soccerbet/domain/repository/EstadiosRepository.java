package com.soccerbet.domain.repository;

import com.soccerbet.domain.entities.Estadios;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface EstadiosRepository extends JpaRepository<Estadios, Integer> {

    Optional<Estadios> findByNome(String nome);
}