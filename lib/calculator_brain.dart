import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final weight;
  final height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (_bmi > 18.5) {
      return 'Normal Weight';
    } else {
      return 'Under Weight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'Good job!';
    } else {
      return 'Try to eat more!';
    }
  }
}
