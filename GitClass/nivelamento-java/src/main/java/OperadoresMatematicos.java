public class OperadoresMatematicos {
    public static void main(String[] args) {
        //No JS:
        // +, -, *, /, %, +=, -=, ++, --
        // No Java é a mesma coisa, menos o ** (potência)

        Double numero01 = 42.0;
        Double numero02 = 2.0;

        System.out.println("Soma:" + (numero02 + numero01));
        System.out.println("Multiplicação:" + (numero02 * numero01));
        System.out.println("Subtração:" + (numero02 - numero01));
        System.out.println("Divisão:" + (numero02 / numero01));

        Double resultadoPotencia = Math.pow(numero02, numero01);
        System.out.println("Potência:" + resultadoPotencia);

        //Exibir sem criar váriavel aux:
        System.out.println("Potência:" + Math.pow(numero01, numero02));

        // /n Quebra de linha, //n exibi dentro do console
    }
}
