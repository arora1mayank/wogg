import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'package:fitness_app/pages/dashboard.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult, this.bmiValue, this.suggestion});

  final String bmiResult;
  final String suggestion;
  final String bmiValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: inactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResult,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiValue,
                    style: resultValueTextStyle,
                  ),
                  Text(
                    suggestion,
                    style: suggestTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'Go to Dashboard',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Dashboard(
                      bmiResult: bmiResult,
                      bmiValue: bmiValue,
                      suggestion: suggestion,
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
