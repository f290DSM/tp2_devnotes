import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tp2_devnotes/src/features/categorias/presentation/provider/category_provider.dart';

import '../../../categorias/domain/entity/categoria.dart';

class NoteFormWidget extends ConsumerWidget {
  const NoteFormWidget({super.key, required this.categorias});

  final List<Categoria> categorias;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var category = ref.watch(categoryProvider);
    final controller = TextEditingController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
                hintText: 'Sua dica Dev para ajudar a galera'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: DropdownButton(
            isExpanded: true,
            value: category,
            items: categorias
                .map((c) => DropdownMenuItem(
                      value: c,
                      child: Text(c.descricao!),
                    ))
                .toList(),
            onChanged: (value) {
              ref.read(categoryProvider.notifier).update((state) => value!);
            },
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 80,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FilledButton(
              onPressed: () {
                //TODO: Incluir integração API
              },
              child: const Text('SALVAR'),
            ),
          ),
        )
      ],
    );
  }
}
