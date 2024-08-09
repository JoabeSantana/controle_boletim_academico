//import 'package:aula_03_banco_dados/extensions/string_extension.dart';
//import 'package:aula_03_banco_dados/models/models.dart';

import 'package:controle_boletim_academico/extensions/string_extension.dart';
import 'package:controle_boletim_academico/models/disciplina.dart';

class Nota {
  static const tabela = 'TbNota';
  static const campoCodigo = 'codigo';
  static const campoNota = 'nota';
  static const campoDisciplina = 'disciplina';

  int? codigo;
  double nota;
  Disciplina disciplina;

  Nota({this.codigo, required this.nota, required this.disciplina});

  factory Nota.fromMap(Map dados, Disciplina disciplina) {
    return Nota(
        codigo: dados[campoCodigo].toString().toInt(),
        nota: dados[campoNota].toString().toDouble(),
        disciplina: disciplina);
  }

  Map<String, dynamic> toMap() {
    return {
      campoCodigo: codigo,
      campoNota: nota,
      campoDisciplina: disciplina.codigo
    };
  }
}
