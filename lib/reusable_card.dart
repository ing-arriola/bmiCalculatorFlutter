import 'package:flutter/material.dart';

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
