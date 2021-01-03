import 'package:bmi_calculator/pages/results_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class BottomButton extends StatelessWidget {
  final String route;
  final String label;
  final int height;
  final int weight;

  BottomButton({this.route, this.label, this.height, this.weight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route == '/result') {
          CalculatorBrain calculator =
              CalculatorBrain(weight: weight, height: height);
          Navigator.of(context).pushNamed(route,
              arguments: ScreenArguments(
                  bmi: calculator.calculateBMI(),
                  result: calculator.getResult(),
                  interpretation: calculator.getInterpretation()));
        } else {
          Navigator.of(context).pushNamed(route);
        }
      },
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kLargeButtonStyle,
          ),
        ),
        color: Color(kBottomContainerColor),
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
      ),
    );
  }
}
