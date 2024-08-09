import 'package:controle_boletim_academico/datasources/local/banco_dados.dart';
import 'package:controle_boletim_academico/datasources/local/disciplina_helper.dart';
import 'package:controle_boletim_academico/models/models.dart';
import 'package:sqflite/sqflite.dart';

class NotaHelper {
  static const sqlCreate = '''
    CREATE TABLE IF NOT EXISTS ${Nota.tabela} (
      ${Nota.campoCodigo} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${Nota.campoNota} REAL,
      ${Nota.campoDisciplina} INTEGER,
      FOREING KEY ${Nota.campoDisciplina} REFERENCES ${Disciplina.tabela} (${Disciplina.campoCodigo})
    )
  ''';

  void inserir(Nota nota) async {
    Database db = await BancoDados().db;
    db.insert(Nota.tabela, nota.toMap());
  }

  void alterar(Nota nota) async {
    Database db = await BancoDados().db;

    db.update(Nota.tabela, nota.toMap(),
        where: '${Nota.campoCodigo} = ? AND ${Nota.campoDisciplina} = ?',
        whereArgs: [nota.codigo, nota.disciplina.codigo]);
  }

  void excluir(int codigo) async {
    Database db = await BancoDados().db;

    db.delete(Nota.tabela,
        where: '${Nota.campoCodigo} = ?', whereArgs: [codigo]);
  }

  Future<List<Nota>> getTodosPorDisciplina(int codDisciplina) async {
    await Future.delayed(const Duration(milliseconds: 500));

    var disciplina = await DisciplinaHelper().getByCodigo(codDisciplina);

    if (disciplina != null) {
      Database db = await BancoDados().db;

      var listaDados = await db.query(Nota.tabela,
          where: '${Nota.campoDisciplina} = ?', whereArgs: [codDisciplina]);

      return listaDados.map((e) => Nota.fromMap(e, disciplina)).toList();
    }

    return [];
  }
}
