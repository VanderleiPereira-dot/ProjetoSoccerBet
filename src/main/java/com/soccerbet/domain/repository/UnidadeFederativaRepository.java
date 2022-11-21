package com.soccerbet.domain.repository;

import com.soccerbet.domain.entities.UnidadeFederativa;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface UnidadeFederativaRepository extends JpaRepository <UnidadeFederativa, Integer> {

    Optional<UnidadeFederativa> findByNome(String name);
}

