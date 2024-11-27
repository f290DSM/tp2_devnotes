import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tp2_devnotes/src/core/shared/widgets/error_widget.dart';
import 'package:tp2_devnotes/src/features/categorias/presentation/provider/category_provider.dart';

import '../../../core/shared/widgets/loading_widget.dart';
import 'widgets/nota_form_widget.dart';

class NotaDevFormPage extends ConsumerWidget {
  const NotaDevFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var categorias = ref.watch(categoriasProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de Nota Dev'),
      ),
      body: categorias.when(
        data: (data) {
          return NoteFormWidget(categorias: data);
        },
        error: (error, stackTrace) =>
            InternalErrorWidget(message: error.toString()),
        loading: () => const LoadingWidget(size: 150),
      ),
    );
  }
}
