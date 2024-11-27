import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tp2_devnotes/src/core/shared/widgets/error_widget.dart';
import 'package:tp2_devnotes/src/features/categorias/presentation/provider/category_provider.dart';
import 'package:tp2_devnotes/src/features/notes/presentation/widgets/lista_notas_widget.dart';

import '../../../core/shared/widgets/loading_widget.dart';
import 'nota_form_page.dart';

class NotasDevPage extends ConsumerWidget {
  const NotasDevPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var notas = ref.watch(notasProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dev Notes'),
      ),
      body: notas.when(
        data: (data) => ListaNotasWidget(notas: data),
        error: (error, stackTrace) =>
            InternalErrorWidget(message: error.toString()),
        loading: () => const LoadingWidget(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const NotaDevFormPage()));
        },
        label: const Text('NOVA NOTA'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
