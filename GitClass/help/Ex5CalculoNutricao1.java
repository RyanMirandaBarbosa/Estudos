package school.sptech.ex5;

import java.util.Scanner;

public class Ex5CalculoNutricao {

  public static void main(String[] args) {

    Scanner leia = new Scanner (System.in);

    Ex5CalculoNutricaoMetodos ex5 = new Ex5CalculoNutricaoMetodos();

    System.out.println("Digite seu peso: ");
    Double peso = leia.nextDouble();
    System.out.println("Insira sua altura: ");
    Double altura = leia.nextDouble();
    ex5.calculaIMC(peso,altura);

  }
}
