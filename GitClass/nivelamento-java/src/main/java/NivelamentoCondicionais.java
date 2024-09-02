import java.util.concurrent.ThreadLocalRandom;

public class NivelamentoCondicionais {
    public static void main(String[] args) {
        Integer num01 = 10;
        Integer num02 = 10;

        if (num01 < num02) {
            System.out.println("Número " + num01 + " é menor que o Número " + num02);
        } else if (num01.equals(num02)) {
            System.out.println("Número " + num01 + " é igual o Número " + num02);
        } else {
            System.out.println("Número " + num01 + " é maior que Número " + num02);
        }

        String nome01 = "Ryan";
        String nome02 = "Ryan";

        if (nome01.equals(nome02)) {
            System.out.println("Nomes iguais");
        } else {
            System.out.println("Nome Diferentes");
        }

        // == compara o os endereços de memória, .equals() compara o valor
        // ! dentro if espera uma validação falsa

        Integer sorteio = ThreadLocalRandom.current().nextInt(0, 4);
        System.out.println(sorteio);

        Double sorteioQuebrado = ThreadLocalRandom.current().nextDouble(0, 5.5);
        System.out.println(sorteioQuebrado);

        Boolean bloqueado = ThreadLocalRandom.current().nextBoolean();
        System.out.println("Marecelão entendeu alguma coisa?" + bloqueado);
    }
}
