import 'package:aula_04_consumindo_api/infra/cliente_http.dart';
import 'package:aula_04_consumindo_api/models/emissora.dart';

class EmissoraRemote {
  final link = "http://controle.mdvsistemas.com.br/Novelas/Emissoras/GetEmissora";

  Future<List<Emissora>> get() async {
    var dados = await ClienteHttp().getJson(link);

    return dados.map((e) => Emissora.fromMap(e)).toList();
    /*
    List<Emissora> lista = [];
    for (var i = 0; i < dados.length; i++) {
      var item = Emissora.fromMap(dados[i]);
      lista.add(item);
    }
    return lista;
    */
  }
}