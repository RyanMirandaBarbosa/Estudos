public class AlunoPos extends Aluno{
    private Double notaArtigo;

    public AlunoPos(String nome, String ra, Double notaContinuada, Double notaEntrega) {
        super(nome, ra, notaContinuada, notaEntrega);
    }


    public Double getNotaArtigo() {
        return notaArtigo;
    }

    public void setNotaArtigo(Double notaArtigo) {
        this.notaArtigo = notaArtigo;
    }
}
