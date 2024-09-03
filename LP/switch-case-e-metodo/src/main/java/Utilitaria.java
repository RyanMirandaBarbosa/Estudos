import java.util.List;

public class Utilitaria {
    void exibirLista(List<String> lista) {
        for (int i = 0; i < lista.size(); i++) {
            System.out.println(lista.get(i));
        }
    }

    Boolean encontrado(List<String> lista, String pesquisa) {
        Boolean existeNaLista = false;
        for (int i = 0; i < lista.size(); i++) {
            if (pesquisa.equalsIgnoreCase(lista.get(i))) {
                existeNaLista = true;
            }
        }
        return existeNaLista;
    }
}
