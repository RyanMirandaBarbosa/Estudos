package school.sptech.ex4;

public class Ex5CalculoNutricaoMetodos {

    // Coloque os métodos aqui

    public void calculaIMC(Double peso, Double altura){
        Double IMC = peso / (altura * altura);

        System.out.println("O IMC é %.2f".formatted(IMC));
    }

}
