import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;

  double? _bmi;
  String clcul() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String level() {
    if (_bmi! >= 25) {
      return "over Weight";
    } else if (_bmi! >= 18.0) {
      return "norml";
    } else {
      return "under weight";
    }
  }

  String interPolations() {
    if (_bmi! >= 25) {
      return "we have over than norml weight:try to exerisce more";
    } else if (_bmi! >= 18.0) {
      return "we have  norml body :god job!";
    } else {
      return "we have less than norml weight: try to maintain and eat food";
    }
  }
}
