package school.sptech.sprint1_nota1.ex3;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExercicioDificilController {
    @GetMapping("/ex-03/{n}")
    public ExercicioDificilResponse calcularFibonacci(@PathVariable int n) {
        if (n <= 0) {
            return new ExercicioDificilResponse(0, 0);
        }

        int enesimoTermo = 0;
        int termoAnterior = 1;
        int soma = 0;

        // Calcular o enésimo termo e a soma até esse termo, que bagulho chatoooooooooo
        for (int i = 1; i <= n; i++) {
            int temp = enesimoTermo;
            enesimoTermo = termoAnterior;
            termoAnterior = temp + termoAnterior;
            soma += enesimoTermo;
        }
        // aaaaaaaaaaaaaaaaaaaaaaaAAAAAAAAAAAAAAAAAAAAAA!!!
        return new ExercicioDificilResponse(enesimoTermo, soma);
    }
}
/*
   __     ______  _    _   _      ____   ____   ______
   \ \   / / __ \| |  | | | |    / __ \ / __ \ |  ____|
    \ \_/ / |  | | |  | | | |   | |  | | |  | || |__
     \   /| |  | | |  | | | |   | |  | | |  | ||  __|
      | | | |__| | |__| | | |___| |__| | |__| || |____
      |_|  \____/ \____/  |______\____/ \____/ |______|
*/