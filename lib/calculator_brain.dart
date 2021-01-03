import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  double _bmi;

  CalculatorBrain({@required this.weight, @required this.height});

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than a normal weight, Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight, awesome! :)';
    } else {
      return 'You have a lower than normal body weight, You can eat a bit more';
    }
  }
}
