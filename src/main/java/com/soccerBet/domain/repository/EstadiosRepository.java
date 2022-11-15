package com.soccerBet.domain.repository;

import com.soccerBet.domain.entities.Estadios;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface EstadiosRepository extends JpaRepository<Estadios, Integer> {

    Optional<Estadios> findByName(String name);
}