import 'package:controle_boletim_academico/datasources/local/disciplina_helper.dart';
import 'package:controle_boletim_academico/datasources/local/nota_helper.dart';
import 'package:controle_boletim_academico/models/disciplina.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'disciplina_store.g.dart';

class DisciplinaStore = _DisciplinaStoreBase with _$DisciplinaStore;

abstract class _DisciplinaStoreBase with Store {
  late BuildContext _contextPage;

  @observable
  int? _dropDownTipoCursoValue;

  @observable
  List<int> tipoCursoValues = [1, 2];

  @observable
  TextEditingController _nomeDisciplinaController = TextEditingController();

  @observable
  String _nomeDisciplina = '';

  @observable
  int? _codigoDisciplina;

  @observable
  List<Disciplina> _disciplinas = [];

  @observable
  DisciplinaHelper _disciplinaHelper = DisciplinaHelper();

  @observable
  NotaHelper _notaHelper = NotaHelper();

  @computed
  String get nomeDisciplina => _nomeDisciplina;

  @computed
  int? get dropDownTipoCursoValue => _dropDownTipoCursoValue;

  @computed
  TextEditingController get nomeDisciplinaController =>
      _nomeDisciplinaController;

  @action
  void setCodigoDisciplina(int? valor) => _codigoDisciplina = valor;

  @action
  void setContextPage(BuildContext context) => _contextPage = context;

  @action
  void setNomeDisciplina(String valor) => _nomeDisciplina = valor;

  @action
  void setDropDownTipoCursoValue(int? valor) => _dropDownTipoCursoValue = valor;

  @computed
  DisciplinaHelper get disciplinaHelper => _disciplinaHelper;

  @computed
  List<Disciplina> get disciplinas => _disciplinas;

  @action
  List<Disciplina> setDisciplinas(List<Disciplina> disciplinas) =>
      _disciplinas = disciplinas;

  @computed
  bool get isDadosValidos =>
      (_nomeDisciplina.isNotEmpty && _dropDownTipoCursoValue != null);

  @computed
  VoidCallback? get salvar => isDadosValidos ? _salvar : null;

  @action
  void inicializarDisciplinaHelper() {
    _disciplinaHelper = DisciplinaHelper();
  }

  @action
  void getTodos() {
    _disciplinaHelper.getTodos().then((lista) {
      _disciplinas = lista;
    });
  }

  @action
  void getDisciplinasENotas() {
    _disciplinaHelper.getDisciplinasENotas().then((lista) {
      _disciplinas = lista;
    });
  }

  @action
  void _salvar() {
    if (_codigoDisciplina != null) {
      _disciplinaHelper.alterar(Disciplina(
          codigo: _codigoDisciplina,
          nome: _nomeDisciplina,
          tipoCurso: dropDownTipoCursoValue!));
    } else {
      _disciplinaHelper.inserir(
          Disciplina(nome: nomeDisciplina, tipoCurso: dropDownTipoCursoValue!));
    }
    getTodos();
    setNomeDisciplina('');
    Navigator.pop(_contextPage);
  }

  @action
  void excluir(Disciplina disciplina) {
    _disciplinaHelper.excluir(disciplina.codigo!);
    getTodos();
  }
}
