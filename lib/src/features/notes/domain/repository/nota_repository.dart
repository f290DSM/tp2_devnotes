import '../entity/note.dart';

abstract interface class NotaRepository {
  Future<List<Nota>> findAll();

  Future<void> add(Nota nota);

  Future<void> remove(Nota nota);
}
