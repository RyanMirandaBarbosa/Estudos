public class TesteContato {
    public static void main(String[] args) {
        Contato contato1 = new Contato("Mnoel", "123");
        Contato contato2 = new Contato("Ryan", "934");
        Contato contato3 = new Contato("Paralelepipedo", "356");

        Grupo grupoDoZap = new Grupo("Grupo da familia");
        Grupo grupoDoTrabalho = new Grupo("Job Group");

        System.out.println(contato1.toString());
        System.out.println(grupoDoZap);

        grupoDoZap.adcionarContato(contato1);
        grupoDoZap.adcionarContato(contato2);
        grupoDoZap.adcionarContato(contato3);

        System.out.println(grupoDoZap);

        grupoDoTrabalho.adcionarContato(contato1);
        grupoDoTrabalho.adcionarContato(contato3);

        System.out.println(grupoDoTrabalho);
        System.out.println("-------------");
        System.out.println(grupoDoZap.buscarContatoPeloNome("a"));
    }
}