import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  static const String overWeightText =
      'You have a higher than normal body weight. Try to exercise more.';
  static const String normalWeightText =
      'You have a normal body weight. Good job!';
  static const String underWeightText =
      'You have a lower than normal body weight. You can eat a bit more.';

  double _bmi = 0.0;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return overWeightText;
    } else if (_bmi > 18.5) {
      return normalWeightText;
    } else {
      return underWeightText;
    }
  }
}
