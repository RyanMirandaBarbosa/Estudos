public class Alimento extends Produto{
    private Integer qtdVitaminas;

    public Alimento(Integer codigo, String descricao, Double preco, Integer qtdVitaminas) {
        super(codigo, descricao, preco);
        this.qtdVitaminas = qtdVitaminas;
    }

    public Integer getQtdVitaminas() {
        return qtdVitaminas;
    }

    public void setQtdVitaminas(Integer qtdVitaminas) {
        this.qtdVitaminas = qtdVitaminas;
    }

    @Override
    public Double getValorTributo() {
        return getPreco() * 0.2;
    }

    @Override
    public String toString() {
        return "Alimento{" +
                "qtdVitaminas=" + qtdVitaminas +
                '}';
    }
}