import 'package:bmi_calculator/custom_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    this.bmiResult,
    this.resultText,
    this.interpretationofResult,
  });
  final String bmiResult;
  final String resultText;
  final String interpretationofResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretationofResult,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                text: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(
                    context,
                  );
                }),
          )
        ],
      ),
    );
  }
}
