package school.sptech.projeto_http_code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/livros")
public class LivroController {

    @Autowired
    private LivroRepository livroRepository;

    // GET = / - endpoint de listagem geral
    @GetMapping
    public ResponseEntity<List<Livro>> listar() { // COLOCAR ResponseEntity
        // findAll = SELECT * FROM Livro;
        List<Livro> livros = livroRepository.findAll();

        if (livros.isEmpty()) { // se a lista estiver vazia
            return ResponseEntity.status(204).build(); // retorna 204 (no content)
        }

        // caso tenha algo na lista
        return ResponseEntity.status(200).body(livros); // retorna 200 (ok) com a lista
    }

    // GET = /{id} - endpoint de busca por id
    @GetMapping("/{id}")
    public ResponseEntity<Livro> buscaPorId(@PathVariable int id) { // pode ser Integer ou int
        // SELECT * FROM Livro WHERE id = ?
        Optional<Livro> livroOpt = livroRepository.findById(id);

        if (livroOpt.isPresent()) { // caso o select retornou algo na busca por id
            Livro livroEncontrado = livroOpt.get(); // pega o livro que retornou
            return ResponseEntity.status(200).body(livroEncontrado); // retorna 200 (ok) com o livro encontrado
        }

        // caso não tiver nada, retorna 404 (Not Found) e null no corpo (build)
        return ResponseEntity.status(404).build();
    }

    // POST = / - cadastro de um livro
    @PostMapping
    public ResponseEntity<Livro> cadastrar(@RequestBody Livro novoLivro) {
        novoLivro.setId(null); // não importa o que chegar, vira null e cria
        // INSERT INTO livro values (null, "a", "a", 5, "2000-01-01")

        // cenário feliz: salva no banco e retorno com o id gerado. Com status 201 (created)
        return ResponseEntity.status(201).body(livroRepository.save(novoLivro));
    }

    // PUT = /{id}
    @PutMapping("/{id}")
    public ResponseEntity<Livro> atualizar(
            @PathVariable int id,
            @RequestBody Livro livroAtualizado
    ) {
        if (!livroRepository.existsById(id)) { // caso não exista
            return ResponseEntity.status(404).build(); // 404 (Not Found) e sem corpo
        }

        livroAtualizado.setId(id);
        // UPDATE livro set ... ... .. .. ... WHERE id = ?
        Livro livroRetorno = livroRepository.save(livroAtualizado); // atualiza e retorna o livro atualizado
        return ResponseEntity.status(200).body(livroRetorno); // 200 (ok) e com o livro atualizado
    }

    // DELETE = /{id} - endpoint de remoção por id
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletar(@PathVariable int id) {
        if (livroRepository.existsById(id)) { // caso exista
            // DELETE FROM livro WHERE id = ?
            livroRepository.deleteById(id);
            return ResponseEntity.status(204).build(); // 204 (no content) sem corpo
            // 204 é utilizado no delete pois não tem o que retornar mas deu sucesso
        }
        return ResponseEntity.status(404).build(); // 404 (Not Found) sem corpo
    }

    // GET = /filtro-nome
    @GetMapping("/filtro-nome")
    public ResponseEntity<List<Livro>> porNome(
            @RequestParam String nome // PARAMETRO DE REQUISIÇÃO (Query Param) respeitar o nome definido aqui
    ) {
        // SELECT * FROM Livro WHERE nome = ?
        List<Livro> livros = livroRepository.findByNome(nome);

        if (livros.isEmpty()) { // caso não tenha nada
            // 204 (no content) sem corpo
            return ResponseEntity.status(204).build(); // consulta realizada, mas não tinha no banco
        }
        return ResponseEntity.status(200).body(livros);// 200 (ok) com a lista de livros
    }

    // GET = /filtro-nome-contains
    @GetMapping("/filtro-nome-contains")
    public ResponseEntity<List<Livro>> porNomeContains(
            @RequestParam String nome // PARAMETRO DE REQUISIÇÃO (Query Param) respeitar o nome definido aqui
    ) {
        // SELECT * FROM Livro WHERE lower(nome) LIKE lower(%?%)
        List<Livro> livros = livroRepository.findByNomeContainsIgnoreCase(nome); // ignora maiusculo e minusculo

        if (livros.isEmpty()) { // caso não tenha nada
            return ResponseEntity.status(204).build(); // consulta realizada, mas não tinha no banco
        }
        return ResponseEntity.status(200).body(livros); // 200 (ok) com a lista de livros
    }

    // GET = /filtro-nome-ordenando-classificacao
    @GetMapping("/filtro-nome-ordenando")
    public ResponseEntity<List<Livro>> porNomeOrdenandoClassificacao(
            @RequestParam String nome
    ) {
        // ordernando da melhor classificação para a pior
        // SELECT * FROM Livro WHERE lower(nome) LIKE lower(%?%) ORDER BY classificacao DESC
        List<Livro> livros = livroRepository.findByNomeContainsIgnoreCaseOrderByClassificacaoDesc(nome);

        if (livros.isEmpty()) { // caso não tenha nada
            return ResponseEntity.status(204).build(); // consulta realizada, mas não tinha no banco
        }
        return ResponseEntity.status(200).body(livros); // 200 (ok) com a lista de livros
    }

    // GET = /filtro-data
    @GetMapping("/filtro-data")
    public ResponseEntity<List<Livro>> porData(
            @RequestParam LocalDate data1,
            @RequestParam LocalDate data2
    ) {
        // SELECT * FROM Livro WHERE data_lancamento > ? and data_lancamento < ?
        List<Livro> livros = livroRepository.findByDataLancamentoBetween(data1, data2);

        if (livros.isEmpty()) { // caso não tenha nada
            return ResponseEntity.status(204).build(); // consulta realizada, mas não tinha no banco
        }
        return ResponseEntity.status(200).body(livros); // 200 (ok) com a lista de livros
    }

    // GET = /filtro-classificacao
    @GetMapping("/filtro-classificacao")
    public ResponseEntity<List<Livro>> porClassificacao() {// não precisa de parâmetro

        // SELECT * FROM Livro ORDER BY classificacao DESC
        List<Livro> livros = livroRepository.findByOrderByClassificacaoDesc();

        if (livros.isEmpty()) { // caso não tenha nada
            return ResponseEntity.status(204).build(); // consulta realizada, mas não tinha no banco
        }
        return ResponseEntity.status(200).body(livros); // 200 (ok) com a lista de livros
    }

    // GET = /filtro-primeiro
    @GetMapping("/filtro-primeiro")
    public ResponseEntity<Livro> primeiro() {

        // SELECT TOP 1 FROM Livro
        Optional<Livro> livroOpt = livroRepository.findTopBy();

        if (livroOpt.isPresent()) { // caso o select retornou algo na busca por id
            Livro livroEncontrado = livroOpt.get(); // pega o livro que retornou
            return ResponseEntity.status(200).body(livroEncontrado); // retorna 200 (ok) com o livro encontrado
        }

        // caso não tiver nada, retorna 404 (Not Found) e null no corpo (build)
        return ResponseEntity.status(404).build();
    }

    // GET = /filtro-melhor-classificacao
    @GetMapping("/filtro-melhor-classificacao")
    public ResponseEntity<Livro> melhorClassificacao() {

        // SELECT top 1 FROM Livro ORDER BY classificacao DESC
        Optional<Livro> livroOpt = livroRepository.findTopByOrderByClassificacaoDesc();

        if (livroOpt.isPresent()) { // caso o select retornou algo na busca por id
            Livro livroEncontrado = livroOpt.get(); // pega o livro que retornou
            return ResponseEntity.status(200).body(livroEncontrado); // retorna 200 (ok) com o livro encontrado
        }

        // caso não tiver nada, retorna 404 (Not Found) e null no corpo (build)
        return ResponseEntity.status(404).build();
    }
}
