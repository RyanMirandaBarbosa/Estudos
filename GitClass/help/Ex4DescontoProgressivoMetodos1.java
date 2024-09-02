package school.sptech.ex4;

import java.awt.*;

public class Ex4DescontoProgressivoMetodos {

  // Coloque os métodos aqui

    public void calcularDesconto(Double valor, Integer qtdProdutos){

        Double desconto = 0.0;
        for(int i = 0; i < qtdProdutos; i++){
            desconto += 10;
        }
        Double valorDesconto = valor - ((valor / 100) * desconto);



        exibirNotaFiscal(valor,qtdProdutos,valorDesconto);
    }

    public void exibirNotaFiscal(Double valor,Integer qtdProdutos, Double valorDesconto){
        System.out.println("------------------------------");
        System.out.println("Valor do produto: R$%.2f".formatted(valor));
        System.out.println("Quantidade: "+ qtdProdutos);
        System.out.println("------------------------------");
        System.out.println("Valor com desconto: R$%.2f".formatted(valorDesconto));
    }

}
