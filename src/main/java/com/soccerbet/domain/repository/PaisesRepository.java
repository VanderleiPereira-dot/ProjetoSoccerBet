package com.soccerbet.domain.repository;

import com.soccerbet.domain.entities.Paises;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface PaisesRepository extends JpaRepository<Paises, Integer> {

    Optional<Paises> findByNome(String Nome);
}