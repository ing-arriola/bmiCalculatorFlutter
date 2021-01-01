import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color background;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({this.background, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
