import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class Apptheme {
  final int selectedColor;

  Apptheme({
    this.selectedColor= 0
  }): assert( selectedColor >= 0, 'Seleted color must be greater then 0'),
      assert( selectedColor < colorList.length,
      'Selected color must be less or equal than ${ colorList.length -1 }');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    )
  );
}
//creando paletas de colores que se utilizaran en la app