package com.example.projeto_2;

public class Filme {
    private String nome;
    private String diretor;

    public Filme(){}

    public Filme(String nome, String diretor) {
        this.nome = nome;
        this.diretor = diretor;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDiretor() {
        return diretor;
    }

    public void setDiretor(String diretor) {
        this.diretor = diretor;
    }
}