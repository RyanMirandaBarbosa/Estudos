public class Servio implements Tributavel{
    private String descricao;
    private Double preco;

    public Servio(String descricao, Double preco) {
        this.descricao = descricao;
        this.preco = preco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    @Override
    public String toString() {
        return "Servio{" +
                "descricao='" + descricao + '\'' +
                ", preco=" + preco +
                '}';
    }

    @Override
    public Double getValorTributo() {
        return preco*0.1;
    }
}