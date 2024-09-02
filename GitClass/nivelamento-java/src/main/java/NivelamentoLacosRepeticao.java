import java.util.concurrent.ThreadLocalRandom;

public class NivelamentoLacosRepeticao {
    public static void main(String[] args) {
        for (int i = 0; i <= 18; i++) {
            System.out.println("Número:" + i);
        }

        for (int j = 10; j >= 0; j--) {
            System.out.println("Número:" + j);
        }

        Integer contador = 0;
        while (contador <= 10) {
            System.out.println("Estou dentro do while e contado:" + contador);
            contador++;
        }

        Integer numAle = 1;
        while (numAle != 0) {
            System.out.println(numAle);
            numAle = ThreadLocalRandom.current().nextInt(0, 11);
        }

        Integer numAle02;
        do {
            numAle02 = ThreadLocalRandom.current().nextInt(0,11);
            System.out.println(numAle02);
        } while (numAle02 != 0);
    }
}
