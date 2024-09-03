public class Teste {
    public static void main(String[] args) {
        ContaBancaria contaBancaria01 = new ContaBancaria("Bob da silva");
        ContaCorrente contaCorrente01 = new ContaCorrente("Xampson", 500.0);

        Banco banco01 = new Banco("Sptech Bank");
        banco01.cadastrarConta(contaBancaria01);
        banco01.cadastrarConta(contaCorrente01);
    }
}
