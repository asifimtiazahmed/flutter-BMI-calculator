import 'package:flutter/material.dart';
import 'constants.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildCounter extends StatelessWidget {
  BuildCounter({this.mainLabel, this.mainVar, this.unit, this.btnMinus, this.btnAdd});

  final String mainLabel; //e.g WEIGHT
  final int mainVar; //e.g 60
  final String unit; //kg
  final Function btnMinus; //minus
  final Function btnAdd; //plus

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          mainLabel,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              mainVar.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              unit,
              style: kLabelTextStyle,
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onTouch: btnMinus,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onTouch: btnAdd,
            ),
          ],
        ),
      ],
    );
  }
}