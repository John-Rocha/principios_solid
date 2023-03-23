// 2 - PRINCÍPIO DO ABERTO FECHADO (OCP)

// A classe tem que ser aberta para extensão (novas funcionalidades) e fechada para modificação

// FORMA INCORRETA

class Funcionario {
  void trabalhar() => print('Zelador trabalhando');
}

class Zelador extends Funcionario {}

class Porteiro extends Funcionario {}

void main(List<String> args) {
  final Zelador zelador = Zelador();
  zelador.trabalhar();

  final Porteiro porteiro = Porteiro();
  porteiro.trabalhar();
}
