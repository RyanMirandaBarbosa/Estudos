public class BilheteUnico {
    //Atributos = Caracteristicas
    String nomeTitular;
    Double saldo;

    //Métodos = Comportamentos

    void depositar(Double valorRecarga) {
        if (valorRecarga <= 0) {
        System.out.println("SMT");
        } else {
            saldo += valorRecarga;
            System.out.println(nomeTitular + " recarga efetuada");
        }
    }
}
