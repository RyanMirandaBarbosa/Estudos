package school.sptech.projeto_http_code;

import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

// repository = responsável por representar todas as querys a banco da nossa tabela Livro
public interface LivroRepository
        extends JpaRepository<Livro, Integer> { // Passar a <Entidade, Tipo do Id da entidade>

    // dynamic finders
    /*
        find: SELECT ( por padrão busca todos *)
        By: FROM Livro
        Nome: WHERE nome = ?

        sql: SELECT * FROM Livro WHERE nome = ?
     */
    List<Livro> findByNome(String nome);

    /*
        find: SELECT ( por padrão busca todos *)
        By: FROM Livro
        NomeContainsIgnoreCase: WHERE lower(nome) LIKE lower(%?%)

        Nome: WHERE nome = ?
        Contains: %?% ("Like" com qualquer caracter (página 30 da apostila de JPA))
        IgnoreCase: Mesmo maiusculo ou minusculo ele encontra (transforma tudo para lowerCase)

        sql: SELECT * FROM Livro WHERE lower(nome) LIKE lower(%?%)
     */
    List<Livro> findByNomeContainsIgnoreCase(String nome);

    // busca por nome, contendo LIKE "%?%" ordenando por classificação do melhor para o pior
    /*
        find: SELECT ( por padrão busca todos *)
        By: FROM Livro
        NomeContainsIgnoreCase: WHERE lower(nome) LIKE lower(%?%)
        OrderByClassificacaoDesc: ORDER BY classificacao DESC

        sql: SELECT * FROM Livro WHERE lower(nome) LIKE lower(%?%) ORDER BY classificacao DESC
     */
    List<Livro> findByNomeContainsIgnoreCaseOrderByClassificacaoDesc(String nome);


    /*
        busca o livro lançado entre duas datas

        find: SELECT ( por padrão busca todos *)
        By: FROM Livro
        DataLancamentoBetween: Where data_lancamento > ? and data_lancamento < ?

        sql: SELECT * FROM Livro WHERE data_lancamento > ? and data_lancamento < ?
     */
    List<Livro> findByDataLancamentoBetween(LocalDate data1, LocalDate data2);


    /*
         busca todos, ordenando pela classificação "ao contrário" do melhor para o pior

        find: SELECT ( por padrão busca todos *)
        By: FROM Livro
        OrderByClassificacaoDesc: order by classificacao desc

        sql: SELECT * FROM Livro ORDER BY classificacao DESC
     */
    List<Livro> findByOrderByClassificacaoDesc();

    /*
        Busca o primeiro item cadastrado no banco
        find: SELECT
        Top: Top 1
        By: FROM Livro

        sql: SELECT TOP 1 FROM Livro;
     */
    Optional<Livro> findTopBy();
    // alternativa para pegar o primeiro
    Optional<Livro> findFirstBy();

    /*
        Busca somente 1 item com a melhor nota
        find: SELECT
        Top: Top 1
        By: FROM Livro

        sql: SELECT top 1 FROM Livro ORDER BY classificacao DESC;
     */
    Optional<Livro> findTopByOrderByClassificacaoDesc();
}
