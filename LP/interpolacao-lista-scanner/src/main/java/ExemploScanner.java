import org.w3c.dom.ls.LSInput;

import java.util.Scanner;

public class ExemploScanner {
    public static void main(String[] args) {
        String nome = "XPTO";
        Scanner input = new Scanner(System.in);
        Scanner inputNextLine = new Scanner(System.in);

        System.out.println("What your name?");

        String nomeUsuario = inputNextLine.nextLine();

        System.out.println("Qual sua idade?");
        Integer idade = input.nextInt();

        System.out.println("Qual sua Empresa?");
        String empresa = inputNextLine.nextLine();

        System.out.println("Qual seu salario?");
        Double salario = input.nextDouble();

        System.out.println("""
                Nome: %s
                Idade: %d
                Empresa: %s
                Salario: %.2f
                """.formatted(nomeUsuario, idade, empresa, salario));
    }
}
