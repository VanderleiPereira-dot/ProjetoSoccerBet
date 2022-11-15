package com.soccerBet.domain.entities;

import java.util.ArrayList;
import java.util.List;

public class Config {

    public String nome;
    public int idade;
    public List<String> lista;
    public Cidade cidade;

    public Config() {
        cidade = new Cidade();
        lista = new ArrayList<>();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public List<String> getLista() {
        return lista;
    }

    public void setLista(List<String> lista) {
        this.lista = lista;
    }

    public Cidade getCidade() {
        return cidade;
    }

    public void setCidade(Cidade cidade) {
        this.cidade = cidade;
    }

}
