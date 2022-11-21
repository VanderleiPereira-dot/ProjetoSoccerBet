package com.soccerbet.domain.repository;

import com.soccerbet.domain.entities.Divisao;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface DivisaoRepository extends JpaRepository<Divisao, Integer> {

    Optional<Divisao> findByNome(String nome);

}