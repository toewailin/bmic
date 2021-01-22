import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color selectColor;
  final Widget cardChild;
  final Function onPressMyFunction;
  ReusableCard(
      {@required this.selectColor, this.cardChild, this.onPressMyFunction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressMyFunction,
      child: Container(
        margin: EdgeInsets.all(12.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: selectColor,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
