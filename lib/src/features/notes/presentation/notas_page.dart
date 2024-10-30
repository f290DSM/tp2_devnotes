import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tp2_devnotes/src/core/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tp2_devnotes/src/features/notes/presentation/widgets/lista_notas_widget.dart';

class NotasDevPage extends ConsumerWidget {
  const NotasDevPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dev Notes'),
      ),
      body: ListaNotasWidget(notas: kNotas),
    );
  }
}
