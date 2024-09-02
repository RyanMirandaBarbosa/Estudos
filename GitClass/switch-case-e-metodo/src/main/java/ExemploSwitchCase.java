import java.util.Scanner;

public class ExemploSwitchCase {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("""
                Escolha um dia da semana:
                1 - Domingo
                2 - Segunda 
                3 - Terça
                4 - Quarta
                5 - Quinta
                6 - Sexta
                7 - Sábado""");
        Integer opcao = input.nextInt();

        switch (opcao) {
            case 1 -> System.out.println("ZzzzzzZzzz...");
            case 2 -> System.out.println("Trabaio&Estuda");
            case 3 -> System.out.println("Trabaio&Estuda(senta e chora)");
            case 4 -> System.out.println("Trabaio&Estuda(preciso dormir urgente)");
            case 5 -> System.out.println("Trabaio&Estuda(AAAAAAAAAAA!!!)");
            case 6 -> System.out.println("(ZZZzzz)Trabaio&Estuda²");
            case 7 -> System.out.println("ZZZzzzZZZzzzZZZzzz...(Bate um league)&Estuda³");
            default -> System.out.println("Opção invalida");
        }
    }
}