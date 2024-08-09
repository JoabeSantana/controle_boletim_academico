import 'package:controle_boletim_academico/injections/injection_stores.dart';
import 'package:controle_boletim_academico/models/nota.dart';
import 'package:controle_boletim_academico/stores/disciplina_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RelatorioDisciplinasPage extends StatelessWidget {
  const RelatorioDisciplinasPage({super.key});

  @override
  Widget build(BuildContext context) {
    DisciplinaStore store = getIt();
    store.setDisciplinas([]);
    store.getDisciplinasENotas();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Relatório Disciplinas'),
        ),
        body: Observer(
          builder: (context) {
            if (store.disciplinas.isEmpty) {
              return const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.disabled_by_default_outlined),
                    Text(
                        style: TextStyle(color: Colors.black),
                        'Não há dados a serem exibidos')
                  ],
                ),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: store.disciplinas.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Text('Disciplina: ${store.disciplinas[index].nome}'),
                      Text(
                          'Média: ${calcularMediaNotas(store.disciplinas[index].notas).toStringAsFixed(2)}'),
                      Text(
                        'Situação: ${calcularMediaNotas(store.disciplinas[index].notas) >= 5 ? 'Aprovado' : 'Reprovado'}',
                      )
                    ],
                  ),
                );
              },
            );
          },
        ));
  }

  double calcularMediaNotas(List<Nota>? notas) {
    double media = 0;
    if (notas != null && notas.isNotEmpty) {
      for (var nota in notas) {
        media += nota.nota;
      }
      return media / notas.length;
    }
    return media;
  }
}
