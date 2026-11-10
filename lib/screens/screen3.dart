import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> corderos = const {
    'Birrias': 'assets/imgs/cordero1.jpg',
    'Calcetin': 'assets/imgs/cordero2.jpg',
    'Jr': 'assets/imgs/cordero3.jpg',
    'Fisgon': 'assets/imgs/cordero4.jpg',
    'Copo de Nieve': 'assets/imgs/cordero5.jpg',

  };

    final Map<String, String> borregas = const {
    'Canela': 'assets/imgs/borrega1.jpg',
    'Guera': 'assets/imgs/borrega2.jpg',
    'Lulubel': 'assets/imgs/borrega3.jpg',
    'Capuchina': 'assets/imgs/borrega4.jpg',
    'Nieve': 'assets/imgs/borrega5.jpg',

  };


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

          ...borregas.entries.map((borrega) {
            return _tileborrega(
              borrega.key,
              borrega.value,
              Colors.purple,
              Colors.amberAccent,
              Colors.white
            );
          }),
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
          leading: Image.asset(corderoImage, width: 70, height: 70),
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

  Widget _tileborrega (
    String borregaName,
    String borregaImage,
    Color titlecolor,
    Color iconColor,
    Color textColor
  ){
   final tile =  ListTile(
          title: Image.asset(borregaImage, width: 70, height: 70,),
          leading: Icon(Icons.pets_rounded),
          subtitle: Text(borregaName),
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