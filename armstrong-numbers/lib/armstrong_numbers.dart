import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    String textNumber = number.toString();
    return number ==
        textNumber
            .split('')
            .map((i) => pow(int.parse(i), textNumber.length))
            .reduce((a, b) => a + b);
  }
}
