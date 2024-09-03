import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ExemploMetodo {
    public static void main(String[] args) {
        Utilitaria util = new Utilitaria();


        List<String> frutas = new ArrayList<>();
        frutas.add("Banana");
        frutas.add("Melancia");
        frutas.add("Uva");
        frutas.add("Morandago");

        List<String> nomes = new ArrayList<>();
        nomes.add("Ryan");
        nomes.add("Yuyu");
        nomes.add("Bins");
        nomes.add("PablinoOniChan");

//        Scanner input = new Scanner(System.in);
//        String nomePesquisa = input.nextLine();
//        String frutaPsquisa = input.nextLine();

        String frutaExiste = "DragonFruit";
        String nomeExiste = "Miras";

        util.exibirLista(frutas);
//        util.encontrado(frutas, frutaExiste);

        util.exibirLista(nomes);
        util.encontrado(nomes, nomeExiste);

        String trxtoResposta;
        Boolean existeNaLista = util.encontrado(frutas, frutaExiste);
        if (existeNaLista) {
            trxtoResposta = "existe";
        } else {
            trxtoResposta = "n existe";
        }
        System.out.println(trxtoResposta);

//        if (nameE) {
//            System.out.println("Nome encontrado");
//        } else {
//            System.out.println("Nome não encontrado");
//        }
//
//        if (fruitE) {
//            System.out.println("Fruta encontrada");
//        } else {
//            System.out.println("Fruta não encontrada");
//        }
    }
}