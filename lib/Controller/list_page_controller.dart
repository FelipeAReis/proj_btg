import 'dart:convert';
import 'package:proj_btg/Model/moeda.dart';
import 'package:proj_btg/constants.dart';
import 'package:http/http.dart' as Http;

class ListPageController {
  Future<List<Moeda>> getCurrency() async {
    String uri = endPoint + 'list?' + 'access_key=' + accessKey;
    Http.Response response = await Http.get(uri);

    if (response.statusCode == 200) {
      Map<String, dynamic> decodeJson = jsonDecode(response.body);
      List<Moeda> moedas = new List();
      decodeJson["currencies"].forEach((key, value) {
        Moeda moeda = new Moeda();
        moeda.sigla = key;
        moeda.valor = value;
        moedas.add(moeda);
      });
      return moedas;
    } else {
      print('A Requisição falhou status: ${response.statusCode}');
      return null;
    }
  }
}
