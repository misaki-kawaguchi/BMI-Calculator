import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  // BMIを計算する
  String calculateBMI() {
    // bmi = 体重 / 高さ(m)の2乗
    _bmi = weight / pow(height/100, 2);
    // 小数点第一位まで表示する
    return _bmi.toStringAsFixed(1);
  }

  // 結果を表示する
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}