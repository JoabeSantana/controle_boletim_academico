import 'package:controle_boletim_academico/injections/injection_stores.dart';
import 'package:controle_boletim_academico/ui/pages/home_page.dart';
import 'package:controle_boletim_academico/ui/themes/tema.dart';
import 'package:flutter/material.dart';

void main() {
  configurarStores();

  runApp(
    MaterialApp(
      title: 'Meu Boletim',
      home: const HomePage(),
      theme: carregarTemas(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
