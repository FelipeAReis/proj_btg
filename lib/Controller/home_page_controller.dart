import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as Http;
import 'package:proj_btg/Model/history.dart';
import 'package:proj_btg/Model/moeda.dart';
import 'package:proj_btg/constants.dart';
import 'package:localstorage/localstorage.dart';

part 'home_page_controller.g.dart';

class HomePageController = _HomePageController with _$HomePageController;

abstract class _HomePageController with Store {
  LocalStorage storage = new LocalStorage('btg_app');

  @observable
  double result = 0.0;

  @action
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

  @action
  Future<void> convertMoeda(
      String valor, String moedaOrigem, String moedaDestino) async {
    try {
      String uri = endPoint +
          'live?access_key=' +
          accessKey +
          '&currencies=' +
          moedaOrigem +
          ',' +
          moedaDestino;
      Http.Response response = await Http.get(uri);
      if (response.statusCode == 200) {
        Map<String, dynamic> decodeJson = jsonDecode(response.body);
        var originValue = decodeJson["quotes"];
        originValue = (originValue[decodeJson["source"] + moedaOrigem]);
        var destinoValue = decodeJson["quotes"];
        destinoValue = destinoValue[decodeJson["source"] + moedaDestino];
        double total =
            ((double.parse(valor.replaceAll(",", ".")) / originValue) *
                destinoValue);
        result = total;
        addItem(
            valor, total, moedaOrigem, moedaDestino, DateTime.now().toString());
      }
    } on Exception catch (e) {
      print('Excessão desconhecida: \n $e');
    } catch (e, s) {
      print('Erro de Excessão: \n $e');
      print('Pilha: \n $s');
    }
  }

  addItem(String valorInicial, double valorFinal, String moedaOrigem,
      String moedaDestino, String data) {
    HistoricoList list = new HistoricoList();
    //lista dentro do escopo é resetada toda vez que o app fecha
    // marter a lista so colocar a variavel no inicio da classe

    final item = new HistoricoItem(
        valorInicial: double.parse(valorInicial.replaceAll(",", ".")),
        valorFinal: valorFinal,
        moedaOrigem: moedaOrigem,
        moedaDestino: moedaDestino,
        date: data);

    if (list.items.length == 0 && storage.getItem('historicos') != null) {
      var json = storage.getItem('historicos');
      for (var gets in json) {
        HistoricoItem item = new HistoricoItem.fromJson(gets);
        list.items.add(item);
      }
    }

    list.items.add(item);
    print(list.items.length);
    storage.setItem('historicos', list.toJSONEncodable());
  }

  Future<List<HistoricoItem>> recoverList() async {
    List<HistoricoItem> _list = new List<HistoricoItem>();
    var json = storage.getItem('historicos');
    for (var gets in json) {
      HistoricoItem item = new HistoricoItem.fromJson(gets);
      _list.add(item);
    }
    return _list;
  }

  clearStorage() async {
    try {
      await storage.clear();
/*       list.items.clear();
      list.items = storage.getItem('historicos') ?? [];
       list.items = null; */
    } on Exception catch (e) {
      print('Excessão banco vazio ou inexistente: \n $e');
    } catch (e, s) {
      print('Erro de Excessão: \n $e');
      print('Pilha: \n $s');
    }
  }
}
