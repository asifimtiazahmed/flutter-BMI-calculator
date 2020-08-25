import 'package:flutter/material.dart';
import 'input_page.dart';

//MAinly theme data



void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith( //just updated the theme with my custom stuff
      primaryColor: Color(0xFF0A0E21),  //0xFF is fully opaque
      scaffoldBackgroundColor: Color(0xFF0A0E21),),
      home: InputPage(),
    );
  }
}


