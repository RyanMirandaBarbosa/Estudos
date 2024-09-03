import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Teste {
    public static void main(String[] args) {
        //Objeto = instânciar = criar um objeto = usar new
        ExemploMetodo util = new ExemploMetodo();
        Scanner input = new Scanner(System.in);
        Scanner inputLine = new Scanner(System.in);
        List<String> names = new ArrayList<>();

        do {
            if (!names.isEmpty()) {
                System.out.println("People who consulted rates");
                util.displayNames(names);
            }

            System.out.println("Set your name:");
            String name = inputLine.nextLine();
            names.add(name);

            util.apresentarUsuario(name);

            System.out.println("How much did you sell?");
            Double saleValue = input.nextDouble();

            Double rate = util.calcularTaxaVenda(saleValue);
            System.out.println("""
                    Rate: %.2f""".formatted(rate));

            System.out.println("Sair? s/n");
            if (inputLine.nextLine().equalsIgnoreCase("s")){
                System.exit(0);
            }
        } while (true);
    }
}