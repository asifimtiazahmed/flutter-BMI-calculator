import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'OVERWEIGHT', //Overweight, Fit etc
                    style: kBodyTypeText,
                  ),
                  Text(
                    '26.7', //Actual BMI here
                        style: kBMInumber,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'You have a higher than normal body weight. Try to exercise more',
                      style: kComments,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              colour: kActiveCardColor,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(child: Text('RE-CALCULATE',
                style: kLargeButtonTextStyle,
              ),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),

        ],
      ),
    );
  }
}
