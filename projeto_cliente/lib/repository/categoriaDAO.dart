import 'dart:io';

import 'package:navegacao_drawer/models/categoria.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class CategoriaDAO {
  static CategoriaDAO? _categoriaDAO;
  static Database? _database;
  CategoriaDAO._createInstance();

  factory CategoriaDAO() {
    if (_categoriaDAO == null) _categoriaDAO = CategoriaDAO._createInstance();
    return _categoriaDAO!;
  }
  Future<Database> get database async {
    if (_database == null) _database = await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    String _databaseName = 'projeto.db';
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _databaseName);
    var categoriaDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return categoriaDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute("CREATE TABLE categoria ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "nome TEXT,"
        ")");
  }

  void dropTable() async {
    Database db = await database;
    await db.execute("DROP TABLE categoria");
  }

  Future<int> insertCategoria(Categoria categoria) async {
    Database db = await database;
    var resultado = await db.insert(
      'categoria',
      categoria.toMap(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
    return resultado;
  }

  Future<List<Categoria>> getCategorias() async {
    Database db = await database;
    var resultado = await db.query('categoria');
    List<Categoria> lista = resultado.isNotEmpty
        ? resultado.map((item) => Categoria.fromMap(item)).toList()
        : [];
    return lista;
  }

  Future<Categoria?> getCategoria(int id) async {
    Database db = await database;
    List maps = await db.query(
      'categoria',
      columns: ['id', 'nome'],
      where: "id = ?",
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return Categoria.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> updateCategoria(Categoria categoria) async {
    var db = await database;
    int resultado = await db.update(
      'categoria',
      categoria.toMap(),
      where: "id = ?",
      whereArgs: [categoria.id],
    );
    return resultado;
  }

  Future<int> deleteCategoria(int id) async {
    var db = await database;
    int resultado = await db.delete(
      'categoria',
      where: "id = ?",
      whereArgs: [id],
    );
    return resultado;
  }

  Future<int> getCount() async {
    Database db = await database;
    List<Map<String, dynamic>> list =
        await db.rawQuery('SELECT COUNT (*) from categoria');
    int? resultado = Sqflite.firstIntValue(list);
    return resultado!;
  }

  Future close() async {
    Database db = await database;
    db.close();
  }
}
