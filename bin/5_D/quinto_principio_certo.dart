import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

//5 - Princípio da Inversão de Dependências (DIP)
// Sempre depender de abstrações e não de classes concretas

abstract class IHttpClient {
  Future get({required String url});
}

class HttpClient implements IHttpClient {
  final client = http.Client();

  @override
  Future get({required String url}) async {
    return await client.get(Uri.parse(url));
  }
}

class DioClient implements IHttpClient {
  final Dio dio = Dio();

  @override
  Future get({required String url}) async {
    return await dio.get(url);
  }
}

class UsuarioRepository {
  // A forma correta seria receber esta dependência
  // pelo construtor e esta também precisa ser uma abstração
  final IHttpClient _client;

  UsuarioRepository({required IHttpClient client}) : _client = client;

  void getUsuario(String url) {
    _client.get(url: url);
  }
}

void main(List<String> args) {
  final UsuarioRepository repository = UsuarioRepository(client: HttpClient());
  repository.getUsuario('url');
}
