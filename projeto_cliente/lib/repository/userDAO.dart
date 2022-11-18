import 'package:navegacao_drawer/models/user.dart';


import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UserDAO{
  static UserDAO? _userDAO;
  static Database? _database;
  UserDAO._createInstance();

  
  factory UserDAO() {
    if ( _userDAO == null) _userDAO = UserDAO._createInstance();
    return  _userDAO!;
  }

  Future<Database> get database async {
    if (_database == null) _database = await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
      String _databaseName = 'user.db';
      Directory directory = await getApplicationDocumentsDirectory();
      String path = join(directory.path, _databaseName);
      var produtosDatabase =
      await openDatabase(path, version: 1, onCreate: _createDb);
      return produtosDatabase;
 }

 void _createDb(Database db, int newVersion) async {
    await db.execute("CREATE TABLE user ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "username TEXT,"
        "pass TEXT"
        ")");
  }

   void dropTable() async {
    Database db = await database;
    await db.execute("DROP TABLE user");
  }

  Future<int> insertUser(User user) async {
    Database db = await database;
    var resultado = await db.insert(
      'user',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
    return resultado;
  }

  Future<User?> getUser(String username) async {
    Database db = await database;
    List maps = await db.query(
      'user',
      columns: ['id', 'username', 'pass'],
      where: "username = ?",
      whereArgs: [username],
    );
    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    } else {
      return null;
    }
  }
  
}