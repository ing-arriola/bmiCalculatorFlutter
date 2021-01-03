import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Results',
                style: kTitleTextSyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              background: Color(kActiveCard),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultsTitle,
                  ),
                  Text(
                    '25.1',
                    style: kBMITextSyle,
                  ),
                  Text('Lorem ipsum I mean just a message XD',
                      style: kBodyTextSyle)
                ],
              ),
            ),
          ),
          BottomButton(route: '/', label: 'Calculate again'),
        ],
      ),
    );
  }
}
