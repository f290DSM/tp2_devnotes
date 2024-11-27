import 'package:flutter/material.dart';

import '../../domain/entity/note.dart';

class CardNotaDev extends StatelessWidget {
  const CardNotaDev({
    super.key,
    required this.nota,
  });

  final Nota nota;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  nota.id!.toString(),
                ),
              ),
              title: Text(
                nota.conteudo!,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          Container(
            alignment: const Alignment(1, 0),
            margin: const EdgeInsets.fromLTRB(0, 0, 16, 16),
            child: Chip(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.primaries[nota.categoria!.id!],
                ),
                borderRadius: BorderRadius.circular(32),
              ),
              backgroundColor: Colors.primaries[nota.categoria!.id!].shade700
                  .withOpacity(0.2),
              label: Text(
                nota.categoria!.descricao!,
                style: TextStyle(
                  color: Colors.primaries[nota.categoria!.id!],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
