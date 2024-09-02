package com.example.projeto_2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/*
@Component
@Controller
@RestController
@Service
@Repository
@Configuration

Componentes de responsabilidade do spring
 */

// URL = http://localhost:8080
@RestController
@RequestMapping("/frases")
public class FraseController {

    // URI = / - barra inicial (não programar no barra /)
    @GetMapping
    public String ola(){
        return "Olá";
    }

    // url tudo
    // urn local host
    // uri frases/alguma-coisa


    @GetMapping("/mundo-do-sexo")
    public String ola2(){
        return "Seja bem vindo ao mundo do sexo";
    }

    @GetMapping("/personalizada-nome/{nome}/{sobrenome}")
    public String nome(@PathVariable String nome, @PathVariable String sobrenome){
        return "Bem vindo, " + nome + " " + sobrenome;
    }
}