import java.security.PrivateKey;

public class Atividade {
    private String nomeAtividade;
    private String responsavel;
    private Integer diasEstimado;
    private Integer diasUsados;

    public Atividade(String nomeAtividade, String responsavel, Integer diasEstimado) {
        this.nomeAtividade = nomeAtividade;
        this.responsavel = responsavel;
        this.diasEstimado = diasEstimado;
        this.diasUsados = 0;
    }

    public void terminarAtividade(Integer diasUsados){
        this.diasUsados = diasUsados;
    }

    public void exibirRelatorio(){
        if (diasUsados > diasEstimado){
            System.out.println("""
                    Você estimou %d dias, mas a tarefa foi feita em %d dias (%d dias a mais que o estimado).
                    Melhore a estimativa.""".formatted(diasEstimado, diasUsados, (diasUsados-diasEstimado)));
        } else if (diasUsados < diasEstimado){
            System.out.println("""
                    Você estimou %d dias, mas a tarefa foi feita em %d dias (%d dias a mais que o estimado).
                    Melhore a estimativa.""".formatted(diasEstimado, diasUsados, (diasEstimado-diasUsados)));
        } else {
            System.out.println("""
                    Você estimou %d dias, mas a tarefa foi feita em %d dias,
                    atendendo a estimativa com precisão""".formatted(diasEstimado, diasUsados));
        }
    }

    public String getNomeAtividade() {
        return nomeAtividade;
    }

    public void setNomeAtividade(String nomeAtividade) {
        this.nomeAtividade = nomeAtividade;
    }

    public String getResponsavel() {
        return responsavel;
    }

    public void setResponsavel(String responsavel) {
        this.responsavel = responsavel;
    }

    public Integer getDiasEstimado() {
        return diasEstimado;
    }

    public void setDiasEstimado(Integer diasEstimado) {
        this.diasEstimado = diasEstimado;
    }

    public Integer getDiasUsados() {
        return diasUsados;
    }

    public void setDiasUsados(Integer diasUsados) {
        this.diasUsados = diasUsados;
    }

    @Override
    public String toString() {
        return """
                Nome atividade: %s
                Responsavel: %s
                Dias estimados: %d
                Dias Usados: %d""". formatted(nomeAtividade, responsavel, diasEstimado, diasUsados);

    }
}