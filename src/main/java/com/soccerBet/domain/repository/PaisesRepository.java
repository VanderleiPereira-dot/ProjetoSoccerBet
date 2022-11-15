package com.soccerBet.domain.repository;

import com.soccerBet.domain.entities.Paises;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaisesRepository extends JpaRepository<Paises, Integer> {
}