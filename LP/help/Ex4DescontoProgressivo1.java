package school.sptech.ex4;

import java.util.Scanner;

public class Ex4DescontoProgressivo {

  public static void main(String[] args) {

    Scanner leia = new Scanner(System.in);

    Ex4DescontoProgressivoMetodos atv4 = new Ex4DescontoProgressivoMetodos();

    System.out.println("Digite o valor unitário do produto: ");
    Double valor = leia.nextDouble();
    System.out.println("Digite a quantidade: ");
    Integer qtdProdutos = leia.nextInt();
    atv4.calcularDesconto(valor,qtdProdutos);




  }
}
