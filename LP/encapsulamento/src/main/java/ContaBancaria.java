public class ContaBancaria {
    //Atributos:
    private String nomeTitular;

    private Double saldo;

    //Construtor: inicializar um objeto
    // é publico por padão
    // sempre o mesmo nome da classe

    public ContaBancaria(String nomeTitular) {
        this.nomeTitular = nomeTitular;
        this.saldo = 0.0;
    }

    public ContaBancaria() {}

    //Método:
    void sacar(Double saque) {
        if (saque > 0 && saque <= saldo) {
            saldo -= saque;
            System.out.println("Saque realizado com suecesso");
        } else {
            System.out.println("Saldo insuficiente");
        }
    }

    //this para referenciar o atributo
    //padão get e set
    //get buscar o valor de um atributo
    //set devolver o valor de um atributo
    public void setNomeTitular(String nomeTitular) {
        this.nomeTitular = nomeTitular;
    }

    public String getNomeTitular() {
        return nomeTitular;
    }

    public Double getSaldo() {
        return saldo;
    }

    public void setSaldo(Double saldo) {
        this.saldo = saldo;
    }
}
