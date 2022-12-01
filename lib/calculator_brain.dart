import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  int height;
  int weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "выше нормы";
    } else if (_bmi >= 18) {
      return "норма";
    } else {
      return "ниже нормы";
    }
  }

  String getInterpritation() {
    if (_bmi >= 25) {
      return "Вам нужно сбросить несколько килограмм, чтобы почувствовать себя лучше.";
    } else if (_bmi >= 18) {
      return "У вас всё хорошо — поддерживайте вес и будьте здоровы.";
    } else {
      return "Вам не помешает набрать несколько килограмм, чтобы почувствовать себя лучше.";
    }
  }
}
