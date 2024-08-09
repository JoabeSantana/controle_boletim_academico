import 'package:flutter/material.dart';

class BotaoArredondado extends StatelessWidget {
  final VoidCallback? clique;
  final String? titulo;
  final IconData? icone;
  final double tamanho;
  final Color? cor;

  const BotaoArredondado({
    required this.clique,
    this.titulo,
    this.icone,
    this.tamanho = 100,
    this.cor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ElevatedButton(
        onPressed: clique,
        style: ElevatedButton.styleFrom(backgroundColor: cor),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icone != null ? Icon(icone!) : const SizedBox(),
              Text(titulo ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
