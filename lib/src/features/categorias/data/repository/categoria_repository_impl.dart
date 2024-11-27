import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tp2_devnotes/src/features/categorias/domain/entity/categoria.dart';
import 'package:tp2_devnotes/src/features/categorias/domain/repository/categoria_repository.dart';

class CategoriaRepositoryImpl implements CategoriaRepository {
  final Dio dio;

  CategoriaRepositoryImpl({required this.dio});

  @override
  Future<List<Categoria>> findAll() async {
    try {
      var response = await dio.get('/categorias');
      return [for (final c in response.data as List) Categoria.fromMap(c)];
    } on DioException catch (de) {
      log('Falha ao recuperar categorias. ',
          error: de.error.toString(), stackTrace: de.stackTrace);
      throw Exception('Falha ao recuperar categorias.');
    }
  }
}
