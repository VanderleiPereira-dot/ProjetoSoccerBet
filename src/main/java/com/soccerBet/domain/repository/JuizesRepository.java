package com.soccerBet.domain.repository;

import com.soccerBet.domain.entities.Juizes;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JuizesRepository extends JpaRepository<Juizes, Integer> {
}