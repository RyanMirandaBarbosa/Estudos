public class ExemploInterpolação {
    public static void main(String[] args) {
        String sexo = "Suruba";
        Integer qtdPessoas = 42;
        Double valor = 90.00;


        System.out.println(String.format("""
                        Tipo de sexo:%s
                        Quantidade de pessoas:%d
                        Valor para entrar:R$%.2f
                        """, sexo, qtdPessoas, valor));

        // para usar interpolação:
        //string %s
        //integer %d
        //double %.2f
        //bolean %b
        // ternario (var ? "sim" : "Não";

        String fraseFormatada =
                String.format("""
                        Tipo de sexo:%s
                        Quantidade de pessoas:%d
                        Valor para entrar:R$%.2f
                        """, sexo, qtdPessoas, valor);

        String fraseFormatadaSegundaOpecao = """
                        Tipo de sexo:%s
                        Quantidade de pessoas:%d
                        Valor para entrar:R$%.2f
                        
                """.formatted(sexo,qtdPessoas,valor);
    }
}
