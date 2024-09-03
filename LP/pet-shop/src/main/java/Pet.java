public class Pet {
    private String nome;

    private Double totalGasto;

    private Integer idasPetShop;

    public Pet(String nome) {
        this.nome = nome;
        this.totalGasto = 0.0;
        this.idasPetShop = 0;
    }

    void darBanho (Double valorBanho){
        totalGasto += valorBanho;
        idasPetShop++;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getTotalGasto() {
        return totalGasto;
    }

    public void setTotalGasto(Double totalGasto) {
        this.totalGasto = totalGasto;
    }

    public Integer getIdasPetShop() {
        return idasPetShop;
    }

    public void setIdasPetShop(Integer idasPetShop) {
        this.idasPetShop = idasPetShop;
    }
}
