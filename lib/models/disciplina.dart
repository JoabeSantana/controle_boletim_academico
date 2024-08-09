//import 'package:aula_03_banco_dados/extensions/string_extension.dart';
import 'package:controle_boletim_academico/extensions/string_extension.dart';
import 'package:controle_boletim_academico/models/models.dart';

class Disciplina {
  static const tabela = 'TbDisciplina';
  static const campoCodigo = 'codigo';
  static const campoNome = 'nome';
  static const campoTipoCurso = 'tipoCurso';

  int? codigo;
  String nome;
  int tipoCurso;
  List<Nota>? notas;

  Disciplina({this.codigo, required this.nome, required this.tipoCurso});

  factory Disciplina.fromMap(Map dados) {
    return Disciplina(
      codigo: dados[campoCodigo].toString().toInt(),
      nome: dados[campoNome],
      tipoCurso: dados[campoTipoCurso],
    );
  }

  Map<String, dynamic> toMap() {
    return {campoCodigo: codigo, campoNome: nome, campoTipoCurso: tipoCurso};
  }
}
