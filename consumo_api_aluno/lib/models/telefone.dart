import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  /*
    toMap
    método que pega o objeto Telefone e transforma em um objeto Map<String, dynamic> 
    passo 1 serialização
  */
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  /* 
    toJson
    método que pega um Map<String, dynamic> e transforma em json pelo pacote dart:convert (jsonEncode)
    passo 2 serialização
  */
  String toJson() => jsonEncode(toMap());

  /*
    passo 1 desserialização
  */
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
  
  /*
    passo 2 desserialização
  */
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0, 
      telefone: map['telefone'] ?? '',
    );
  }
}