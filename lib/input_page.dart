import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardChild: CardContent(
                        textContent: 'Male',
                        iconContent: Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                      ),
                      //background: Color(maleCardColor),//TERNARY
                      background: selectedGender == Gender.male
                          ? Color(kActiveCard)
                          : Color(kInactiveCard),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardChild: CardContent(
                        textContent: 'Female',
                        iconContent: Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                      ),
                      background: selectedGender == Gender.female
                          ? Color(kActiveCard)
                          : Color(kInactiveCard),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                'cm',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 250.0,
                            activeColor: Color(0xFFEB1555),
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ],
                      ),
                      background: Color(kActiveCard),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(background: Color(kActiveCard)),
                  ),
                  Expanded(
                    child: ReusableCard(background: Color(kActiveCard)),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(kBottomContainerColor),
              height: kBottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
            ),
          ],
        ));
  }
}
