import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  // variables para almacenar datos de entrada
  bool _switchValue = false;
  double _sliderValue = 0.0;
  TextEditingController _textController = TextEditingController();
  int radioSelected = 0;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 5')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Entradas de datos'),
          // llamadas a los widgets de las llamadas de datos
          _entradaTexto(),
          _entradaSwitch(),
          _entradaSlider(),
          _entradaRadio(),
          _entradasCheck(),
          ElevatedButton(
            onPressed: null, 
            child: Text('Guardar'),
            ),

        ],
      ),
    );
  }

  TextField _entradaTexto(){
    return TextField(
      controller: _textController,
      obscureText: false,
      obscuringCharacter: '*',
      maxLength: 128,
      maxLines: 3,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: UnderlineInputBorder(),
      ),
      onChanged: (value) {
        print('Valor del TextField: $value');
      },
    );
  }

  Row _entradaSwitch(){
    return Row(
    mainAxisAlignment: MainAxisAlignment.start, 
    children: [
      Text('¿Te gusta Flutter?'),
      Switch(value: _switchValue, onChanged: (value) {
        setState(() {
          _switchValue = value;
          print('El valor del switch es: $_switchValue');
        });
        // Accion al cambiar el switch
      })
    ],
    );
  }

  Column _entradaSlider(){
    return Column(
      children: [
        Text('Indica que tanto te gusta Flutter:'),
        Slider(
          min:0.0,
          max:10.0,
          activeColor: Colors.blueAccent,
          thumbColor: const Color.fromARGB(255, 186, 2, 2),
          value: _sliderValue,
          divisions: 10,
          label: '${_sliderValue.round()}',
          onChanged: (value){
            setState(() {
              _sliderValue = value;
              print('Se cambio el slider: $_sliderValue');
            });
          },
        ),
      ],
    );

  }


 Column _entradaRadio() {

  final ListTile Kotlin = ListTile(
    title: const Text('Kotlin'),
    leading: Transform.scale(
      scale: 1.5,
      child: Radio(
        value: 1,
        groupValue: radioSelected,
        onChanged: (value){
          setState(() {
            radioSelected = value!;
            print('Seleccion del boton radio: $radioSelected');
          });
        },
      ),
    ),
  );


  final ListTile Flutter = ListTile(
    title: const Text('Flutter'),
    leading: Transform.scale(
      scale: 1.5,
      child: Radio(
        value: 2,
        groupValue: radioSelected,
        onChanged: (value){
          setState(() {
            radioSelected = value!;
            print('Seleccion del boton radio: $radioSelected');
          });
        },
      ),
    ),
  );

  final ListTile reactNative = ListTile(
    title: const Text('React Native'),
    leading: Transform.scale(
      scale: 1.5,
      child: Radio(
        value: 3,
        groupValue: radioSelected,
        onChanged: (value){
          setState(() {
            radioSelected = value!;
            print('Seleccion del boton radio: $radioSelected');
          });
        },
      ),
    ),
  );

  return Column(
    children: [
      Text('¿Qué prefieres para desarrollo móvil?'),
      Kotlin,
      Flutter,
      reactNative
    ],
  );
  

 }  

 Column _entradasCheck(){
  final Text pregunta = Text('¿Qué usas para correr tus apps?');
  final Row checks = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // Checkbox 1
      Transform.scale(
        scale: 1.5,
        child: Checkbox(
          value: _isChecked1,
           onChanged: (value){
            setState(() {
              _isChecked1 = value!;
              print('Checkbox 1: $_isChecked1');
            });
           }),
      ),
      Text('Emulador'), 


      // Checkbox 2
      Transform.scale(
        scale: 1.5,
        child: Checkbox(
          value: _isChecked2,
           onChanged: (value){
            setState(() {
              _isChecked2 = value!;
              print('Checkbox 2: $_isChecked2');
            });
           }),
      ),
      Text('Smartphone'),


      // Checkbox 3
      Transform.scale(
        scale: 1.5,
        child: Checkbox(
          value: _isChecked3,
           onChanged: (value){
            setState(() {
              _isChecked3 = value!;
              print('Checkbox 3: $_isChecked3');
            });
           }),
      ),
      Text('Navegador Web'), 

    ],
  );
  return Column(
    children: [
      pregunta,
      checks,
    ],
  );
 }
}