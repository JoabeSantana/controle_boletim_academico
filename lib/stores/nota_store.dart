import 'package:controle_boletim_academico/datasources/local/nota_helper.dart';
import 'package:controle_boletim_academico/extensions/string_extension.dart';
import 'package:controle_boletim_academico/models/models.dart';
import 'package:controle_boletim_academico/ui/pages/cadastro_nota_page.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'nota_store.g.dart';

class NotaStore = _NotaStoreBase with _$NotaStore;

abstract class _NotaStoreBase with Store {
  late BuildContext _contextPage;

  late BuildContext _contextPageCadastro;

  @observable
  int? _codigoNota;

  @observable
  List<Nota> _notasPorDisciplina = [];

  @computed
  List<Nota> get notasPorDisciplina => _notasPorDisciplina;

  @observable
  TextEditingController _notaController = TextEditingController();

  @computed
  TextEditingController get notaController => _notaController;

  @action
  TextEditingController set(TextEditingController controller) =>
      _notaController = controller;

  @observable
  String _nota = '';

  @observable
  late Disciplina _disciplina;

  @computed
  String get nota => _nota;

  @action
  void setCodigoNota(int? valor) => _codigoNota = valor;

  @action
  String setNota(String nota) => _nota = nota;

  @action
  void setContextPage(BuildContext context) => _contextPage = context;

  @action
  void setContextPageCadastro(BuildContext context) =>
      _contextPageCadastro = context;

  @computed
  Disciplina get disciplina => _disciplina;

  @action
  Disciplina setDisciplina(Disciplina disciplina) => _disciplina = disciplina;

  @action
  List<Nota> setNotasPorDisciplina(List<Nota> notas) =>
      _notasPorDisciplina = notas;

  @observable
  NotaHelper _notaHelper = NotaHelper();

  @computed
  NotaHelper get notaHelper => _notaHelper;

  @computed
  bool get isDadosValidos =>
      (_nota.isNotEmpty && isValorValido(_nota) && _nota.toDouble() <= 10);

  @computed
  bool get isCadastroCompleto =>
      (_notasPorDisciplina.length < (disciplina.tipoCurso == 1 ? 4 : 2));

  bool isValorValido(String valor) {
    double vlr = double.tryParse(nota) ?? -1;
    return vlr > -1;
  }

  @computed
  VoidCallback? get salvar => isDadosValidos ? _salvar : null;

  @computed
  VoidCallback? get abrirCadastro => isCadastroCompleto ? _abrirCadastro : null;

  @action
  Future<void> _abrirCadastro() async {
    await Navigator.push(
      _contextPageCadastro,
      MaterialPageRoute(
        builder: (context) =>
            CadastroNotaPage(disciplina: disciplina, nota: null),
      ),
    );
  }

  @action
  void _salvar() {
    if (_codigoNota != null) {
      _notaHelper.alterar(
        Nota(
            codigo: _codigoNota,
            nota: _nota.toDouble(),
            disciplina: _disciplina),
      );
    } else {
      _notaHelper.inserir(
        Nota(nota: _nota.toDouble(), disciplina: _disciplina),
      );
    }
    getTodosPorDisciplina(disciplina);
    Navigator.pop(_contextPage);
  }

  @action
  void excluir(Nota nota) {
    _notaHelper.excluir(nota.codigo!);
    getTodosPorDisciplina(disciplina);
  }

  @action
  void getTodosPorDisciplina(Disciplina disciplina) {
    _notaHelper.getTodosPorDisciplina(disciplina.codigo ?? 0).then((lista) {
      _notasPorDisciplina = lista;
    });
  }
}
