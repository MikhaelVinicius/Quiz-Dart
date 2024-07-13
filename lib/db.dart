import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class Db{
  //Construtor com acesso privado
  Db._();
//Criando uma instância de Db
  static final Db instance = Db._();

//Instancia do SQLite
static Database? _database;
//Retorna a instância do SQLite
get database async{
  if(_database != null) return _database;
  return await _initDatabase();
}
_initDatabase() async{
  return await openDatabase(
    join(await getDatabasesPath(), 'quiz.db'),
    version: 1,
    onCreate: _onCreate,
  );
}
  _onCreate(db,version) async{
    await db.execute(_conta);
    await db.execute(_pontos);
    await db.execute(_perguntas);
    await db.insert('conta', {'pontos': 0});

  }
  String get _conta => '''    
      CREATE TABLE conta(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      conta INTEGER
    )''';
  String get _pontos => '''    
      CREATE TABLE pontos(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      pontos INTEGER
    )''';
  String get _perguntas => '''   
      CREATE TABLE perguntas(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      perguntas INTEGER
      )''';
      }
      