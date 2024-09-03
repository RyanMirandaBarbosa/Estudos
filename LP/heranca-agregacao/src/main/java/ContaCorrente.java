public class ContaCorrente extends ContaBancaria{
    private Double limiteChequeEspecial;

    public ContaCorrente(String nomeTitular, Double limiteChequeEspecial) {
        super(nomeTitular);
        this.limiteChequeEspecial = limiteChequeEspecial;
    }

    @Override
    public void sacar(Double valorSaque) {
        Double valorPermitidoSaque = limiteChequeEspecial + saldo;

        if (valorSaque > 0 && valorSaque <= valorPermitidoSaque){
            saldo -= valorSaque;
            qtdOperacoes++;
            System.out.println("Saque efetuado!");
        }else{
            System.out.println("Valor inválido!");
        }
    }

    public Double getLimiteChequeEspecial() {
        return limiteChequeEspecial;
    }

    public void setLimiteChequeEspecial(Double limiteChequeEspecial) {
        this.limiteChequeEspecial = limiteChequeEspecial;
    }

    @Override
    public String toString() {
        return """
                %s
                Limite Cheque: %.2f
                """.formatted(super.toString(), limiteChequeEspecial);
    }
}
