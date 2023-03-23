import 'package:http/http.dart' as http;

//5 - Princípio da Inversão de Dependências (DIP)
// Sempre depender de abstrações e não de classes concretas

class UsuarioRepository {
  var client = http.Client();

  void getUsuario(String url) {
    client.get(Uri.parse(url));
  }
}
