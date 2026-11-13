// El tema define colores, estilos y fuentes para la app
// Constante de tema
import 'package:flutter/material.dart';

class AppTheme {

static final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 174, 233, 245),
  appBarTheme: AppBarTheme(
    color: const Color.fromARGB(255, 14, 57, 127),
    titleTextStyle: GoogleFonts.lato(
      color: Colors.white,
      fontSize: 28.5,
      fontWeight: FontWeight.bold,
    ),  ),
);
}