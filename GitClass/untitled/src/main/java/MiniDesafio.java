import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

public class MiniDesafio {
    public static void main(String[] args) {
        List<Integer> numInteiros = new ArrayList();
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));
        numInteiros.add(ThreadLocalRandom.current().nextInt(0, 16));


        Integer soma = 0;
        for (int i = 0; i < numInteiros.size(); i++) {
            System.out.println("num1:" + soma +" + num2:" + numInteiros.get(i));
            soma = soma + numInteiros.get(i);
        }

        System.out.println("Soma da Lista:" +soma);

        System.out.println(numInteiros);
        for (int i = 0; i < numInteiros.size(); i++) {
            if (numInteiros.get(i) % 2 == 0) {
                numInteiros.remove(i);
                i--;
            }
        }

        System.out.println(numInteiros);
    }
}