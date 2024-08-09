import 'package:controle_boletim_academico/injections/injection_stores.dart';
import 'package:controle_boletim_academico/models/disciplina.dart';
import 'package:controle_boletim_academico/stores/disciplina_store.dart';
import 'package:controle_boletim_academico/ui/pages/cadastro_disciplina_page.dart';
import 'package:controle_boletim_academico/ui/pages/notas_page.dart';
import 'package:controle_boletim_academico/ui/pages/relatorio_disciplinas_page.dart';
import 'package:controle_boletim_academico/ui/widgets/acoes_dimissible.dart';
import 'package:controle_boletim_academico/ui/widgets/item_dismissible.dart';
import 'package:controle_boletim_academico/ui/widgets/item_lista.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late DisciplinaStore _disciplinaStore;

  @override
  void initState() {
    super.initState();

    _disciplinaStore = getIt();
    _disciplinaStore.setContextPage(context);
    if (_disciplinaStore.disciplinas.isEmpty) {
      _disciplinaStore.getTodos();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boletim Acadêmico'),
        actions: [
          GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const RelatorioDisciplinasPage();
                },
              ));
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 5, right: 15),
              child: Icon(Icons.list_alt),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _abrirCadastroDisciplina,
        child: const Icon(Icons.add),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Observer(
        builder: (context) {
          if (_disciplinaStore.disciplinas.isEmpty) {
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
          return _criarListaDisciplinas(_disciplinaStore.disciplinas);
        },
      ),
    );
  }

  Widget _criarListaDisciplinas(List<Disciplina> lista) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: lista.length,
              itemBuilder: (context, index) {
                return ItemDismissible(
                  filho: _itemLista(lista[index]),
                  acoes: [
                    AcoesDismissible(
                        titulo: 'Editar disciplina',
                        acao: () {
                          _abrirCadastroDisciplina(disciplina: lista[index]);
                        },
                        corFundo: const Color.fromARGB(255, 27, 119, 13),
                        alinhamento: Alignment.centerLeft,
                        direction: DismissDirection.startToEnd),
                    AcoesDismissible(
                        titulo: 'Excluir Disciplina',
                        acao: () {
                          _disciplinaStore.excluir(lista[index]);
                        },
                        corFundo: const Color.fromARGB(255, 255, 0, 0),
                        alinhamento: Alignment.centerRight,
                        direction: DismissDirection.endToStart),
                  ],
                );
              }),
        ),
      ],
    );
  }

  Widget _itemLista(Disciplina disciplina) {
    return ItemLista(
      filho: Center(
          child: Text(
              '${disciplina.nome} - ${disciplina.tipoCurso == 1 ? 'Anual' : 'Semestral'}')),
      clique: () {
        _abrirNotasDisciplina(disciplina);
      },
    );
  }

  void _abrirCadastroDisciplina({Disciplina? disciplina}) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CadastroDisciplinaPage(
          disciplina: disciplina,
        ),
      ),
    );
    setState(() {});
  }

  void _abrirNotasDisciplina(Disciplina disciplina) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => NotasPage(disciplina)));
  }
}
