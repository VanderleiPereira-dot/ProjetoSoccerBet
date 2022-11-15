package com.soccerBet.domain.repository;

import com.soccerBet.domain.entities.UnidadeFederativa;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface UnidadeFederativaRepository extends JpaRepository <UnidadeFederativa, Integer> {

    Optional<UnidadeFederativa> findByName(String name);
}

