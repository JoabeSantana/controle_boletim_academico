import 'package:flutter/material.dart';

class AcoesDismissible {
  final String titulo;
  final Alignment? alinhamento;
  final Color? corFundo;
  final VoidCallback acao;
  final DismissDirection direction;

  AcoesDismissible(
      {required this.titulo,
      this.alinhamento,
      this.corFundo,
      required this.acao,
      required this.direction});
}
