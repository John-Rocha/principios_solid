// 1 - PRINCÍPIO DA RESPONSABILIDADE ÚNICA (SRP)

// UMA CLASSE DEVE SER RESPONSÁVEL POR APENAS UMA COISA

// FORMA CORRETA

class Pagamentos {
  void pagar() {
    print('Pagamento realizado');
    Comprovantes.gerarComprovante();
  }
}

class Comprovantes {
  static void gerarComprovante() => print('Gerando comprovante');
}

void main(List<String> arguments) {
  final Pagamentos pagamentos = Pagamentos();
  pagamentos.pagar();
}
