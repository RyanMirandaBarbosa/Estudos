package com.example.projeto_2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/filmes")
public class FilmeController {
    List<Filme> filmes = new ArrayList<>(
            List.of(
                    new Filme("Avatar", "James Cameron"),
                    new Filme("Vingadores", "Irmãos Russos")
            )
    );

    @GetMapping
    public List<Filme> listar(){
        return filmes;
    }

    // JACKSON
    // Seraalization - objeto para json
    // Deserialization - jason para objeto

    @GetMapping("/favorito")
    public Filme favorito(){
        Filme filme = new Filme("Titanic", "James Cameron");
        return filme;
    }

    @GetMapping("/{indice}")
    public Filme indice(@PathVariable int indice){
        return filmes.get(indice);
    }

    // Crie um endpoint que receba o nome, diretor e salve na lista.
    // URI =/filmes/criar/
    @GetMapping("/criar/{nome}/{diretor}")
    public Filme adicionarFilme(@PathVariable String nome, @PathVariable String diretor){
        Filme filme = new Filme(nome, diretor);
        filmes.add(filme);
        return filme;
    }
}