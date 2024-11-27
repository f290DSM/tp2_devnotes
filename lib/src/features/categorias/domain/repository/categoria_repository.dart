import 'package:tp2_devnotes/src/features/categorias/domain/entity/categoria.dart';

abstract class CategoriaRepository {
  Future<List<Categoria>> findAll();
}
