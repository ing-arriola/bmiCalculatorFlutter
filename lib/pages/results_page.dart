import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

//Defining arguments I do wanna get
class ScreenArguments {
  final String bmi;
  final String result;
  final String interpretation;

  ScreenArguments({this.bmi, this.result, this.interpretation});
}

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
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
                    args.result,
                    style: kResultsTitle,
                  ),
                  Text(
                    args.bmi,
                    style: kBMITextSyle,
                  ),
                  Text(args.interpretation, style: kBodyTextSyle)
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
