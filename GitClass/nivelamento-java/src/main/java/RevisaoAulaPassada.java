public class RevisaoAulaPassada {
    public static void main(String[] args) {
//        Tipos que mais usaremos:
        String nome = "Ryan"; // Texto
        Integer numeroSorteio = 11; // Num inteiro
        Double altura = 1.80; // Num quebrado
        String elaDisse = "fofo & safado"; // Boleano
        Boolean elaGosta = true;

//        Tipos Wrapper e Tipos primitivos
        Integer numeroTipoWrapper = 10;
        int numeroTipoPrimitivo = 10;

        Double numeroEscolhido01 = 42.0;
        double numeroEscolhido02 = 42.0;

        System.out.println("Meu nome é "
                + nome + " Meu número sorteado é "
                + numeroSorteio + ", Minha altura é "
                + altura + " e ela disse que eu sou "
                + elaDisse);

        if (elaGosta == true) {
            System.out.println("I Happy Happy Happy");
        } else {
            System.out.println(" I Sad Sad");
        }
    }

}
