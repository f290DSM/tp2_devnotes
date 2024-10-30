import 'dart:convert';

class Categoria {
  int? id;
  String? descricao;

  Categoria({
    this.id,
    this.descricao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'descricao': descricao,
    };
  }

  factory Categoria.fromMap(Map<String, dynamic> map) {
    return Categoria(
      id: map['id']?.toInt(),
      descricao: map['descricao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Categoria.fromJson(String source) =>
      Categoria.fromMap(json.decode(source));
}
