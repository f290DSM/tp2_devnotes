import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tp2_devnotes/src/features/notes/domain/entity/note.dart';

import '../../../../core/constants.dart';
import '../../domain/entity/categoria.dart';

var categoryProvider = StateProvider<Categoria?>((ref) => null);

final notasProvider = FutureProvider<List<Nota>>((ref) async {
  return kNotas;
});

final categoriasProvider = FutureProvider<List<Categoria>>((ref) async {
  return kCategorias;
});
