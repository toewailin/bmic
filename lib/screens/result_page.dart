import 'package:bmic/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/reusable_card.dart';
//import 'input_page.dart';
import '../components/bottom_btn.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String bmiResultText;
  final String interpretation;
  ResultsPage(
      {@required this.bmiResult,
      @required this.bmiResultText,
      @required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIMCalculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              selectColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kRBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            btnTitle: 'Re-Calculate',
            onTapMyFunction: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
