/// 3 - Princípio da Subistituição de Liskov (LSP)
///
/// Classes derivadas devem poder ser substituídas por suas classes bases

abstract class IUsurario {
  void login();
  void acessarAreaRestrita();
}

class UsuarioAdmin implements IUsurario {
  @override
  void acessarAreaRestrita() {
    print('Acessando área restrita');
  }

  @override
  void login() {
    print('Realizando login');
  }
}

class UsuarioPadrao implements IUsurario {
  @override
  void acessarAreaRestrita() {
    throw Exception('Este usuário não possui acesso');
  }

  @override
  void login() {
    print('Realizando login');
  }
}

void main(List<String> args) {
  /**
   * A classe implementa UsuarioPadrao não consegue ser 
   * substituída com eficiência pela classe base IUsuario
   */
  IUsurario usurario = UsuarioAdmin();
  usurario.login();
  usurario.acessarAreaRestrita();
}
