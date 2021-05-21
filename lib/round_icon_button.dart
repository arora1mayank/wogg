import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.actionOnPressed});
  final IconData icon;
  final Function actionOnPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: actionOnPressed,
      constraints: BoxConstraints.tightFor(width: 45.0, height: 45.0),
      shape: CircleBorder(),
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
