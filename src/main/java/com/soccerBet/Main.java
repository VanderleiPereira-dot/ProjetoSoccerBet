package com.soccerBet;

import com.soccerBet.domain.entities.Config;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import com.google.gson.Gson;

public class Main {
    public static void main(String[] args) throws IOException {

                String json
                        = String.join(" ",
                        Files.readAllLines(
                                Paths.get("c://Files//pessoas.json"),
                                StandardCharsets.UTF_8)
                );

                Config config = new Gson().fromJson(json, Config.class);

                System.out.println(config.getNome());
                System.out.println(config.getIdade());
                System.out.println(config.getLista());
                System.out.println("");
                System.out.println(config.getCidade().getNome());
                System.out.println(config.getCidade().getUf());
            }
}