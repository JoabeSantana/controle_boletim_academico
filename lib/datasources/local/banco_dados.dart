import 'package:controle_boletim_academico/datasources/local/disciplina_helper.dart';
import 'package:controle_boletim_academico/datasources/local/nota_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class BancoDados {
  static final BancoDados _instance = BancoDados._internal();
  BancoDados._internal();
  factory BancoDados() => _instance;

  Database? _db;

  Future<Database> get db async {
    const nomeBanco = 'meu_boletim_academico.db';
    final caminho = await getDatabasesPath();
    final caminhoBanco = join(caminho, nomeBanco);

    //await deleteDatabase(caminhoBanco);

    return await openDatabase(caminhoBanco,
        version: 1, onCreate: _criarTabelas);
  }

  void _criarTabelas(Database database, int version) async {
    await database.execute(DisciplinaHelper.sqlCreate);
    await database.execute(NotaHelper.sqlCreate);
  }

  void close() {
    _db?.close();
  }
}
