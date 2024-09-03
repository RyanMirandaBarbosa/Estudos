package school.sptech.ex6;

public class Ex6ValidacaoNumericaMetodos {

  // Coloque os métodos aqui

    public void verificarPrimo(Integer numero){

        Boolean NumeroPrimo = true;
        Integer cont =0;

        for(int i =1;i <= numero;i++){

            if(numero % i == 0) {
                cont++;
                if (cont > 2) {
                    NumeroPrimo = false;
                    break;

                }
            }

        }
        if(NumeroPrimo){
            System.out.println("É primo");
        }else{
            System.out.println("Não é primo");
        }
    }

}
