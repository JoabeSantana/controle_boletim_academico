import 'package:controle_boletim_academico/datasources/local/banco_dados.dart';
import 'package:controle_boletim_academico/models/models.dart';
import 'package:sqflite/sqflite.dart';

class DisciplinaHelper {
  static const sqlCreate = '''
    CREATE TABLE IF NOT EXISTS ${Disciplina.tabela} (
      ${Disciplina.campoCodigo} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${Disciplina.campoNome} TEXT,
      ${Disciplina.campoTipoCurso} INTEGER
    )
  ''';

  void inserir(Disciplina disciplina) async {
    Database db = await BancoDados().db;

    db.insert(Disciplina.tabela, disciplina.toMap());
  }

  void alterar(Disciplina disciplina) async {
    Database db = await BancoDados().db;

    db.update(Disciplina.tabela, disciplina.toMap(),
        where: '${Disciplina.campoCodigo} = ?', whereArgs: [disciplina.codigo]);
  }

  void excluir(int codigo) async {
    Database db = await BancoDados().db;

    db.delete(Disciplina.tabela,
        where: '${Disciplina.campoCodigo} = ?', whereArgs: [codigo]);
  }

  Future<List<Disciplina>> getTodos() async {
    await Future.delayed(const Duration(seconds: 1));

    Database db = await BancoDados().db;

    var listaDados = await db.query(Disciplina.tabela);

    return listaDados.map((e) => Disciplina.fromMap(e)).toList();
  }

  void deleteTodos() async {
    await Future.delayed(const Duration(seconds: 1));

    Database db = await BancoDados().db;

    db.delete(Disciplina.tabela);
  }

  Future<Disciplina?> getByCodigo(int codigo) async {
    Database db = await BancoDados().db;

    var listaDados = await db.query(Disciplina.tabela,
        where: '${Disciplina.campoCodigo} = ?', whereArgs: [codigo]);

    if (listaDados.isNotEmpty) {
      return Disciplina.fromMap(listaDados.first);
    }

    return null;
  }

  Future<List<Disciplina>> getDisciplinasENotas() async {
    await Future.delayed(const Duration(milliseconds: 500));

    Database db = await BancoDados().db;

    var listaDados = await db.query(Disciplina.tabela);
    //print(listaDados.map((e) => Disciplina.fromMap(e)).toList());
    List<Disciplina> disciplinas =
        listaDados.map((e) => Disciplina.fromMap(e)).toList();

    if (disciplinas.isNotEmpty) {
      for (var disciplina in disciplinas) {
        var listaDados = await db.query(Nota.tabela,
            where: '${Nota.campoDisciplina} = ?',
            whereArgs: [disciplina.codigo]);

        disciplina.notas =
            listaDados.map((e) => Nota.fromMap(e, disciplina)).toList();
      }

      return disciplinas;
    }

    return [];
  }
}
