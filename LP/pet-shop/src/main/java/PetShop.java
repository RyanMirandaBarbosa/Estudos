public class PetShop {
    private String nome;
    private Double faturamentoTotal;

    public PetShop(String nome, Double faturamentoTotal) {
        this.nome = nome;
        this.faturamentoTotal = faturamentoTotal;
    }

    //tosa
    //banho

    public void darBanho(Pet pet) {
//        Double valorBanho = 90.0;
//        faturamentoTotal += valorBanho;
//        pet.getIdasPetShop();
//
//        Double valorTotal = pet.getTotalGasto() + valorBanho;
//        pet.setTotalGasto(valorTotal);
//
//        Integer idasPetTotal = pet.getIdasPetShop() +1;
//        pet.setIdasPetShop(idasPetTotal);
        darBanho(pet, 0.0);
    }

    public void darBanho(Pet pet, Double desconto) {
        Double valorBanho = 90.0 - desconto;
        faturamentoTotal += valorBanho;

        pet.darBanho(valorBanho);

//        Double valorTotal = pet.getTotalGasto() + valorBanho;
//        pet.setTotalGasto(valorTotal);
//
//        Integer idasPetTotal = pet.getIdasPetShop() +1;
//        pet.setIdasPetShop(idasPetTotal);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getFaturamentoTotal() {
        return faturamentoTotal;
    }

    public void setFaturamentoTotal(Double faturamentoTotal) {
        this.faturamentoTotal = faturamentoTotal;
    }
}
