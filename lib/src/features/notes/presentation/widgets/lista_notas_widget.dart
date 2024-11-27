import 'package:flutter/material.dart';

import '../../domain/entity/note.dart';
import 'card_nota_dev.dart';

class ListaNotasWidget extends StatelessWidget {
  const ListaNotasWidget({super.key, required this.notas});

  final List<Nota> notas;

  @override
  Widget build(BuildContext context) {
    //TODO: Incluir MVVM com Riverpod
    return ListView.builder(
      itemCount: notas.length,
      itemBuilder: (BuildContext context, int index) {
        final nota = notas[index];
        return Dismissible(
            key: Key(
              nota.id.toString(),
            ),
            direction: DismissDirection.startToEnd,
            background: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.red.shade200,
              alignment: Alignment.centerLeft,
              child: const Icon(
                Icons.delete,
                color: Colors.white60,
              ),
            ),
            onDismissed: (direction) {
              //TODO: Remover nora com provider
            },
            child: CardNotaDev(nota: nota));
      },
    );
  }
}
