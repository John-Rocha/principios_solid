// 2 - PRINCÍPIO DO ABERTO FECHADO (OCP)

// A classe tem que ser aberta para extensão (novas funcionalidades) e fechada para modificação

// FORMA CORRETA

abstract class IFuncionario {
  final bool _registraPonto = true;
  void trabalhar();
}

// Na herança, você reutiliza os valores herdados, fazendo sobrescrita dos métodos e atributos
class Porteiro extends IFuncionario {
  @override
  void trabalhar() {
    print('Porteiro trabalhando');
    print('Porteiro ${!_registraPonto ? 'não ' : ''}registra ponto');
  }
}

// Na implementação você é obrigado a implementar tudo
class Zelador implements IFuncionario {
  @override
  bool get _registraPonto => false;

  @override
  void trabalhar() {
    print('Zelador trabalhando');
    print('Zelador ${!_registraPonto ? 'não ' : ''}registra ponto');
  }
}

/// A classe de produção não precisará mais
/// ser alterada caso precise adicionar um novo
/// tipo de funcionário

class Funcionario {
  void trabalhar(IFuncionario funcionario) {
    funcionario.trabalhar();
  }
}

void main(List<String> args) {
  final Funcionario porteiro = Funcionario();
  porteiro.trabalhar(Porteiro());

  final Funcionario zelador = Funcionario();
  zelador.trabalhar(Zelador());
}
