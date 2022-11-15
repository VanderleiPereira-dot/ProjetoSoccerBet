package com.soccerBet.domain.repository;

import com.soccerBet.domain.entities.Cidade;
import com.soccerBet.domain.entities.UnidadeFederativa;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CidadeRepository extends JpaRepository<Cidade, Integer> {

    Optional<Cidade> findByName(String name);
}