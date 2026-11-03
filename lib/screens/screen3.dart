import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final corderos = const [
  'Birrias',
  'Calcetin',
  'Jr',
  'Fisgon',
  'Copo de Nieve'
  ];

  final borregas =  const[
    'Canela',
    'Guera',
    'Golondrina',
    'Chistosa',
    'Orejona'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),),
      body: ListView(
        children: [
          ...corderos.map((cordero)=>ListTile(
          leading: Icon(Icons.pets_rounded),
          title: Text(cordero),
          subtitle: Text('Cordero traviezo'),
          trailing: Icon(Icons.arrow_forward),
          tileColor: Color.fromARGB(111, 195, 230, 241),
          iconColor: Colors.blueAccent,
          textColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          ),
          ),
          Divider(),
          ...borregas.map((borrega)=>ListTile(
          leading: Icon(Icons.pets_rounded),
          title: Text(borrega),
          subtitle: Text('Borrega complicada'),
          trailing: Icon(Icons.arrow_forward),
          ),
          ),
        ],
      ),
    );
  }
}