import 'package:flutter/material.dart';



class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour,
        this.cardChild, this.onPress}); //@required means that has to be entered

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child:
        cardChild, //Whatever gets passed on as the cardChild will be on top of the thing
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              10), //the color property needed to be in box decoration
          color: colour,
        ),
      ),
    );
  }
}