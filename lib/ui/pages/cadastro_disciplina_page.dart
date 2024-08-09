import 'package:controle_boletim_academico/injections/injection_stores.dart';
import 'package:controle_boletim_academico/models/disciplina.dart';
import 'package:controle_boletim_academico/stores/disciplina_store.dart';
import 'package:controle_boletim_academico/ui/widgets/botao_arredondado.dart';
import 'package:controle_boletim_academico/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CadastroDisciplinaPage extends StatelessWidget {
  final Disciplina? disciplina;

  const CadastroDisciplinaPage({this.disciplina, super.key});

  @override
  Widget build(BuildContext context) {
    late DisciplinaStore disciplinaStore;

    disciplinaStore = getIt();

    inicializarDisciplina(disciplina, disciplinaStore);

    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Disciplinas')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CampoTexto(
              controller: disciplinaStore.nomeDisciplinaController,
              texto: 'Nome da Disciplina',
              onChange: disciplinaStore.setNomeDisciplina,
            ),
            Observer(
              builder: (context) {
                return DropdownButton<int>(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  hint: const Text('Tipo Curso'),
                  value: disciplinaStore.dropDownTipoCursoValue,
                  items: disciplinaStore.tipoCursoValues
                      .map<DropdownMenuItem<int>>(
                    (int value) {
                      return DropdownMenuItem(
                        value: value,
                        child: value == 1
                            ? const Text('Anual')
                            : const Text('Semestral'),
                      );
                    },
                  ).toList(),
                  onChanged: disciplinaStore.setDropDownTipoCursoValue,
                );
              },
            ),
            Observer(
              builder: (context) => BotaoArredondado(
                clique: disciplinaStore.salvar,
                titulo: 'Salvar',
                icone: Icons.save,
              ),
            )
          ],
        ),
      ),
    );
  }

  void inicializarDisciplina(
      Disciplina? disciplina, DisciplinaStore disciplinaStore) {
    if (disciplina != null) {
      disciplinaStore.setCodigoDisciplina(disciplina.codigo);
      disciplinaStore.setNomeDisciplina(disciplina.nome);
      disciplinaStore.nomeDisciplinaController.text = disciplina.nome;
      disciplinaStore.setDropDownTipoCursoValue(disciplina.tipoCurso);
    } else {
      disciplinaStore.setCodigoDisciplina(null);
      disciplinaStore.setNomeDisciplina('');
      disciplinaStore.setDropDownTipoCursoValue(null);
      disciplinaStore.nomeDisciplinaController.text = '';
      disciplinaStore.setDropDownTipoCursoValue(null);
    }
  }
}
