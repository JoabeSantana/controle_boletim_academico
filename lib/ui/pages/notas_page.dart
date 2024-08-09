import 'package:controle_boletim_academico/injections/injection_stores.dart';
import 'package:controle_boletim_academico/models/models.dart';
import 'package:controle_boletim_academico/stores/nota_store.dart';
import 'package:controle_boletim_academico/ui/pages/cadastro_nota_page.dart';
import 'package:controle_boletim_academico/ui/widgets/acoes_dimissible.dart';
import 'package:controle_boletim_academico/ui/widgets/item_dismissible.dart';
import 'package:controle_boletim_academico/ui/widgets/item_lista.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NotasPage extends StatelessWidget {
  final Disciplina disciplina;

  const NotasPage(this.disciplina, {super.key});

  @override
  Widget build(BuildContext context) {
    NotaStore notaStore = getIt();
    notaStore.setNotasPorDisciplina([]);
    notaStore.getTodosPorDisciplina(disciplina);
    notaStore.notaController.text = '';
    notaStore.setContextPageCadastro(context);
    notaStore.setDisciplina(disciplina);
    return Scaffold(
      appBar: AppBar(title: Text(disciplina.nome)),
      floatingActionButton: Observer(
        builder: (context) => FloatingActionButton(
          onPressed: notaStore.abrirCadastro,
          child: const Icon(Icons.add),
        ),
      ),
      body: Observer(
        builder: (context) {
          if (notaStore.notasPorDisciplina.isEmpty) {
            return const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.disabled_by_default_outlined),
                  Text(
                      style: TextStyle(color: Colors.black),
                      'Nenhum registro encontrado')
                ],
              ),
            );
          }
          return _criarListaNotas(notaStore);
        },
      ),
    );
  }

  Widget _criarListaNotas(NotaStore notaStore) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: notaStore.notasPorDisciplina.length,
      itemBuilder: (context, index) {
        return ItemDismissible(
          filho: _criarItemLista(notaStore.notasPorDisciplina[index], context),
          acoes: [
            AcoesDismissible(
              titulo: 'Editar Nota',
              acao: () {
                _abrirCadastroNota(
                    nota: notaStore.notasPorDisciplina[index],
                    context: context);
              },
              direction: DismissDirection.startToEnd,
              corFundo: const Color.fromARGB(255, 27, 119, 13),
              alinhamento: Alignment.centerLeft,
            ),
            AcoesDismissible(
              titulo: 'Excluir Nota',
              acao: () {
                notaStore.excluir(notaStore.notasPorDisciplina[index]);
              },
              direction: DismissDirection.endToStart,
              corFundo: const Color.fromARGB(255, 255, 0, 0),
              alinhamento: Alignment.centerRight,
            ),
          ],
        );
      },
    );
  }

  Widget _criarItemLista(Nota nota, BuildContext context) {
    return ItemLista(
      filho: Row(
        children: [
          const Expanded(child: Text('Nota')),
          Text(nota.nota.toStringAsFixed(2))
        ],
      ),
      clique: () {
        _abrirCadastroNota(nota: nota, context: context);
      },
    );
  }

  void _abrirCadastroNota({Nota? nota, required BuildContext context}) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            CadastroNotaPage(disciplina: disciplina, nota: nota),
      ),
    );
  }
}
