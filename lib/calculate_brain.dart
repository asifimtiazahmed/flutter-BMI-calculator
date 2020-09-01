
import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
    double bmi = weight / pow(height/100, 2);
    _bmi = bmi;
    return bmi.toStringAsFixed(1);
  }

  String getResults(){
    String retVal;

    if(_bmi >= 25) {
      retVal = 'Overweight';
    } else if (_bmi > 18.5) {
      retVal = 'Normal';
    } else retVal = 'Underweight';
    return retVal;
  }

  String getInterpretations(){
    String retVal;

    if(_bmi >= 25) {
      retVal = 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      retVal = 'You have a normal body weight. Good Job!!';
    } else retVal = 'You have a lower than normal body weight. Try eating more.';
    return retVal;
  }


}