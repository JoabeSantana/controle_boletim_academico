import 'package:controle_boletim_academico/ui/widgets/acoes_dimissible.dart';
import 'package:flutter/material.dart';

class ItemDismissible extends StatelessWidget {
  final Widget filho;
  final List<AcoesDismissible> acoes;

  const ItemDismissible({required this.filho, required this.acoes, super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.horizontal,
        background: _criarContainer(0),
        secondaryBackground: _criarContainer(1),
        onDismissed: _acaoDismissed,
        child: filho);
  }

  void _acaoDismissed(DismissDirection direction) {
    if (acoes.isNotEmpty) {
      if (direction == acoes[0].direction) {
        acoes[0].acao();
      }
    }

    if (acoes.length > 1) {
      if (direction == acoes[1].direction) {
        acoes[1].acao();
      }
    }
  }

  Widget? _criarContainer(int indice) {
    if (acoes.length > indice) {
      return Container(
        alignment: acoes[indice].alinhamento,
        color: acoes[indice].corFundo,
        child: Text(acoes[indice].titulo),
      );
    }
    return null;
  }
}
