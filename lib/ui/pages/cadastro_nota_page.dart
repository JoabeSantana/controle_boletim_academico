import 'package:controle_boletim_academico/injections/injection_stores.dart';
import 'package:controle_boletim_academico/models/models.dart';
import 'package:controle_boletim_academico/stores/nota_store.dart';
import 'package:controle_boletim_academico/ui/widgets/botao_arredondado.dart';
import 'package:controle_boletim_academico/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CadastroNotaPage extends StatelessWidget {
  final Disciplina disciplina;
  final Nota? nota;

  const CadastroNotaPage({required this.disciplina, this.nota, super.key});

  @override
  Widget build(BuildContext context) {
    NotaStore notaStore = getIt();
    notaStore.setDisciplina(disciplina);
    notaStore.setContextPage(context);
    notaStore.notaController.text = '';
    notaStore.setCodigoNota(null);
    notaStore.setNota('');
    if (nota != null) {
      notaStore.setCodigoNota(nota!.codigo);
      notaStore.setNota(nota!.nota.toString());
      notaStore.notaController.text = nota!.nota.toString();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de notas'),
        //actions: [_criarBotaoExcluir(bloc)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(
              builder: (context) => CampoTexto(
                controller: notaStore.notaController,
                texto: 'Nota:',
                teclado: TextInputType.number,
                onChange: notaStore.setNota,
              ),
            ),
            Observer(
              builder: (context) => BotaoArredondado(
                clique: notaStore.salvar,
                titulo: 'Salvar',
                icone: Icons.save,
              ),
            )
          ],
        ),
      ),
    );
  }
}
