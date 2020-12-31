import 'package:flutter/material.dart';
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

class CardContent extends StatelessWidget {
  final String textContent;
  final Icon iconContent;
  CardContent({this.textContent, this.iconContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconContent,
        SizedBox(
          height: 15,
        ),
        Text(
          textContent,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color background;
  final Widget cardChild;
  ReusableCard({this.background, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
