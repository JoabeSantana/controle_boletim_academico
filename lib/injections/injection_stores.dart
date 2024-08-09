import 'package:controle_boletim_academico/stores/disciplina_store.dart';
import 'package:controle_boletim_academico/stores/nota_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.I;

void configurarStores() {
  getIt.registerSingleton(DisciplinaStore());
  getIt.registerSingleton(NotaStore());
}
