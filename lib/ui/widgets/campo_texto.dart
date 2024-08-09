import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController? controller;
  final String? texto;
  final TextInputType? teclado;
  final double margemVertical;
  final double? margemHorizontal;
  final String? prefixo;
  final Function(String)? onChange;

  const CampoTexto({
    this.texto,
    this.teclado = TextInputType.name,
    this.margemVertical = 16,
    this.margemHorizontal,
    this.prefixo,
    this.onChange,
    this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: margemVertical, horizontal: margemHorizontal ?? 16),
      child: TextField(
        controller: controller,
        onChanged: onChange,
        keyboardType: teclado,
        decoration: InputDecoration(
          labelText: texto,
          prefixText: prefixo,
        ),
      ),
    );
  }
}
