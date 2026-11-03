import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/screen1.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto 1', // Titulo de la app
      home: Screen1(), // Que ventana se muestra al inicio
    );
  }
}
