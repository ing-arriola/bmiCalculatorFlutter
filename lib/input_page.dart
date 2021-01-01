import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Colors
const bottomContainerColor = 0xFFEB1555;
const bottomContainerHeight = 80.0;
const activeCard = 0xFF1D1E33;
const inactiveCard = 0xFF111328;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                          ? Color(activeCard)
                          : Color(inactiveCard),
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
                          ? Color(activeCard)
                          : Color(inactiveCard),
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
                      background: Color(activeCard),
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
                    child: ReusableCard(background: Color(activeCard)),
                  ),
                  Expanded(
                    child: ReusableCard(background: Color(activeCard)),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(bottomContainerColor),
              height: bottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
            ),
          ],
        ));
  }
}
