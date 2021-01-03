import 'package:flutter/material.dart';
import 'pages/input_page.dart';
import 'pages/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => Results(),
      },
    );
  }
}

/*

* */
