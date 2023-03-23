// 1 - PRINCÍPIO DA RESPONSABILIDADE ÚNICA (SRP)

// UMA CLASSE DEVE SER RESPONSÁVEL POR APENAS UMA COISA

// FORMA INCORRETA

class Pagamentos {
  void pagar() {
    print('Pagamento realizado');
    gerarComprovante();
  }

  // Este método não diz respeito a pagamentos (Modo incorreto)
  void gerarComprovante() {
    print('Comprovante gerado');
  }
}

void main(List<String> arguments) {
  final Pagamentos pagamentos = Pagamentos();
  pagamentos.pagar();
}
