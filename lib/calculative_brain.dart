import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi = 24;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Over Weight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Under Weight';
  }

  String getSuggestion() {
    if (_bmi >= 25)
      return '';
    else if (_bmi > 18.5)
      return '';
    else
      return '';
  }
}
