import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
fontSize: 18.0,
color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {

  final IconData genderIcon;
  final String labelText;

  IconContent({this.genderIcon, this.labelText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          labelText,
          style: labelTextStyle,
          ),
      ],
    );
  }
}