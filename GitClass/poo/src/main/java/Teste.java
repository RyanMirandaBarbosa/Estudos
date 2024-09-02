import java.util.Scanner;

public class Teste {
    public static void main(String[] args) {
        //Criar um obejto = instaciar um objeto
        // fazemos uma instancia usando o new

        BilheteUnico bilhete01 = new BilheteUnico();
        bilhete01.nomeTitular = "Eu quero me matar hoje 00:00:000";
        bilhete01.saldo = 8000.00;

        BilheteUnico bilhete02 = new BilheteUnico();
        bilhete02.nomeTitular = "A cRiAtUrA eStA lIvRe!!!";
        bilhete02.saldo = 3.00;

        Scanner input = new Scanner(System.in);
        Double recarga = input.nextDouble();

        bilhete02.depositar(recarga);
    }
}