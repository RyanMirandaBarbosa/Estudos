import java.util.List;

public class ExemploMetodo {
    void apresentarUsuario(String name) {
        System.out.println("""
                Olá %s
                """.formatted(name));
    }

    Double calcularTaxaVenda(Double saleValue) {
        if (saleValue <= 500.00) {
            return saleValue * 0.2;
        } else if (saleValue > 500.00) {
            return saleValue * 0.4;
        } else  {
            System.out.println("pipipupu");
            return 0.0;
        }
    }

    void displayNames(List<String> names) {
        for (int i = 0; i < names.size(); i++) {
            System.out.println("People " + (i+1) + "° - " + names.get(i));
        }
    }
}