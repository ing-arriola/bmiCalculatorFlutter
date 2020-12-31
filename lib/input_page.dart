import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Colors
const bottomContainerColor = 0xFFEB1555;
const bottomContainerHeight = 80.0;
const reusableCardColor = 0xFF1D1E33;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      cardChild: CardContent(
                        textContent: 'Male',
                        iconContent: Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                      ),
                      background: Color(reusableCardColor),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: CardContent(
                        textContent: 'Female',
                        iconContent: Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                      ),
                      background: Color(reusableCardColor),
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
                      background: Color(reusableCardColor),
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
                    child: ReusableCard(background: Color(reusableCardColor)),
                  ),
                  Expanded(
                    child: ReusableCard(background: Color(reusableCardColor)),
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
