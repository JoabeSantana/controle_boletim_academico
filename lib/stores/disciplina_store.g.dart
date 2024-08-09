// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disciplina_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DisciplinaStore on _DisciplinaStoreBase, Store {
  Computed<String>? _$nomeDisciplinaComputed;

  @override
  String get nomeDisciplina =>
      (_$nomeDisciplinaComputed ??= Computed<String>(() => super.nomeDisciplina,
              name: '_DisciplinaStoreBase.nomeDisciplina'))
          .value;
  Computed<int?>? _$dropDownTipoCursoValueComputed;

  @override
  int? get dropDownTipoCursoValue => (_$dropDownTipoCursoValueComputed ??=
          Computed<int?>(() => super.dropDownTipoCursoValue,
              name: '_DisciplinaStoreBase.dropDownTipoCursoValue'))
      .value;
  Computed<TextEditingController>? _$nomeDisciplinaControllerComputed;

  @override
  TextEditingController get nomeDisciplinaController =>
      (_$nomeDisciplinaControllerComputed ??= Computed<TextEditingController>(
              () => super.nomeDisciplinaController,
              name: '_DisciplinaStoreBase.nomeDisciplinaController'))
          .value;
  Computed<DisciplinaHelper>? _$disciplinaHelperComputed;

  @override
  DisciplinaHelper get disciplinaHelper => (_$disciplinaHelperComputed ??=
          Computed<DisciplinaHelper>(() => super.disciplinaHelper,
              name: '_DisciplinaStoreBase.disciplinaHelper'))
      .value;
  Computed<List<Disciplina>>? _$disciplinasComputed;

  @override
  List<Disciplina> get disciplinas => (_$disciplinasComputed ??=
          Computed<List<Disciplina>>(() => super.disciplinas,
              name: '_DisciplinaStoreBase.disciplinas'))
      .value;
  Computed<bool>? _$isDadosValidosComputed;

  @override
  bool get isDadosValidos =>
      (_$isDadosValidosComputed ??= Computed<bool>(() => super.isDadosValidos,
              name: '_DisciplinaStoreBase.isDadosValidos'))
          .value;
  Computed<VoidCallback?>? _$salvarComputed;

  @override
  VoidCallback? get salvar =>
      (_$salvarComputed ??= Computed<VoidCallback?>(() => super.salvar,
              name: '_DisciplinaStoreBase.salvar'))
          .value;

  late final _$_dropDownTipoCursoValueAtom = Atom(
      name: '_DisciplinaStoreBase._dropDownTipoCursoValue', context: context);

  @override
  int? get _dropDownTipoCursoValue {
    _$_dropDownTipoCursoValueAtom.reportRead();
    return super._dropDownTipoCursoValue;
  }

  @override
  set _dropDownTipoCursoValue(int? value) {
    _$_dropDownTipoCursoValueAtom
        .reportWrite(value, super._dropDownTipoCursoValue, () {
      super._dropDownTipoCursoValue = value;
    });
  }

  late final _$tipoCursoValuesAtom =
      Atom(name: '_DisciplinaStoreBase.tipoCursoValues', context: context);

  @override
  List<int> get tipoCursoValues {
    _$tipoCursoValuesAtom.reportRead();
    return super.tipoCursoValues;
  }

  @override
  set tipoCursoValues(List<int> value) {
    _$tipoCursoValuesAtom.reportWrite(value, super.tipoCursoValues, () {
      super.tipoCursoValues = value;
    });
  }

  late final _$_nomeDisciplinaControllerAtom = Atom(
      name: '_DisciplinaStoreBase._nomeDisciplinaController', context: context);

  @override
  TextEditingController get _nomeDisciplinaController {
    _$_nomeDisciplinaControllerAtom.reportRead();
    return super._nomeDisciplinaController;
  }

  @override
  set _nomeDisciplinaController(TextEditingController value) {
    _$_nomeDisciplinaControllerAtom
        .reportWrite(value, super._nomeDisciplinaController, () {
      super._nomeDisciplinaController = value;
    });
  }

  late final _$_nomeDisciplinaAtom =
      Atom(name: '_DisciplinaStoreBase._nomeDisciplina', context: context);

  @override
  String get _nomeDisciplina {
    _$_nomeDisciplinaAtom.reportRead();
    return super._nomeDisciplina;
  }

  @override
  set _nomeDisciplina(String value) {
    _$_nomeDisciplinaAtom.reportWrite(value, super._nomeDisciplina, () {
      super._nomeDisciplina = value;
    });
  }

  late final _$_codigoDisciplinaAtom =
      Atom(name: '_DisciplinaStoreBase._codigoDisciplina', context: context);

  @override
  int? get _codigoDisciplina {
    _$_codigoDisciplinaAtom.reportRead();
    return super._codigoDisciplina;
  }

  @override
  set _codigoDisciplina(int? value) {
    _$_codigoDisciplinaAtom.reportWrite(value, super._codigoDisciplina, () {
      super._codigoDisciplina = value;
    });
  }

  late final _$_disciplinasAtom =
      Atom(name: '_DisciplinaStoreBase._disciplinas', context: context);

  @override
  List<Disciplina> get _disciplinas {
    _$_disciplinasAtom.reportRead();
    return super._disciplinas;
  }

  @override
  set _disciplinas(List<Disciplina> value) {
    _$_disciplinasAtom.reportWrite(value, super._disciplinas, () {
      super._disciplinas = value;
    });
  }

  late final _$_disciplinaHelperAtom =
      Atom(name: '_DisciplinaStoreBase._disciplinaHelper', context: context);

  @override
  DisciplinaHelper get _disciplinaHelper {
    _$_disciplinaHelperAtom.reportRead();
    return super._disciplinaHelper;
  }

  @override
  set _disciplinaHelper(DisciplinaHelper value) {
    _$_disciplinaHelperAtom.reportWrite(value, super._disciplinaHelper, () {
      super._disciplinaHelper = value;
    });
  }

  late final _$_notaHelperAtom =
      Atom(name: '_DisciplinaStoreBase._notaHelper', context: context);

  @override
  NotaHelper get _notaHelper {
    _$_notaHelperAtom.reportRead();
    return super._notaHelper;
  }

  @override
  set _notaHelper(NotaHelper value) {
    _$_notaHelperAtom.reportWrite(value, super._notaHelper, () {
      super._notaHelper = value;
    });
  }

  late final _$_DisciplinaStoreBaseActionController =
      ActionController(name: '_DisciplinaStoreBase', context: context);

  @override
  void setCodigoDisciplina(int? valor) {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.setCodigoDisciplina');
    try {
      return super.setCodigoDisciplina(valor);
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setContextPage(BuildContext context) {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.setContextPage');
    try {
      return super.setContextPage(context);
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNomeDisciplina(String valor) {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.setNomeDisciplina');
    try {
      return super.setNomeDisciplina(valor);
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDropDownTipoCursoValue(int? valor) {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.setDropDownTipoCursoValue');
    try {
      return super.setDropDownTipoCursoValue(valor);
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<Disciplina> setDisciplinas(List<Disciplina> disciplinas) {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.setDisciplinas');
    try {
      return super.setDisciplinas(disciplinas);
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void inicializarDisciplinaHelper() {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.inicializarDisciplinaHelper');
    try {
      return super.inicializarDisciplinaHelper();
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getTodos() {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.getTodos');
    try {
      return super.getTodos();
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getDisciplinasENotas() {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.getDisciplinasENotas');
    try {
      return super.getDisciplinasENotas();
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _salvar() {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase._salvar');
    try {
      return super._salvar();
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void excluir(Disciplina disciplina) {
    final _$actionInfo = _$_DisciplinaStoreBaseActionController.startAction(
        name: '_DisciplinaStoreBase.excluir');
    try {
      return super.excluir(disciplina);
    } finally {
      _$_DisciplinaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tipoCursoValues: ${tipoCursoValues},
nomeDisciplina: ${nomeDisciplina},
dropDownTipoCursoValue: ${dropDownTipoCursoValue},
nomeDisciplinaController: ${nomeDisciplinaController},
disciplinaHelper: ${disciplinaHelper},
disciplinas: ${disciplinas},
isDadosValidos: ${isDadosValidos},
salvar: ${salvar}
    ''';
  }
}
