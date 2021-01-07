class Moeda{

  String sigla;
  String valor;

Moeda({this.sigla, this.valor});



  Moeda.fromJson(Map<String, dynamic> json) :
    
    sigla = json['sigla'],
    valor = json['valor'];

      toJSONEncodable() {
    Map<String, dynamic> moeda = new Map();

    moeda['sigla'] = sigla;
    moeda['valor'] = valor;

    return moeda;
  }
 
}


