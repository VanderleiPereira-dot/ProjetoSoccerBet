package com.soccerbet.rest.controller;


import com.soccerbet.domain.entities.Campeonatos;
import com.soccerbet.service.CampeonatoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/api/campeonatos")
@Api("Api Campeonatos")
public class CampeonatoController {

    private CampeonatoService campeonatoService;

    @GetMapping("{id}")
    @ApiOperation("Retornar Lista de Campeonato por Id")
    @ApiResponses({
            @ApiResponse(code = 200, message = "Campeonato encontrado"),
            @ApiResponse(code = 404, message = "Campeonato não encontrado para o ID informado")
    })
    public Campeonatos ObterCampeonatosPorId(@PathVariable Integer id) {
        return campeonatoService.obterCampeonatosPorId(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Campeonato não Encontrado"));
    }

    @GetMapping("{nome}")
    @ApiOperation("Retornar Lista de Campeonato por Nome")
    @ApiResponses({
            @ApiResponse(code = 200, message = "Campeonato encontrado"),
            @ApiResponse(code = 404, message = "Campeonato não encontrado para o Nome informado")
    })
    public Campeonatos ObterCampeonatosPorNome(@PathVariable String nome) {
        return campeonatoService.obterCampeonatosPorNome(nome)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Campeonato não Encontrado"));
    }
}
