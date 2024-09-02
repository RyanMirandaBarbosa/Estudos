import java.util.function.DoubleBinaryOperator;

public class Aluno {
    private String nome;
    private String ra;
    private Double notaContinuada;
    private  Double notaEntrega;

    public Aluno(String nome, String ra, Double notaContinuada, Double notaEntrega) {
        this.nome = nome;
        this.ra = ra;
        this.notaContinuada = notaContinuada;
        this.notaEntrega = notaEntrega;
    }

    public Double calcularNotaFinal(){
        return notaContinuada + notaEntrega;
    }

    public void apresentarSprint(){
        System.out.println("Apresentando sprint para a Fernanda, melhor professora");
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRa() {
        return ra;
    }

    public void setRa(String ra) {
        this.ra = ra;
    }

    public Double getNotaContinuada() {
        return notaContinuada;
    }

    public void setNotaContinuada(Double notaContinuada) {
        this.notaContinuada = notaContinuada;
    }

    public Double getNotaEntrega() {
        return notaEntrega;
    }

    public void setNotaEntrega(Double notaEntrega) {
        this.notaEntrega = notaEntrega;
    }
}