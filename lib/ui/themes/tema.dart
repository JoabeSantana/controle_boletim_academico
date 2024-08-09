import 'package:flutter/material.dart';

ThemeData carregarTemas() {
  const corPrimaria = Color.fromRGBO(0, 0, 0, 1);
  const corPrimariaEscura = Color.fromRGBO(100, 97, 97, 1);
  const corPrimariaClara = Color.fromRGBO(255, 255, 255, 1);

  const temaAppBar = AppBarTheme(
    centerTitle: true,
    color: corPrimaria,
    foregroundColor: corPrimariaClara,
  );

  const temaCampoTexto = InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: corPrimariaEscura),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: corPrimariaEscura, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: corPrimariaEscura, width: 2),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
  );

  var temaBotaoFlutuante = FloatingActionButtonThemeData(
    backgroundColor: corPrimaria,
    foregroundColor: corPrimariaClara,
    focusColor: corPrimariaClara,
    enableFeedback: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );

  var temaBotao = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: corPrimaria,
      foregroundColor: corPrimariaClara,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  return ThemeData(
    primaryColor: corPrimaria,
    primaryColorDark: corPrimariaEscura,
    primaryColorLight: corPrimariaClara,
    appBarTheme: temaAppBar,
    elevatedButtonTheme: temaBotao,
    floatingActionButtonTheme: temaBotaoFlutuante,
    inputDecorationTheme: temaCampoTexto,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: corPrimariaEscura),
    cardTheme: const CardTheme(color: corPrimariaEscura),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
  );
}
