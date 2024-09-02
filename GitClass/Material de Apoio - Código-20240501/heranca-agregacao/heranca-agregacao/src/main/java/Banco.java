import java.util.ArrayList;
import java.util.List;

public class Banco {
    private String nomeBanco;
    private List<ContaBancaria> contas;

    public Banco(String nomeBanco) {
        this.nomeBanco = nomeBanco;
        this.contas = new ArrayList<>();
    }

    public void cadastrarConta(ContaBancaria conta) {
        contas.add(conta);
    }

    public void exibeContasBancarias() {
        for (ContaBancaria contaDaVez : contas) {
            System.out.println(contaDaVez);
        }
    }

    public void exibeContasCorrente() {
        for (ContaBancaria contaDaVez : contas) {
            if (contaDaVez instanceof ContaCorrente){
                System.out.println(contaDaVez);
            }
        }
    }


}
