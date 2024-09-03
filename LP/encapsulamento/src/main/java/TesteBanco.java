import java.util.Scanner;

public class TesteBanco {
    public static void main(String[] args) {
        ContaBancaria conta1 = new ContaBancaria("Warwick");
//        conta1.nomeTitular = "Warwick";
//        conta1.saldo = 0.0;

//        conta1.mudarNomeTitular("Warwick");
//        System.out.println("Nome c1: " + conta1.buscarNomeTitular());

//        conta1.setNomeTitular("0123");
//        conta1.setSaldo(0.0);

        ContaBancaria conta2 = new ContaBancaria("Kha'zix");
//        conta1.nomeTitular = "Kha'Zix";
//        conta1.saldo = 0.0;

        Scanner input = new Scanner(System.in);
        Scanner inputNextLine = new Scanner(System.in);

        conta1.sacar(10.5);
    }
}