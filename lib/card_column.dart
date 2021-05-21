import 'constants.dart';
import 'package:flutter/material.dart';

class CardColumn extends StatelessWidget {
  CardColumn({this.iconType, this.textData});

  final IconData iconType;
  final String textData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconType, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textData,
          style: labelTextStyle,
        )
      ],
    );
  }
}
