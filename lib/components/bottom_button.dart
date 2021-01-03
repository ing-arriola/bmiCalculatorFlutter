import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String route;
  final String label;

  BottomButton({@required this.route, this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
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
