import 'dart:math';

class BrainCalculator {
  BrainCalculator({required this.height, required this.weight});
  double height;
  double weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String textResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String textInterpretation() {
    if (_bmi >= 25) {
      return 'Bien muchacho';
    } else if (_bmi > 18.5) {
      return 'Puedes hacerlo mejor muchacho';
    } else {
      return 'Mal muchacho, pero puedes mejorar';
    }
  }
}
