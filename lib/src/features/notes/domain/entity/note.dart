import 'dart:convert';

import 'categoria.dart';

class Nota {
  int? id;
  String? conteudo;
  Categoria? categoria;

  Nota({
    this.id,
    this.conteudo,
    this.categoria,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'conteudo': conteudo,
      'categoria': categoria?.toMap(),
    };
  }

  factory Nota.fromMap(Map<String, dynamic> map) {
    return Nota(
      id: map['id']?.toInt(),
      conteudo: map['conteudo'],
      categoria:
          map['categoria'] != null ? Categoria.fromMap(map['categoria']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Nota.fromJson(String source) => Nota.fromMap(json.decode(source));
}
