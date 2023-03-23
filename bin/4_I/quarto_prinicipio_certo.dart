/// 4 - Princípio da Segregação de Interfaces (LSP)
///
/// Classes derivadas devem poder ser substituídas por suas classes bases

//Modelo de contrato para usuário Admin
abstract class IUsurarioAdmin {
  void acessarAreaRestrita();
}

//Modelo de contrato para usuário Padrão
abstract class IUsurarioPadrao {
  void login();
}

class UsuarioAdmin implements IUsurarioAdmin, IUsurarioPadrao {
  @override
  void acessarAreaRestrita() {
    print('Acessando área restrita');
  }

  @override
  void login() {
    print('Realizando login');
  }
}

class UsuarioPadrao implements IUsurarioPadrao {
  @override
  void login() {
    print('Realizando login');
  }
}

void main(List<String> args) {
  var user = UsuarioAdmin();
  user.login();
  user.acessarAreaRestrita();
}
