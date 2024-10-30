import 'package:flutter/material.dart';

import '../../domain/entity/note.dart';
import 'card_nota_dev.dart';

class ListaNotasWidget extends StatelessWidget {
  const ListaNotasWidget({super.key, required this.notas});
  final List<Nota> notas;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notas.length,
      itemBuilder: (BuildContext context, int index) {
        final nota = notas[index];
        return CardNotaDev(nota: nota);
      },
    );
  }
}
