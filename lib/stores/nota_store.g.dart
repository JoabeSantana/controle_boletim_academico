// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nota_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotaStore on _NotaStoreBase, Store {
  Computed<List<Nota>>? _$notasPorDisciplinaComputed;

  @override
  List<Nota> get notasPorDisciplina => (_$notasPorDisciplinaComputed ??=
          Computed<List<Nota>>(() => super.notasPorDisciplina,
              name: '_NotaStoreBase.notasPorDisciplina'))
      .value;
  Computed<TextEditingController>? _$notaControllerComputed;

  @override
  TextEditingController get notaController => (_$notaControllerComputed ??=
          Computed<TextEditingController>(() => super.notaController,
              name: '_NotaStoreBase.notaController'))
      .value;
  Computed<String>? _$notaComputed;

  @override
  String get nota => (_$notaComputed ??=
          Computed<String>(() => super.nota, name: '_NotaStoreBase.nota'))
      .value;
  Computed<Disciplina>? _$disciplinaComputed;

  @override
  Disciplina get disciplina =>
      (_$disciplinaComputed ??= Computed<Disciplina>(() => super.disciplina,
              name: '_NotaStoreBase.disciplina'))
          .value;
  Computed<NotaHelper>? _$notaHelperComputed;

  @override
  NotaHelper get notaHelper =>
      (_$notaHelperComputed ??= Computed<NotaHelper>(() => super.notaHelper,
              name: '_NotaStoreBase.notaHelper'))
          .value;
  Computed<bool>? _$isDadosValidosComputed;

  @override
  bool get isDadosValidos =>
      (_$isDadosValidosComputed ??= Computed<bool>(() => super.isDadosValidos,
              name: '_NotaStoreBase.isDadosValidos'))
          .value;
  Computed<bool>? _$isCadastroCompletoComputed;

  @override
  bool get isCadastroCompleto => (_$isCadastroCompletoComputed ??=
          Computed<bool>(() => super.isCadastroCompleto,
              name: '_NotaStoreBase.isCadastroCompleto'))
      .value;
  Computed<VoidCallback?>? _$salvarComputed;

  @override
  VoidCallback? get salvar =>
      (_$salvarComputed ??= Computed<VoidCallback?>(() => super.salvar,
              name: '_NotaStoreBase.salvar'))
          .value;
  Computed<VoidCallback?>? _$abrirCadastroComputed;

  @override
  VoidCallback? get abrirCadastro => (_$abrirCadastroComputed ??=
          Computed<VoidCallback?>(() => super.abrirCadastro,
              name: '_NotaStoreBase.abrirCadastro'))
      .value;

  late final _$_codigoNotaAtom =
      Atom(name: '_NotaStoreBase._codigoNota', context: context);

  @override
  int? get _codigoNota {
    _$_codigoNotaAtom.reportRead();
    return super._codigoNota;
  }

  @override
  set _codigoNota(int? value) {
    _$_codigoNotaAtom.reportWrite(value, super._codigoNota, () {
      super._codigoNota = value;
    });
  }

  late final _$_notasPorDisciplinaAtom =
      Atom(name: '_NotaStoreBase._notasPorDisciplina', context: context);

  @override
  List<Nota> get _notasPorDisciplina {
    _$_notasPorDisciplinaAtom.reportRead();
    return super._notasPorDisciplina;
  }

  @override
  set _notasPorDisciplina(List<Nota> value) {
    _$_notasPorDisciplinaAtom.reportWrite(value, super._notasPorDisciplina, () {
      super._notasPorDisciplina = value;
    });
  }

  late final _$_notaControllerAtom =
      Atom(name: '_NotaStoreBase._notaController', context: context);

  @override
  TextEditingController get _notaController {
    _$_notaControllerAtom.reportRead();
    return super._notaController;
  }

  @override
  set _notaController(TextEditingController value) {
    _$_notaControllerAtom.reportWrite(value, super._notaController, () {
      super._notaController = value;
    });
  }

  late final _$_notaAtom = Atom(name: '_NotaStoreBase._nota', context: context);

  @override
  String get _nota {
    _$_notaAtom.reportRead();
    return super._nota;
  }

  @override
  set _nota(String value) {
    _$_notaAtom.reportWrite(value, super._nota, () {
      super._nota = value;
    });
  }

  late final _$_disciplinaAtom =
      Atom(name: '_NotaStoreBase._disciplina', context: context);

  @override
  Disciplina get _disciplina {
    _$_disciplinaAtom.reportRead();
    return super._disciplina;
  }

  bool __disciplinaIsInitialized = false;

  @override
  set _disciplina(Disciplina value) {
    _$_disciplinaAtom.reportWrite(
        value, __disciplinaIsInitialized ? super._disciplina : null, () {
      super._disciplina = value;
      __disciplinaIsInitialized = true;
    });
  }

  late final _$_notaHelperAtom =
      Atom(name: '_NotaStoreBase._notaHelper', context: context);

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

  late final _$_abrirCadastroAsyncAction =
      AsyncAction('_NotaStoreBase._abrirCadastro', context: context);

  @override
  Future<void> _abrirCadastro() {
    return _$_abrirCadastroAsyncAction.run(() => super._abrirCadastro());
  }

  late final _$_NotaStoreBaseActionController =
      ActionController(name: '_NotaStoreBase', context: context);

  @override
  TextEditingController set(TextEditingController controller) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.set');
    try {
      return super.set(controller);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCodigoNota(int? valor) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.setCodigoNota');
    try {
      return super.setCodigoNota(valor);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setNota(String nota) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.setNota');
    try {
      return super.setNota(nota);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setContextPage(BuildContext context) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.setContextPage');
    try {
      return super.setContextPage(context);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setContextPageCadastro(BuildContext context) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.setContextPageCadastro');
    try {
      return super.setContextPageCadastro(context);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Disciplina setDisciplina(Disciplina disciplina) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.setDisciplina');
    try {
      return super.setDisciplina(disciplina);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<Nota> setNotasPorDisciplina(List<Nota> notas) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.setNotasPorDisciplina');
    try {
      return super.setNotasPorDisciplina(notas);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _salvar() {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase._salvar');
    try {
      return super._salvar();
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void excluir(Nota nota) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.excluir');
    try {
      return super.excluir(nota);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getTodosPorDisciplina(Disciplina disciplina) {
    final _$actionInfo = _$_NotaStoreBaseActionController.startAction(
        name: '_NotaStoreBase.getTodosPorDisciplina');
    try {
      return super.getTodosPorDisciplina(disciplina);
    } finally {
      _$_NotaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
notasPorDisciplina: ${notasPorDisciplina},
notaController: ${notaController},
nota: ${nota},
disciplina: ${disciplina},
notaHelper: ${notaHelper},
isDadosValidos: ${isDadosValidos},
isCadastroCompleto: ${isCadastroCompleto},
salvar: ${salvar},
abrirCadastro: ${abrirCadastro}
    ''';
  }
}
