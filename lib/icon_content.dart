import 'package:flutter/material.dart';

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
