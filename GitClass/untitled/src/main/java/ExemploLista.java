import java.util.ArrayList;
import java.util.List;

public class ExemploLista {
    public static void main(String[] args) {
//        Integer[] numeros = new Integer[10];
        List listaEstranha = new ArrayList();
        listaEstranha.add("Ryan");
        listaEstranha.add(12);
        listaEstranha.add(2.50);
        listaEstranha.add(true);

        System.out.println(listaEstranha);

        List<String> nomes = new ArrayList();

        nomes.add("Pablo onichan");
        nomes.add("Bins senpai");
        nomes.add("Yuyu");

        System.out.println(nomes);
        System.out.println(nomes.get(0));

        System.out.println("pipipupu");

        for (int i = 0; i < nomes.size(); i++) {
            System.out.println(nomes.get(i));


        }
        nomes.remove(0);
        System.out.println(nomes);

        Boolean listaVazia = nomes.isEmpty();

        nomes.clear();
//        Limpa a lista
    }
}