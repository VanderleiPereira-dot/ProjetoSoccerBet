package com.soccerBet.domain.repository;

import com.soccerBet.domain.entities.Divisao;
import com.soccerBet.domain.entities.UnidadeFederativa;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DivisaoRepository extends JpaRepository<Divisao, Integer> {

    Optional<Divisao> findByName(String name);

}