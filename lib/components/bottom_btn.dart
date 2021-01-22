import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTapMyFunction, @required this.btnTitle});
  final Function onTapMyFunction;
  final String btnTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            btnTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kButtonContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kButtonContainerHeight,
        padding: EdgeInsets.only(bottom: 20),
      ),
      onTap: onTapMyFunction,
      //   () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ResultsPage(),
      //   ),
      //   );
      // },
    );
  }
}
