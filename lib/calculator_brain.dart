import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  // BMIを計算する
  String calculateBMI() {
    // bmi = 体重 / 高さ(m)の2乗
    double bmi = weight / pow(height/100, 2);
    // 小数点第一位まで表示する
    return bmi.toStringAsFixed(1);
  }
}