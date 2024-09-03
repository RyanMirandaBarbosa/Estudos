package school.sptech.ex6;

import java.util.Scanner;

public class Ex6ValidacaoNumerica {

  public static void main(String[] args) {

    Scanner leia = new Scanner(System.in);

    Ex6ValidacaoNumericaMetodos atv6 = new Ex6ValidacaoNumericaMetodos();

    System.out.println("Digite um número: ");
    Integer numero = leia.nextInt();

    atv6.verificarPrimo(numero);


  }
}
