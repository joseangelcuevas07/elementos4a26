import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> corderos = const {
    'Birrias': 'assets/imgs/cordero1.jpg',
    'Calcetin': 'assets/imgs/cordero1.jpg',
    'Jr': 'assets/imgs/cordero1.jpg',
    'Fisgon': 'assets/imgs/cordero1.jpg',
    'Copo de Nieve': 'assets/imgs/cordero1.jpg',

  };


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
          ...corderos.entries.map((cordero) {
            return _tileDog(
            cordero.key,
            cordero.value,
            Colors.blueAccent,
            Colors.amberAccent,
            Colors.white );}),

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

  Widget _tileDog(
    String corderoName,
    String corderoImage,
    Color titlecolor,
    Color iconColor,
    Color textColor
  ){
   final tile =  ListTile(
          leading: Image.asset(corderoImage, width: 50, height: 50),
          title: Text(corderoName),
          subtitle: Text('Cordero traviezo'),
          trailing: Icon(Icons.arrow_forward),
          tileColor: titlecolor,
          iconColor: iconColor,
          textColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          );
          final espacio = SizedBox(height:10);
          return Column(children: [tile, espacio]);
  }
}